!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = meter  &
   angle = deg  &
   force = newton  &
   mass = kg  &
   time = sec
!
defaults units  &
   coordinate_system_type = cartesian  &
   orientation_type = body313
!
!------------------------ Default Attributes for Model ------------------------!
!
!
defaults attributes  &
   inheritance = bottom_up  &
   icon_visibility = on  &
   grid_visibility = off  &
   size_of_icons = 8.0E-02  &
   spacing_for_grid = 8.0E-02
!
!--------------------------- Plugins used by Model ----------------------------!
!
!
plugin load  &
   plugin_name = .MDI.plugins.controls
!
!------------------------------ Adams View Model ------------------------------!
!
!
model create  &
   model_name = PM  &
   title = "SOLIDWORKS Motion Mechanism"
!
model create  &
   model_name = .PM.Controls_Plant_1
!
model create  &
   model_name = .PM.PM
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .PM.F1  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.F2  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.F3  &
   adams_id = 3  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.Posx  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.Posy  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.Vx  &
   adams_id = 8  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.Vy  &
   adams_id = 9  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.angle  &
   adams_id = 10  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .PM.omega  &
   adams_id = 11  &
   initial_condition = 0.0  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .PM.Force1  &
   adams_id = 1  &
   variable_name = .PM.F1
!
data_element create plant input  &
   plant_input_name = .PM.Force2  &
   adams_id = 2  &
   variable_name = .PM.F2
!
data_element create plant input  &
   plant_input_name = .PM.Force3  &
   adams_id = 3  &
   variable_name = .PM.F3
!
data_element create plant input  &
   plant_input_name = .PM.Controls_Plant_1.ctrl_pinput  &
   adams_id = 4  &
   variable_name =  &
      .PM.F1,  &
      .PM.F2,  &
      .PM.F3
!
data_element create plant input  &
   plant_input_name = .PM.PM.ctrl_pinput  &
   adams_id = 5  &
   variable_name =  &
      .PM.F1,  &
      .PM.F2,  &
      .PM.F3
!
data_element create plant output  &
   plant_output_name = .PM.Positionx  &
   adams_id = 1  &
   variable_name = .PM.Posx
!
data_element create plant output  &
   plant_output_name = .PM.Positiony  &
   adams_id = 2  &
   variable_name = .PM.Posy
!
data_element create plant output  &
   plant_output_name = .PM.Vecolityx  &
   adams_id = 3  &
   variable_name = .PM.Vx
!
data_element create plant output  &
   plant_output_name = .PM.Vecolityy  &
   adams_id = 4  &
   variable_name = .PM.Vy
!
data_element create plant output  &
   plant_output_name = .PM.anglez  &
   adams_id = 5  &
   variable_name = .PM.angle
!
data_element create plant output  &
   plant_output_name = .PM.omegaz  &
   adams_id = 6  &
   variable_name = .PM.omega
!
data_element create plant output  &
   plant_output_name = .PM.Controls_Plant_1.ctrl_poutput  &
   adams_id = 7  &
   variable_name =  &
      .PM.angle,  &
      .PM.omega,  &
      .PM.Posx,  &
      .PM.Posy,  &
      .PM.Vx,  &
      .PM.Vy
!
data_element create plant output  &
   plant_output_name = .PM.PM.ctrl_poutput  &
   adams_id = 8  &
   variable_name =  &
      .PM.angle,  &
      .PM.omega,  &
      .PM.Posx,  &
      .PM.Posy,  &
      .PM.Vx,  &
      .PM.Vy
!
!-------------------------------- Rigid Parts ---------------------------------!
!
! Create parts and their dependent markers and graphics
!
!----------------------------------- ground -----------------------------------!
!
!
! ****** Ground Part ******
!
part modify rigid_body name_and_position  &
   part_name = ground  &
   adams_id = 1  &
   comments = "Mechanism simTime 2", "Mechanism simFrames 50"
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.ground.MARKER_136  &
   adams_id = 136  &
   location = 0.2037194067, 0.0, 0.5999397365  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_138  &
   adams_id = 138  &
   location = 0.2037194067, 0.6871137101, 0.0  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_233  &
   adams_id = 233  &
   location = -6.04773114E-02, -7.047619E-03, 0.0  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_235  &
   adams_id = 235  &
   location = -0.33, -0.1, 2.0E-02  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_237  &
   adams_id = 237  &
   location = -6.04773114E-02, -7.047619E-03, 1.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_239  &
   adams_id = 239  &
   location = -0.33, -0.1, 1.18  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_249  &
   adams_id = 249  &
   location = 0.17, -0.12, 6.0E-02  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_251  &
   adams_id = 251  &
   location = 0.255, -0.12, 1.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_253  &
   adams_id = 253  &
   location = 0.255, -0.11, 6.0E-02  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_255  &
   adams_id = 255  &
   location = 0.265, -0.12, 1.19  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_257  &
   adams_id = 257  &
   location = 0.18, -0.12, 1.14  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_259  &
   adams_id = 259  &
   location = 0.265, -0.11, 1.14  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_267  &
   adams_id = 267  &
   location = 0.37, -6.5E-02, 6.0E-02  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_269  &
   adams_id = 269  &
   location = 0.2625, -5.0E-03, 6.0E-02  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_271  &
   adams_id = 271  &
   location = 0.22125, -9.0E-02, 0.115  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_273  &
   adams_id = 273  &
   location = 0.37, -6.5E-02, 1.14  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_275  &
   adams_id = 275  &
   location = 0.2625, -5.0E-03, 1.14  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_277  &
   adams_id = 277  &
   location = 0.22625, -9.0E-02, 1.085  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_307  &
   adams_id = 307  &
   location = 0.1476167197, -0.13, 0.6  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_310  &
   adams_id = 310  &
   location = 1.02850554E-02, -5.0E-03, 0.27  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_311  &
   adams_id = 311  &
   location = -5.46235316E-02, -1.43041345E-02, 0.6  &
   orientation = 98.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_319  &
   adams_id = 319  &
   location = 0.3, -2.0E-02, 1.14  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_321  &
   adams_id = 321  &
   location = 0.34, -1.0E-02, 1.14  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_323  &
   adams_id = 323  &
   location = 0.3, -1.0E-02, 1.11  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_325  &
   adams_id = 325  &
   location = -0.31, -2.0E-02, 1.11  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_327  &
   adams_id = 327  &
   location = -0.27, -1.0E-02, 1.11  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_329  &
   adams_id = 329  &
   location = -0.31, -1.0E-02, 1.08  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_331  &
   adams_id = 331  &
   location = -0.31, -2.0E-02, 0.6  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_333  &
   adams_id = 333  &
   location = -0.31, -1.0E-02, 0.57  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_335  &
   adams_id = 335  &
   location = -0.27, -1.0E-02, 0.6  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_337  &
   adams_id = 337  &
   location = -0.31, -2.0E-02, 9.0E-02  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_339  &
   adams_id = 339  &
   location = -0.31, -1.0E-02, 6.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_342  &
   adams_id = 342  &
   location = -0.27, -1.0E-02, 9.0E-02  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_343  &
   adams_id = 343  &
   location = 0.3, -2.0E-02, 6.0E-02  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_345  &
   adams_id = 345  &
   location = 0.26, -1.0E-02, 6.0E-02  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_347  &
   adams_id = 347  &
   location = 0.3, -1.0E-02, 9.0E-02  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.Base_simple_1_Origin  &
   adams_id = 10088  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground._Origin  &
   adams_id = 10097  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.PSMAR  &
   adams_id = 10136  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.ground.MARKER_10316  &
   adams_id = 10316  &
   location = 0.2758348598, 1.637287806, 7.5E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
!--------------------------------- Base_lid_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Base_lid_1  &
   adams_id = 2  &
   location = 0.36, -0.13, 1.2  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Base_lid_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Base_lid_1.MARKER_274  &
   adams_id = 274  &
   location = 1.0E-02, 6.5E-02, -6.0E-02  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_lid_1.MARKER_276  &
   adams_id = 276  &
   location = -9.75E-02, 0.125, -6.0E-02  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_1.MARKER_278  &
   adams_id = 278  &
   location = -0.13375, 4.0E-02, -0.115  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_1.Base_lid_1_Origin  &
   adams_id = 10000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_1.cm  &
   adams_id = 10001  &
   location = 1.03361262E-02, 6.5E-02, -6.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_1.PSMAR  &
   adams_id = 10137  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Base_lid_1  &
   mass = 0.7714296917  &
   center_of_mass_marker = .PM.Base_lid_1.cm  &
   ixx = 1.8497133E-03  &
   iyy = 8.732248563E-04  &
   izz = 1.0270912E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Outlayer_1_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Outlayer_1_2  &
   adams_id = 3  &
   location = -0.291515573, 0.1486257496, 0.6  &
   orientation = 261.49617618d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Outlayer_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Outlayer_1_2.MARKER_106  &
   adams_id = 106  &
   location = -0.435, -4.6E-02, 1.2500002E-03  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_2.MARKER_114  &
   adams_id = 114  &
   location = -0.435, -2.15549769E-02, 1.45390155E-02  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_2.MARKER_122  &
   adams_id = 122  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_2.MARKER_124  &
   adams_id = 124  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_2.Outlayer_1_2_Origin  &
   adams_id = 10002  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_2.cm  &
   adams_id = 10003  &
   location = -0.435, -2.33610239E-02, 7.107596605E-04  &
   orientation = 180.0d, 3.219904534d, 180.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_2.PSMAR  &
   adams_id = 10138  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Outlayer_1_2  &
   mass = 9.152114746  &
   center_of_mass_marker = .PM.Outlayer_1_2.cm  &
   ixx = 4.3459986E-03  &
   iyy = 0.5787663982  &
   izz = 0.5801189012  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Single_1 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Single_1  &
   adams_id = 4  &
   location = 0.3, -2.0E-02, 6.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Single_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Single_1.MARKER_145  &
   adams_id = 145  &
   location = 0.0, 3.2640147E-02, 2.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.MARKER_243  &
   adams_id = 243  &
   location = 0.0, 4.5E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.MARKER_344  &
   adams_id = 344  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.MARKER_346  &
   adams_id = 346  &
   location = -4.0E-02, 1.0E-02, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.MARKER_348  &
   adams_id = 348  &
   location = 0.0, 1.0E-02, 3.0E-02  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.Stands_Single_1_Origin  &
   adams_id = 10004  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.cm  &
   adams_id = 10005  &
   location = 0.0, 2.14728294E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_1.PSMAR  &
   adams_id = 10139  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Single_1  &
   mass = 1.234836324  &
   center_of_mass_marker = .PM.Stands_Single_1.cm  &
   ixx = 6.661436507E-04  &
   iyy = 8.488224554E-04  &
   izz = 9.511620298E-04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------- Caster_Wheel_Assemble_1 ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Caster_Wheel_Assemble_1  &
   adams_id = 5  &
   location = 0.265, -0.138, 1.14  &
   orientation = 90.0d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Caster_Wheel_Assemble_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.MARKER_256  &
   adams_id = 256  &
   location = -5.0E-02, 1.8E-02, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.MARKER_258  &
   adams_id = 258  &
   location = 0.0, 1.8E-02, -8.5E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.MARKER_260  &
   adams_id = 260  &
   location = 0.0, 2.8E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.Caster_Wheel_Assemble_1_Origin  &
   adams_id = 10006  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.cm  &
   adams_id = 10007  &
   location = 2.690947955E-04, -2.58076061E-02, 3.14216249E-02  &
   orientation = 0.4648650785d, 43.329956d, 0.3676885319d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR  &
   adams_id = 10140  &
   location = 3.7E-02, -7.0E-02, 7.0E-02  &
   orientation = 270.0d, 90.0d, 143.3467535d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR1  &
   adams_id = 10141  &
   location = 0.117, -7.0E-02, -9.3E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR2  &
   adams_id = 10142  &
   location = -3.4E-02, -7.0E-02, 7.0E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR3  &
   adams_id = 10143  &
   location = 0.0, -3.0E-03, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR4  &
   adams_id = 10144  &
   location = 0.0, 1.3E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR5  &
   adams_id = 10145  &
   location = 3.7E-02, -7.0E-02, 7.0E-02  &
   orientation = 270.0d, 90.0d, 100.4383366d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR6  &
   adams_id = 10146  &
   location = 0.0, 1.6E-02, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR7  &
   adams_id = 10147  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR8  &
   adams_id = 10148  &
   location = 0.0, -7.0E-02, 7.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR9  &
   adams_id = 10149  &
   location = 0.0, -7.0E-02, 7.0E-02  &
   orientation = 0.0d, 0.4992986468d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR10  &
   adams_id = 10150  &
   location = 0.0, -1.78E-02, 0.0  &
   orientation = 0.0d, 90.0d, 100.4383366d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR11  &
   adams_id = 10151  &
   location = 0.0, 2.4E-02, 0.0  &
   orientation = 180.0d, 90.0d, 143.3467535d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_1.PSMAR12  &
   adams_id = 10152  &
   location = 0.0, 3.7E-02, 0.0  &
   orientation = 270.0d, 69.5707128d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Caster_Wheel_Assemble_1  &
   mass = 4.627848021  &
   center_of_mass_marker = .PM.Caster_Wheel_Assemble_1.cm  &
   ixx = 1.87684041E-02  &
   iyy = 1.81946821E-02  &
   izz = 5.7082756E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!---------------------------------- Driver_1 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Driver_1  &
   adams_id = 6  &
   location = -0.3129244018, 0.1053582471, 0.131  &
   orientation = 158.109848d, 90.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Driver_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Driver_1.MARKER_24  &
   adams_id = 24  &
   location = -2.6491944E-02, -4.1E-02, 5.13729199E-02  &
   orientation = 180.0d, 90.0d, 21.89015197d
!
marker create  &
   marker_name = .PM.Driver_1.MARKER_26  &
   adams_id = 26  &
   location = -9.890300954E-04, -1.5E-02, -1.99755305E-02  &
   orientation = 180.0d, 90.0d, 21.89015197d
!
marker create  &
   marker_name = .PM.Driver_1.MARKER_28  &
   adams_id = 28  &
   location = 0.0, -3.975E-02, 0.0  &
   orientation = 180.0d, 90.0d, 21.89015197d
!
marker create  &
   marker_name = .PM.Driver_1.Driver_1_Origin  &
   adams_id = 10008  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Driver_1.cm  &
   adams_id = 10009  &
   location = -1.115300937E-05, 5.70637725E-02, -2.142468664E-05  &
   orientation = 90.28500265d, 27.50048674d, -90.25279989d
!
marker create  &
   marker_name = .PM.Driver_1.PSMAR  &
   adams_id = 10153  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Driver_1  &
   mass = 9.479805277  &
   center_of_mass_marker = .PM.Driver_1.cm  &
   ixx = 2.08289491E-02  &
   iyy = 1.5935334E-02  &
   izz = 2.08133296E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------- GB_T_283_2007________N_N_202_E__4 ----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__4  &
   adams_id = 7  &
   location = 0.2358348598, 1.602287806, 0.11  &
   orientation = 91.98417255d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_283_2007________N_N_202_E__4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.MARKER_218  &
   adams_id = 218  &
   location = 0.0, 1.24637582E-02, 4.317968595E-04  &
   orientation = -90.0d, 90.0d, 88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.MARKER_220  &
   adams_id = 220  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.GB_T_283_2007________N_N_202_E__4_Origin  &
   adams_id = 10010  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.cm  &
   adams_id = 10011  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR  &
   adams_id = 10154  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR13  &
   adams_id = 10155  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR14  &
   adams_id = 10156  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR15  &
   adams_id = 10157  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR16  &
   adams_id = 10158  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR17  &
   adams_id = 10159  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR18  &
   adams_id = 10160  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR19  &
   adams_id = 10161  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR20  &
   adams_id = 10162  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR21  &
   adams_id = 10163  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR22  &
   adams_id = 10164  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR23  &
   adams_id = 10165  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__4.PSMAR24  &
   adams_id = 10166  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__4  &
   mass = 4.25770024E-02  &
   center_of_mass_marker = .PM.GB_T_283_2007________N_N_202_E__4.cm  &
   ixx = 8.103189608E-06  &
   iyy = 4.368386855E-06  &
   izz = 4.368386855E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_6170_2015_1_____M16__4 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_6170_2015_1_____M16__4  &
   adams_id = 8  &
   location = -7.41651402E-02, 1.602287806, 0.6378  &
   orientation = 359.9920003333d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_6170_2015_1_____M16__4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__4.MARKER_155  &
   adams_id = 155  &
   location = 0.0, 0.0, -1.48E-02  &
   orientation = -179.9920003d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__4.MARKER_158  &
   adams_id = 158  &
   location = 0.0, 0.0, -7.4E-03  &
   orientation = -179.9920003d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__4.GB_T_6170_2015_1_____M16__4_Origin  &
   adams_id = 10012  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__4.cm  &
   adams_id = 10013  &
   location = 0.0, 5.681671659E-09, -7.4E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__4.PSMAR  &
   adams_id = 10167  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_6170_2015_1_____M16__4  &
   mass = 3.98647645E-02  &
   center_of_mass_marker = .PM.GB_T_6170_2015_1_____M16__4.cm  &
   ixx = 2.784048582E-06  &
   iyy = 2.784035519E-06  &
   izz = 4.169362707E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!---------------------------------- Handle_1 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Handle_1  &
   adams_id = 9  &
   location = 0.1764574816, 1.70178469, 0.2  &
   orientation = 347.84621301d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Handle_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Handle_1.MARKER_130  &
   adams_id = 130  &
   location = -0.2430267865, -6.19514409E-02, -1.0E-02  &
   orientation = -167.846213d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Handle_1.MARKER_280  &
   adams_id = 280  &
   location = -0.2060076557, -4.38518843E-02, 5.0E-03  &
   orientation = -167.846213d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Handle_1.MARKER_282  &
   adams_id = 282  &
   location = -0.113811535, -2.8509106E-02, 0.825  &
   orientation = -167.846213d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Handle_1.Handle_1_Origin  &
   adams_id = 10014  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Handle_1.cm  &
   adams_id = 10015  &
   location = -4.05335138E-02, -5.8142407E-03, 0.401221743  &
   orientation = -81.74145501d, 7.91443333E-02d, 91.38483737d
