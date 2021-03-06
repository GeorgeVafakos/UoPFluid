        !-----------------------------------------------------------------------------------------------------------------------------------------------------------
        !    ______    ______        _________                                                !     
        !      ||        ||            ||    \\     ___                             ____      !     Version:    2.0
        !      ||        ||            ||     ||   // \\ ==||                        ||       !     
        !      ||        ||            ||     ||  ||  //   ||                        ||       !     Creator:    George Vafakos
        !      ||        ||    ____    ||____//   ||       ||  ____  ____   ο    ____||       !     
        !      ||        ||   //  \\   ||       ==||==     ||   ||    ||  =||   //   ||       !     Site:       https://github.com/GeorgeVafakos/UoPfluid
        !      ||        ||  ||    ||  ||         ||       ||   ||    ||   ||  ||    ||       !
        !       \\______//    \\__// __||__     __||__   __||__  \\__//   _||_  \\___||_      !
        !                                                                                     !
        !-----------------------------------------------------------------------------------------------------------------------------------------------------------
        ! 
        ! 
        !   File name:          define_classes
        !   
        !   Type:               module
        ! 
        !   Descriprion:        All the classes that are used in this solver are defined here.
        ! 
        ! 
        ! 

        module define_classes
            use global_variables
            use Class_Geometry
            use Class_Advection
            use Class_Vector_Equation
            use Class_Scalar_Equation
            use Class_Vector_Variable
            use Class_Scalar_Variable

            !------------------------------------------------------------------------------------------
            ! Geometric Classes
            !------------------------------------------------------------------------------------------
            ! Define geometry class and name
            type (duct) :: domain

            ! Name the boundaries (1,2,3,4,5,6 for left, right, top, bottom, front and back respectively)
            integer, parameter :: leftWall      = 1
            integer, parameter :: rightWall     = 2
            integer, parameter :: topWall       = 3
            integer, parameter :: botWall       = 4
            integer, parameter :: frontWall     = 5
            integer, parameter :: backWall      = 6

            !------------------------------------------------------------------------------------------
            ! Variables and Equations Classes
            !------------------------------------------------------------------------------------------
            ! Define Variables
            type (Vector_Variable) :: V, V_old, H
            type (Vector_Variable_BC), allocatable, dimension(:) :: Vx_BC, Vy_BC, Vz_BC
            type (Scalar_Variable) :: p, p_old
            type (Scalar_Variable_BC), allocatable, dimension(:) :: p_BC

            ! Define equations
            type (Vector_Equation) :: NS_eqn
            character(len=20) NS_scheme

            ! Define advection terms
            type (Advection) :: NS_adv_term
            
        end
