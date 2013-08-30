SET SR_Parms 'ScenRed input parameters' /
num_time_steps	'path length from root to leaf'
num_leaves	'leaves/scenarios in the initial tree'
num_nodes	'nodes in the initial tree'
num_random	'random variables assigned to a scenario or node'
red_num_leaves	'desired number of preserved scenarios or leaves'
red_percentage	'desired relative distance from initial to reduced tree'
where_random	'100*inObj + 10*inRHS + inMatrix'
reduction_method 'desired method'
num_stages	'branching levels ???'
run_time_limit	'in seconds'
report_level	'0-default, 1-additional log info'
/;

SET SR_Stats 'ScenRed output statistics' /
ScenRedWarnings
ScenRedErrors
run_time	'in seconds'
orig_nodes	'nodes in the initial tree'
orig_leaves	'leaves/scenarios in the initial tree'
red_nodes	'nodes in the reduced tree'
red_leaves	'leaves/scenarios in the reduced tree'
red_percentage	'relative distance from initial to reduced tree'
red_absolute	'absolute distance from initial to reduced tree'
reduction_method 'method used'
/;

PARAMETER ScenRedParms (SR_Parms);
PARAMETER ScenRedReport(SR_Stats);