!
marker create  &
   marker_name = .PM.Handle_1.PSMAR  &
   adams_id = 10168  &
   location = -0.2430267865, -6.19514409E-02, 0.795  &
   orientation = 9.727116933d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Handle_1.PSMAR25  &
   adams_id = 10169  &
   location = -0.2430267865, -6.19514409E-02, 5.0E-03  &
   orientation = 9.727116933d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Handle_1.PSMAR26  &
   adams_id = 10170  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Handle_1  &
   mass = 2.507839147  &
   center_of_mass_marker = .PM.Handle_1.cm  &
   ixx = 0.223198877  &
   iyy = 0.239067415  &
   izz = 1.67265564E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- Connector_2_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Connector_2_2  &
   adams_id = 10  &
   location = 0.212942715, 1.536136845, 1.11  &
   orientation = 160.9113538d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Connector_2_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Connector_2_2.MARKER_84  &
   adams_id = 84  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_2.MARKER_86  &
   adams_id = 86  &
   location = 0.0, 1.0E-02, 7.0E-02  &
   orientation = 0.0d, 90.0d, 19.08864615d
!
marker create  &
   marker_name = .PM.Connector_2_2.MARKER_88  &
   adams_id = 88  &
   location = 0.0, 0.0, 2.425E-02  &
   orientation = -90.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_2.MARKER_285  &
   adams_id = 285  &
   location = 0.0, 0.0, 7.0E-02  &
   orientation = 180.0d, 90.0d, -19.08864615d
!
marker create  &
   marker_name = .PM.Connector_2_2.Connector_2_2_Origin  &
   adams_id = 10016  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_2.cm  &
   adams_id = 10017  &
   location = -2.077403542E-08, -3.369918678E-06, 4.53186841E-02  &
   orientation = 0.0d, 3.6970199E-03d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_2.PSMAR  &
   adams_id = 10171  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Connector_2_2  &
   mass = 0.239871558  &
   center_of_mass_marker = .PM.Connector_2_2.cm  &
   ixx = 1.325201655E-04  &
   iyy = 1.359153714E-04  &
   izz = 2.495050975E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------- GB_T_1228_2006______________M16_95__1 --------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_1228_2006______________M16_95__1  &
   adams_id = 11  &
   location = 0.2358348598, 1.602287806, 2.7E-02  &
   orientation = 271.03104198d, 90.0d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_1228_2006______________M16_95__1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_197  &
   adams_id = 197  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 91.03104198d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_199  &
   adams_id = 199  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 91.03104198d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_201  &
   adams_id = 201  &
   location = 1.0E-02, 0.0, -2.7E-02  &
   orientation = 90.0d, 90.0d, -91.03104198d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_205  &
   adams_id = 205  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 91.03104198d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_208  &
   adams_id = 208  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -91.03104198d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.GB_T_1228_2006______________M16_95__1_Origin  &
   adams_id = 10018  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.cm  &
   adams_id = 10019  &
   location = 4.44611241E-02, 4.045391937E-09, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__1.PSMAR  &
   adams_id = 10172  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_1228_2006______________M16_95__1  &
   mass = 2.52131055E-02  &
   center_of_mass_marker = .PM.GB_T_1228_2006______________M16_95__1.cm  &
   ixx = 1.221596527E-06  &
   iyy = 2.766764968E-05  &
   izz = 2.766765499E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- Front_wheel_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Front_wheel_2  &
   adams_id = 12  &
   location = -0.33, -0.1, -5.59E-02  &
   orientation = 177.8387864d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Front_wheel_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Front_wheel_2.MARKER_234  &
   adams_id = 234  &
   location = -5.59E-02, -0.2658256105, 0.1030503257  &
   orientation = 90.0d, 90.0d, -2.161213601d
!
marker create  &
   marker_name = .PM.Front_wheel_2.MARKER_236  &
   adams_id = 236  &
   location = 1.725E-02, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -2.161213601d
!
marker create  &
   marker_name = .PM.Front_wheel_2.Front_wheel_2_Origin  &
   adams_id = 10020  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_wheel_2.cm  &
   adams_id = 10021  &
   location = -1.81435248E-02, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_wheel_2.PSMAR  &
   adams_id = 10173  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_wheel_2.PSMAR27  &
   adams_id = 10174  &
   location = 1.205269528E-04, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Front_wheel_2  &
   mass = 1.813582879  &
   center_of_mass_marker = .PM.Front_wheel_2.cm  &
   ixx = 1.66498324E-02  &
   iyy = 9.1814222E-03  &
   izz = 9.1814222E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!---------------------------------- Base_1_2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Base_1_2  &
   adams_id = 13  &
   location = -0.2691211701, 0.143126717, 1.11  &
   orientation = 250.9113538d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Base_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_81  &
   adams_id = 81  &
   location = 5.0E-02, -5.55E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_85  &
   adams_id = 85  &
   location = 0.1231425179, 0.0, 3.8E-02  &
   orientation = 109.0886462d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_91  &
   adams_id = 91  &
   location = -0.46, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_97  &
   adams_id = 97  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_99  &
   adams_id = 99  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_101  &
   adams_id = 101  &
   location = 7.0E-02, -2.9E-02, -2.6E-02  &
   orientation = -70.91135385d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_103  &
   adams_id = 103  &
   location = 5.0E-02, -2.9E-02, 1.75E-03  &
   orientation = -70.91135385d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_152  &
   adams_id = 152  &
   location = 0.1366802309, 4.0420506E-03, 2.0E-02  &
   orientation = 109.0886462d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_2.MARKER_316  &
   adams_id = 316  &
   location = 0.125, 0.0, 2.91776316E-02  &
   orientation = 109.0886462d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_2.Base_1_2_Origin  &
   adams_id = 10022  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_2.cm  &
   adams_id = 10023  &
   location = -0.1339544901, -3.8423738E-03, 1.0800689E-03  &
   orientation = -179.6224535d, 9.124530087d, 179.105314d
!
marker create  &
   marker_name = .PM.Base_1_2.PSMAR  &
   adams_id = 10175  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Base_1_2  &
   mass = 9.075180373  &
   center_of_mass_marker = .PM.Base_1_2.cm  &
   ixx = 7.7566378E-03  &
   iyy = 0.7341767576  &
   izz = 0.7355526409  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Outlayer_1_6 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Outlayer_1_6  &
   adams_id = 14  &
   location = 0.2949191175, 0.1498966958, 1.14  &
   orientation = 272.32954676d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Outlayer_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Outlayer_1_6.MARKER_58  &
   adams_id = 58  &
   location = -0.435, -4.6E-02, 1.2500002E-03  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_6.MARKER_66  &
   adams_id = 66  &
   location = -0.435, -2.15549769E-02, 1.45390155E-02  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_6.MARKER_74  &
   adams_id = 74  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_6.MARKER_76  &
   adams_id = 76  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_6.Outlayer_1_6_Origin  &
   adams_id = 10024  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_6.cm  &
   adams_id = 10025  &
   location = -0.435, -2.33610239E-02, 7.107596605E-04  &
   orientation = 180.0d, 3.219904534d, 180.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_6.PSMAR  &
   adams_id = 10176  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Outlayer_1_6  &
   mass = 9.152114746  &
   center_of_mass_marker = .PM.Outlayer_1_6.cm  &
   ixx = 4.3459986E-03  &
   iyy = 0.5787663982  &
   izz = 0.5801189012  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_6170_2015_1_____M16__3 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_6170_2015_1_____M16__3  &
   adams_id = 15  &
   location = 0.2358348598, 1.602287806, 1.087  &
   orientation = 359.9920003333d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_6170_2015_1_____M16__3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__3.MARKER_172  &
   adams_id = 172  &
   location = 0.0, 0.0, 0.0  &
   orientation = -179.9920003d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__3.MARKER_174  &
   adams_id = 174  &
   location = 0.0, 0.0, -7.4E-03  &
   orientation = 7.9996667E-03d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__3.GB_T_6170_2015_1_____M16__3_Origin  &
   adams_id = 10026  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__3.cm  &
   adams_id = 10027  &
   location = 0.0, 5.681671659E-09, -7.4E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__3.PSMAR  &
   adams_id = 10177  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_6170_2015_1_____M16__3  &
   mass = 3.98647645E-02  &
   center_of_mass_marker = .PM.GB_T_6170_2015_1_____M16__3.cm  &
   ixx = 2.784048582E-06  &
   iyy = 2.784035519E-06  &
   izz = 4.169362707E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Driver_1_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Driver_1_2  &
   adams_id = 16  &
   location = 0.2679305086, 9.87397296E-02, 0.101  &
   orientation = 179.5299329d, 90.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Driver_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Driver_1_2.MARKER_52  &
   adams_id = 52  &
   location = -2.6491944E-02, -4.1E-02, 5.13729199E-02  &
   orientation = 180.0d, 90.0d, 0.4700670598d
!
marker create  &
   marker_name = .PM.Driver_1_2.MARKER_54  &
   adams_id = 54  &
   location = -9.890300954E-04, -1.5E-02, -1.99755305E-02  &
   orientation = 180.0d, 90.0d, 0.4700670598d
!
marker create  &
   marker_name = .PM.Driver_1_2.MARKER_56  &
   adams_id = 56  &
   location = 0.0, -3.975E-02, 0.0  &
   orientation = 180.0d, 90.0d, 0.4700670598d
!
marker create  &
   marker_name = .PM.Driver_1_2.Driver_1_2_Origin  &
   adams_id = 10028  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Driver_1_2.cm  &
   adams_id = 10029  &
   location = -1.115300937E-05, 5.70637725E-02, -2.142468664E-05  &
   orientation = 90.28500265d, 27.50048674d, -90.25279989d
!
marker create  &
   marker_name = .PM.Driver_1_2.PSMAR  &
   adams_id = 10178  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Driver_1_2  &
   mass = 9.479805277  &
   center_of_mass_marker = .PM.Driver_1_2.cm  &
   ixx = 2.08289491E-02  &
   iyy = 1.5935334E-02  &
   izz = 2.08133296E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_96_1_2002_____A_16___8 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_96_1_2002_____A_16___8  &
   adams_id = 17  &
   location = -7.41651402E-02, 1.602287806, 0.577  &
   orientation = 0.4075199901d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_96_1_2002_____A_16___8
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___8.MARKER_164  &
   adams_id = 164  &
   location = 2.69863194E-02, 8.593981659E-04, 0.0  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___8.MARKER_166  &
   adams_id = 166  &
   location = 8.830035721E-05, 1.24144891E-02, 3.0E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___8.MARKER_168  &
   adams_id = 168  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___8._1_2002_____A_16___8_Origin  &
   adams_id = 10030  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___8.cm  &
   adams_id = 10031  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___8.PSMAR  &
   adams_id = 10179  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_96_1_2002_____A_16___8  &
   mass = 5.209546E-03  &
   center_of_mass_marker = .PM.GB_T_96_1_2002_____A_16___8.cm  &
   ixx = 9.119961497E-07  &
   iyy = 9.119961497E-07  &
   izz = 1.81617798E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Double_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Double_2  &
   adams_id = 18  &
   location = 0.2358348598, 1.647287806, 6.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Double_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_195  &
   adams_id = 195  &
   location = 0.0, 3.25287644E-02, 5.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_203  &
   adams_id = 203  &
   location = 0.0, 3.25287644E-02, -2.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_217  &
   adams_id = 217  &
   location = 0.0, 3.25287644E-02, 5.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_219  &
   adams_id = 219  &
   location = 0.0, 4.5E-02, 4.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_221  &
   adams_id = 221  &
   location = 0.0, 3.25287644E-02, -2.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_223  &
   adams_id = 223  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_241  &
   adams_id = 241  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_245  &
   adams_id = 245  &
   location = 0.0, 4.5E-02, 4.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_296  &
   adams_id = 296  &
   location = -4.0E-02, 1.0E-02, 1.5E-02  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_298  &
   adams_id = 298  &
   location = -5.83333333E-02, -3.67166667E-02, -3.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.MARKER_300  &
   adams_id = 300  &
   location = 0.0, 0.0, 1.5E-02  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.Stands_Double_2_Origin  &
   adams_id = 10032  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.cm  &
   adams_id = 10033  &
   location = 0.0, 1.72008089E-02, 1.5E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_2.PSMAR  &
   adams_id = 10180  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Double_2  &
   mass = 1.501696582  &
   center_of_mass_marker = .PM.Stands_Double_2.cm  &
   ixx = 1.3290566E-03  &
   iyy = 1.7045278E-03  &
   izz = 1.0880459E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Connector_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Connector_2  &
   adams_id = 19  &
   location = 0.238680154, 1.532345656, 1.14  &
   orientation = 182.3295468d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Connector_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Connector_2.MARKER_60  &
   adams_id = 60  &
   location = 0.0, 0.0, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2.MARKER_62  &
   adams_id = 62  &
   location = 0.0, 1.0E-02, 7.0E-02  &
   orientation = 0.0d, 90.0d, -2.329546758d
!
marker create  &
   marker_name = .PM.Connector_2.MARKER_64  &
   adams_id = 64  &
   location = 0.0, 0.0, 2.425E-02  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2.MARKER_131  &
   adams_id = 131  &
   location = 0.0, -1.0E-02, 7.0E-02  &
   orientation = 0.0d, 90.0d, -2.329546758d
!
marker create  &
   marker_name = .PM.Connector_2.MARKER_283  &
   adams_id = 283  &
   location = 0.0, 0.0, 7.0E-02  &
   orientation = 180.0d, 90.0d, 2.329546758d
!
marker create  &
   marker_name = .PM.Connector_2.Connector_2_Origin  &
   adams_id = 10034  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2.cm  &
   adams_id = 10035  &
   location = -2.077403542E-08, -3.369918678E-06, 4.53186841E-02  &
   orientation = 0.0d, 3.6970199E-03d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2.PSMAR  &
   adams_id = 10181  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Connector_2  &
   mass = 0.239871558  &
   center_of_mass_marker = .PM.Connector_2.cm  &
   ixx = 1.325201655E-04  &
   iyy = 1.359153714E-04  &
   izz = 2.495050975E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Moving_2_1_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_2_1_2  &
   adams_id = 20  &
   location = 0.2388052739, 1.530349105, 6.15390155E-02  &
   orientation = 272.36445154d, 60.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_2_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_37  &
   adams_id = 37  &
   location = 0.0, -2.0E-03, 0.0  &
   orientation = 0.0d, 90.0d, 150.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_40  &
   adams_id = 40  &
   location = 8.6625022E-03, -6.0E-03, -5.001298E-03  &
   orientation = -90.0d, 60.0d, -92.36445154d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_41  &
   adams_id = 41  &
   location = -8.6625022E-03, -6.0E-03, 5.001298E-03  &
   orientation = -90.0d, 60.0d, -92.36445154d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_45  &
   adams_id = 45  &
   location = 0.0, 2.5E-03, 2.18853576E-02  &
   orientation = 180.0d, 90.0d, -150.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_47  &
   adams_id = 47  &
   location = 0.0, -3.75E-03, 0.0  &
   orientation = 0.0d, 90.0d, 150.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_49  &
   adams_id = 49  &
   location = 0.0, 0.4125, 2.6E-02  &
   orientation = 0.0d, 90.0d, 150.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.Moving_2_1_2_Origin  &
   adams_id = 10036  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.cm  &
   adams_id = 10037  &
   location = 0.0, 0.3447625948, 2.29384175E-02  &
   orientation = 0.0d, 0.8799737893d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.PSMAR  &
   adams_id = 10182  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_10306  &
   adams_id = 10306  &
   location = -0.9334937677, 1.506592114, 0.5400633347  &
   orientation = 358.8172707d, 92.04752973d, 239.9788639d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_10307  &
   adams_id = 10307  &
   location = -0.9334937677, 1.506592114, 0.5400633347  &
   orientation = 358.8172707d, 92.04752973d, 239.9788639d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_10314  &
   adams_id = 10314  &
   location = 6.0636684E-03, 1.381592114, 7.4245507E-03  &
   orientation = 0.0d, 90.0d, 240.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_2.MARKER_10315  &
   adams_id = 10315  &
   location = 6.0636684E-03, 1.381592114, 7.4245507E-03  &
   orientation = 0.0d, 90.0d, 240.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_2_1_2  &
   mass = 0.216368684  &
   center_of_mass_marker = .PM.Moving_2_1_2.cm  &
   ixx = 1.49774658E-02  &
   iyy = 1.512717616E-05  &
   izz = 1.49663823E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- Front_wheel_1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Front_wheel_1  &
   adams_id = 21  &
   location = -0.33, -0.1, 1.2195  &
   orientation = 93.44583434d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Front_wheel_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Front_wheel_1.MARKER_238  &
   adams_id = 238  &
   location = 1.95E-02, 7.65846932E-02, 0.2746223035  &
   orientation = -90.0d, 90.0d, 86.55416566d
!
marker create  &
   marker_name = .PM.Front_wheel_1.MARKER_240  &
   adams_id = 240  &
   location = 1.725E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 86.55416566d
