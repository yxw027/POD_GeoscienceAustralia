SUBROUTINE ENU (rEF, rENU, eE, eN, eU)


! ----------------------------------------------------------------------
! SUBROUTINE: ENU.f90
! ----------------------------------------------------------------------
! Purpose:
!  Cross product between two vectors
! ----------------------------------------------------------------------
! Input arguments:
! - rEF:			Geocentric Position vector 
!
! Output arguments:
! - rENU:			Vector in the local system East,North,Up (ENU) 
! ----------------------------------------------------------------------
! Dr. Thomas Papanikolaou, Geoscience Australia           11 August 2016
! ----------------------------------------------------------------------


      USE mdl_precision
      USE mdl_num
      USE mdl_arr
      IMPLICIT NONE

! ---------------------------------------------------------------------------
! Dummy arguments declaration
! ---------------------------------------------------------------------------
! IN
      REAL (KIND = prec_q), INTENT(IN):: rEF(3)
! OUT
      REAL (KIND = prec_q), INTENT(OUT) :: rENU(3), eE(3), eN(3), eU(3)
! ---------------------------------------------------------------------------

! ----------------------------------------------------------------------
! Local variables declaration
! ----------------------------------------------------------------------
	  REAL (KIND = prec_d), Dimension(3,3) :: Rx, Rz	  
	  REAL (KIND = prec_d) :: phi,lamda,radius	  
	  REAL (KIND = prec_d) :: x_angle,z_angle	  
      INTEGER (KIND = prec_int2) :: AllocateStatus, DeAllocateStatus
! ----------------------------------------------------------------------



! Spherical coordinates
CALL coord_r2sph (rEF, phi,lamda,radius)


! Rotation matrices
      x_angle = PI_global/2.D0 - phi
      Rx(1,1:3) = (/	1.0D0,				   0.0D0,		   0.0D0 /)
      Rx(2,1:3) = (/	0.0D0,			cos(x_angle),	sin(x_angle) /)
      Rx(3,1:3) = (/	0.0D0,	-1.D0 * sin(x_angle),	cos(x_angle) /)

      z_angle = PI_global/2.D0 + lamda
      Rz(1,1:3) = (/  		 cos(z_angle),  sin(z_angle),  0.0D0 /)
      Rz(2,1:3) = (/ -1.D0 * sin(z_angle),  cos(z_angle),  0.0D0 /)
      Rz(3,1:3) = (/         		0.0D0,         0.0D0,  1.0D0 /)

	  
! Allocate arrays for using matrix_RxR subroutine
      ALLOCATE (R1(3,3), STAT = AllocateStatus)
      ALLOCATE (R2(3,3), STAT = AllocateStatus)
      ALLOCATE (R3(3,3), STAT = AllocateStatus)

	  R1 = Rx
	  R2 = Rz
	  CALL matrix_RxR	  

	  
! Coordinates in local East,North,Up (ENU) system	  
      CALL matrix_Rr (R3,rEF, rENU)
	  
	  
! Unit vectors in local East,North,Up (ENU) system	
	  eE = (/ -sin(lamda)			,  cos(lamda)			, 0.D0		/)
	  eN = (/ -cos(lamda)*sin(phi)	, -sin(lamda)*sin(phi)	, cos(phi)	/)
	  eU = (/  cos(lamda)*cos(phi)	,  sin(lamda)*cos(phi)	, sin(phi)	/)



END

