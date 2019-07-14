! Program to explain how functions work

program area_qt

    implicit none

    real*8 :: area  !kind of 8
    character :: fig
    real*8, external :: tri, sq, rect !declaration of function coming from outside the program
    real*8 :: a, b, c, s, l, w

    print *, "This program calculates the area of square/triangle or rect"
    print *, "Type s for a square, t for triangle, and r for rectangle"

    read *, fig

    if (fig == 't' .or. fig == 'T') then
        print *, "enter the sides of the triangles"
        read *, a, b, c
        area = tri(a, b, c)
        print *, "The area of the triangle is = ", area
    else if(fig == 's' .or. fig == 'S') then
        print *, "enter the sides of the square"
	read *, s
        area = sq(s)
        print *, "the area of the square is = ", area
    else if(fig == 'r' .or. fig == 'R') then
        print *, "enter the sides of the rectangle"
	read *, l,w
        area = rect(l,w)
        print *, "the area of the square is = ", area
    else
        print *, "Error!!! Enter S or T idiot"

    end if


end program area_qt

real*8 function tri(a, b, c)

    implicit none
    real*8, intent(in) :: a, b, c !this means the variables are external and being exported into the function
    real*8 :: s
    s = 0.5*(a+b+c)
    tri = (s*(s-a)*(s-b)*(s-c))**0.5

    print *, "The sides are: "
    print *, a, b, c


end function tri

real*8 function rect(l,w)

    implicit none
    real*8, intent(in) :: l,w
    rect = l*w

    print *, "The sides are: "
    print *, l, w
end function rect

!function sq is on the file
! Function definition to calculate the area of the square

real*8 function sq(s)

    implicit none
    real*8, intent(in) :: s

    print *, "The side of the square is = ", s

    sq = s*s

end function sq