!
marker create  &
   marker_name = .PM.Front_wheel_1.Front_wheel_1_Origin  &
   adams_id = 10038  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_wheel_1.cm  &
   adams_id = 10039  &
   location = -1.81435248E-02, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_wheel_1.PSMAR  &
   adams_id = 10183  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_wheel_1.PSMAR28  &
   adams_id = 10184  &
   location = 1.205269528E-04, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Front_wheel_1  &
   mass = 1.813582879  &
   center_of_mass_marker = .PM.Front_wheel_1.cm  &
   ixx = 1.66498324E-02  &
   iyy = 9.1814222E-03  &
   izz = 9.1814222E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Single_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Single_2  &
   adams_id = 22  &
   location = 0.3, -2.0E-02, 1.14  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Single_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Single_2.MARKER_153  &
   adams_id = 153  &
   location = 0.0, 3.2640147E-02, 2.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.MARKER_317  &
   adams_id = 317  &
   location = 0.0, 4.5E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.MARKER_320  &
   adams_id = 320  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.MARKER_322  &
   adams_id = 322  &
   location = 4.0E-02, 1.0E-02, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.MARKER_324  &
   adams_id = 324  &
   location = 0.0, 1.0E-02, -3.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.Stands_Single_2_Origin  &
   adams_id = 10040  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.cm  &
   adams_id = 10041  &
   location = 0.0, 2.14728294E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_2.PSMAR  &
   adams_id = 10185  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Single_2  &
   mass = 1.234836324  &
   center_of_mass_marker = .PM.Stands_Single_2.cm  &
   ixx = 6.661436507E-04  &
   iyy = 8.488224554E-04  &
   izz = 9.511620298E-04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- Connector_2_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Connector_2_3  &
   adams_id = 23  &
   location = -8.45164193E-02, 1.533057386, 0.6  &
   orientation = 171.4961762d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Connector_2_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Connector_2_3.MARKER_108  &
   adams_id = 108  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_3.MARKER_110  &
   adams_id = 110  &
   location = 0.0, 1.0E-02, 7.0E-02  &
   orientation = 0.0d, 90.0d, 8.503823824d
!
marker create  &
   marker_name = .PM.Connector_2_3.MARKER_112  &
   adams_id = 112  &
   location = 0.0, 0.0, 2.425E-02  &
   orientation = -90.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_3.MARKER_287  &
   adams_id = 287  &
   location = 0.0, 0.0, 7.0E-02  &
   orientation = 180.0d, 90.0d, -8.503823824d
!
marker create  &
   marker_name = .PM.Connector_2_3.Connector_2_3_Origin  &
   adams_id = 10042  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_3.cm  &
   adams_id = 10043  &
   location = -2.077403542E-08, -3.369918678E-06, 4.53186841E-02  &
   orientation = 0.0d, 3.6970199E-03d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_2_3.PSMAR  &
   adams_id = 10186  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Connector_2_3  &
   mass = 0.239871558  &
   center_of_mass_marker = .PM.Connector_2_3.cm  &
   ixx = 1.325201655E-04  &
   iyy = 1.359153714E-04  &
   izz = 2.495050975E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------- GB_T_283_2007________N_N_202_E__1 ----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__1  &
   adams_id = 24  &
   location = 0.2358348598, 1.602287806, 1.16  &
   orientation = 91.79032284d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_283_2007________N_N_202_E__1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.MARKER_185  &
   adams_id = 185  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 88.20967716d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.MARKER_230  &
   adams_id = 230  &
   location = 0.0, 1.24651478E-02, 3.896256388E-04  &
   orientation = -90.0d, 90.0d, 88.20967716d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.MARKER_232  &
   adams_id = 232  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -88.20967716d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.GB_T_283_2007________N_N_202_E__1_Origin  &
   adams_id = 10044  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.cm  &
   adams_id = 10045  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR  &
   adams_id = 10187  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR29  &
   adams_id = 10188  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR30  &
   adams_id = 10189  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR31  &
   adams_id = 10190  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR32  &
   adams_id = 10191  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR33  &
   adams_id = 10192  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR34  &
   adams_id = 10193  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR35  &
   adams_id = 10194  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR36  &
   adams_id = 10195  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR37  &
   adams_id = 10196  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR38  &
   adams_id = 10197  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR39  &
   adams_id = 10198  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__1.PSMAR40  &
   adams_id = 10199  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__1  &
   mass = 4.25770024E-02  &
   center_of_mass_marker = .PM.GB_T_283_2007________N_N_202_E__1.cm  &
   ixx = 8.103189608E-06  &
   iyy = 4.368386855E-06  &
   izz = 4.368386855E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Outlayer_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Outlayer_1  &
   adams_id = 25  &
   location = -0.2691892393, 0.143150251, 9.0E-02  &
   orientation = 250.9443666d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Outlayer_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Outlayer_1.MARKER_4  &
   adams_id = 4  &
   location = -0.435, -4.6E-02, 1.2500002E-03  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1.MARKER_6  &
   adams_id = 6  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1.MARKER_8  &
   adams_id = 8  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1.MARKER_22  &
   adams_id = 22  &
   location = -0.435, -2.15549769E-02, 1.45390155E-02  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1.Outlayer_1_Origin  &
   adams_id = 10046  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Outlayer_1.cm  &
   adams_id = 10047  &
   location = -0.435, -2.33610239E-02, 7.107596605E-04  &
   orientation = 180.0d, 3.219904534d, 180.0d
!
marker create  &
   marker_name = .PM.Outlayer_1.PSMAR  &
   adams_id = 10200  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Outlayer_1  &
   mass = 9.152114746  &
   center_of_mass_marker = .PM.Outlayer_1.cm  &
   ixx = 4.3459986E-03  &
   iyy = 0.5787663982  &
   izz = 0.5801189012  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Base_lid_3 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Base_lid_3  &
   adams_id = 26  &
   location = 0.36, -0.13, 0.12  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Base_lid_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Base_lid_3.MARKER_268  &
   adams_id = 268  &
   location = 1.0E-02, 6.5E-02, -6.0E-02  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_lid_3.MARKER_270  &
   adams_id = 270  &
   location = -9.75E-02, 0.125, -6.0E-02  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_3.MARKER_272  &
   adams_id = 272  &
   location = -0.13875, 4.0E-02, -5.0E-03  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_3.Base_lid_3_Origin  &
   adams_id = 10048  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_3.cm  &
   adams_id = 10049  &
   location = 1.03361262E-02, 6.5E-02, -6.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_lid_3.PSMAR  &
   adams_id = 10201  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Base_lid_3  &
   mass = 0.7714296917  &
   center_of_mass_marker = .PM.Base_lid_3.cm  &
   ixx = 1.8497133E-03  &
   iyy = 8.732248563E-04  &
   izz = 1.0270912E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Moving_2_1_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_2_1_3  &
   adams_id = 27  &
   location = -8.48121702E-02, 1.531079374, 0.6  &
   orientation = 261.49617618d, 56.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_2_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_2_1_3.MARKER_107  &
   adams_id = 107  &
   location = 0.0, -2.0E-03, 0.0  &
   orientation = 0.0d, 90.0d, -34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.MARKER_113  &
   adams_id = 113  &
   location = 0.0, 0.4125, 2.6E-02  &
   orientation = 0.0d, 90.0d, -34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.MARKER_118  &
   adams_id = 118  &
   location = 0.0, 2.5E-03, 0.0  &
   orientation = 0.0d, 90.0d, -34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.MARKER_120  &
   adams_id = 120  &
   location = 0.0, -3.75E-03, 0.0  &
   orientation = -180.0d, 90.0d, 34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.Moving_2_1_3_Origin  &
   adams_id = 10050  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.cm  &
   adams_id = 10051  &
   location = 0.0, 0.3447625948, 2.29384175E-02  &
   orientation = 0.0d, 0.8799737893d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.PSMAR  &
   adams_id = 10202  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.MARKER_10310  &
   adams_id = 10310  &
   location = 5.5472312829E-11, 1.397821276, 8.224099179E-11  &
   orientation = 0.0d, 90.0d, 56.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_3.MARKER_10311  &
   adams_id = 10311  &
   location = 5.5472312829E-11, 1.397821276, 8.224099179E-11  &
   orientation = 0.0d, 90.0d, 56.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_2_1_3  &
   mass = 0.216368684  &
   center_of_mass_marker = .PM.Moving_2_1_3.cm  &
   ixx = 1.49774658E-02  &
   iyy = 1.512717616E-05  &
   izz = 1.49663823E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Single_4 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Single_4  &
   adams_id = 28  &
   location = -0.31, -2.0E-02, 0.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Single_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Single_4.MARKER_149  &
   adams_id = 149  &
   location = 0.0, 3.2640147E-02, 2.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.MARKER_313  &
   adams_id = 313  &
   location = 0.0, 4.5E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.MARKER_332  &
   adams_id = 332  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.MARKER_334  &
   adams_id = 334  &
   location = 0.0, 1.0E-02, -3.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.MARKER_336  &
   adams_id = 336  &
   location = 4.0E-02, 1.0E-02, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.Stands_Single_4_Origin  &
   adams_id = 10052  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.cm  &
   adams_id = 10053  &
   location = 0.0, 2.14728294E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_4.PSMAR  &
   adams_id = 10203  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Single_4  &
   mass = 1.234836324  &
   center_of_mass_marker = .PM.Stands_Single_4.cm  &
   ixx = 6.661436507E-04  &
   iyy = 8.488224554E-04  &
   izz = 9.511620298E-04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------- GB_T_1228_2006______________M16_95__3 --------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_1228_2006______________M16_95__3  &
   adams_id = 29  &
   location = 0.2358348598, 1.602287806, 1.173  &
   orientation = 111.4685613d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_1228_2006______________M16_95__3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_173  &
   adams_id = 173  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 68.53143865d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_177  &
   adams_id = 177  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 68.53143865d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_179  &
   adams_id = 179  &
   location = 1.0E-02, 0.0, -2.7E-02  &
   orientation = 90.0d, 90.0d, -68.53143865d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_183  &
   adams_id = 183  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 68.53143865d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_186  &
   adams_id = 186  &
   location = 5.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 68.53143865d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.GB_T_1228_2006______________M16_95__3_Origin  &
   adams_id = 10054  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.cm  &
   adams_id = 10055  &
   location = 4.44611241E-02, 4.045391937E-09, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_95__3.PSMAR  &
   adams_id = 10204  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_1228_2006______________M16_95__3  &
   mass = 2.52131055E-02  &
   center_of_mass_marker = .PM.GB_T_1228_2006______________M16_95__3.cm  &
   ixx = 1.221596527E-06  &
   iyy = 2.766764968E-05  &
   izz = 2.766765499E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------- Caster_Wheel_Assemble_2 ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Caster_Wheel_Assemble_2  &
   adams_id = 30  &
   location = 0.255, -0.138, 6.0E-02  &
   orientation = 90.0d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Caster_Wheel_Assemble_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.MARKER_250  &
   adams_id = 250  &
   location = 0.0, 1.8E-02, -8.5E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.MARKER_252  &
   adams_id = 252  &
   location = 5.0E-02, 1.8E-02, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.MARKER_254  &
   adams_id = 254  &
   location = 0.0, 2.8E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.Caster_Wheel_Assemble_2_Origin  &
   adams_id = 10056  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.cm  &
   adams_id = 10057  &
   location = 2.690947955E-04, -2.58076061E-02, 3.14216249E-02  &
   orientation = 0.4648650785d, 43.329956d, 0.3676885319d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR  &
   adams_id = 10205  &
   location = 3.7E-02, -7.0E-02, 7.0E-02  &
   orientation = 270.0d, 90.0d, 143.3467535d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR41  &
   adams_id = 10206  &
   location = 0.117, -7.0E-02, -9.3E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR42  &
   adams_id = 10207  &
   location = -3.4E-02, -7.0E-02, 7.0E-02  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR43  &
   adams_id = 10208  &
   location = 0.0, -3.0E-03, 0.0  &
   orientation = 180.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR44  &
   adams_id = 10209  &
   location = 0.0, 1.3E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR45  &
   adams_id = 10210  &
   location = 3.7E-02, -7.0E-02, 7.0E-02  &
   orientation = 270.0d, 90.0d, 100.4383366d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR46  &
   adams_id = 10211  &
   location = 0.0, 1.6E-02, 0.0  &
   orientation = 270.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR47  &
   adams_id = 10212  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR48  &
   adams_id = 10213  &
   location = 0.0, -7.0E-02, 7.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR49  &
   adams_id = 10214  &
   location = 0.0, -7.0E-02, 7.0E-02  &
   orientation = 0.0d, 0.4992986468d, 0.0d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR50  &
   adams_id = 10215  &
   location = 0.0, -1.78E-02, 0.0  &
   orientation = 0.0d, 90.0d, 100.4383366d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR51  &
   adams_id = 10216  &
   location = 0.0, 2.4E-02, 0.0  &
   orientation = 180.0d, 90.0d, 143.3467535d
!
marker create  &
   marker_name = .PM.Caster_Wheel_Assemble_2.PSMAR52  &
   adams_id = 10217  &
   location = 0.0, 3.7E-02, 0.0  &
   orientation = 270.0d, 69.5707128d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Caster_Wheel_Assemble_2  &
   mass = 4.627848021  &
   center_of_mass_marker = .PM.Caster_Wheel_Assemble_2.cm  &
   ixx = 1.87684041E-02  &
   iyy = 1.81946821E-02  &
   izz = 5.7082756E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- MirrorBase_1 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.MirrorBase_1  &
   adams_id = 31  &
   location = -0.2691892393, 0.143150251, 9.0E-02  &
   orientation = 250.9443666d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.MirrorBase_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_1  &
   adams_id = 1  &
   location = -0.46, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_3  &
   adams_id = 3  &
   location = 5.0E-02, -5.55E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_5  &
   adams_id = 5  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_7  &
   adams_id = 7  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_11  &
   adams_id = 11  &
   location = 0.1085218023, 2.7858227E-03, -2.0E-02  &
   orientation = 109.0556334d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_23  &
   adams_id = 23  &
   location = 0.0, 0.0, 0.0  &
   orientation = 109.0556334d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_25  &
   adams_id = 25  &
   location = 7.0E-02, -2.9E-02, 2.6E-02  &
   orientation = 109.0556334d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_27  &
   adams_id = 27  &
   location = 5.0E-02, -2.9E-02, -1.75E-03  &
   orientation = 109.0556334d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_148  &
   adams_id = 148  &
   location = 0.1366825579, 4.03532E-03, 2.0E-02  &
   orientation = 109.0556334d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MARKER_248  &
   adams_id = 248  &
   location = 0.125, 0.0, -2.91776316E-02  &
   orientation = 109.0556334d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.MirrorBase_1_Origin  &
   adams_id = 10058  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1.cm  &
   adams_id = 10059  &
   location = -0.1339544811, -3.8424001E-03, -1.0800674E-03  &
   orientation = 0.3775247505d, 9.124714413d, -0.8946672668d
!
marker create  &
   marker_name = .PM.MirrorBase_1.PSMAR  &
   adams_id = 10218  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.MirrorBase_1  &
   mass = 8.949136978  &
   center_of_mass_marker = .PM.MirrorBase_1.cm  &
   ixx = 7.6489069E-03  &
   iyy = 0.7239798721  &
   izz = 0.725336648  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Driver_1_3 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Driver_1_3  &
   adams_id = 32  &
   location = -0.3128781004, 0.1053599187, 1.069  &
   orientation = 269.65746354d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Driver_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Driver_1_3.MARKER_102  &
   adams_id = 102  &
   location = -1.8939039E-02, -1.5E-02, 6.4275034E-03  &
   orientation = 180.0d, 90.0d, 89.65746354d
!
marker create  &
   marker_name = .PM.Driver_1_3.MARKER_104  &
   adams_id = 104  &
   location = 0.0, -3.975E-02, 0.0  &
   orientation = 180.0d, 90.0d, 89.65746354d
!
marker create  &
   marker_name = .PM.Driver_1_3.Driver_1_3_Origin  &
   adams_id = 10060  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Driver_1_3.cm  &
   adams_id = 10061  &
   location = -1.115300937E-05, 5.70637725E-02, -2.142468664E-05  &
   orientation = 90.28500265d, 27.50048674d, -90.25279989d
!
marker create  &
   marker_name = .PM.Driver_1_3.PSMAR  &
   adams_id = 10219  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Driver_1_3  &
   mass = 9.479805277  &
   center_of_mass_marker = .PM.Driver_1_3.cm  &
   ixx = 2.08289491E-02  &
   iyy = 1.5935334E-02  &
   izz = 2.08133296E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_6170_2015_1_____M16__1 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_6170_2015_1_____M16__1  &
   adams_id = 33  &
   location = 0.2358348598, 1.602287806, 0.1278  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_6170_2015_1_____M16__1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__1.MARKER_193  &
   adams_id = 193  &
   location = 0.0, 0.0, -1.48E-02  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__1.MARKER_200  &
   adams_id = 200  &
   location = 0.0, 0.0, -7.4E-03  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__1.GB_T_6170_2015_1_____M16__1_Origin  &
   adams_id = 10062  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__1.cm  &
   adams_id = 10063  &
   location = 0.0, 5.681671659E-09, -7.4E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_6170_2015_1_____M16__1.PSMAR  &
   adams_id = 10220  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_6170_2015_1_____M16__1  &
   mass = 3.98647645E-02  &
   center_of_mass_marker = .PM.GB_T_6170_2015_1_____M16__1.cm  &
   ixx = 2.784048582E-06  &
   iyy = 2.784035519E-06  &
   izz = 4.169362707E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Leg_Rest_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Leg_Rest_1  &
   adams_id = 34  &
   location = 7.65012532E-02, -0.13, 0.27  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Leg_Rest_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Leg_Rest_1.MARKER_308  &
   adams_id = 308  &
   location = 7.11154665E-02, 0.0, 0.33  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Leg_Rest_1.MARKER_309  &
   adams_id = 309  &
   location = -6.62161978E-02, 0.125, 0.0  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Leg_Rest_1.MARKER_312  &
   adams_id = 312  &
   location = -0.1311247848, 0.1156958655, 0.33  &
   orientation = 98.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Leg_Rest_1.Leg_Rest_1_Origin  &
   adams_id = 10064  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Leg_Rest_1.cm  &
   adams_id = 10065  &
   location = -8.84493542E-02, 0.136367088, 0.33  &
   orientation = 7.394272357d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Leg_Rest_1.PSMAR  &
   adams_id = 10221  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Leg_Rest_1  &
   mass = 10.83767678  &
   center_of_mass_marker = .PM.Leg_Rest_1.cm  &
   ixx = 0.5220915918  &
   iyy = 0.4796364061  &
   izz = 6.90429452E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Moving_2_1_6 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_2_1_6  &
   adams_id = 35  &
   location = 0.2122886537, 1.534246817, 1.11  &
   orientation = 250.9113538d, 56.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_2_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_2_1_6.MARKER_83  &
   adams_id = 83  &
   location = 0.0, -2.0E-03, 0.0  &
   orientation = 0.0d, 90.0d, -34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.MARKER_89  &
   adams_id = 89  &
   location = 0.0, 0.4125, 2.6E-02  &
   orientation = 0.0d, 90.0d, -34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.MARKER_94  &
   adams_id = 94  &
   location = 0.0, 2.5E-03, 0.0  &
   orientation = 0.0d, 90.0d, -34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.MARKER_96  &
   adams_id = 96  &
   location = 0.0, -3.75E-03, 0.0  &
   orientation = 180.0d, 90.0d, 34.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.Moving_2_1_6_Origin  &
   adams_id = 10066  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.cm  &
   adams_id = 10067  &
   location = 0.0, 0.3447625948, 2.29384175E-02  &
   orientation = 0.0d, 0.8799737893d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.PSMAR  &
   adams_id = 10222  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.MARKER_10317  &
   adams_id = 10317  &
   location = 4.753139E-03, 1.472063365, 7.0468184E-03  &
   orientation = 95.37209617d, 144.7943673d, 192.4335926d
