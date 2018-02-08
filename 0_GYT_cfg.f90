! ----------------------------------------------------------------------
! GNSS Orbit data
! ----------------------------------------------------------------------
! RSO data
! ----------------------------------------------------------------------
if (data_opt == 1) then	 
	  !fname_orb = 'CH-OG-3-RSO+CTS-GPS_2010_359_00.dat'
	  !fname_orb = 'CH-OG-3-RSO+CTS-GPS_2011_094_00.dat'
	  fname_orb = 'CH-OG-3-RSO+CTS-GPS_2011_166_00.dat'
! ----------------------------------------------------------------------
! sp3 data	  
! ----------------------------------------------------------------------
else if (data_opt == 2 .or. data_opt == 3) then	  
! GPS
      !fname_orb = 'jpl16156.sp3' 	! 25/12/2010 JPL	  
      !fname_orb = 'igr16156.sp3' 	! 25/12/2010 IGS Rapid
	  
      !fname_orb = 'jpl16416.sp3' 	! 25/06/2011	
	  
      !fname_orb = 'jpl16680.sp3'	  
      !fname_orb = 'jpl16682.sp3'
	  
      !fname_orb = 'igs18254.sp3'	! 01/01/2015  
      !fname_orb = 'igs18765.sp3'	! 25/12/2015  
      !fname_orb = 'igs18775.sp3'	! 01/01/2016  
	  
      !fname_orb = 'igs18644.sp3'	! 01/10/2015
	  
      !fname_orb = 'igs18886.sp3'	! 19/03/2016  IIF
      !fname_orb = 'igs18885.sp3'	! 18/03/2016  IIF
      
	  !fname_orb = 'igs18822.sp3'	! 02/02/2016 IIR  
      fname_orb = 'igs18820.sp3'	! 31/01/2016 IIR  
 
      !fname_orb = 'igs18644.sp3'   ! IIA
      !fname_orb = 'igs18645.sp3'	! 01/10/2015
	  
      !fname_orb = 'jpl18313.sp3'   ! 11 Feb. 2015: IIF Noon turns for GPS67 (PRN06) & GPS63 (PRN01, not available by JPL)
      !fname_orb = 'igs18313.sp3'   ! 11 Feb. 2015: IIF Noon turns for GPS67 (PRN06) & GPS63 (PRN01)

! GLONASS	  
!fname_orb = 'igl18775.sp3'	! 01/01/2016  
!fname_orb = 'igl19041.sp3'	! 04/07/2016 GLONASS-M  ! NOT
!fname_orb = 'igl18916.sp3'	! 09/04/2016 GLONASS-M  

! BeiDou
!fname_orb = 'wum19283.sp3'  
fname_orb = 'wum19284.sp3'  
fname_orb = 'wum19285.sp3'  
! ----------------------------------------------------------------------
! 3 boundary sp3 orbit data files
! ----------------------------------------------------------------------
else if (data_opt == 4) then
! GPS	  
!fname_orb_0 = 'jpl16680.sp3'	  
!fname_orb_1 = 'jpl16681.sp3'	  
!fname_orb_2 = 'jpl16682.sp3'	  

!fname_orb_0 = 'igs18656.sp3'	  
!fname_orb_1 = 'igs18660.sp3'	  
!fname_orb_2 = 'igs18661.sp3'	    

fname_orb_0 = 'igs18644.sp3'	  
fname_orb_1 = 'igs18645.sp3'	  
fname_orb_2 = 'igs18646.sp3'	    


else if (data_opt == 5) then
! Keplerian orbit arc length in number of days	  
Ndays = 352 ! GPS draconitic year 351.4d


! Initial conditions: Time and State vector

! State vector:
! 1. Keplerian Elements (Inertial frame)
! 2. State Vector (Position & Velocity) cartesian coordinates (in ICRF)
Zo_el = 2	


! ----------------------------------------------------------------------
! Date
!IY = 2010
!IM = 12
!ID = 25
!Sec0 = 0.D0  

! IIA
! PRN 30
!Zo = (/ 0.11722495348772846D+08,   -0.12020435773803633D+08,   -0.21028115897741415D+08,    0.17003205317378029D+04,    0.32909641499117042D+04,   -0.95184538143910845D+03 /)
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! Date
!IY = 2011
!IM = 12
!ID = 25
!Sec0 = 0.D0  
!Zo = (/ -0.14498022961931029D+08, 0.22388662770817753D+08, 0.16904827800360860D+07, -0.19425837515960745D+04, -0.92666000422876346D+03, -0.31920855490664990D+04 /)
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! Date
IY = 2015
IM = 01
ID = 01
Sec0 = 0.D0 

! IIA
! PRN 32
Zo = (/ 0.22834142204272658D+08, -0.20254116690705079D+07, 0.13865073236157367D+08, 0.17013610611874351D+04, 0.24838631603024355D+04, -0.23843285102864565D+04 /) 

