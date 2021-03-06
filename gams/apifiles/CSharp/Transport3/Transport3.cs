﻿using System;
using System.Collections.Generic;
using System.Text;
using System.IO;
using GAMS;

namespace TransportSeq
{
    class Transport3
    {
        static void Main(string[] args)
        {
            GAMSWorkspace ws;
            if (Environment.GetCommandLineArgs().Length > 1)
                ws = new GAMSWorkspace(systemDirectory: Environment.GetCommandLineArgs()[1]);
            else
                ws = new GAMSWorkspace();

            // data from a string with GAMS syntax with explicit export to GDX file
            GAMSJob t3 = ws.AddJobFromString(GetDataText());
            t3.Run();
            t3.OutDB.Export(ws.WorkingDirectory + Path.DirectorySeparatorChar + "tdata.gdx");
            
            // run a job using an instance of GAMSOptions that defines the data include file 
            t3 = ws.AddJobFromString(GetModelText());
            using (GAMSOptions opt = ws.AddOptions())
            {
                opt.Defines.Add("gdxincname", "tdata");
                opt.AllModelTypes = "xpress";
                t3.Run(opt);
                foreach (GAMSVariableRecord rec in t3.OutDB.GetVariable("x"))
                    Console.WriteLine("x(" + rec.Keys[0] + "," + rec.Keys[1] + "): level=" + rec.Level + " marginal=" + rec.Marginal);
            }

            // same but with implicit database communication
            using (GAMSOptions opt = ws.AddOptions())
            {
                GAMSJob t3a = ws.AddJobFromString(GetDataText());
                GAMSJob t3b = ws.AddJobFromString(GetModelText());
                t3a.Run();
                opt.Defines.Add("gdxincname", t3a.OutDB.Name);
                opt.AllModelTypes = "xpress";
                t3b.Run(opt, t3a.OutDB);
                foreach (GAMSVariableRecord rec in t3b.OutDB.GetVariable("x"))
                    Console.WriteLine("x(" + rec.Keys[0] + "," + rec.Keys[1] + "): level=" + rec.Level + " marginal=" + rec.Marginal);
            }

        }

        static String GetDataText()
        {
            String data = @"
  Sets
       i   canning plants   / seattle, san-diego /
       j   markets          / new-york, chicago, topeka / ;

  Parameters

       a(i)  capacity of plant i in cases
         /    seattle     350
              san-diego   600  /

       b(j)  demand at market j in cases
         /    new-york    325
              chicago     300
              topeka      275  / ;

  Table d(i,j)  distance in thousands of miles
                    new-york       chicago      topeka
      seattle          2.5           1.7          1.8
      san-diego        2.5           1.8          1.4  ;

  Scalar f  freight in dollars per case per thousand miles  /90/ ;
";
            return data;
        }

        static String GetModelText()
        {
            String model = @"
  Sets
       i   canning plants
       j   markets

  Parameters
       a(i)   capacity of plant i in cases
       b(j)   demand at market j in cases
       d(i,j) distance in thousands of miles
  Scalar f  freight in dollars per case per thousand miles;

$if not set gdxincname $abort 'no include file name for data file provided'
$gdxin %gdxincname%
$load i j a b d f
$gdxin

  Parameter c(i,j)  transport cost in thousands of dollars per case ;

            c(i,j) = f * d(i,j) / 1000 ;

  Variables
       x(i,j)  shipment quantities in cases
       z       total transportation costs in thousands of dollars ;

  Positive Variable x ;

  Equations
       cost        define objective function
       supply(i)   observe supply limit at plant i
       demand(j)   satisfy demand at market j ;

  cost ..        z  =e=  sum((i,j), c(i,j)*x(i,j)) ;

  supply(i) ..   sum(j, x(i,j))  =l=  a(i) ;

  demand(j) ..   sum(i, x(i,j))  =g=  b(j) ;

  Model transport /all/ ;

  Solve transport using lp minimizing z ;

  Display x.l, x.m ;
";

            return model;
        }

    }
}