!
marker create  &
   marker_name = .PM.Moving_2_1_6.MARKER_10318  &
   adams_id = 10318  &
   location = 4.753139E-03, 1.472063365, 7.0468184E-03  &
   orientation = 95.37209617d, 144.7943673d, 192.4335926d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_2_1_6  &
   mass = 0.216368684  &
   center_of_mass_marker = .PM.Moving_2_1_6.cm  &
   ixx = 1.49774658E-02  &
   iyy = 1.512717616E-05  &
   izz = 1.49663823E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------- GB_T_283_2007________N_N_202_E__5 ----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__5  &
   adams_id = 36  &
   location = -7.41651402E-02, 1.602287806, 0.62  &
   orientation = 91.98417255d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_283_2007________N_N_202_E__5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.MARKER_214  &
   adams_id = 214  &
   location = 0.0, 1.24073596E-02, 4.298429754E-04  &
   orientation = -90.0d, 90.0d, 88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.MARKER_216  &
   adams_id = 216  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.GB_T_283_2007________N_N_202_E__5_Origin  &
   adams_id = 10068  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.cm  &
   adams_id = 10069  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR  &
   adams_id = 10223  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR53  &
   adams_id = 10224  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR54  &
   adams_id = 10225  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR55  &
   adams_id = 10226  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR56  &
   adams_id = 10227  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR57  &
   adams_id = 10228  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR58  &
   adams_id = 10229  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR59  &
   adams_id = 10230  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR60  &
   adams_id = 10231  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR61  &
   adams_id = 10232  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR62  &
   adams_id = 10233  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR63  &
   adams_id = 10234  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__5.PSMAR64  &
   adams_id = 10235  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__5  &
   mass = 4.25770024E-02  &
   center_of_mass_marker = .PM.GB_T_283_2007________N_N_202_E__5.cm  &
   ixx = 8.103189608E-06  &
   iyy = 4.368386855E-06  &
   izz = 4.368386855E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_96_1_2002_____A_16___2 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_96_1_2002_____A_16___2  &
   adams_id = 37  &
   location = 0.2358348598, 1.602287806, 0.11  &
   orientation = 0.4075199901d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_96_1_2002_____A_16___2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___2.MARKER_194  &
   adams_id = 194  &
   location = 0.0, 0.0, 3.0E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___2.MARKER_196  &
   adams_id = 196  &
   location = 8.870173323E-05, 1.24709201E-02, 0.0  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___2.MARKER_198  &
   adams_id = 198  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___2._1_2002_____A_16___2_Origin  &
   adams_id = 10070  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___2.cm  &
   adams_id = 10071  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___2.PSMAR  &
   adams_id = 10236  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_96_1_2002_____A_16___2  &
   mass = 5.209546E-03  &
   center_of_mass_marker = .PM.GB_T_96_1_2002_____A_16___2.cm  &
   ixx = 9.119961497E-07  &
   iyy = 9.119961497E-07  &
   izz = 1.81617798E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Driver_1_5 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Driver_1_5  &
   adams_id = 38  &
   location = 0.2679754371, 9.87592528E-02, 1.099  &
   orientation = 162.4155083d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Driver_1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Driver_1_5.MARKER_78  &
   adams_id = 78  &
   location = 6.8121985E-03, -1.5E-02, -1.8804094E-02  &
   orientation = 180.0d, 90.0d, -17.58449169d
!
marker create  &
   marker_name = .PM.Driver_1_5.MARKER_80  &
   adams_id = 80  &
   location = 0.0, -3.975E-02, 0.0  &
   orientation = 180.0d, 90.0d, -17.58449169d
!
marker create  &
   marker_name = .PM.Driver_1_5.Driver_1_5_Origin  &
   adams_id = 10072  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Driver_1_5.cm  &
   adams_id = 10073  &
   location = -1.115300937E-05, 5.70637725E-02, -2.142468664E-05  &
   orientation = 90.28500265d, 27.50048674d, -90.25279989d
!
marker create  &
   marker_name = .PM.Driver_1_5.PSMAR  &
   adams_id = 10237  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Driver_1_5  &
   mass = 9.479805277  &
   center_of_mass_marker = .PM.Driver_1_5.cm  &
   ixx = 2.08289491E-02  &
   iyy = 1.5935334E-02  &
   izz = 2.08133296E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_96_1_2002_____A_16___6 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_96_1_2002_____A_16___6  &
   adams_id = 39  &
   location = 0.2358348598, 1.602287806, 1.087  &
   orientation = 0.4075199901d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_96_1_2002_____A_16___6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___6.MARKER_171  &
   adams_id = 171  &
   location = 0.0, 0.0, 0.0  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___6.MARKER_176  &
   adams_id = 176  &
   location = 8.870173323E-05, 1.24709201E-02, 3.0E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___6.MARKER_178  &
   adams_id = 178  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___6._1_2002_____A_16___6_Origin  &
   adams_id = 10074  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___6.cm  &
   adams_id = 10075  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___6.PSMAR  &
   adams_id = 10238  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_96_1_2002_____A_16___6  &
   mass = 5.209546E-03  &
   center_of_mass_marker = .PM.GB_T_96_1_2002_____A_16___6.cm  &
   ixx = 9.119961497E-07  &
   iyy = 9.119961497E-07  &
   izz = 1.81617798E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- Connector_1_2 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Connector_1_2  &
   adams_id = 40  &
   location = 0.2387227624, 1.532347403, 6.15390155E-02  &
   orientation = 182.3644515d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Connector_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Connector_1_2.MARKER_38  &
   adams_id = 38  &
   location = 0.0, 0.0, 0.0  &
   orientation = -90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1_2.MARKER_42  &
   adams_id = 42  &
   location = 0.0, -1.0E-02, 4.0E-03  &
   orientation = 0.0d, 90.0d, -2.364451535d
!
marker create  &
   marker_name = .PM.Connector_1_2.MARKER_43  &
   adams_id = 43  &
   location = 0.0, 0.0, 2.425E-02  &
   orientation = 90.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1_2.MARKER_242  &
   adams_id = 242  &
   location = 0.0, 0.0, 7.0E-02  &
   orientation = 180.0d, 90.0d, 2.364451535d
!
marker create  &
   marker_name = .PM.Connector_1_2.Connector_1_2_Origin  &
   adams_id = 10076  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1_2.cm  &
   adams_id = 10077  &
   location = -2.077403542E-08, -3.369918678E-06, 4.53186841E-02  &
   orientation = 0.0d, 3.6970199E-03d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1_2.PSMAR  &
   adams_id = 10239  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Connector_1_2  &
   mass = 0.239871558  &
   center_of_mass_marker = .PM.Connector_1_2.cm  &
   ixx = 1.325201655E-04  &
   iyy = 1.359153714E-04  &
   izz = 2.495050975E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!---------------------------------- Base_1_3 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Base_1_3  &
   adams_id = 41  &
   location = -0.291515573, 0.1486257496, 0.6  &
   orientation = 261.49617618d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Base_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_105  &
   adams_id = 105  &
   location = 5.0E-02, -5.55E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_109  &
   adams_id = 109  &
   location = 0.1231425179, 0.0, 3.8E-02  &
   orientation = 98.50382382d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_115  &
   adams_id = 115  &
   location = -0.46, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_121  &
   adams_id = 121  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_123  &
   adams_id = 123  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_125  &
   adams_id = 125  &
   location = 7.0E-02, -2.9E-02, -2.6E-02  &
   orientation = -81.49617618d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_127  &
   adams_id = 127  &
   location = 5.0E-02, -2.9E-02, 1.75E-03  &
   orientation = -81.49617618d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_150  &
   adams_id = 150  &
   location = 0.1372239687, 1.8277184E-03, 2.0E-02  &
   orientation = 98.50382382d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_3.MARKER_314  &
   adams_id = 314  &
   location = 0.125, 0.0, 2.91776316E-02  &
   orientation = 98.50382382d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_3.Base_1_3_Origin  &
   adams_id = 10078  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1_3.cm  &
   adams_id = 10079  &
   location = -0.1339544901, -3.8423738E-03, 1.0800689E-03  &
   orientation = -179.6224535d, 9.124530087d, 179.105314d
!
marker create  &
   marker_name = .PM.Base_1_3.PSMAR  &
   adams_id = 10240  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Base_1_3  &
   mass = 9.075180373  &
   center_of_mass_marker = .PM.Base_1_3.cm  &
   ixx = 7.7566378E-03  &
   iyy = 0.7341767576  &
   izz = 0.7355526409  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Platform_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Platform_1  &
   adams_id = 42  &
   location = 0.6758348598, 1.627387806, 0.63  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Platform_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_129  &
   adams_id = 129  &
   location = -0.75, 6.5E-02, -0.445  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_133  &
   adams_id = 133  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_139  &
   adams_id = 139  &
   location = -0.205, -1.0E-04, 0.495  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_141  &
   adams_id = 141  &
   location = 0.0, 7.7475E-02, 0.4975  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_143  &
   adams_id = 143  &
   location = 0.0, 7.7475E-02, -0.5575  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_261  &
   adams_id = 261  &
   location = -0.72, 7.66E-02, -3.0E-02  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_263  &
   adams_id = 263  &
   location = -0.735, 8.0E-02, -0.385  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_265  &
   adams_id = 265  &
   location = -0.735, 8.0E-02, 0.325  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_279  &
   adams_id = 279  &
   location = -0.71, 7.49E-02, -0.425  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_281  &
   adams_id = 281  &
   location = -0.7325, 7.745E-02, 0.4  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_289  &
   adams_id = 289  &
   location = -0.48, 9.9E-03, 0.495  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_291  &
   adams_id = 291  &
   location = -0.3816666667, 5.66166667E-02, 0.54  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_293  &
   adams_id = 293  &
   location = -0.44, 1.99E-02, 0.495  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_295  &
   adams_id = 295  &
   location = -0.4, 9.9E-03, -0.555  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_297  &
   adams_id = 297  &
   location = -0.3816666667, 5.66166667E-02, -0.6  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_299  &
   adams_id = 299  &
   location = -0.44, 1.99E-02, -0.555  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_301  &
   adams_id = 301  &
   location = -0.745, 9.9E-03, -6.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_303  &
   adams_id = 303  &
   location = -0.79, 5.66166667E-02, -3.0E-02  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Platform_1.MARKER_305  &
   adams_id = 305  &
   location = -0.745, 1.99E-02, -3.0E-02  &
   orientation = 0.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.Platform_1_Origin  &
   adams_id = 10080  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.cm  &
   adams_id = 10081  &
   location = -0.5527748413, 7.21979111E-02, -3.0E-02  &
   orientation = -0.2024326013d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Platform_1.PSMAR  &
   adams_id = 10241  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Platform_1  &
   mass = 50.32060002  &
   center_of_mass_marker = .PM.Platform_1.cm  &
   ixx = 10.34101396  &
   iyy = 13.07513102  &
   izz = 2.996038409  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Moving_2_1_5 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_2_1_5  &
   adams_id = 43  &
   location = 0.2387614481, 1.530347309, 1.14  &
   orientation = 272.32954676d, 56.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_2_1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_2_1_5.MARKER_59  &
   adams_id = 59  &
   location = 0.0, -2.0E-03, 0.0  &
   orientation = 0.0d, 90.0d, 146.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_5.MARKER_65  &
   adams_id = 65  &
   location = 0.0, 0.4125, 2.6E-02  &
   orientation = 0.0d, 90.0d, 146.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_5.MARKER_70  &
   adams_id = 70  &
   location = 0.0, 2.5E-03, 0.0  &
   orientation = 0.0d, 90.0d, 146.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_5.MARKER_72  &
   adams_id = 72  &
   location = 0.0, -3.75E-03, 0.0  &
   orientation = 180.0d, 90.0d, -146.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_5.Moving_2_1_5_Origin  &
   adams_id = 10082  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_5.cm  &
   adams_id = 10083  &
   location = 0.0, 0.3447625948, 2.29384175E-02  &
   orientation = 0.0d, 0.8799737893d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1_5.PSMAR  &
   adams_id = 10242  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_2_1_5  &
   mass = 0.216368684  &
   center_of_mass_marker = .PM.Moving_2_1_5.cm  &
   ixx = 1.49774658E-02  &
   iyy = 1.512717616E-05  &
   izz = 1.49663823E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Outlayer_1_4 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Outlayer_1_4  &
   adams_id = 44  &
   location = 0.294843031, 0.1498935774, 6.0E-02  &
   orientation = 272.36445154d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Outlayer_1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Outlayer_1_4.MARKER_32  &
   adams_id = 32  &
   location = -0.435, -4.6E-02, 1.2500002E-03  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_4.MARKER_34  &
   adams_id = 34  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_4.MARKER_36  &
   adams_id = 36  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_4.MARKER_50  &
   adams_id = 50  &
   location = -0.435, -2.15549769E-02, 1.45390155E-02  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_4.Outlayer_1_4_Origin  &
   adams_id = 10084  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_4.cm  &
   adams_id = 10085  &
   location = -0.435, -2.33610239E-02, 7.107596605E-04  &
   orientation = 180.0d, 3.219904534d, 180.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_4.PSMAR  &
   adams_id = 10243  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Outlayer_1_4  &
   mass = 9.152114746  &
   center_of_mass_marker = .PM.Outlayer_1_4.cm  &
   ixx = 4.3459986E-03  &
   iyy = 0.5787663982  &
   izz = 0.5801189012  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- Back_Support_1 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Back_Support_1  &
   adams_id = 45  &
   location = 0.6750170432, 1.627287806, 0.5976716473  &
   orientation = 270.0d, 90.0d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Back_Support_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Back_Support_1.MARKER_134  &
   adams_id = 134  &
   location = 3.23283527E-02, 1.0E-04, -8.178166329E-04  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.MARKER_135  &
   adams_id = 135  &
   location = -2.4579765E-05, 0.1, -0.1783789614  &
   orientation = 0.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.MARKER_137  &
   adams_id = 137  &
   location = -2.4579765E-05, 0.1, -0.1783789614  &
   orientation = 0.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.MARKER_140  &
   adams_id = 140  &
   location = 0.5273283527, 0.0, 0.2041821834  &
   orientation = 0.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.MARKER_142  &
   adams_id = 142  &
   location = 0.5298283527, 7.7575E-02, -8.178166329E-04  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.MARKER_144  &
   adams_id = 144  &
   location = -0.5251716473, 7.7575E-02, -8.178166329E-04  &
   orientation = 180.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.Back_Support_1_Origin  &
   adams_id = 10086  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Back_Support_1.cm  &
   adams_id = 10087  &
   location = -4.1767228E-03, 9.55097918E-02, -0.1441861529  &
   orientation = 179.2982847d, 15.53981007d, -179.2409957d
!
marker create  &
   marker_name = .PM.Back_Support_1.PSMAR  &
   adams_id = 10244  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Back_Support_1  &
   mass = 3.004765077  &
   center_of_mass_marker = .PM.Back_Support_1.cm  &
   ixx = 1.56189457E-02  &
   iyy = 0.2935132712  &
   izz = 0.2970238213  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Moving_1_2 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_1_2  &
   adams_id = 46  &
   location = -0.2160516019, 0.6533365523, 0.6  &
   orientation = 261.49617618d, 23.00513715d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_1_2.MARKER_111  &
   adams_id = 111  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 66.99486285d
!
marker create  &
   marker_name = .PM.Moving_1_2.MARKER_116  &
   adams_id = 116  &
   location = -0.472, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -66.99486285d
!
marker create  &
   marker_name = .PM.Moving_1_2.MARKER_117  &
   adams_id = 117  &
   location = -0.885, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -66.99486285d
!
marker create  &
   marker_name = .PM.Moving_1_2.MARKER_119  &
   adams_id = 119  &
   location = -0.472, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 66.99486285d
