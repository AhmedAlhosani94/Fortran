!Program to explain the work of subroutines

program sub

    implicit none

    print *, "We are inside main program"
    print *, "Calling Subroutine A"
    call A
    print *, "we are in the main program and exiting"

end program sub

subroutine A

    implicit none

    print *, "We are inside Subroutine A"
    print *, "Calling Subroutine B"
    call B
    print *, "we are back to subroutine A"


end subroutine A

!You can do subroutine in a different file
!Something to keep in mind : You can access outside subroutines, however, outside sub can't access sub inside this main program

subroutine B

    implicit none

    print *, "We are inside Subroutine B"
    print *, "Calling Subroutine C"
    call C
    print *, "we are back to subroutine B"



end subroutine B


subroutine C

    implicit none

    print *, "We are inside Subroutine C"
    print *, "Calling Subroutine D"
    call D
    print *, "we are back to subroutine C"



end subroutine C

subroutine D

    implicit none

    print *, "We are inside Subroutine D"
    print *, "we are back to called subroutine"



end subroutine D
