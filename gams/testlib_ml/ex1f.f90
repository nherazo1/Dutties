! ex1f.f90
! Fortran implementation of the external functions for example 1
! in the file ex1.gms.

FUNCTION gefunc (icntr, x, f, dfdx, msgcb) RESULT (result)
  USE gehelper
  IMPLICIT NONE
  ! the DEC$ ATTRIBUTES directive must come after the function statement
  ! less preferred method: the /export option of the linker
  !DEC$ ATTRIBUTES DLLEXPORT :: gefunc
  !DEC$ ATTRIBUTES STDCALL, REFERENCE :: gefunc

  INTEGER, INTENT(IN OUT) :: icntr(*)
  REAL(8), INTENT(IN    ) :: x(*)
  REAL(8), INTENT(   OUT) :: f
  REAL(8), INTENT(   OUT) :: dfdx(*)
  EXTERNAL                :: msgcb             ! not used in this example
  INTEGER                 :: result

  ! Declare local arrays to hold the model data.
  ! Remember to declare them SAVE so they remain available in
  ! later calls.
  INTEGER, PARAMETER :: NI = 4, NEQ = 1, NVAR = NI+1, NZ = NI+1
  REAL(8), SAVE :: x0(NI), Q(NI,NI)
  INTEGER :: i, j

  IF (icntr(I_Mode) == 1) THEN
     ! Initialization Mode:
     ! Write a "finger print" to the status file so errors in the external
     ! functions can be detected more easily. This should be done before
     ! anything can go wrong. Also write a line to the log just to show it.
     CALL GEstat (icntr, ' ')
     CALL GEstat (icntr, '**** Using External Function in ex1f.f90.')
     CALL GElog  (icntr, '--- GEFUNC in ex1f.f90 is being initialized.')

     ! Test the sizes and return 0 if OK
     IF (NEQ == icntr(I_Neq) .AND. NVAR == icntr(I_Nvar) .AND. nz == icntr(I_Nz)) THEN
        result = 0
     ELSE
        CALL GElog  (icntr, '--- Model has the wrong size.')
        result = 2
        RETURN
     END IF

     ! Define the model data using statements similar to those in GAMS.
     ! Note that any changes in the GAMS model must be changed here also,
     ! so syncronization can be a problem with this methodology.
     DO i = 1, NI
        x0(i) = i
        DO j = 1, NI
           Q(i,j) = 0.5d0 ** dabs(dfloat(i-j))
        END DO
     END DO
     RETURN

  ELSE IF (icntr(I_Mode) == 2) THEN
     ! Termination mode: Do nothing in this example
     ! This would be the time to free space or close files, etc.
     result = 0
     RETURN

  ELSE IF (icntr(I_Mode) == 3) THEN
     ! Function and Derivative Evaluation Mode

     ! Function index: there is only one so we do not have to test it
     ! but we do it here just to show how
     IF (icntr(I_Eqno) == 1) THEN
        IF (icntr(I_Dofunc) /= 0) THEN
           ! Function value is needed. Note that the linear term corresponding
           ! to -Z must be included.
           f = -x(NI+1)
           DO i = 1, NI
              DO j = 1, NI
                 f = f + (x(i)-x0(i)) * Q(i,j) * (x(j)-x0(j))
              END DO
           END DO
        END IF

        IF (icntr(I_Dodrv) /= 0) THEN
           ! The vector of derivatives is needed. The derivative with respect
           ! to variable x(i) must be returned in dfdx(i). The derivatives of the
           ! linear terms, here -Z, must be defined each time.
           dfdx(NI+1) = -1.d0
           DO i = 1, NI
              dfdx(i) = 0.d0
              DO j = 1, NI
                 dfdx(i) = dfdx(i) + Q(i,j) * (x(j)-x0(j))
              END DO
              dfdx(i) = dfdx(i) * 2.d0
           END DO
        END IF

        ! Everything was fine. Return GEFUNC = 0.
        result = 0
     ELSE
        ! If findex <> 1, then something is wrong and we return GEFUNC = 2.
        CALL GEstat (icntr,' ** fIndex has an unexpected value.')
        result = 2
     END IF
     ! End of function evaluation mode

  ELSE
     CALL GEstat (icntr,' ** Mode has an unexpected value.')
     result = 2
  END IF

  RETURN
END FUNCTION gefunc