!
marker create  &
   marker_name = .PM.Moving_1_2.Moving_1_2_Origin  &
   adams_id = 10089  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_2.cm  &
   adams_id = 10090  &
   location = -0.4837320205, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_2.PSMAR  &
   adams_id = 10245  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_1_2  &
   mass = 1.123212245  &
   center_of_mass_marker = .PM.Moving_1_2.cm  &
   ixx = 1.861695146E-04  &
   iyy = 7.12556205E-02  &
   izz = 7.12555807E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Single_5 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Single_5  &
   adams_id = 47  &
   location = -0.31, -2.0E-02, 1.11  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Single_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Single_5.MARKER_151  &
   adams_id = 151  &
   location = 0.0, 3.2640147E-02, 2.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.MARKER_315  &
   adams_id = 315  &
   location = 0.0, 4.5E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.MARKER_326  &
   adams_id = 326  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.MARKER_328  &
   adams_id = 328  &
   location = 4.0E-02, 1.0E-02, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.MARKER_330  &
   adams_id = 330  &
   location = 0.0, 1.0E-02, -3.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.Stands_Single_5_Origin  &
   adams_id = 10091  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.cm  &
   adams_id = 10092  &
   location = 0.0, 2.14728294E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_5.PSMAR  &
   adams_id = 10246  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Single_5  &
   mass = 1.234836324  &
   center_of_mass_marker = .PM.Stands_Single_5.cm  &
   ixx = 6.661436507E-04  &
   iyy = 8.488224554E-04  &
   izz = 9.511620298E-04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_96_1_2002_____A_16___5 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_96_1_2002_____A_16___5  &
   adams_id = 48  &
   location = 0.2358348598, 1.602287806, 1.16  &
   orientation = 0.4075199901d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_96_1_2002_____A_16___5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___5.MARKER_180  &
   adams_id = 180  &
   location = -2.51963487E-02, -9.7027836E-03, 3.0E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___5.MARKER_182  &
   adams_id = 182  &
   location = 8.870173323E-05, 1.24709201E-02, 0.0  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___5.MARKER_184  &
   adams_id = 184  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___5._1_2002_____A_16___5_Origin  &
   adams_id = 10093  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___5.cm  &
   adams_id = 10094  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___5.PSMAR  &
   adams_id = 10247  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_96_1_2002_____A_16___5  &
   mass = 5.209546E-03  &
   center_of_mass_marker = .PM.GB_T_96_1_2002_____A_16___5.cm  &
   ixx = 9.119961497E-07  &
   iyy = 9.119961497E-07  &
   izz = 1.81617798E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Moving_2_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_2_1  &
   adams_id = 49  &
   location = 0.2123278616, 1.534233261, 9.15390155E-02  &
   orientation = 250.9443666d, 60.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_2_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_9  &
   adams_id = 9  &
   location = 0.0, -2.0E-03, 0.0  &
   orientation = 0.0d, 90.0d, -30.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_12  &
   adams_id = 12  &
   location = 8.6625022E-03, -6.0E-03, -5.001298E-03  &
   orientation = -90.0d, 60.0d, -70.94436662d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_13  &
   adams_id = 13  &
   location = -8.6625022E-03, -6.0E-03, 5.001298E-03  &
   orientation = -90.0d, 60.0d, -70.94436662d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_17  &
   adams_id = 17  &
   location = 0.0, 2.5E-03, 2.18853576E-02  &
   orientation = 180.0d, 90.0d, 30.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_19  &
   adams_id = 19  &
   location = 0.0, -3.75E-03, 0.0  &
   orientation = 0.0d, 90.0d, -30.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_21  &
   adams_id = 21  &
   location = 0.0, 0.4125, 2.6E-02  &
   orientation = 0.0d, 90.0d, -30.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.Moving_2_1_Origin  &
   adams_id = 10095  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.cm  &
   adams_id = 10096  &
   location = 0.0, 0.3447625948, 2.29384175E-02  &
   orientation = 0.0d, 0.8799737893d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.PSMAR  &
   adams_id = 10248  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_10312  &
   adams_id = 10312  &
   location = 6.0636681E-03, 1.472063088, 7.4245502E-03  &
   orientation = 359.3366217d, 89.05364198d, 60.00994015d
!
marker create  &
   marker_name = .PM.Moving_2_1.MARKER_10313  &
   adams_id = 10313  &
   location = 6.0636681E-03, 1.472063088, 7.4245502E-03  &
   orientation = 359.3366217d, 89.05364198d, 60.00994015d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_2_1  &
   mass = 0.216368684  &
   center_of_mass_marker = .PM.Moving_2_1.cm  &
   ixx = 1.49774658E-02  &
   iyy = 1.512717616E-05  &
   izz = 1.49663823E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------- GB_T_1228_2006______________M16_55__1 --------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_1228_2006______________M16_55__1  &
   adams_id = 50  &
   location = -7.41651402E-02, 1.602287806, 0.567  &
   orientation = 272.23152762d, 90.0d, 90.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_1228_2006______________M16_55__1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_157  &
   adams_id = 157  &
   location = 3.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 92.23152762d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_161  &
   adams_id = 161  &
   location = 3.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 92.23152762d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_163  &
   adams_id = 163  &
   location = 1.0E-02, 0.0, -2.7E-02  &
   orientation = 90.0d, 90.0d, -92.23152762d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_167  &
   adams_id = 167  &
   location = 3.71E-02, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 92.23152762d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_170  &
   adams_id = 170  &
   location = 3.71E-02, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -92.23152762d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.GB_T_1228_2006______________M16_55__1_Origin  &
   adams_id = 10098  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.cm  &
   adams_id = 10099  &
   location = 2.56487623E-02, 4.020033777E-09, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_1228_2006______________M16_55__1.PSMAR  &
   adams_id = 10249  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_1228_2006______________M16_55__1  &
   mass = 1.71706277E-02  &
   center_of_mass_marker = .PM.GB_T_1228_2006______________M16_55__1.cm  &
   ixx = 9.642371466E-07  &
   iyy = 7.413450683E-06  &
   izz = 7.413454308E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------- GB_T_283_2007________N_N_202_E__6 ----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__6  &
   adams_id = 51  &
   location = -7.41651402E-02, 1.602287806, 0.591  &
   orientation = 89.22997446d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_283_2007________N_N_202_E__6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.MARKER_169  &
   adams_id = 169  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.77002554d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.MARKER_210  &
   adams_id = 210  &
   location = 1.1E-02, 1.2413682E-02, -1.668434876E-04  &
   orientation = 90.0d, 90.0d, -90.77002554d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.MARKER_212  &
   adams_id = 212  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.77002554d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.GB_T_283_2007________N_N_202_E__6_Origin  &
   adams_id = 10100  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.cm  &
   adams_id = 10101  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR  &
   adams_id = 10250  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR65  &
   adams_id = 10251  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR66  &
   adams_id = 10252  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR67  &
   adams_id = 10253  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR68  &
   adams_id = 10254  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR69  &
   adams_id = 10255  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR70  &
   adams_id = 10256  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR71  &
   adams_id = 10257  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR72  &
   adams_id = 10258  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR73  &
   adams_id = 10259  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR74  &
   adams_id = 10260  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR75  &
   adams_id = 10261  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__6.PSMAR76  &
   adams_id = 10262  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__6  &
   mass = 4.25770024E-02  &
   center_of_mass_marker = .PM.GB_T_283_2007________N_N_202_E__6.cm  &
   ixx = 8.103189608E-06  &
   iyy = 4.368386855E-06  &
   izz = 4.368386855E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_96_1_2002_____A_16___7 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_96_1_2002_____A_16___7  &
   adams_id = 52  &
   location = -7.41651402E-02, 1.602287806, 0.62  &
   orientation = 0.4075199901d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_96_1_2002_____A_16___7
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___7.MARKER_156  &
   adams_id = 156  &
   location = 0.0, 0.0, 3.0E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___7.MARKER_160  &
   adams_id = 160  &
   location = 8.830035721E-05, 1.24144891E-02, 0.0  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___7.MARKER_162  &
   adams_id = 162  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___7._1_2002_____A_16___7_Origin  &
   adams_id = 10102  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___7.cm  &
   adams_id = 10103  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___7.PSMAR  &
   adams_id = 10263  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_96_1_2002_____A_16___7  &
   mass = 5.209546E-03  &
   center_of_mass_marker = .PM.GB_T_96_1_2002_____A_16___7.cm  &
   ixx = 9.119961497E-07  &
   iyy = 9.119961497E-07  &
   izz = 1.81617798E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Connector_1 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Connector_1  &
   adams_id = 53  &
   location = 0.2129808338, 1.536123665, 9.15390155E-02  &
   orientation = 160.9443666d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Connector_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Connector_1.MARKER_10  &
   adams_id = 10  &
   location = 0.0, 0.0, 0.0  &
   orientation = 90.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1.MARKER_14  &
   adams_id = 14  &
   location = 0.0, -1.0E-02, 4.0E-03  &
   orientation = 0.0d, 90.0d, 19.05563338d
!
marker create  &
   marker_name = .PM.Connector_1.MARKER_15  &
   adams_id = 15  &
   location = 0.0, 0.0, 2.425E-02  &
   orientation = -90.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1.MARKER_246  &
   adams_id = 246  &
   location = 0.0, 0.0, 7.0E-02  &
   orientation = 180.0d, 90.0d, -19.05563338d
!
marker create  &
   marker_name = .PM.Connector_1.Connector_1_Origin  &
   adams_id = 10104  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1.cm  &
   adams_id = 10105  &
   location = -2.077403542E-08, -3.369918678E-06, 4.53186841E-02  &
   orientation = 0.0d, 3.6970199E-03d, 0.0d
!
marker create  &
   marker_name = .PM.Connector_1.PSMAR  &
   adams_id = 10264  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Connector_1  &
   mass = 0.239871558  &
   center_of_mass_marker = .PM.Connector_1.cm  &
   ixx = 1.325201655E-04  &
   iyy = 1.359153714E-04  &
   izz = 2.495050975E-05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!-------------------------------- Outlayer_1_3 --------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Outlayer_1_3  &
   adams_id = 54  &
   location = -0.2691211701, 0.143126717, 1.11  &
   orientation = 250.9113538d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Outlayer_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Outlayer_1_3.MARKER_82  &
   adams_id = 82  &
   location = -0.435, -4.6E-02, 1.2500002E-03  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_3.MARKER_90  &
   adams_id = 90  &
   location = -0.435, -2.15549769E-02, 1.45390155E-02  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_3.MARKER_98  &
   adams_id = 98  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_3.MARKER_100  &
   adams_id = 100  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_3.Outlayer_1_3_Origin  &
   adams_id = 10106  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_3.cm  &
   adams_id = 10107  &
   location = -0.435, -2.33610239E-02, 7.107596605E-04  &
   orientation = 180.0d, 3.219904534d, 180.0d
!
marker create  &
   marker_name = .PM.Outlayer_1_3.PSMAR  &
   adams_id = 10265  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Outlayer_1_3  &
   mass = 9.152114746  &
   center_of_mass_marker = .PM.Outlayer_1_3.cm  &
   ixx = 4.3459986E-03  &
   iyy = 0.5787663982  &
   izz = 0.5801189012  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------- GB_T_283_2007________N_N_202_E__3 ----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__3  &
   adams_id = 55  &
   location = 0.2358348598, 1.602287806, 5.1E-02  &
   orientation = 91.98417255d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_283_2007________N_N_202_E__3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.MARKER_207  &
   adams_id = 207  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.MARKER_222  &
   adams_id = 222  &
   location = 1.1E-02, 1.24637582E-02, 4.317968595E-04  &
   orientation = 90.0d, 90.0d, -88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.MARKER_224  &
   adams_id = 224  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.GB_T_283_2007________N_N_202_E__3_Origin  &
   adams_id = 10108  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.cm  &
   adams_id = 10109  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR  &
   adams_id = 10266  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR77  &
   adams_id = 10267  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR78  &
   adams_id = 10268  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR79  &
   adams_id = 10269  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR80  &
   adams_id = 10270  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR81  &
   adams_id = 10271  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR82  &
   adams_id = 10272  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR83  &
   adams_id = 10273  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR84  &
   adams_id = 10274  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR85  &
   adams_id = 10275  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR86  &
   adams_id = 10276  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR87  &
   adams_id = 10277  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__3.PSMAR88  &
   adams_id = 10278  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__3  &
   mass = 4.25770024E-02  &
   center_of_mass_marker = .PM.GB_T_283_2007________N_N_202_E__3.cm  &
   ixx = 8.103189608E-06  &
   iyy = 4.368386855E-06  &
   izz = 4.368386855E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Double_3 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Double_3  &
   adams_id = 56  &
   location = 0.2358348598, 1.647287806, 1.11  &
   orientation = 180.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Double_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_132  &
   adams_id = 132  &
   location = 0.0, 4.5E-02, 4.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_175  &
   adams_id = 175  &
   location = 0.0, 3.25287644E-02, -2.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_181  &
   adams_id = 181  &
   location = 0.0, 3.25287644E-02, 5.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_225  &
   adams_id = 225  &
   location = 0.0, 3.25287644E-02, -2.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_227  &
   adams_id = 227  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_229  &
   adams_id = 229  &
   location = 0.0, 3.25287644E-02, 5.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_231  &
   adams_id = 231  &
   location = 0.0, 4.5E-02, 4.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_284  &
   adams_id = 284  &
   location = 0.0, 4.5E-02, 4.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_286  &
   adams_id = 286  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_290  &
   adams_id = 290  &
   location = 4.0E-02, 1.0E-02, 1.5E-02  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_292  &
   adams_id = 292  &
   location = -5.83333333E-02, -3.67166667E-02, 6.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.MARKER_294  &
   adams_id = 294  &
   location = 0.0, 0.0, 1.5E-02  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.Stands_Double_3_Origin  &
   adams_id = 10110  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.cm  &
   adams_id = 10111  &
   location = 0.0, 1.72008089E-02, 1.5E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Double_3.PSMAR  &
   adams_id = 10279  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Double_3  &
   mass = 1.501696582  &
   center_of_mass_marker = .PM.Stands_Double_3.cm  &
   ixx = 1.3290566E-03  &
   iyy = 1.7045278E-03  &
   izz = 1.0880459E-03  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Moving_1_6 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_1_6  &
   adams_id = 57  &
   location = -7.79510389E-02, 0.6955471265, 1.11  &
   orientation = 70.91135385d, 51.28354452d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_1_6.MARKER_87  &
   adams_id = 87  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 141.2835445d
!
marker create  &
   marker_name = .PM.Moving_1_6.MARKER_92  &
   adams_id = 92  &
   location = -0.472, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -141.2835445d
!
marker create  &
   marker_name = .PM.Moving_1_6.MARKER_93  &
   adams_id = 93  &
   location = -0.885, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -141.2835445d
!
marker create  &
   marker_name = .PM.Moving_1_6.MARKER_95  &
   adams_id = 95  &
   location = -0.472, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 141.2835445d
!
marker create  &
   marker_name = .PM.Moving_1_6.Moving_1_6_Origin  &
   adams_id = 10112  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_6.cm  &
   adams_id = 10113  &
   location = -0.4837320205, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_6.PSMAR  &
   adams_id = 10280  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_1_6  &
   mass = 1.123212245  &
   center_of_mass_marker = .PM.Moving_1_6.cm  &
   ixx = 1.861695146E-04  &
   iyy = 7.12556205E-02  &
   izz = 7.12555807E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------- GB_T_283_2007________N_N_202_E__2 ----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__2  &
   adams_id = 58  &
   location = 0.2358348598, 1.602287806, 1.101  &
   orientation = 91.98417255d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_283_2007________N_N_202_E__2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.MARKER_226  &
   adams_id = 226  &
   location = 1.1E-02, 1.24637582E-02, 4.317968595E-04  &
   orientation = 90.0d, 90.0d, -88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.MARKER_228  &
   adams_id = 228  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -88.01582745d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.GB_T_283_2007________N_N_202_E__2_Origin  &
   adams_id = 10114  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.cm  &
   adams_id = 10115  &
   location = 5.5E-03, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR  &
   adams_id = 10281  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR89  &
   adams_id = 10282  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR90  &
   adams_id = 10283  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR91  &
   adams_id = 10284  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR92  &
   adams_id = 10285  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR93  &
   adams_id = 10286  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR94  &
   adams_id = 10287  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR95  &
   adams_id = 10288  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR96  &
   adams_id = 10289  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR97  &
   adams_id = 10290  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR98  &
   adams_id = 10291  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR99  &
   adams_id = 10292  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_283_2007________N_N_202_E__2.PSMAR100  &
   adams_id = 10293  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_283_2007________N_N_202_E__2  &
   mass = 4.25770024E-02  &
   center_of_mass_marker = .PM.GB_T_283_2007________N_N_202_E__2.cm  &
   ixx = 8.103189608E-06  &
   iyy = 4.368386855E-06  &
   izz = 4.368386855E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Moving_1_5 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_1_5  &
   adams_id = 59  &
   location = 0.275419754, 0.6436047061, 6.15390155E-02  &
   orientation = 272.36445154d, 132.5096895d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_1_5.MARKER_30  &
   adams_id = 30  &
   location = -0.472, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -137.4903105d
!
marker create  &
   marker_name = .PM.Moving_1_5.MARKER_44  &
   adams_id = 44  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 137.4903105d
!
marker create  &
   marker_name = .PM.Moving_1_5.MARKER_46  &
   adams_id = 46  &
   location = -0.885, 2.08735492E-02, 6.5775241E-03  &
   orientation = 90.0d, 90.0d, 137.4903105d
!
marker create  &
   marker_name = .PM.Moving_1_5.MARKER_48  &
   adams_id = 48  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -137.4903105d
