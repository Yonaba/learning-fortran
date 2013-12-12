! Converts a given angle to sexagesimal (DMS) notation
program sexagesimal
    implicit none
    double precision :: angle                     !real was not accurate enough...
    integer :: deg, min, sec

    print *,"Angle : "
    read *,angle

    deg = angle                                   !equivalent to int(angle), because 'deg' is an integer.
    min = (angle-deg)*60                          !equivalent to int(min), because 'min' is an integer.
    sec = (angle - deg)*3600 - (min*60)           !equivalent to int(sec), because 'sec' is an integer.

    print *,deg,' degrees',min,'mn',sec,'seconds'
end
