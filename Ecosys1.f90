Program Ecosys1
  IMPLICIT NONE
  INTEGER :: I
  REAL    :: Insol, InsolMax, RadpHr, Psy, Bugs, Fish
  InsolMax = 80.  ! Arbitrary value in KCal/hr?
  Write (*,*)
  Write (*,*)
  Write (*,*)
Write (*,*) "          I   InsolMax, RadpHr, Sin(RadpHr * (I - 6)), Insol, Psy, Bugs, Fish"
  Write (*,*)
  DO  I = 1,24 ! 24 hours
    RadpHr = (2. * (22./7.)) / 24.
    Insol  = InsolMax * Sin(RadpHr * (I - 6))
    IF (Insol.lt.0.0)  Insol=0.0
    !Add a plant
    Psy = 0.01 * Insol
    Bugs = 0.1 * Psy
    Fish = 0.1 * Bugs
    
    Write (*,900) I, InsolMax, RadpHr, Sin(RadpHr * (I - 6)), Insol, Psy, Bugs, Fish
  END DO 
  900 FORMAT (10x, i10, 6f10.2, 4f10.4)
End Program Ecosys1