!
marker create  &
   marker_name = .PM.Moving_1_5.Moving_1_5_Origin  &
   adams_id = 10116  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_5.cm  &
   adams_id = 10117  &
   location = -0.4837320205, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_5.PSMAR  &
   adams_id = 10294  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_1_5  &
   mass = 1.123212245  &
   center_of_mass_marker = .PM.Moving_1_5.cm  &
   ixx = 1.861695146E-04  &
   iyy = 7.12556205E-02  &
   izz = 7.12555807E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------ GB_T_96_1_2002_____A_16___1 -------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.GB_T_96_1_2002_____A_16___1  &
   adams_id = 60  &
   location = 0.2358348598, 1.602287806, 3.7E-02  &
   orientation = 0.4075199901d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.GB_T_96_1_2002_____A_16___1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___1.MARKER_202  &
   adams_id = 202  &
   location = 2.69984012E-02, 2.938220145E-04, 0.0  &
   orientation = -0.4075199901d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___1.MARKER_204  &
   adams_id = 204  &
   location = 8.870173323E-05, 1.24709201E-02, 3.0E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___1.MARKER_206  &
   adams_id = 206  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 179.59248d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___1._1_2002_____A_16___1_Origin  &
   adams_id = 10118  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___1.cm  &
   adams_id = 10119  &
   location = 0.0, 0.0, 1.5E-03  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.GB_T_96_1_2002_____A_16___1.PSMAR  &
   adams_id = 10295  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.GB_T_96_1_2002_____A_16___1  &
   mass = 5.209546E-03  &
   center_of_mass_marker = .PM.GB_T_96_1_2002_____A_16___1.cm  &
   ixx = 9.119961497E-07  &
   iyy = 9.119961497E-07  &
   izz = 1.81617798E-06  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!---------------------------------- Stands_2 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_2  &
   adams_id = 61  &
   location = -7.41651402E-02, 1.647287806, 0.6  &
   orientation = 180.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_159  &
   adams_id = 159  &
   location = 0.0, 3.25851968E-02, 2.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_165  &
   adams_id = 165  &
   location = 0.0, 3.25851968E-02, -2.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_209  &
   adams_id = 209  &
   location = 0.0, 3.25851968E-02, -2.0E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_211  &
   adams_id = 211  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_213  &
   adams_id = 213  &
   location = 0.0, 3.25851968E-02, 2.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_215  &
   adams_id = 215  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_288  &
   adams_id = 288  &
   location = 0.0, 4.5E-02, -1.5E-02  &
   orientation = 0.0d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_302  &
   adams_id = 302  &
   location = -5.0E-03, 1.0E-02, -3.0E-02  &
   orientation = 180.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_304  &
   adams_id = 304  &
   location = 4.0E-02, -3.67166667E-02, 0.0  &
   orientation = 90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Stands_2.MARKER_306  &
   adams_id = 306  &
   location = -5.0E-03, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.Stands_2_Origin  &
   adams_id = 10120  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.cm  &
   adams_id = 10121  &
   location = 0.0, 1.719956E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_2.PSMAR  &
   adams_id = 10296  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_2  &
   mass = 0.9943649551  &
   center_of_mass_marker = .PM.Stands_2.cm  &
   ixx = 5.117423887E-04  &
   iyy = 7.544139908E-04  &
   izz = 7.156784876E-04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!----------------------------------- Base_1 -----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Base_1  &
   adams_id = 62  &
   location = 0.2949191175, 0.1498966958, 1.14  &
   orientation = 272.32954676d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Base_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Base_1.MARKER_57  &
   adams_id = 57  &
   location = 5.0E-02, -5.55E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_61  &
   adams_id = 61  &
   location = 0.1231425179, 0.0, 3.8E-02  &
   orientation = 87.67045324d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_67  &
   adams_id = 67  &
   location = -0.46, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_73  &
   adams_id = 73  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_75  &
   adams_id = 75  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_77  &
   adams_id = 77  &
   location = 7.0E-02, -2.9E-02, -2.6E-02  &
   orientation = -92.32954676d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_79  &
   adams_id = 79  &
   location = 5.0E-02, -2.9E-02, 1.75E-03  &
   orientation = -92.32954676d, 180.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_154  &
   adams_id = 154  &
   location = 0.1373496384, -5.02391687E-04, 2.0E-02  &
   orientation = 87.67045324d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1.MARKER_318  &
   adams_id = 318  &
   location = 0.125, 0.0, 2.91776316E-02  &
   orientation = 87.67045324d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1.Base_1_Origin  &
   adams_id = 10122  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Base_1.cm  &
   adams_id = 10123  &
   location = -0.1339544901, -3.8423738E-03, 1.0800689E-03  &
   orientation = -179.6224535d, 9.124530087d, 179.105314d
!
marker create  &
   marker_name = .PM.Base_1.PSMAR  &
   adams_id = 10297  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Base_1  &
   mass = 9.075180373  &
   center_of_mass_marker = .PM.Base_1.cm  &
   ixx = 7.7566378E-03  &
   iyy = 0.7341767576  &
   izz = 0.7355526409  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------- MirrorBase_1_2 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.MirrorBase_1_2  &
   adams_id = 63  &
   location = 0.294843031, 0.1498935774, 6.0E-02  &
   orientation = 272.36445154d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.MirrorBase_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_29  &
   adams_id = 29  &
   location = -0.46, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_31  &
   adams_id = 31  &
   location = 5.0E-02, -5.55E-02, 0.0  &
   orientation = 0.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_33  &
   adams_id = 33  &
   location = 0.0, -8.5E-03, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_35  &
   adams_id = 35  &
   location = -0.435, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_39  &
   adams_id = 39  &
   location = 0.1085218023, 2.7858227E-03, -2.0E-02  &
   orientation = 87.63554846d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_51  &
   adams_id = 51  &
   location = 0.0, 0.0, 0.0  &
   orientation = 87.63554846d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_53  &
   adams_id = 53  &
   location = 7.0E-02, -2.9E-02, 2.6E-02  &
   orientation = 87.63554846d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_55  &
   adams_id = 55  &
   location = 5.0E-02, -2.9E-02, -1.75E-03  &
   orientation = 87.63554846d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_146  &
   adams_id = 146  &
   location = 0.1373493301, -5.099150326E-04, 2.0E-02  &
   orientation = 87.63554846d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MARKER_244  &
   adams_id = 244  &
   location = 0.125, 0.0, -2.91776316E-02  &
   orientation = 87.63554846d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.MirrorBase_1_2_Origin  &
   adams_id = 10124  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.cm  &
   adams_id = 10125  &
   location = -0.1339544811, -3.8424001E-03, -1.0800674E-03  &
   orientation = 0.3775247505d, 9.124714413d, -0.8946672668d
!
marker create  &
   marker_name = .PM.MirrorBase_1_2.PSMAR  &
   adams_id = 10298  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.MirrorBase_1_2  &
   mass = 8.949136978  &
   center_of_mass_marker = .PM.MirrorBase_1_2.cm  &
   ixx = 7.6489069E-03  &
   iyy = 0.7239798721  &
   izz = 0.725336648  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Stands_Single_3 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Stands_Single_3  &
   adams_id = 64  &
   location = -0.31, -2.0E-02, 9.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Stands_Single_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Stands_Single_3.MARKER_147  &
   adams_id = 147  &
   location = 0.0, 3.2640147E-02, 2.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.MARKER_247  &
   adams_id = 247  &
   location = 0.0, 4.5E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.MARKER_338  &
   adams_id = 338  &
   location = 0.0, 0.0, 0.0  &
   orientation = 180.0d, 90.0d, 180.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.MARKER_340  &
   adams_id = 340  &
   location = 0.0, 1.0E-02, -3.0E-02  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.MARKER_341  &
   adams_id = 341  &
   location = 4.0E-02, 1.0E-02, 0.0  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.Stands_Single_3_Origin  &
   adams_id = 10126  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.cm  &
   adams_id = 10127  &
   location = 0.0, 2.14728294E-02, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Stands_Single_3.PSMAR  &
   adams_id = 10299  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Stands_Single_3  &
   mass = 1.234836324  &
   center_of_mass_marker = .PM.Stands_Single_3.cm  &
   ixx = 6.661436507E-04  &
   iyy = 8.488224554E-04  &
   izz = 9.511620298E-04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Driver_1_4 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Driver_1_4  &
   adams_id = 65  &
   location = -0.3275905177, 0.1034638368, 0.559  &
   orientation = 280.71097999d, 90.0d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Driver_1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Driver_1_4.MARKER_126  &
   adams_id = 126  &
   location = -1.88858273E-02, -1.5E-02, 6.5822128E-03  &
   orientation = 180.0d, 90.0d, 100.71098d
!
marker create  &
   marker_name = .PM.Driver_1_4.MARKER_128  &
   adams_id = 128  &
   location = 0.0, -3.975E-02, 0.0  &
   orientation = 180.0d, 90.0d, 100.71098d
!
marker create  &
   marker_name = .PM.Driver_1_4.Driver_1_4_Origin  &
   adams_id = 10128  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Driver_1_4.cm  &
   adams_id = 10129  &
   location = -1.115300937E-05, 5.70637725E-02, -2.142468664E-05  &
   orientation = 90.28500265d, 27.50048674d, -90.25279989d
!
marker create  &
   marker_name = .PM.Driver_1_4.PSMAR  &
   adams_id = 10300  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Driver_1_4  &
   mass = 9.479805277  &
   center_of_mass_marker = .PM.Driver_1_4.cm  &
   ixx = 2.08289491E-02  &
   iyy = 1.5935334E-02  &
   izz = 2.08133296E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!--------------------------------- Moving_1_3 ---------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_1_3  &
   adams_id = 66  &
   location = 0.2748357138, 0.6435807687, 1.14  &
   orientation = 92.32954676d, 114.4090758d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_1_3.MARKER_63  &
   adams_id = 63  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 24.40907584d
!
marker create  &
   marker_name = .PM.Moving_1_3.MARKER_68  &
   adams_id = 68  &
   location = -0.472, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -24.40907584d
!
marker create  &
   marker_name = .PM.Moving_1_3.MARKER_69  &
   adams_id = 69  &
   location = -0.885, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -24.40907584d
!
marker create  &
   marker_name = .PM.Moving_1_3.MARKER_71  &
   adams_id = 71  &
   location = -0.472, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 24.40907584d
!
marker create  &
   marker_name = .PM.Moving_1_3.Moving_1_3_Origin  &
   adams_id = 10130  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_3.cm  &
   adams_id = 10131  &
   location = -0.4837320205, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1_3.PSMAR  &
   adams_id = 10301  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_1_3  &
   mass = 1.123212245  &
   center_of_mass_marker = .PM.Moving_1_3.cm  &
   ixx = 1.861695146E-04  &
   iyy = 7.12556205E-02  &
   izz = 7.12555807E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!---------------------------------- Moving_1 ----------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Moving_1  &
   adams_id = 67  &
   location = -7.74285395E-02, 0.6953664794, 9.15390155E-02  &
   orientation = 70.94436662d, 51.45266171d, 180.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Moving_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Moving_1.MARKER_2  &
   adams_id = 2  &
   location = -0.472, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -141.4526617d
!
marker create  &
   marker_name = .PM.Moving_1.MARKER_16  &
   adams_id = 16  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = 90.0d, 90.0d, 141.4526617d
!
marker create  &
   marker_name = .PM.Moving_1.MARKER_18  &
   adams_id = 18  &
   location = -0.885, -2.03691413E-02, -8.004184E-03  &
   orientation = 90.0d, 90.0d, 141.4526617d
!
marker create  &
   marker_name = .PM.Moving_1.MARKER_20  &
   adams_id = 20  &
   location = -0.9108865, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -141.4526617d
!
marker create  &
   marker_name = .PM.Moving_1.Moving_1_Origin  &
   adams_id = 10132  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1.cm  &
   adams_id = 10133  &
   location = -0.4837320205, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Moving_1.PSMAR  &
   adams_id = 10302  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Moving_1  &
   mass = 1.123212245  &
   center_of_mass_marker = .PM.Moving_1.cm  &
   ixx = 1.861695146E-04  &
   iyy = 7.12556205E-02  &
   izz = 7.12555807E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!------------------------------ Front_Handler_1 -------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
part create rigid_body name_and_position  &
   part_name = .PM.Front_Handler_1  &
   adams_id = 68  &
   location = -4.41651402E-02, 1.707387806, 0.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .PM.Front_Handler_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .PM.Front_Handler_1.MARKER_262  &
   adams_id = 262  &
   location = 0.0, -3.4E-03, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .PM.Front_Handler_1.MARKER_264  &
   adams_id = 264  &
   location = -0.2, 0.0, -0.355  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Front_Handler_1.MARKER_266  &
   adams_id = 266  &
   location = -0.2, 0.0, 0.355  &
   orientation = 90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .PM.Front_Handler_1.Front_Handler_1_Origin  &
   adams_id = 10134  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_Handler_1.cm  &
   adams_id = 10135  &
   location = -0.3105490862, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .PM.Front_Handler_1.PSMAR  &
   adams_id = 10303  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
part create rigid_body mass_properties  &
   part_name = .PM.Front_Handler_1  &
   mass = 1.558359834  &
   center_of_mass_marker = .PM.Front_Handler_1.cm  &
   ixx = 0.1371856841  &
   iyy = 0.168191372  &
   izz = 3.18871351E-02  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint planar  &
   joint_name = .PM.Coincident16  &
   adams_id = 1  &
   i_marker_name = .PM.ground.MARKER_325  &
   j_marker_name = .PM.Stands_Single_5.MARKER_326
!
constraint create joint planar  &
   joint_name = .PM.Coincident41  &
   adams_id = 2  &
   i_marker_name = .PM.Platform_1.MARKER_291  &
   j_marker_name = .PM.Stands_Double_3.MARKER_292
!
constraint create joint planar  &
   joint_name = .PM.Coincident71  &
   adams_id = 3  &
   i_marker_name = .PM.ground.MARKER_257  &
   j_marker_name = .PM.Caster_Wheel_Assemble_1.MARKER_258
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric30  &
   adams_id = 4  &
   i_marker_name = .PM.Stands_Double_2.MARKER_223  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__3.MARKER_224
!
constraint create joint planar  &
   joint_name = .PM.Coincident103  &
   adams_id = 5  &
   i_marker_name = .PM.GB_T_6170_2015_1_____M16__4.MARKER_155  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___7.MARKER_156
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric9_2  &
   adams_id = 6  &
   i_marker_name = .PM.Moving_1_6.MARKER_87  &
   j_marker_name = .PM.Connector_2_2.MARKER_88
!
constraint create joint planar  &
   joint_name = .PM.Coincident6  &
   adams_id = 7  &
   i_marker_name = .PM.Base_1.MARKER_73  &
   j_marker_name = .PM.Outlayer_1_6.MARKER_74
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric7_2  &
   adams_id = 8  &
   i_marker_name = .PM.Connector_1_2.MARKER_43  &
   j_marker_name = .PM.Moving_1_5.MARKER_44
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric2  &
   adams_id = 9  &
   i_marker_name = .PM.MirrorBase_1.MARKER_27  &
   j_marker_name = .PM.Driver_1.MARKER_28
!
constraint create joint planar  &
   joint_name = .PM.Coincident19  &
   adams_id = 10  &
   i_marker_name = .PM.ground.MARKER_319  &
   j_marker_name = .PM.Stands_Single_2.MARKER_320
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric13  &
   adams_id = 11  &
   i_marker_name = .PM.Connector_2_2.MARKER_285  &
   j_marker_name = .PM.Stands_Double_3.MARKER_286
!
constraint create joint planar  &
   joint_name = .PM.Coincident74  &
   adams_id = 12  &
   i_marker_name = .PM.ground.MARKER_251  &
   j_marker_name = .PM.Caster_Wheel_Assemble_2.MARKER_252
!
constraint create joint planar  &
   joint_name = .PM.Coincident86  &
   adams_id = 13  &
   i_marker_name = .PM.Stands_Double_2.MARKER_217  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__4.MARKER_218
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric42  &
   adams_id = 14  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_183  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___5.MARKER_184
!
constraint create joint planar  &
   joint_name = .PM.Coincident109  &
   adams_id = 15  &
   i_marker_name = .PM.Stands_Single_4.MARKER_149  &
   j_marker_name = .PM.Base_1_3.MARKER_150
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric2_5  &
   adams_id = 16  &
   i_marker_name = .PM.Base_1_3.MARKER_123  &
   j_marker_name = .PM.Outlayer_1_2.MARKER_124
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric4_3  &
   adams_id = 17  &
   i_marker_name = .PM.Base_1.MARKER_67  &
   j_marker_name = .PM.Moving_1_3.MARKER_68
!
constraint create joint planar  &
   joint_name = .PM.Coincident9_2  &
   adams_id = 18  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_37  &
   j_marker_name = .PM.Connector_1_2.MARKER_38
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric4  &
   adams_id = 19  &
   i_marker_name = .PM.Moving_2_1.MARKER_21  &
   j_marker_name = .PM.Outlayer_1.MARKER_22
!
constraint create joint planar  &
   joint_name = .PM.Coincident1_4  &
   adams_id = 20  &
   i_marker_name = .PM.ground.MARKER_347  &
   j_marker_name = .PM.Stands_Single_1.MARKER_348
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric3_4  &
   adams_id = 21  &
   i_marker_name = .PM.Stands_Single_4.MARKER_313  &
   j_marker_name = .PM.Base_1_3.MARKER_314
!
constraint create joint planar  &
   joint_name = .PM.Coincident56  &
   adams_id = 22  &
   i_marker_name = .PM.Platform_1.MARKER_279  &
   j_marker_name = .PM.Handle_1.MARKER_280
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric22  &
   adams_id = 23  &
   i_marker_name = .PM.Stands_Double_2.MARKER_245  &
   j_marker_name = .PM.Connector_1.MARKER_246
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric33  &
   adams_id = 24  &
   i_marker_name = .PM.Stands_2.MARKER_211  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__6.MARKER_212
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric43  &
   adams_id = 25  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_177  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___6.MARKER_178
