MODULE m_statdelta


! ----------------------------------------------------------------------
! MODULE: m_statdelta.f03
! ----------------------------------------------------------------------
! Purpose:
!  Module for computing statistics of two data series comparison
! ----------------------------------------------------------------------
! Author :	Dr. Thomas Papanikolaou, Cooperative Research Centre for Spatial Information, Australia
! Created:	11 October 2017
! ----------------------------------------------------------------------


      IMPLICIT NONE
      !SAVE 			


Contains
	  
	  
SUBROUTINE statdelta (ds1, ds2, dsr, RMSdsr, Sigmadsr, MEANdsr, MINdsr, MAXdsr)


! ----------------------------------------------------------------------
! SUBROUTINE: statdelta.f03
! ----------------------------------------------------------------------
! Purpose:
!  Numerical comparison between two data series matrices. 
!  Numerical differences are computed at the common IDs (e.g. epochs)
! ----------------------------------------------------------------------
! Input arguments:
! - ds1:		1st data series matrix (used as reference)
! - ds2: 		2nd data series matrix
!
! Output arguments:
! - dsr: 		Differences between the two input matrices at the common IDs (epochs) 
!        		dsr = [id(common) id2(common) sr2-sr1(:,3:end)]
! - RMSdsr: 	Root Mean Square of each variable's differences
! - Sigmadsr	Standard Deviation of each variable's differences
! - MEANdsr		Mean value of each variable's differences
! - MINdsr:		Minimum value of each variable's differences
! - MAXdsr: 	Maximum value of each variable's differences
! ----------------------------------------------------------------------
! Author :	Dr. Thomas Papanikolaou, Cooperative Research Centre for Spatial Information, Australia
! Created:	11 October 2017
! ----------------------------------------------------------------------


      USE mdl_precision
      USE mdl_num
      USE m_statist
      IMPLICIT NONE

	  
! ----------------------------------------------------------------------
! Dummy arguments declaration
! ----------------------------------------------------------------------
! IN
      REAL (KIND = prec_d), INTENT(IN), ALLOCATABLE, DIMENSION(:,:) :: ds1, ds2
! ----------------------------------------------------------------------
! OUT
      REAL (KIND = prec_d), INTENT(OUT), DIMENSION(:,:), ALLOCATABLE :: dsr  
      REAL (KIND = prec_d), INTENT(OUT), DIMENSION(:)  , ALLOCATABLE :: RMSdsr, Sigmadsr, MEANdsr, MINdsr, MAXdsr   
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! Local variables declaration
! ----------------------------------------------------------------------
      REAL (KIND = prec_d), ALLOCATABLE, DIMENSION(:) :: dx
      REAL (KIND = prec_d) :: RMSdx, Sigmadx, MEANdx, MINdx, MAXdx  
      REAL (KIND = prec_d) :: delta_t, dt_limit
      INTEGER (KIND = prec_int8) :: Nepochs, Nepochs2, Nelements, Nepochs_delta 
      INTEGER (KIND = prec_int8) :: i, j, j1, k, looptest 
      INTEGER (KIND = prec_int8) :: sz1, sz2, sz3, sz4
      INTEGER (KIND = prec_int2) :: AllocateStatus, DeAllocateStatus
! ----------------------------------------------------------------------	  



dt_limit = 1.D-08


sz1 = size(ds1, DIM = 1)
sz2 = size(ds1, DIM = 2)
Nepochs = sz1

sz3 = size(ds2, DIM = 1)
sz4 = size(ds2, DIM = 2)
Nepochs2 = sz3

! ----------------------------------------------------------------------
! Test collumns dimension
If (sz2 .NE. sz4) Then
print *,"Subroutine statdelta.f03 within Module mdl_statdelta.f03: Input matrices dimension(DIM=2) do not agree"
print *,"DIM=2", sz2, sz4   
!         STOP "*** - ***"
End If
! ----------------------------------------------------------------------


! ----------------------------------------------------------------------
! Find the number of the common epochs
Nepochs_delta = 0
i = 0
j = 0
Do i = 1 , Nepochs
   ! Test the time argument: 
   Do j = 1 , Nepochs2 
      delta_t = ABS(ds2(j,1) - ds1(i,1))
      IF (delta_t < dt_limit) then
         ! Counter of the common epochs
         Nepochs_delta = Nepochs_delta + 1 
      End if
   End Do
End Do
! ----------------------------------------------------------------------
!print *,"Nepochs_delta", Nepochs_delta
!print *,"Nepochs", Nepochs
!print *,"delta_t", delta_t


! Dynamic allocatable array
! Allocate the array of the numerical orbit comparison
ALLOCATE (dsr(Nepochs_delta,sz2), STAT = AllocateStatus)


! ----------------------------------------------------------------------
! Compute the numerical differences
i = 0
j = 0
k = 0
Do i = 1 , Nepochs
   ! Test the time argument: 
   Do j = 1 , Nepochs2   
      delta_t = ABS(ds2(j,1) - ds1(i,1))
      IF (delta_t < dt_limit) then
	  ! Compute the numerical differences of the state vector
         k = k + 1
		 dsr(k,1:2) = ds1(i,1:2)
         dsr(k,3:sz2) = ds2(j,3:sz2) - ds1(i,3:sz2)
	  End IF
   End Do
End Do
! ----------------------------------------------------------------------
!print *,"k", k



! ----------------------------------------------------------------------
! Statistics

! First two collumns refer to Time (MJD, Sec since 00h)
Nelements = sz2 - 2

! Allocate arrays
ALLOCATE (dx(Nepochs_delta), STAT = AllocateStatus)
ALLOCATE (RMSdsr(Nelements), STAT = AllocateStatus)
ALLOCATE (Sigmadsr(Nelements), STAT = AllocateStatus)
ALLOCATE (MEANdsr(Nelements), STAT = AllocateStatus)
ALLOCATE (MINdsr(Nelements), STAT = AllocateStatus)
ALLOCATE (MAXdsr(Nelements), STAT = AllocateStatus)

i = 0
j = 0
Do i = 3 , sz2
   dx(:) = dsr(:,i)
   Call statist(dx, RMSdx, Sigmadx, MEANdx, MINdx, MAXdx)
   j = j + 1
   RMSdsr(j) = RMSdx
   Sigmadsr(j) = Sigmadx
   MEANdsr(j) = MEANdx
   MINdsr(j) = MINdx
   MAXdsr(j) = MAXdx
End Do
! ----------------------------------------------------------------------


END SUBROUTINE


End Module