!IY = 2015
!IM = 10
!ID = 01
!Sec0 = 0.D0 
!orb_icrf= 0.57296000000000000E+05    0.00000000000000000E+00   -0.24871654350332674E+08    0.18477146980464843E+07   -0.83512714456470255E+07   -0.11332586822783719E+04   -0.23319485021970581E+04    0.29294452951865878E+04
!Zo = (/ -0.24871654350332674D+08, 0.18477146980464843D+07, -0.83512714456470255D+07, -0.11332586822783719D+04, -0.23319485021970581D+04, 0.29294452951865878D+04 /) 

! IIA
! PRN 04
Zo = (/ 0.21377510267306920D+08,   -0.14919420446402030D+08,   -0.60852191113755573D+07,    0.78504449935732873D+03,    0.22895921948170894D+04,   -0.29858347947624752D+04 /)  
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! Date
!IY = 2016
!IM = 01
!ID = 01
!Sec0 = 0.D0 

! IIR
! PRN 21 
!sp3  0.57388000000000000E+05    0.00000000000000000E+00   -0.53988732769932020E+07    0.23871880154165421E+08   -0.99512897920824829E+07   -0.26946177862926770E+04    0.62912433592509842E+03    0.27405028063820209E+04
!Kepl 0.57388000000000000E+05    0.00000000000000000E+00   -0.57711479247659221E+07    0.23903544996552479E+08   -0.96903019720467180E+07   -0.26862077719255717E+04    0.56653389425166915E+03    0.27601316808050169E+04
!Zo = (/ -0.53988732769932020D+07, 0.23871880154165421D+08, -0.99512897920824829D+07, -0.26946177862926770D+04, 0.62912433592509842D+03, 0.27405028063820209D+04 /)

! IIF
! PRN 03 
!Zo = (/ 0.20579646371378511D+08, -0.92955613920984473D+07, 0.13970458857225126D+08, 0.24472572990737895D+04, 0.17672732604398061D+04, -0.24297180810158434D+04  /)

! Glonass-M
! 730 : R01 | igs08.atx (Update W1911) : VALID FROM  2009    12    14     0     0    0.0000000                 
!Zo = (/ -0.15667186191515123D+08,    0.40813934588823011D+07,   -0.19711425052066870D+08,   -0.28308247546713260D+04,   -0.20709928937913696D+04,    0.18229632900278420D+04  /)
! ----------------------------------------------------------------------



! MJD of initial epoch including fraction of the day	  
CALL iau_CAL2JD ( IY, IM, ID, DJM0, MJDo, J_flag )
MJDo = MJDo + Sec0 / 86400.D0	  

! ----------------------------------------------------------------------
!CALL time_GPSweek (MJDo , GPS_week, GPS_wsec, GPSweek_mod1024)
!print *,"GPS week, day ,sec", GPS_week, GPS_wsec/86400.D0, GPS_wsec
!STOP
! ----------------------------------------------------------------------
	  
	  
End If






! ----------------------------------------------------------------------
! GNSS PRN number (Constellation ID + Number)
! ----------------------------------------------------------------------
!PRN = 'G21' ! IIR
PRN = 'C13'  
! ----------------------------------------------------------------------

! ----------------------------------------------------------------------
! GPS Block ID (according to the numbering adopted in eclips.f)
! ----------------------------------------------------------------------
! satblk:	1=I, 2=II, 3=IIA, IIR=(4, 5), IIF=6
satblk = 4
! ----------------------------------------------------------------------


! ----------------------------------------------------------------------
! GPS
! ----------------------------------------------------------------------
! 25 Dec. 2010:
! IIA
!PRN_sp3 = 30	
!satblk = 3 

!PRN_sp3 = 16	
!satblk = 4 !4 !5

!PRN_sp3 = 25	
!satblk = 6
! ----------------------------------------------------------------------
! 25 Jun. 2011:
! IIA
!PRN_sp3 = 30	
!satblk = 3
! ----------------------------------------------------------------------
! 04-04-2011:
! GPS24
      !PRN_sp3 = 24	
      !satblk = 3

! 15-06-2011:
! GPS62
      !PRN_sp3 = 25	
      !satblk = 6
! GPS38
      !PRN_sp3 = 8	
      !satblk = 3
! ----------------------------------------------------------------------  
! 25-27 Dec. 2011:
      !PRN_sp3 = 26	
      !satblk = 3	  
! ----------------------------------------------------------------------
! 01 Jan. 2015:
! IIA
!PRN_sp3 =    32	
!satblk = 3	

!PRN_sp3 =    04	
!satblk = 3	 

! 11 Feb. 2015 (GPS week 18313)
! IIF : GPS67 
!PRN_sp3 =    6	
!satblk = 6	

! IIF : GPS63 
!PRN_sp3 =    1	
!satblk = 6	 
! ----------------------------------------------------------------------
! 2016:
! IIR
!PRN_sp3 = 21	
!satblk = 4	
  
! IIR-M
!PRN_sp3 = 17	
!satblk = 4	    

! IIF
!PRN_sp3 =    3	
!satblk = 6	  	  

! ----------------------------------------------------------------------
! GLONASS
! ----------------------------------------------------------------------
! GLONASS-M	  
! R01, 730; PRN eclips.f = 33
!PRN_sp3 = 01
!satblk = 3	! 
! ----------------------------------------------------------------------