!
constraint create joint planar  &
   joint_name = .PM.Coincident116  &
   adams_id = 26  &
   i_marker_name = .PM.Platform_1.MARKER_143  &
   j_marker_name = .PM.Back_Support_1.MARKER_144
!
constraint create joint planar  &
   joint_name = .PM.Coincident7_3  &
   adams_id = 27  &
   i_marker_name = .PM.Moving_1_2.MARKER_117  &
   j_marker_name = .PM.Moving_2_1_3.MARKER_118
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric7  &
   adams_id = 28  &
   i_marker_name = .PM.Connector_1.MARKER_15  &
   j_marker_name = .PM.Moving_1.MARKER_16
!
constraint create joint planar  &
   joint_name = .PM.Coincident5_3  &
   adams_id = 29  &
   i_marker_name = .PM.Stands_Single_3.MARKER_341  &
   j_marker_name = .PM.ground.MARKER_342
!
constraint create joint planar  &
   joint_name = .PM.Coincident28  &
   adams_id = 30  &
   i_marker_name = .PM.ground.MARKER_307  &
   j_marker_name = .PM.Leg_Rest_1.MARKER_308
!
constraint create joint planar  &
   joint_name = .PM.Coincident65  &
   adams_id = 31  &
   i_marker_name = .PM.ground.MARKER_273  &
   j_marker_name = .PM.Base_lid_1.MARKER_274
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric26  &
   adams_id = 32  &
   i_marker_name = .PM.ground.MARKER_239  &
   j_marker_name = .PM.Front_wheel_1.MARKER_240
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric35  &
   adams_id = 33  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_205  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___1.MARKER_206
!
constraint create joint planar  &
   joint_name = .PM.Coincident99  &
   adams_id = 34  &
   i_marker_name = .PM.GB_T_96_1_2002_____A_16___6.MARKER_171  &
   j_marker_name = .PM.GB_T_6170_2015_1_____M16__3.MARKER_172
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric9_3  &
   adams_id = 35  &
   i_marker_name = .PM.Moving_1_2.MARKER_111  &
   j_marker_name = .PM.Connector_2_3.MARKER_112
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric1_2  &
   adams_id = 36  &
   i_marker_name = .PM.Base_1_2.MARKER_103  &
   j_marker_name = .PM.Driver_1_3.MARKER_104
!
constraint create joint planar  &
   joint_name = .PM.Coincident9  &
   adams_id = 37  &
   i_marker_name = .PM.Moving_2_1.MARKER_9  &
   j_marker_name = .PM.Connector_1.MARKER_10
!
constraint create joint planar  &
   joint_name = .PM.Coincident11  &
   adams_id = 38  &
   i_marker_name = .PM.ground.MARKER_335  &
   j_marker_name = .PM.Stands_Single_4.MARKER_336
!
constraint create joint planar  &
   joint_name = .PM.Coincident35  &
   adams_id = 39  &
   i_marker_name = .PM.Platform_1.MARKER_301  &
   j_marker_name = .PM.Stands_2.MARKER_302
!
constraint create joint planar  &
   joint_name = .PM.Coincident68  &
   adams_id = 40  &
   i_marker_name = .PM.ground.MARKER_267  &
   j_marker_name = .PM.Base_lid_3.MARKER_268
!
constraint create joint planar  &
   joint_name = .PM.Coincident82  &
   adams_id = 41  &
   i_marker_name = .PM.ground.MARKER_233  &
   j_marker_name = .PM.Front_wheel_2.MARKER_234
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric36  &
   adams_id = 42  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_199  &
   j_marker_name = .PM.GB_T_6170_2015_1_____M16__1.MARKER_200
!
constraint create joint planar  &
   joint_name = .PM.Coincident100  &
   adams_id = 43  &
   i_marker_name = .PM.Stands_2.MARKER_165  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___8.MARKER_166
!
constraint create joint planar  &
   joint_name = .PM.Coincident126  &
   adams_id = 44  &
   i_marker_name = .PM.Connector_2.MARKER_131  &
   j_marker_name = .PM.Stands_Double_3.MARKER_132
!
constraint create joint planar  &
   joint_name = .PM.Coincident6_2  &
   adams_id = 45  &
   i_marker_name = .PM.Base_1_2.MARKER_97  &
   j_marker_name = .PM.Outlayer_1_3.MARKER_98
!
constraint create joint planar  &
   joint_name = .PM.Coincident4_2  &
   adams_id = 46  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_53  &
   j_marker_name = .PM.Driver_1_2.MARKER_54
!
constraint create joint planar  &
   joint_name = .PM.Coincident14  &
   adams_id = 47  &
   i_marker_name = .PM.ground.MARKER_329  &
   j_marker_name = .PM.Stands_Single_5.MARKER_330
!
constraint create joint planar  &
   joint_name = .PM.Coincident39  &
   adams_id = 48  &
   i_marker_name = .PM.Platform_1.MARKER_295  &
   j_marker_name = .PM.Stands_Double_2.MARKER_296
!
constraint create joint planar  &
   joint_name = .PM.Coincident69  &
   adams_id = 49  &
   i_marker_name = .PM.Platform_1.MARKER_261  &
   j_marker_name = .PM.Front_Handler_1.MARKER_262
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric29  &
   adams_id = 50  &
   i_marker_name = .PM.Stands_Double_3.MARKER_227  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__2.MARKER_228
!
constraint create joint planar  &
   joint_name = .PM.Coincident93  &
   adams_id = 51  &
   i_marker_name = .PM.GB_T_6170_2015_1_____M16__1.MARKER_193  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___2.MARKER_194
!
constraint create joint planar  &
   joint_name = .PM.Coincident102  &
   adams_id = 52  &
   i_marker_name = .PM.Stands_2.MARKER_159  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___7.MARKER_160
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric4_4  &
   adams_id = 53  &
   i_marker_name = .PM.Base_1_2.MARKER_91  &
   j_marker_name = .PM.Moving_1_6.MARKER_92
!
constraint create joint planar  &
   joint_name = .PM.Coincident1  &
   adams_id = 54  &
   i_marker_name = .PM.Base_1.MARKER_77  &
   j_marker_name = .PM.Driver_1_5.MARKER_78
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric5_2  &
   adams_id = 55  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_47  &
   j_marker_name = .PM.Moving_1_5.MARKER_48
!
constraint create joint planar  &
   joint_name = .PM.Coincident17  &
   adams_id = 56  &
   i_marker_name = .PM.ground.MARKER_323  &
   j_marker_name = .PM.Stands_Single_2.MARKER_324
!
constraint create joint planar  &
   joint_name = .PM.Coincident43  &
   adams_id = 57  &
   i_marker_name = .PM.Platform_1.MARKER_289  &
   j_marker_name = .PM.Stands_Double_3.MARKER_290
!
constraint create joint planar  &
   joint_name = .PM.Coincident72  &
   adams_id = 58  &
   i_marker_name = .PM.ground.MARKER_255  &
   j_marker_name = .PM.Caster_Wheel_Assemble_1.MARKER_256
!
constraint create joint planar  &
   joint_name = .PM.Coincident85  &
   adams_id = 59  &
   i_marker_name = .PM.Stands_Double_2.MARKER_221  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__3.MARKER_222
!
constraint create joint planar  &
   joint_name = .PM.Coincident107  &
   adams_id = 60  &
   i_marker_name = .PM.Stands_Single_2.MARKER_153  &
   j_marker_name = .PM.Base_1.MARKER_154
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric1_3  &
   adams_id = 61  &
   i_marker_name = .PM.Base_1_3.MARKER_127  &
   j_marker_name = .PM.Driver_1_4.MARKER_128
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric3  &
   adams_id = 62  &
   i_marker_name = .PM.Moving_1_3.MARKER_71  &
   j_marker_name = .PM.Moving_2_1_5.MARKER_72
!
constraint create joint planar  &
   joint_name = .PM.Coincident4  &
   adams_id = 63  &
   i_marker_name = .PM.MirrorBase_1.MARKER_25  &
   j_marker_name = .PM.Driver_1.MARKER_26
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric1_4  &
   adams_id = 64  &
   i_marker_name = .PM.Stands_Single_2.MARKER_317  &
   j_marker_name = .PM.Base_1.MARKER_318
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric14  &
   adams_id = 65  &
   i_marker_name = .PM.Connector_2.MARKER_283  &
   j_marker_name = .PM.Stands_Double_3.MARKER_284
!
constraint create joint planar  &
   joint_name = .PM.Coincident75  &
   adams_id = 66  &
   i_marker_name = .PM.ground.MARKER_249  &
   j_marker_name = .PM.Caster_Wheel_Assemble_2.MARKER_250
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric32  &
   adams_id = 67  &
   i_marker_name = .PM.Stands_2.MARKER_215  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__5.MARKER_216
!
constraint create joint planar  &
   joint_name = .PM.Coincident96  &
   adams_id = 68  &
   i_marker_name = .PM.Stands_Double_3.MARKER_181  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___5.MARKER_182
!
constraint create joint planar  &
   joint_name = .PM.Coincident110  &
   adams_id = 69  &
   i_marker_name = .PM.Stands_Single_3.MARKER_147  &
   j_marker_name = .PM.MirrorBase_1.MARKER_148
!
constraint create joint planar  &
   joint_name = .PM.Coincident6_3  &
   adams_id = 70  &
   i_marker_name = .PM.Base_1_3.MARKER_121  &
   j_marker_name = .PM.Outlayer_1_2.MARKER_122
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric5_3  &
   adams_id = 71  &
   i_marker_name = .PM.Moving_2_1_5.MARKER_65  &
   j_marker_name = .PM.Outlayer_1_6.MARKER_66
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric8_2  &
   adams_id = 72  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_35  &
   j_marker_name = .PM.Outlayer_1_4.MARKER_36
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric5  &
   adams_id = 73  &
   i_marker_name = .PM.Moving_2_1.MARKER_19  &
   j_marker_name = .PM.Moving_1.MARKER_20
!
constraint create joint planar  &
   joint_name = .PM.Coincident3  &
   adams_id = 74  &
   i_marker_name = .PM.ground.MARKER_345  &
   j_marker_name = .PM.Stands_Single_1.MARKER_346
!
constraint create joint planar  &
   joint_name = .PM.Coincident25  &
   adams_id = 75  &
   i_marker_name = .PM.ground.MARKER_311  &
   j_marker_name = .PM.Leg_Rest_1.MARKER_312
!
constraint create joint planar  &
   joint_name = .PM.Coincident63  &
   adams_id = 76  &
   i_marker_name = .PM.ground.MARKER_277  &
   j_marker_name = .PM.Base_lid_1.MARKER_278
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric24  &
   adams_id = 77  &
   i_marker_name = .PM.Stands_Single_1.MARKER_243  &
   j_marker_name = .PM.MirrorBase_1_2.MARKER_244
!
constraint create joint planar  &
   joint_name = .PM.Coincident88  &
   adams_id = 78  &
   i_marker_name = .PM.Stands_2.MARKER_209  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__6.MARKER_210
!
constraint create joint planar  &
   joint_name = .PM.Coincident98  &
   adams_id = 79  &
   i_marker_name = .PM.Stands_Double_3.MARKER_175  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___6.MARKER_176
!
constraint create joint planar  &
   joint_name = .PM.Coincident118  &
   adams_id = 80  &
   i_marker_name = .PM.Platform_1.MARKER_141  &
   j_marker_name = .PM.Back_Support_1.MARKER_142
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric4_5  &
   adams_id = 81  &
   i_marker_name = .PM.Base_1_3.MARKER_115  &
   j_marker_name = .PM.Moving_1_2.MARKER_116
!
constraint create joint planar  &
   joint_name = .PM.Coincident10_3  &
   adams_id = 82  &
   i_marker_name = .PM.Moving_2_1_5.MARKER_59  &
   j_marker_name = .PM.Connector_2.MARKER_60
!
constraint create joint planar  &
   joint_name = .PM.Coincident7_4  &
   adams_id = 83  &
   i_marker_name = .PM.ground.MARKER_339  &
   j_marker_name = .PM.Stands_Single_3.MARKER_340
!
constraint create joint planar  &
   joint_name = .PM.Coincident33  &
   adams_id = 84  &
   i_marker_name = .PM.Platform_1.MARKER_305  &
   j_marker_name = .PM.Stands_2.MARKER_306
!
constraint create joint planar  &
   joint_name = .PM.Coincident66  &
   adams_id = 85  &
   i_marker_name = .PM.ground.MARKER_271  &
   j_marker_name = .PM.Base_lid_3.MARKER_272
!
constraint create joint planar  &
   joint_name = .PM.Coincident81  &
   adams_id = 86  &
   i_marker_name = .PM.ground.MARKER_237  &
   j_marker_name = .PM.Front_wheel_1.MARKER_238
!
constraint create joint planar  &
   joint_name = .PM.Coincident89  &
   adams_id = 87  &
   i_marker_name = .PM.Stands_Double_2.MARKER_203  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___1.MARKER_204
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric45  &
   adams_id = 88  &
   i_marker_name = .PM.GB_T_283_2007________N_N_202_E__6.MARKER_169  &
   j_marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_170
!
constraint create joint planar  &
   joint_name = .PM.Coincident1_2  &
   adams_id = 89  &
   i_marker_name = .PM.Base_1_2.MARKER_101  &
   j_marker_name = .PM.Driver_1_3.MARKER_102
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric8  &
   adams_id = 90  &
   i_marker_name = .PM.MirrorBase_1.MARKER_7  &
   j_marker_name = .PM.Outlayer_1.MARKER_8
!
constraint create joint planar  &
   joint_name = .PM.Coincident12  &
   adams_id = 91  &
   i_marker_name = .PM.ground.MARKER_333  &
   j_marker_name = .PM.Stands_Single_4.MARKER_334
!
constraint create joint planar  &
   joint_name = .PM.Coincident37  &
   adams_id = 92  &
   i_marker_name = .PM.Platform_1.MARKER_299  &
   j_marker_name = .PM.Stands_Double_2.MARKER_300
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric16  &
   adams_id = 93  &
   i_marker_name = .PM.Platform_1.MARKER_265  &
   j_marker_name = .PM.Front_Handler_1.MARKER_266
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric28  &
   adams_id = 94  &
   i_marker_name = .PM.Stands_Double_3.MARKER_231  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__1.MARKER_232
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric37  &
   adams_id = 95  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_197  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___2.MARKER_198
!
constraint create joint planar  &
   joint_name = .PM.Coincident101  &
   adams_id = 96  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_163  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___8.MARKER_164
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric49  &
   adams_id = 97  &
   i_marker_name = .PM.Platform_1.MARKER_129  &
   j_marker_name = .PM.Handle_1.MARKER_130
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric3_2  &
   adams_id = 98  &
   i_marker_name = .PM.Moving_1_6.MARKER_95  &
   j_marker_name = .PM.Moving_2_1_6.MARKER_96
!
constraint create joint fixed  &
   joint_name = .PM.Lock1_2  &
   adams_id = 99  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_51  &
   j_marker_name = .PM.Driver_1_2.MARKER_52
!
constraint create joint planar  &
   joint_name = .PM.Coincident15  &
   adams_id = 100  &
   i_marker_name = .PM.ground.MARKER_327  &
   j_marker_name = .PM.Stands_Single_5.MARKER_328
!
constraint create joint planar  &
   joint_name = .PM.Coincident40  &
   adams_id = 101  &
   i_marker_name = .PM.Platform_1.MARKER_293  &
   j_marker_name = .PM.Stands_Double_3.MARKER_294
!
constraint create joint planar  &
   joint_name = .PM.Coincident70  &
   adams_id = 102  &
   i_marker_name = .PM.ground.MARKER_259  &
   j_marker_name = .PM.Caster_Wheel_Assemble_1.MARKER_260
!
constraint create joint planar  &
   joint_name = .PM.Coincident84  &
   adams_id = 103  &
   i_marker_name = .PM.Stands_Double_3.MARKER_225  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__2.MARKER_226
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric48  &
   adams_id = 104  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_157  &
   j_marker_name = .PM.GB_T_6170_2015_1_____M16__4.MARKER_158
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric5_4  &
   adams_id = 105  &
   i_marker_name = .PM.Moving_2_1_6.MARKER_89  &
   j_marker_name = .PM.Outlayer_1_3.MARKER_90
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric2_3  &
   adams_id = 106  &
   i_marker_name = .PM.Base_1.MARKER_75  &
   j_marker_name = .PM.Outlayer_1_6.MARKER_76
!
constraint create joint planar  &
   joint_name = .PM.Coincident5_2  &
   adams_id = 107  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_45  &
   j_marker_name = .PM.Moving_1_5.MARKER_46
!
constraint create joint planar  &
   joint_name = .PM.Coincident18  &
   adams_id = 108  &
   i_marker_name = .PM.ground.MARKER_321  &
   j_marker_name = .PM.Stands_Single_2.MARKER_322
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric10  &
   adams_id = 109  &
   i_marker_name = .PM.Connector_2_3.MARKER_287  &
   j_marker_name = .PM.Stands_2.MARKER_288
!
constraint create joint planar  &
   joint_name = .PM.Coincident73  &
   adams_id = 110  &
   i_marker_name = .PM.ground.MARKER_253  &
   j_marker_name = .PM.Caster_Wheel_Assemble_2.MARKER_254
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric31  &
   adams_id = 111  &
   i_marker_name = .PM.Stands_Double_2.MARKER_219  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__4.MARKER_220
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric41  &
   adams_id = 112  &
   i_marker_name = .PM.GB_T_283_2007________N_N_202_E__1.MARKER_185  &
   j_marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_186
!
constraint create joint planar  &
   joint_name = .PM.Coincident108  &
   adams_id = 113  &
   i_marker_name = .PM.Stands_Single_5.MARKER_151  &
   j_marker_name = .PM.Base_1_2.MARKER_152
