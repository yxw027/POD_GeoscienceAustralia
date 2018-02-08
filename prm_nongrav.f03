SUBROUTINE prm_nongrav (PRMfname)


! ----------------------------------------------------------------------
! SUBROUTINE: prm_nongrav.f03
! ----------------------------------------------------------------------
! Purpose:
!  Read/Set the parameterization regarding the non-gravitational effects to orbit
!  Set the global variables through module mdl_param.f03 
! ----------------------------------------------------------------------
! Author :	Dr. Thomas Papanikolaou, Cooperative Research Centre for Spatial Information, Australia
! Created:	15 September 2017
! ----------------------------------------------------------------------
	  
	  
      USE mdl_precision
      USE mdl_num
      USE mdl_param
      IMPLICIT NONE


! ----------------------------------------------------------------------
! Dummy arguments declaration
! ----------------------------------------------------------------------
! IN
      CHARACTER (LEN=100), INTENT(IN) :: PRMfname				
! OUT

! ----------------------------------------------------------------------


! ----------------------------------------------------------------------
! Variables declaration
! ----------------------------------------------------------------------
      INTEGER (KIND = prec_int2) :: ForceMod
	  
! Gravity Field model variables
      INTEGER (KIND = prec_int8) :: Ntrunc, Ntrunc_tv 
      INTEGER (KIND = prec_int8) :: Nmax, Mmax 
      !INTEGER (KIND = prec_int8) :: n_max, m_max
      INTEGER (KIND = prec_int2) :: sigma_shc, gfc_opt
      CHARACTER (LEN=300) :: gfmfilename
      REAL (KIND = prec_q) :: mjd_t
! ----------------------------------------------------------------------
      CHARACTER (LEN=300) :: filename	   
      INTEGER (KIND = prec_int2) :: AllocateStatus,DeAllocateStatus
! ----------------------------------------------------------------------
      INTEGER (KIND = prec_int8) :: i, read_i
      INTEGER (KIND = prec_int2) :: UNIT_IN, ios
      INTEGER (KIND = prec_int2) :: ios_line, ios_key, ios_data
      INTEGER (KIND = prec_int2) :: space_i
      CHARACTER (LEN=7) :: Format1, Format2, Format3
      CHARACTER (LEN=500) :: line_ith	  
      CHARACTER (LEN=150) :: word1_ln, word_i, t0	  
! ----------------------------------------------------------------------



! ----------------------------------------------------------------------
! Orbit parameterization INPUT file read:
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
      UNIT_IN = 9  												
      Format1 = '(A)'
      Format2 = '(F)'
      Format3 = '(I100)'
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! Open .in file
      OPEN (UNIT = UNIT_IN, FILE = TRIM (PRMfname), IOSTAT = ios)
      IF (ios /= 0) THEN
         PRINT *, "Error in opening file:", PRMfname
         PRINT *, "OPEN IOSTAT=", ios
      END IF
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! Read input file
i = 0
DO

READ (UNIT=UNIT_IN,FMT=Format1,IOSTAT=ios_line) line_ith
i = i + 1
!PRINT *, "READ Line (i,ios):", i, ios_line

! ----------------------------------------------------------------------
! End of file
         IF (ios_line < 0) THEN
!            PRINT *, "End of file, i=", i
            EXIT		
         END IF
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! 1st Word of Line ith
READ (line_ith, * , IOSTAT=ios_data) word1_ln  ! 1st word
!READ (line_ith, * , IOSTAT=ios_data) word1_ln, charN 
! ----------------------------------------------------------------------
!PRINT *, "word1_ln: ", word1_ln


! ----------------------------------------------------------------------
! Parameters Keywords read 
! ----------------------------------------------------------------------


! ----------------------------------------------------------------------
! Non-gravitational forces considered: 
! ----------------------------------------------------------------------
! FMOD_NONGRAV setting (global variable in the module mdl_param.f03)
! 
! FMOD_NONGRAV(1) : Solar Radiation
! FMOD_NONGRAV(2) : Earth Radiation
! FMOD_NONGRAV(3) : Antenna Thrust
! 
! 1. FMOD_NONGRAV(i)=1 : Effect is considered
! 2. FMOD_NONGRAV(i)=0 : Effect is neglected 
!
! ----------------------------------------------------------------------
! Solar Radiation
IF (word1_ln == "Solar_radiation") THEN
   READ ( line_ith, FMT = * , IOSTAT=ios_key ) word_i, ForceMod 
	FMOD_NONGRAV(1) = ForceMod
	!print *,"ForceMod", ForceMod
END IF

! Earth Radiation
IF (word1_ln == "Earth_radiation") THEN
   READ ( line_ith, FMT = * , IOSTAT=ios_key ) word_i, ForceMod 
	FMOD_NONGRAV(2) = ForceMod
	!print *,"ForceMod", ForceMod
END IF

! Antenna Thrust
IF (word1_ln == "Antenna_thrust") THEN
   READ ( line_ith, FMT = * , IOSTAT=ios_key ) word_i, ForceMod 
	FMOD_NONGRAV(3) = ForceMod
	!print *,"ForceMod", ForceMod
END IF
! ----------------------------------------------------------------------



! ----------------------------------------------------------------------
! Solar Radiation
! ----------------------------------------------------------------------
! Solar Radiation pressure model options:
! 1. Cannonball model
! 2. Box-wing model
! 3. ECOM model
IF (word1_ln == "SRP_model") THEN
   READ ( line_ith, FMT = * , IOSTAT=ios_key ) word_i, SRP_MOD_glb 
END IF
! ----------------------------------------------------------------------




END DO
CLOSE (UNIT=UNIT_IN)
! Close of input parameterization file
! ----------------------------------------------------------------------



END
