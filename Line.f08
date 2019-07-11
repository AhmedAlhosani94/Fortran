! Program to measure the length and angle of a line
! and the origin in x-y plan, also find the quadrant of the point
program Distance
    implicit none
    real :: x,y,l,a
    real,parameter :: pi = 4*atan(1.0)
    character :: q

    print *, "Enter the values of the sides of coordinates, x and y"
    read *, x,y
    l = ((x**2)+(y**2))**0.5
    a = (atan(y/x))*180/pi
    print *, "l =",l
    print *, "Angle is =",a
! if x is positive, y is positive then point in q1
! else if x is negative, y is positive then point in q2
! else if x is negative, y is negative then point in q3
! else x is positive, y is negative then point in q4

    if (x >= 0 .and. y >= 0) then
        q = "1"
    else if (x <= 0 .and. y >= 0) then
        q = "2"
    else if ( x <= 0 .and. y <= 0) then
        q = "3"
    else
        q = "4"

    end if

    print *, "The point is in quadrant ", q
end program Distance