!
constraint create joint planar  &
   joint_name = .PM.Coincident1_3  &
   adams_id = 114  &
   i_marker_name = .PM.Base_1_3.MARKER_125  &
   j_marker_name = .PM.Driver_1_4.MARKER_126
!
constraint create joint planar  &
   joint_name = .PM.Coincident10_4  &
   adams_id = 115  &
   i_marker_name = .PM.Moving_2_1_6.MARKER_83  &
   j_marker_name = .PM.Connector_2_2.MARKER_84
!
constraint create joint planar  &
   joint_name = .PM.Coincident7  &
   adams_id = 116  &
   i_marker_name = .PM.Moving_1_3.MARKER_69  &
   j_marker_name = .PM.Moving_2_1_5.MARKER_70
!
constraint create joint fixed  &
   joint_name = .PM.Lock1  &
   adams_id = 117  &
   i_marker_name = .PM.MirrorBase_1.MARKER_23  &
   j_marker_name = .PM.Driver_1.MARKER_24
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric2_6  &
   adams_id = 118  &
   i_marker_name = .PM.Stands_Single_5.MARKER_315  &
   j_marker_name = .PM.Base_1_2.MARKER_316
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric19  &
   adams_id = 119  &
   i_marker_name = .PM.Stands_Single_3.MARKER_247  &
   j_marker_name = .PM.MirrorBase_1.MARKER_248
!
constraint create joint planar  &
   joint_name = .PM.Coincident87  &
   adams_id = 120  &
   i_marker_name = .PM.Stands_2.MARKER_213  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__5.MARKER_214
!
constraint create joint planar  &
   joint_name = .PM.Coincident97  &
   adams_id = 121  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_179  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___5.MARKER_180
!
constraint create joint planar  &
   joint_name = .PM.Coincident111  &
   adams_id = 122  &
   i_marker_name = .PM.Stands_Single_1.MARKER_145  &
   j_marker_name = .PM.MirrorBase_1_2.MARKER_146
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric3_3  &
   adams_id = 123  &
   i_marker_name = .PM.Moving_1_2.MARKER_119  &
   j_marker_name = .PM.Moving_2_1_3.MARKER_120
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric9  &
   adams_id = 124  &
   i_marker_name = .PM.Moving_1_3.MARKER_63  &
   j_marker_name = .PM.Connector_2.MARKER_64
!
constraint create joint planar  &
   joint_name = .PM.Coincident10_2  &
   adams_id = 125  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_33  &
   j_marker_name = .PM.Outlayer_1_4.MARKER_34
!
constraint create joint planar  &
   joint_name = .PM.Coincident5  &
   adams_id = 126  &
   i_marker_name = .PM.Moving_2_1.MARKER_17  &
   j_marker_name = .PM.Moving_1.MARKER_18
!
constraint create joint planar  &
   joint_name = .PM.Coincident4_3  &
   adams_id = 127  &
   i_marker_name = .PM.ground.MARKER_343  &
   j_marker_name = .PM.Stands_Single_1.MARKER_344
!
constraint create joint planar  &
   joint_name = .PM.Distance2  &
   adams_id = 128  &
   i_marker_name = .PM.Leg_Rest_1.MARKER_309  &
   j_marker_name = .PM.ground.MARKER_310
!
constraint create joint planar  &
   joint_name = .PM.Coincident64  &
   adams_id = 129  &
   i_marker_name = .PM.ground.MARKER_275  &
   j_marker_name = .PM.Base_lid_1.MARKER_276
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric25  &
   adams_id = 130  &
   i_marker_name = .PM.Stands_Double_2.MARKER_241  &
   j_marker_name = .PM.Connector_1_2.MARKER_242
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric34  &
   adams_id = 131  &
   i_marker_name = .PM.GB_T_283_2007________N_N_202_E__3.MARKER_207  &
   j_marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_208
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric44  &
   adams_id = 132  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__3.MARKER_173  &
   j_marker_name = .PM.GB_T_6170_2015_1_____M16__3.MARKER_174
!
constraint create joint planar  &
   joint_name = .PM.Coincident119  &
   adams_id = 133  &
   i_marker_name = .PM.Platform_1.MARKER_139  &
   j_marker_name = .PM.Back_Support_1.MARKER_140
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric5_5  &
   adams_id = 134  &
   i_marker_name = .PM.Moving_2_1_3.MARKER_113  &
   j_marker_name = .PM.Outlayer_1_2.MARKER_114
!
constraint create joint planar  &
   joint_name = .PM.Coincident8  &
   adams_id = 135  &
   i_marker_name = .PM.ground.MARKER_337  &
   j_marker_name = .PM.Stands_Single_3.MARKER_338
!
constraint create joint planar  &
   joint_name = .PM.Coincident34  &
   adams_id = 136  &
   i_marker_name = .PM.Platform_1.MARKER_303  &
   j_marker_name = .PM.Stands_2.MARKER_304
!
constraint create joint planar  &
   joint_name = .PM.Coincident67  &
   adams_id = 137  &
   i_marker_name = .PM.ground.MARKER_269  &
   j_marker_name = .PM.Base_lid_3.MARKER_270
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric27  &
   adams_id = 138  &
   i_marker_name = .PM.ground.MARKER_235  &
   j_marker_name = .PM.Front_wheel_2.MARKER_236
!
constraint create joint planar  &
   joint_name = .PM.Coincident90  &
   adams_id = 139  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_95__1.MARKER_201  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___1.MARKER_202
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric46  &
   adams_id = 140  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_167  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___8.MARKER_168
!
constraint create joint fixed  &
   joint_name = .PM.Lock2  &
   adams_id = 141  &
   i_marker_name = .PM.Platform_1.MARKER_133  &
   j_marker_name = .PM.Back_Support_1.MARKER_134
!
constraint create joint planar  &
   joint_name = .PM.Coincident10_5  &
   adams_id = 142  &
   i_marker_name = .PM.Moving_2_1_3.MARKER_107  &
   j_marker_name = .PM.Connector_2_3.MARKER_108
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric2_4  &
   adams_id = 143  &
   i_marker_name = .PM.Base_1_2.MARKER_99  &
   j_marker_name = .PM.Outlayer_1_3.MARKER_100
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric2_2  &
   adams_id = 144  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_55  &
   j_marker_name = .PM.Driver_1_2.MARKER_56
!
constraint create joint planar  &
   joint_name = .PM.Coincident10  &
   adams_id = 145  &
   i_marker_name = .PM.MirrorBase_1.MARKER_5  &
   j_marker_name = .PM.Outlayer_1.MARKER_6
!
constraint create joint planar  &
   joint_name = .PM.Coincident13  &
   adams_id = 146  &
   i_marker_name = .PM.ground.MARKER_331  &
   j_marker_name = .PM.Stands_Single_4.MARKER_332
!
constraint create joint planar  &
   joint_name = .PM.Coincident38  &
   adams_id = 147  &
   i_marker_name = .PM.Platform_1.MARKER_297  &
   j_marker_name = .PM.Stands_Double_2.MARKER_298
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric17  &
   adams_id = 148  &
   i_marker_name = .PM.Platform_1.MARKER_263  &
   j_marker_name = .PM.Front_Handler_1.MARKER_264
!
constraint create joint planar  &
   joint_name = .PM.Coincident83  &
   adams_id = 149  &
   i_marker_name = .PM.Stands_Double_3.MARKER_229  &
   j_marker_name = .PM.GB_T_283_2007________N_N_202_E__1.MARKER_230
!
constraint create joint planar  &
   joint_name = .PM.Coincident92  &
   adams_id = 150  &
   i_marker_name = .PM.Stands_Double_2.MARKER_195  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___2.MARKER_196
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric47  &
   adams_id = 151  &
   i_marker_name = .PM.GB_T_1228_2006______________M16_55__1.MARKER_161  &
   j_marker_name = .PM.GB_T_96_1_2002_____A_16___7.MARKER_162
!
constraint create joint planar  &
   joint_name = .PM.Coincident7_2  &
   adams_id = 152  &
   i_marker_name = .PM.Moving_1_6.MARKER_93  &
   j_marker_name = .PM.Moving_2_1_6.MARKER_94
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric1  &
   adams_id = 153  &
   i_marker_name = .PM.Base_1.MARKER_79  &
   j_marker_name = .PM.Driver_1_5.MARKER_80
!
constraint create joint cylindrical  &
   joint_name = .PM.Concentric4_2  &
   adams_id = 154  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_49  &
   j_marker_name = .PM.Outlayer_1_4.MARKER_50
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel6_4  &
   adams_id = 1  &
   i_marker_name = .PM.Base_1_2.MARKER_81  &
   j_marker_name = .PM.Outlayer_1_3.MARKER_82
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel5  &
   adams_id = 2  &
   i_marker_name = .PM.Base_1.MARKER_61  &
   j_marker_name = .PM.Connector_2.MARKER_62
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel7_2  &
   adams_id = 3  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_31  &
   j_marker_name = .PM.Outlayer_1_4.MARKER_32
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel3  &
   adams_id = 4  &
   i_marker_name = .PM.Back_Support_1.MARKER_137  &
   j_marker_name = .PM.ground.MARKER_138
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel6_5  &
   adams_id = 5  &
   i_marker_name = .PM.Base_1_3.MARKER_105  &
   j_marker_name = .PM.Outlayer_1_2.MARKER_106
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel7  &
   adams_id = 6  &
   i_marker_name = .PM.MirrorBase_1.MARKER_3  &
   j_marker_name = .PM.Outlayer_1.MARKER_4
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel5_2  &
   adams_id = 7  &
   i_marker_name = .PM.Base_1_2.MARKER_85  &
   j_marker_name = .PM.Connector_2_2.MARKER_86
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel2_2  &
   adams_id = 8  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_41  &
   j_marker_name = .PM.Connector_1_2.MARKER_42
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel8_2  &
   adams_id = 9  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_29  &
   j_marker_name = .PM.Moving_1_5.MARKER_30
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel2  &
   adams_id = 10  &
   i_marker_name = .PM.Moving_2_1.MARKER_13  &
   j_marker_name = .PM.Connector_1.MARKER_14
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Perpendicular1  &
   adams_id = 11  &
   i_marker_name = .PM.Back_Support_1.MARKER_135  &
   j_marker_name = .PM.ground.MARKER_136
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel5_3  &
   adams_id = 12  &
   i_marker_name = .PM.Base_1_3.MARKER_109  &
   j_marker_name = .PM.Connector_2_3.MARKER_110
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel8  &
   adams_id = 13  &
   i_marker_name = .PM.MirrorBase_1.MARKER_1  &
   j_marker_name = .PM.Moving_1.MARKER_2
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel6_2  &
   adams_id = 14  &
   i_marker_name = .PM.MirrorBase_1_2.MARKER_39  &
   j_marker_name = .PM.Moving_2_1_2.MARKER_40
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel1  &
   adams_id = 15  &
   i_marker_name = .PM.Platform_1.MARKER_281  &
   j_marker_name = .PM.Handle_1.MARKER_282
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel6_3  &
   adams_id = 16  &
   i_marker_name = .PM.Base_1.MARKER_57  &
   j_marker_name = .PM.Outlayer_1_6.MARKER_58
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .PM.Parallel6  &
   adams_id = 17  &
   i_marker_name = .PM.MirrorBase_1.MARKER_11  &
   j_marker_name = .PM.Moving_2_1.MARKER_12
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .PM.SFORCE_1  &
   adams_id = 2  &
   type_of_freedom = translational  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_10306  &
   j_marker_name = .PM.Moving_2_1_2.MARKER_10307  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .PM.SFORCE_3  &
   adams_id = 4  &
   type_of_freedom = translational  &
   i_marker_name = .PM.Moving_2_1_3.MARKER_10310  &
   j_marker_name = .PM.Moving_2_1_3.MARKER_10311  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .PM.SFORCE_4  &
   adams_id = 5  &
   type_of_freedom = translational  &
   i_marker_name = .PM.Moving_2_1.MARKER_10312  &
   j_marker_name = .PM.Moving_2_1.MARKER_10313  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .PM.SFORCE_5  &
   adams_id = 6  &
   type_of_freedom = translational  &
   i_marker_name = .PM.Moving_2_1_2.MARKER_10314  &
   j_marker_name = .PM.Moving_2_1_2.MARKER_10315  &
   action_only = on  &
   function = ""
!
force create direct single_component_force  &
   single_component_force_name = .PM.SFORCE_2  &
   adams_id = 7  &
   type_of_freedom = translational  &
   i_marker_name = .PM.Moving_2_1_6.MARKER_10317  &
   j_marker_name = .PM.Moving_2_1_6.MARKER_10318  &
   action_only = on  &
   function = ""
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .PM.Controls_Plant_2  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.input_channels  &
   object_value =   &
      .PM.F1,  &
      .PM.F2,  &
      .PM.F3
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.output_channels  &
   object_value =   &
      .PM.angle,  &
      .PM.omega,  &
      .PM.Posx,  &
      .PM.Posy,  &
      .PM.Vx,  &
      .PM.Vy
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.file_name  &
   string_value = "Controls_Plant_2"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.host  &
   string_value = "DESKTOP-BUO0R38"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .PM.Controls_Plant_2.output_rate  &
   integer_value = 1
!
ude modify instance  &
   instance_name = .PM.Controls_Plant_2
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .PM.ground
!
geometry create shape force  &
   force_name = .PM.SFORCE_2_force_graphic_1  &
   adams_id = 317  &
   force_element_name = .PM.SFORCE_1  &
   applied_at_marker_name = .PM.Moving_2_1_2.MARKER_10306
!
geometry create shape force  &
   force_name = .PM.SFORCE_4_force_graphic_1  &
   adams_id = 318  &
   force_element_name = .PM.SFORCE_3  &
   applied_at_marker_name = .PM.Moving_2_1_3.MARKER_10310
!
geometry create shape force  &
   force_name = .PM.SFORCE_5_force_graphic_1  &
   adams_id = 319  &
   force_element_name = .PM.SFORCE_4  &
   applied_at_marker_name = .PM.Moving_2_1.MARKER_10312
!
geometry create shape force  &
   force_name = .PM.SFORCE_6_force_graphic_1  &
   adams_id = 320  &
   force_element_name = .PM.SFORCE_5  &
   applied_at_marker_name = .PM.Moving_2_1_2.MARKER_10314
!
geometry create shape force  &
   force_name = .PM.SFORCE_7_force_graphic_1  &
   adams_id = 321  &
   force_element_name = .PM.SFORCE_2  &
   applied_at_marker_name = .PM.Moving_2_1_6.MARKER_10317
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = .PM.ACC  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9.80665  &
   z_component_gravity = 0.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = PM  &
   error_tolerance = 1.0E-04  &
   pattern_for_jacobian = yes, yes, yes, yes, yes, yes, yes, yes, yes, yes  &
   maxit_corrector_iterations = 25  &
   hinit_time_step = 1.0E-04  &
   hmin_time_step = 1.0E-07  &
   hmax_time_step = 1.0E-02
!
executive_control set kinematics_parameters  &
   model_name = PM  &
   hmax = 1.0E-02
!
output_control set output  &
   model_name = PM  &
   separator = off
!
output_control set results  &
   model_name = PM  &
   formatted = on
!
executive_control set preferences  &
   model_name = PM  &
   contact_faceting_tolerance = 900.0
!
!---------------------------- Adams View Variables ----------------------------!
!
!
variable create  &
   variable_name = .PM._model  &
   string_value = ".PM"
!
!---------------------------- Function definitions ----------------------------!
!
!
data_element modify variable  &
   variable_name = .PM.F1  &
   function = "0"
!
data_element modify variable  &
   variable_name = .PM.F2  &
   function = "0"
!
data_element modify variable  &
   variable_name = .PM.F3  &
   function = "0"
!
data_element modify variable  &
   variable_name = .PM.Posx  &
   function = "DX(.PM.Connector_2_2.MARKER_86, .PM.ground.MARKER_237, .PM.ground.MARKER_237)"
!
data_element modify variable  &
   variable_name = .PM.Posy  &
   function = "DY(.PM.Connector_2_2.MARKER_86, .PM.ground.MARKER_237, .PM.ground.MARKER_237)"
!
data_element modify variable  &
   variable_name = .PM.Vx  &
   function = "VX(.PM.Connector_2_2.MARKER_86, .PM.ground.MARKER_237, .PM.ground.MARKER_237, .PM.ground.MARKER_237)"
!
data_element modify variable  &
   variable_name = .PM.Vy  &
   function = "VY(.PM.Connector_2_2.MARKER_86, .PM.ground.MARKER_237, .PM.ground.MARKER_237, .PM.ground.MARKER_237)"
!
data_element modify variable  &
   variable_name = .PM.angle  &
   function = "AZ(.PM.Platform_1.MARKER_295, .PM.ground.MARKER_10316)"
!
data_element modify variable  &
   variable_name = .PM.omega  &
   function = "VZ(.PM.Platform_1.MARKER_295, .PM.ground.MARKER_10316, .PM.ground.MARKER_10316, .PM.ground.MARKER_10316)"
!
force modify direct single_component_force  &
   single_component_force_name = .PM.SFORCE_1  &
   function = "VARVAL(.PM.F1)"
!
force modify direct single_component_force  &
   single_component_force_name = .PM.SFORCE_3  &
   function = "VARVAL(.PM.F3)"
!
force modify direct single_component_force  &
   single_component_force_name = .PM.SFORCE_4  &
   function = "VARVAL(.PM.F2)"
!
force modify direct single_component_force  &
   single_component_force_name = .PM.SFORCE_5  &
   function = "VARVAL(.PM.F1)"
!
force modify direct single_component_force  &
   single_component_force_name = .PM.SFORCE_2  &
   function = "VARVAL(.PM.F2)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .PM.Controls_Plant_2
!
model display  &
   model_name = PM
