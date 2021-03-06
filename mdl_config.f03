MODULE mdl_config

! ---------------------------------------------------------------------------
! Purpose:
!  Module for setting the major configuration parameters to the POD source code 
! ---------------------------------------------------------------------------
! Author :	Dr. Thomas Papanikolaou
!			Geoscience Australia, Frontier-SI
! Created:	24 May 2019
! ----------------------------------------------------------------------


      USE mdl_precision
      IMPLICIT NONE
      SAVE 			
	  

! ----------------------------------------------------------------------
! POD Tool mode
! ----------------------------------------------------------------------
! 1. Orbit Determination (pseudo-observations; orbit fitting)
! 2. Orbit Determination and Prediction
! 3. Orbit Integration (Equation of Motion only)
! 4. Orbit Integration and Partials (Equation of Motion and Variational Equations)
! ----------------------------------------------------------------------
      INTEGER (KIND = prec_int2) :: POD_MODE_cfg	  	  

	  
! ----------------------------------------------------------------------
! Orbit arc length (in hours) 
! ----------------------------------------------------------------------
! Orbit Determination arc
      REAL (KIND = prec_d) :: orbit_determination_arc_cfg

! Orbit Prediction arc
      REAL (KIND = prec_d) :: orbit_prediction_arc_cfg
! ---------------------------------------------------------------------------


! ---------------------------------------------------------------------------
! Observation Model                                                       
! ---------------------------------------------------------------------------
! A-priori orbit used as pseudo-observations                                                
      CHARACTER (LEN=300) :: pseudobs_orbit_filename_cfg
 
! ---------------------------------------------------------------------------
! External Orbit Comparison  
      CHARACTER (LEN=300) :: ext_orbit_filename_cfg
! ---------------------------------------------------------------------------


! ---------------------------------------------------------------------------
! Earth Orientation Parameters (EOP)
! ---------------------------------------------------------------------------
! EOP data solution options:
! 1. IERS C04 										: EOP_sol=1
! 2. IERS RS/PC Daily 								: EOP_sol=2
! 3. IGS ultra-rapid ERP + IERS RS/PC Daily (dX,dY)	: EOP_sol=3
      INTEGER (KIND = prec_int1) :: EOP_solution_cfg
! ---------------------------------------------------------------------------
! EOP filename by IERS EOP :: Solutions 1 and 2
! EOP_filename              eopc04_14_IAU2000.62-now 		! EOP_sol=1: eopc04_08_IAU2000.62-now	! EOP_sol=2: finals2000A.daily
      CHARACTER (LEN=50) :: EOP_fname_cfg

! ERP filename (Earth Rotation Parameters by IGS) :: Solution 3 (requires also finals2000A.daily data from EOP_sol=2 for Precession-Nutation corrections)
! ERP_filename              igu18543_12.erp
      CHARACTER (LEN=50) :: ERP_fname_cfg

! EOP data interpolation number of points	  
      INTEGER (KIND = prec_int4) :: EOP_Nint_cfg
! ---------------------------------------------------------------------------

! ---------------------------------------------------------------------------
! IAU Precession-Nutation model:
! ---------------------------------------------------------------------------
! 1. IAU2000A:		iau_pn_model = 2000
! 2. IAU2006/2000A:	iau_pn_model = 2006
! iau_pn_model              2000	  
      INTEGER (KIND = prec_int2) :: iau_model_cfg
! ---------------------------------------------------------------------------


! ----------------------------------------------------------------------
! Configuration files of Orbit modelling (2 basic initial files):
! ----------------------------------------------------------------------
! Equation of Motion (EQM.in)
      CHARACTER (LEN=100) :: EQM_fname_cfg				

! Variational Equations (VEQ.in)
      CHARACTER (LEN=100) :: VEQ_fname_cfg				
! ----------------------------------------------------------------------


! ----------------------------------------------------------------------
! Orbit Parameter Estimation method
! ----------------------------------------------------------------------
! Estimator number of iterations
      INTEGER (KIND = prec_int2) :: Estimator_Iterations_cfg 
! ----------------------------------------------------------------------


! ----------------------------------------------------------------------
! Write to sp3 orbit format: Option for write Satellite Velocity vector 
! ----------------------------------------------------------------------
! 0. sat_vel = 0 :: Do not write Velocity vector to sp3 orbit
! 1. sat_vel > 0 :: Write Velocity vector to sp3 orbit
      INTEGER (KIND = prec_int2) :: sp3_velocity_cfg	  	  
! ----------------------------------------------------------------------


END
