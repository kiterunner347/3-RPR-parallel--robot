!
!-------------------------- Default Units for Model ---------------------------!
!
!
defaults units  &
   length = mm  &
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
   icon_visibility = off  &
   grid_visibility = off  &
   size_of_icons = 60.0  &
   spacing_for_grid = 60.0
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
   model_name = RPR3  &
   title = "SOLIDWORKS Motion Mechanism"
!
view erase
!
!-------------------------------- Data storage --------------------------------!
!
!
data_element create variable  &
   variable_name = .RPR3.q1  &
   adams_id = 1  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.q1out  &
   adams_id = 2  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.q2  &
   adams_id = 4  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.q2out  &
   adams_id = 5  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.q3  &
   adams_id = 6  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.q3out  &
   adams_id = 7  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.scale  &
   adams_id = 17  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.dq1  &
   adams_id = 18  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.dq2  &
   adams_id = 19  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.dq3  &
   adams_id = 20  &
   initial_condition = 0.0  &
   function = ""
!
data_element create variable  &
   variable_name = .RPR3.Force3  &
   adams_id = 34  &
   initial_condition = 0.0  &
   function = ""
!
data_element create plant input  &
   plant_input_name = .RPR3.q1in  &
   adams_id = 1  &
   variable_name = .RPR3.q1
!
data_element create plant input  &
   plant_input_name = .RPR3.q2in  &
   adams_id = 3  &
   variable_name = .RPR3.q2
!
data_element create plant input  &
   plant_input_name = .RPR3.q3in  &
   adams_id = 4  &
   variable_name = .RPR3.q3
!
data_element create plant input  &
   plant_input_name = .RPR3.InForce3  &
   adams_id = 5  &
   variable_name = .RPR3.Force3
!
data_element create plant output  &
   plant_output_name = .RPR3.qq1out  &
   adams_id = 1  &
   variable_name = .RPR3.q1out
!
data_element create plant output  &
   plant_output_name = .RPR3.qq2out  &
   adams_id = 3  &
   variable_name = .RPR3.q2out
!
data_element create plant output  &
   plant_output_name = .RPR3.qq3out  &
   adams_id = 4  &
   variable_name = .RPR3.q3out
!
data_element create plant output  &
   plant_output_name = .RPR3.dqq1out  &
   adams_id = 5  &
   variable_name = .RPR3.dq1
!
data_element create plant output  &
   plant_output_name = .RPR3.dqq2out  &
   adams_id = 6  &
   variable_name = .RPR3.dq2
!
data_element create plant output  &
   plant_output_name = .RPR3.dqq3out  &
   adams_id = 7  &
   variable_name = .RPR3.dq3
!
data_element create spline  &
   spline_name = .RPR3.F1  &
   adams_id = 1  &
   x = 0.0, 5.0E-02, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55,  &
       0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.05, 1.1, 1.15, 1.2,  &
       1.25, 1.3, 1.35, 1.4, 1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.8,  &
       1.85, 1.9, 1.95, 2.0, 2.05, 2.1, 2.15, 2.2, 2.25, 2.3, 2.35, 2.4,  &
       2.45, 2.5, 2.55, 2.6, 2.65, 2.7, 2.75, 2.8, 2.85, 2.9, 2.95, 3.0,  &
       3.05, 3.1, 3.15, 3.2, 3.25, 3.3, 3.35, 3.4, 3.45, 3.5, 3.55, 3.6,  &
       3.65, 3.7, 3.75, 3.8, 3.85, 3.9, 3.95, 4.0, 4.05, 4.1, 4.15, 4.2,  &
       4.25, 4.3, 4.35, 4.4, 4.45, 4.5, 4.55, 4.6, 4.65, 4.7, 4.75, 4.8,  &
       4.85, 4.9, 4.95, 5.0  &
   y = -26.11711049, -25.78393668, -25.44829841, -25.10324629, -24.75776149,  &
       -24.41225624, -24.06714152, -23.72282637, -23.37971731, -23.03821768,  &
       -22.69872709, -22.36164079, -22.02734914, -21.69623703, -21.36868336,  &
       -21.04506047, -20.72573365, -20.41106064, -20.10139112, -19.79706625,  &
       -19.49841819, -19.20576968, -18.91943361, -18.63971262, -18.36689869,  &
       -18.10127282, -17.84310469, -17.59265232, -17.35016185, -17.11586723,  &
       -16.88999005, -16.67273933, -16.46431137, -16.26488964, -16.07464469,  &
       -15.89373406, -15.72230231, -15.56048102, -15.40838878, -15.26613133,  &
       -15.13380162, -15.01147993, -14.89923405, -14.79711945, -14.70517947,  &
       -14.62344553, -14.5519374, -14.49066342, -14.43962079, -14.39879582,  &
       -14.36816428, -14.34769164, -14.3373334, -14.33703541, -14.34673415,  &
       -14.3663571, -14.39582303, -14.43504228, -14.48391714, -14.54234213,  &
       -14.61020428, -14.6873835, -14.77375281, -14.86917866, -14.97352122,  &
       -15.08663464, -15.20836733, -15.33856222, -15.47705702, -15.62368445,  &
       -15.77827247, -15.94064455, -16.11061984, -16.28801343, -16.47263651,  &
       -16.6642966, -16.86279772, -17.06794058, -17.27952275, -17.49733883,  &
       -17.72118062, -17.95083724, -18.18609533, -18.42673915, -18.67255072,  &
       -18.92330999, -19.17879489, -19.43878154, -19.7030443, -19.9713559,  &
       -20.24348757, -20.5192091, -20.79828898, -21.08049447, -21.36559171,  &
       -21.6533458, -21.94352087, -22.23588021, -22.5301863, -22.82620093,  &
       -23.12368525  &
   linear_extrapolate = no
!
data_element create spline  &
   spline_name = .RPR3.F2  &
   adams_id = 2  &
   x = 0.0, 5.0E-02, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5, 0.55,  &
       0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1.0, 1.05, 1.1, 1.15, 1.2,  &
       1.25, 1.3, 1.35, 1.4, 1.45, 1.5, 1.55, 1.6, 1.65, 1.7, 1.75, 1.8,  &
       1.85, 1.9, 1.95, 2.0, 2.05, 2.1, 2.15, 2.2, 2.25, 2.3, 2.35, 2.4,  &
       2.45, 2.5, 2.55, 2.6, 2.65, 2.7, 2.75, 2.8, 2.85, 2.9, 2.95, 3.0,  &
       3.05, 3.1, 3.15, 3.2, 3.25, 3.3, 3.35, 3.4, 3.45, 3.5, 3.55, 3.6,  &
       3.65, 3.7, 3.75, 3.8, 3.85, 3.9, 3.95, 4.0, 4.05, 4.1, 4.15, 4.2,  &
       4.25, 4.3, 4.35, 4.4, 4.45, 4.5, 4.55, 4.6, 4.65, 4.7, 4.75, 4.8,  &
       4.85, 4.9, 4.95, 5.0  &
   y = 9.710544587, 9.327040205, 8.942760801, 8.550273362, 8.159608712,  &
       7.77129191, 7.385835281, 7.003737209, 6.625481056, 6.25153422,  &
       5.882347318, 5.518353509, 5.159967946, 4.807587363, 4.46158978,  &
       4.122334334, 3.790161216, 3.465391715, 3.148328357, 2.839255126,  &
       2.538437764, 2.246124133, 1.962544634, 1.687912672, 1.422425158,  &
       1.166263033, 0.919591817, 0.682562167, 0.455310438, 0.237959245,  &
       3.0618017E-02, -0.166616463, -0.353659529, -0.530438124, -0.696890312,  &
       -0.852964814, -0.998620563, -1.133826288, -1.258560118, -1.372809213,  &
       -1.476569419, -1.569844937, -1.652648028, -1.724998723, -1.786924565,  &
       -1.838460356, -1.879647933, -1.910535948, -1.931179666, -1.941640775,  &
       -1.941987209, -1.932292974, -1.912637986, -1.883107923, -1.843794069,  &
       -1.79479318, -1.736207343, -1.668143843, -1.59071504, -1.504038236,  &
       -1.408235561, -1.303433848, -1.189764519, -1.06736347, -0.936370955,  &
       -0.79693148, -0.649193689, -0.49331026, -0.329437795, -0.15773672,  &
       2.1628822E-02, 0.208491071, 0.40267875, 0.604017162, 0.812328291,  &
       1.027430892, 1.249140589, 1.477269966, 1.711628654, 1.952023424,  &
       2.198258272, 2.450134503, 2.707450818, 2.970003388, 3.237585944,  &
       3.509989845, 3.787004159, 4.068415738, 4.354009284, 4.643567426,  &
       4.936870784, 5.233698037, 5.533825987, 5.83702962, 6.143082168,  &
       6.451755169, 6.762818519, 7.076040534, 7.391187995, 7.708026207,  &
       8.026319042  &
   linear_extrapolate = no
!
data_element create spline  &
   spline_name = .RPR3.F3  &
   adams_id = 3  &
   x = 0.0, 1.0E-02, 2.0E-02, 3.0E-02, 4.0E-02, 5.0E-02, 6.0E-02, 7.0E-02,  &
       8.0E-02, 9.0E-02, 0.1, 0.11, 0.12, 0.13, 0.14, 0.15, 0.16, 0.17, 0.18,  &
       0.19, 0.2, 0.21, 0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29, 0.3,  &
       0.31, 0.32, 0.33, 0.34, 0.35, 0.36, 0.37, 0.38, 0.39, 0.4, 0.41, 0.42,  &
       0.43, 0.44, 0.45, 0.46, 0.47, 0.48, 0.49, 0.5, 0.51, 0.52, 0.53, 0.54,  &
       0.55, 0.56, 0.57, 0.58, 0.59, 0.6, 0.61, 0.62, 0.63, 0.64, 0.65, 0.66,  &
       0.67, 0.68, 0.69, 0.7, 0.71, 0.72, 0.73, 0.74, 0.75, 0.76, 0.77, 0.78,  &
       0.79, 0.8, 0.81, 0.82, 0.83, 0.84, 0.85, 0.86, 0.87, 0.88, 0.89, 0.9,  &
       0.91, 0.92, 0.93, 0.94, 0.95, 0.96, 0.97, 0.98, 0.99, 1.0, 1.01, 1.02,  &
       1.03, 1.04, 1.05, 1.06, 1.07, 1.08, 1.09, 1.1, 1.11, 1.12, 1.13, 1.14,  &
       1.15, 1.16, 1.17, 1.18, 1.19, 1.2, 1.21, 1.22, 1.23, 1.24, 1.25, 1.26,  &
       1.27, 1.28, 1.29, 1.3, 1.31, 1.32, 1.33, 1.34, 1.35, 1.36, 1.37, 1.38,  &
       1.39, 1.4, 1.41, 1.42, 1.43, 1.44, 1.45, 1.46, 1.47, 1.48, 1.49, 1.5,  &
       1.51, 1.52, 1.53, 1.54, 1.55, 1.56, 1.57, 1.58, 1.59, 1.6, 1.61, 1.62,  &
       1.63, 1.64, 1.65, 1.66, 1.67, 1.68, 1.69, 1.7, 1.71, 1.72, 1.73, 1.74,  &
       1.75, 1.76, 1.77, 1.78, 1.79, 1.8, 1.81, 1.82, 1.83, 1.84, 1.85, 1.86,  &
       1.87, 1.88, 1.89, 1.9, 1.91, 1.92, 1.93, 1.94, 1.95, 1.96, 1.97, 1.98,  &
       1.99, 2.0, 2.01, 2.02, 2.03, 2.04, 2.05, 2.06, 2.07, 2.08, 2.09, 2.1,  &
       2.11, 2.12, 2.13, 2.14, 2.15, 2.16, 2.17, 2.18, 2.19, 2.2, 2.21, 2.22,  &
       2.23, 2.24, 2.25, 2.26, 2.27, 2.28, 2.29, 2.3, 2.31, 2.32, 2.33, 2.34,  &
       2.35, 2.36, 2.37, 2.38, 2.39, 2.4, 2.41, 2.42, 2.43, 2.44, 2.45, 2.46,  &
       2.47, 2.48, 2.49, 2.5, 2.51, 2.52, 2.53, 2.54, 2.55, 2.56, 2.57, 2.58,  &
       2.59, 2.6, 2.61, 2.62, 2.63, 2.64, 2.65, 2.66, 2.67, 2.68, 2.69, 2.7,  &
       2.71, 2.72, 2.73, 2.74, 2.75, 2.76, 2.77, 2.78, 2.79, 2.8, 2.81, 2.82,  &
       2.83, 2.84, 2.85, 2.86, 2.87, 2.88, 2.89, 2.9, 2.91, 2.92, 2.93, 2.94,  &
       2.95, 2.96, 2.97, 2.98, 2.99, 3.0, 3.01, 3.02, 3.03, 3.04, 3.05, 3.06,  &
       3.07, 3.08, 3.09, 3.1, 3.11, 3.12, 3.13, 3.14, 3.15, 3.16, 3.17, 3.18,  &
       3.19, 3.2, 3.21, 3.22, 3.23, 3.24, 3.25, 3.26, 3.27, 3.28, 3.29, 3.3,  &
       3.31, 3.32, 3.33, 3.34, 3.35, 3.36, 3.37, 3.38, 3.39, 3.4, 3.41, 3.42,  &
       3.43, 3.44, 3.45, 3.46, 3.47, 3.48, 3.49, 3.5, 3.51, 3.52, 3.53, 3.54,  &
       3.55, 3.56, 3.57, 3.58, 3.59, 3.6, 3.61, 3.62, 3.63, 3.64, 3.65, 3.66,  &
       3.67, 3.68, 3.69, 3.7, 3.71, 3.72, 3.73, 3.74, 3.75, 3.76, 3.77, 3.78,  &
       3.79, 3.8, 3.81, 3.82, 3.83, 3.84, 3.85, 3.86, 3.87, 3.88, 3.89, 3.9,  &
       3.91, 3.92, 3.93, 3.94, 3.95, 3.96, 3.97, 3.98, 3.99, 4.0, 4.01, 4.02,  &
       4.03, 4.04, 4.05, 4.06, 4.07, 4.08, 4.09, 4.1, 4.11, 4.12, 4.13, 4.14,  &
       4.15, 4.16, 4.17, 4.18, 4.19, 4.2, 4.21, 4.22, 4.23, 4.24, 4.25, 4.26,  &
       4.27, 4.28, 4.29, 4.3, 4.31, 4.32, 4.33, 4.34, 4.35, 4.36, 4.37, 4.38,  &
       4.39, 4.4, 4.41, 4.42, 4.43, 4.44, 4.45, 4.46, 4.47, 4.48, 4.49, 4.5,  &
       4.51, 4.52, 4.53, 4.54, 4.55, 4.56, 4.57, 4.58, 4.59, 4.6, 4.61, 4.62,  &
       4.63, 4.64, 4.65, 4.66, 4.67, 4.68, 4.69, 4.7, 4.71, 4.72, 4.73, 4.74,  &
       4.75, 4.76, 4.77, 4.78, 4.79, 4.8, 4.81, 4.82, 4.83, 4.84, 4.85, 4.86,  &
       4.87, 4.88, 4.89, 4.9, 4.91, 4.92, 4.93, 4.94, 4.95, 4.96, 4.97, 4.98,  &
       4.99, 5.0  &
   y = 22.09149, 22.09174, 22.092, 22.09226, 22.09251, 22.09277, 22.09303,  &
       22.09328, 22.09354, 22.0938, 22.09406, 22.09431, 22.09456, 22.09482,  &
       22.09507, 22.09533, 22.09558, 22.09583, 22.09608, 22.09634, 22.09659,  &
       22.09684, 22.09708, 22.09733, 22.09758, 22.09783, 22.09807, 22.09831,  &
       22.09855, 22.0988, 22.09904, 22.09927, 22.09951, 22.09975, 22.09998,  &
       22.10022, 22.10045, 22.10068, 22.10091, 22.10114, 22.10137, 22.10159,  &
       22.10181, 22.10203, 22.10225, 22.10247, 22.10268, 22.1029, 22.10311,  &
       22.10332, 22.10353, 22.10374, 22.10394, 22.10414, 22.10434, 22.10455,  &
       22.10474, 22.10493, 22.10512, 22.10531, 22.10551, 22.10569, 22.10587,  &
       22.10605, 22.10623, 22.10641, 22.10658, 22.10675, 22.10691, 22.10708,  &
       22.10725, 22.10741, 22.10756, 22.10772, 22.10787, 22.10803, 22.10817,  &
       22.10831, 22.10845, 22.10859, 22.10873, 22.10886, 22.10899, 22.10912,  &
       22.10924, 22.10937, 22.10948, 22.1096, 22.10971, 22.10982, 22.10993,  &
       22.11003, 22.11013, 22.11023, 22.11032, 22.11042, 22.1105, 22.11058,  &
       22.11066, 22.11074, 22.11083, 22.11089, 22.11096, 22.11102, 22.11108,  &
       22.11115, 22.1112, 22.11125, 22.11129, 22.11134, 22.11139, 22.11142,  &
       22.11145, 22.11148, 22.11151, 22.11154, 22.11156, 22.11157, 22.11158,  &
       22.1116, 22.11161, 22.1116, 22.1116, 22.1116, 22.11159, 22.11159,  &
       22.11156, 22.11154, 22.11152, 22.1115, 22.11147, 22.11143, 22.11139,  &
       22.11135, 22.11131, 22.11127, 22.11121, 22.11115, 22.1111, 22.11104,  &
       22.11098, 22.1109, 22.11083, 22.11075, 22.11067, 22.11059, 22.1105,  &
       22.1104, 22.11031, 22.11021, 22.11012, 22.11001, 22.10989, 22.10978,  &
       22.10967, 22.10955, 22.10942, 22.10929, 22.10916, 22.10903, 22.1089,  &
       22.10875, 22.1086, 22.10845, 22.1083, 22.10815, 22.10799, 22.10782,  &
       22.10766, 22.10749, 22.10732, 22.10714, 22.10696, 22.10677, 22.10659,  &
       22.10641, 22.10621, 22.10601, 22.10581, 22.10561, 22.1054, 22.10519,  &
       22.10497, 22.10476, 22.10454, 22.10432, 22.10409, 22.10386, 22.10363,  &
       22.10339, 22.10316, 22.10291, 22.10267, 22.10242, 22.10217, 22.10192,  &
       22.10166, 22.1014, 22.10114, 22.10087, 22.10061, 22.10034, 22.10006,  &
       22.09978, 22.09951, 22.09923, 22.09894, 22.09865, 22.09836, 22.09807,  &
       22.09778, 22.09748, 22.09718, 22.09688, 22.09658, 22.09627, 22.09596,  &
       22.09565, 22.09533, 22.09502, 22.0947, 22.09438, 22.09406, 22.09373,  &
       22.09341, 22.09308, 22.09275, 22.09242, 22.09208, 22.09175, 22.09141,  &
       22.09107, 22.09073, 22.09039, 22.09004, 22.0897, 22.08935, 22.089,  &
       22.08865, 22.0883, 22.08795, 22.08759, 22.08724, 22.08688, 22.08652,  &
       22.08616, 22.0858, 22.08544, 22.08508, 22.08472, 22.08435, 22.08399,  &
       22.08362, 22.08325, 22.08289, 22.08252, 22.08215, 22.08178, 22.08141,  &
       22.08104, 22.08067, 22.0803, 22.07993, 22.07956, 22.07919, 22.07881,  &
       22.07844, 22.07807, 22.0777, 22.07733, 22.07695, 22.07658, 22.07621,  &
       22.07584, 22.07547, 22.0751, 22.07473, 22.07436, 22.07399, 22.07362,  &
       22.07325, 22.07289, 22.07252, 22.07216, 22.07179, 22.07142, 22.07106,  &
       22.0707, 22.07034, 22.06998, 22.06962, 22.06926, 22.06891, 22.06855,  &
       22.0682, 22.06784, 22.06749, 22.06715, 22.0668, 22.06645, 22.0661,  &
       22.06576, 22.06542, 22.06509, 22.06475, 22.06441, 22.06408, 22.06375,  &
       22.06342, 22.06309, 22.06276, 22.06244, 22.06212, 22.0618, 22.06149,  &
       22.06117, 22.06086, 22.06056, 22.06025, 22.05994, 22.05964, 22.05934,  &
       22.05905, 22.05876, 22.05847, 22.05817, 22.0579, 22.05762, 22.05734,  &
       22.05706, 22.05678, 22.05652, 22.05626, 22.05599, 22.05573, 22.05547,  &
       22.05522, 22.05498, 22.05473, 22.05448, 22.05424, 22.05401, 22.05378,  &
       22.05355, 22.05332, 22.0531, 22.05288, 22.05267, 22.05246, 22.05225,  &
       22.05204, 22.05185, 22.05166, 22.05147, 22.05128, 22.05109, 22.05091,  &
       22.05074, 22.05057, 22.0504, 22.05023, 22.05007, 22.04992, 22.04977,  &
       22.04962, 22.04947, 22.04934, 22.0492, 22.04907, 22.04894, 22.04881,  &
       22.0487, 22.04859, 22.04848, 22.04837, 22.04827, 22.04817, 22.04809,  &
       22.048, 22.04791, 22.04782, 22.04775, 22.04769, 22.04762, 22.04755,  &
       22.04749, 22.04744, 22.04739, 22.04735, 22.0473, 22.04726, 22.04723,  &
       22.04721, 22.04719, 22.04716, 22.04714, 22.04714, 22.04713, 22.04713,  &
       22.04713, 22.04713, 22.04715, 22.04716, 22.04718, 22.0472, 22.04722,  &
       22.04726, 22.0473, 22.04734, 22.04738, 22.04742, 22.04748, 22.04754,  &
       22.0476, 22.04766, 22.04772, 22.0478, 22.04788, 22.04796, 22.04804,  &
       22.04812, 22.04822, 22.04832, 22.04842, 22.04852, 22.04862, 22.04873,  &
       22.04885, 22.04897, 22.04909, 22.04921, 22.04934, 22.04947, 22.04961,  &
       22.04975, 22.04988, 22.05003, 22.05018, 22.05034, 22.05049, 22.05064,  &
       22.05081, 22.05098, 22.05114, 22.05131, 22.05148, 22.05166, 22.05184,  &
       22.05203, 22.05221, 22.05239, 22.05259, 22.05278, 22.05298, 22.05318,  &
       22.05337, 22.05358, 22.05379, 22.054, 22.05421, 22.05442, 22.05464,  &
       22.05485, 22.05507, 22.0553, 22.05552, 22.05574, 22.05597, 22.0562,  &
       22.05643, 22.05666, 22.0569, 22.05714, 22.05738, 22.05762, 22.05785,  &
       22.0581, 22.05834, 22.05859, 22.05884, 22.05908, 22.05933, 22.05958,  &
       22.05983, 22.06009, 22.06034, 22.06059, 22.06085, 22.0611, 22.06136,  &
       22.06161, 22.06187, 22.06213, 22.06239, 22.06265, 22.06291, 22.06317,  &
       22.06342, 22.06368, 22.06394, 22.0642  &
   linear_extrapolate = no
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
   comments = "Mechanism simTime 1", "Mechanism simFrames 25"
!
defaults model  &
   part_name = ground
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.ground.MARKER_10042  &
   adams_id = 10042  &
   location = -274.9016512103, 10.0, 656.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_34  &
   adams_id = 34  &
   location = 283.519522, 81.444862, 87.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_35  &
   adams_id = 35  &
   location = 300.0, 30.2, 103.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_38  &
   adams_id = 38  &
   location = -294.1851534, 81.6541802, 137.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_39  &
   adams_id = 39  &
   location = -310.0, 30.2, 153.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_42  &
   adams_id = 42  &
   location = -317.1272644, 83.5558257, 437.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_43  &
   adams_id = 43  &
   location = -310.0, 30.2, 453.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_46  &
   adams_id = 46  &
   location = -294.1851534, 81.6541802, 737.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_47  &
   adams_id = 47  &
   location = -310.0, 30.2, 753.4  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_50  &
   adams_id = 50  &
   location = 283.519522, 81.444862, 787.5  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_51  &
   adams_id = 51  &
   location = 300.0, 30.2, 716.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.Simple_Base_Assembly_1_Origin  &
   adams_id = 10012  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground._Origin  &
   adams_id = 10015  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.MARKER_10045  &
   adams_id = 10045  &
   location = -250.0, 10.0, 656.6  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.ground.PSMAR  &
   adams_id = 10024  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.ground.PSMAR  &
   visibility = off
!
! ****** Graphics for current part ******
!
!---------------------- Simple_Linear_Actuator_Base_1_2 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_2  &
   adams_id = 2  &
   location = -244.025923, 192.2876959, 710.0  &
   orientation = 247.8523472d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Base_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_9  &
   adams_id = 9  &
   location = 77.5, 27.0, 0.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_11  &
   adams_id = 11  &
   location = -306.0, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_45  &
   adams_id = 45  &
   location = 121.3802319, -4.75, 27.5  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_48  &
   adams_id = 48  &
   location = 175.0, 0.0, 20.75  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.Simple_Linear_Actuator_Base_1_2_Origin  &
   adams_id = 10000  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.cm  &
   adams_id = 10001  &
   location = -184.3106392, -7.0680215, 0.2673395493  &
   orientation = 179.1519373d, 1.3131684d, -179.075555d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.PSMAR  &
   adams_id = 10025  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_2  &
   mass = 3.737165669  &
   center_of_mass_marker = .RPR3.Simple_Linear_Actuator_Base_1_2.cm  &
   ixx = 2399.7083  &
   iyy = 1.767910774E+05  &
   izz = 1.773214924E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_2  &
   visibility = on
!
!----------------------------- Simple_Platform_1 ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Platform_1  &
   adams_id = 3  &
   location = -198.3798768, 976.9087615, 408.0  &
   orientation = 89.19449067d, 90.0d, 270.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Platform_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.MARKER_22  &
   adams_id = 22  &
   location = 362.5, 20.0, 280.0  &
   orientation = -90.0d, 90.0d, 90.80550933d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.MARKER_24  &
   adams_id = 24  &
   location = 287.5, 20.0, 280.0  &
   orientation = -90.0d, 90.0d, 90.80550933d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.MARKER_26  &
   adams_id = 26  &
   location = -12.5, 20.0, -155.0  &
   orientation = -90.0d, 90.0d, 90.80550933d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.MARKER_27  &
   adams_id = 27  &
   location = -290.0, 15.5, 280.0  &
   orientation = -90.0d, 90.0d, 90.80550933d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.MARKER_30  &
   adams_id = 30  &
   location = -287.5, 20.0, 280.0  &
   orientation = -90.0d, 90.0d, 90.80550933d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.MARKER_32  &
   adams_id = 32  &
   location = -362.5, 20.0, 280.0  &
   orientation = -90.0d, 90.0d, 90.80550933d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.Simple_Platform_1_Origin  &
   adams_id = 10002  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.cm  &
   adams_id = 10003  &
   location = 0.2313215347, 52.2361507, -15.2938877  &
   orientation = -176.0762851d, 1.193077792d, 176.0668075d
!
marker create  &
   marker_name = .RPR3.Simple_Platform_1.PSMAR  &
   adams_id = 10026  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Platform_1.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Platform_1  &
   mass = 2.522091516  &
   center_of_mass_marker = .RPR3.Simple_Platform_1.cm  &
   ixx = 1.003871271E+05  &
   iyy = 2.696136148E+05  &
   izz = 1.734463632E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!---------------------- Simple_Linear_Actuator_Base_1_4 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_4  &
   adams_id = 4  &
   location = 261.3317988, 200.8744568, 60.0  &
   orientation = 282.76549219d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Base_1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_17  &
   adams_id = 17  &
   location = 77.5, 27.0, 0.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_19  &
   adams_id = 19  &
   location = -306.0, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_33  &
   adams_id = 33  &
   location = 121.3802319, -4.75, 27.5  &
   orientation = 77.23450781d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_36  &
   adams_id = 36  &
   location = 175.0, 0.0, 20.75  &
   orientation = 77.23450781d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.Simple_Linear_Actuator_Base_1_4_Origin  &
   adams_id = 10004  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.cm  &
   adams_id = 10005  &
   location = -184.3106392, -7.0680215, 0.2673395493  &
   orientation = 179.1519373d, 1.3131684d, -179.075555d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.PSMAR  &
   adams_id = 10027  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_4  &
   mass = 3.737165669  &
   center_of_mass_marker = .RPR3.Simple_Linear_Actuator_Base_1_4.cm  &
   ixx = 2399.7083  &
   iyy = 1.767910774E+05  &
   izz = 1.773214924E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_4  &
   visibility = on
!
!---------------------- Simple_Linear_Actuator_Base_1_6 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_6  &
   adams_id = 5  &
   location = 261.3317988, 200.8744568, 760.0  &
   orientation = 282.76549219d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Base_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_13  &
   adams_id = 13  &
   location = 77.5, 27.0, 0.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_15  &
   adams_id = 15  &
   location = -306.0, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_49  &
   adams_id = 49  &
   location = 121.3802319, -4.75, 27.5  &
   orientation = 77.23450781d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_52  &
   adams_id = 52  &
   location = 175.0, 0.0, -20.75  &
   orientation = 77.23450781d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.Simple_Linear_Actuator_Base_1_6_Origin  &
   adams_id = 10006  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.cm  &
   adams_id = 10007  &
   location = -184.3106392, -7.0680215, 0.2673395493  &
   orientation = 179.1519373d, 1.3131684d, -179.075555d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.PSMAR  &
   adams_id = 10028  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_6  &
   mass = 3.737165669  &
   center_of_mass_marker = .RPR3.Simple_Linear_Actuator_Base_1_6.cm  &
   ixx = 2399.7083  &
   iyy = 1.767910774E+05  &
   izz = 1.773214924E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_6  &
   visibility = on
!
!---------------------- Simple_Linear_Actuator_Base_1_5 -----------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_5  &
   adams_id = 6  &
   location = -244.025923, 192.2876959, 110.0  &
   orientation = 247.8523472d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Base_1_5
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_5  &
   adams_id = 5  &
   location = 77.5, 27.0, 0.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_7  &
   adams_id = 7  &
   location = -306.0, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_37  &
   adams_id = 37  &
   location = 121.3802319, -4.75, 27.5  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_40  &
   adams_id = 40  &
   location = 175.0, 0.0, 20.75  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.Simple_Linear_Actuator_Base_1_5_Origin  &
   adams_id = 10008  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.cm  &
   adams_id = 10009  &
   location = -184.3106392, -7.0680215, 0.2673395493  &
   orientation = 179.1519373d, 1.3131684d, -179.075555d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.PSMAR  &
   adams_id = 10029  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_5  &
   mass = 3.737165669  &
   center_of_mass_marker = .RPR3.Simple_Linear_Actuator_Base_1_5.cm  &
   ixx = 2399.7083  &
   iyy = 1.767910774E+05  &
   izz = 1.773214924E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1_5  &
   visibility = on
!
!--------------- Simple_Linear_Actuator_Moving_With_Bearing_1_2 ---------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2  &
   adams_id = 7  &
   location = 225.7193275, 358.0614741, 60.0  &
   orientation = 282.76549219d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.MARKER_18  &
   adams_id = 18  &
   location = -636.5969994, 0.0, 6.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.MARKER_20  &
   adams_id = 20  &
   location = -325.5, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.MARKER_21  &
   adams_id = 21  &
   location = -651.0, 0.0, 0.0  &
   orientation = 77.23450781d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.Simple_Linear_Actuator_Moving_With_Bearing_1_2_Origin  &
   adams_id = 10010  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.cm  &
   adams_id = 10011  &
   location = -415.3110475, 1.822379656E-05, 2.821705271E-05  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.PSMAR  &
   adams_id = 10030  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2  &
   mass = 0.5332463599  &
   center_of_mass_marker =   &
                           .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.cm  &
   ixx = 49.06618071  &
   iyy = 2.37004231E+04  &
   izz = 2.37047179E+04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!----------------------- Simple_Linear_Actuator_Base_1 ------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1  &
   adams_id = 8  &
   location = -317.7740333, 205.0272416, 410.0  &
   orientation = 272.54609102d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Base_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_10041  &
   adams_id = 10041  &
   location = -469.343246138, -3.4114766567E-08, 0.0  &
   orientation = 87.45390898d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_1  &
   adams_id = 1  &
   location = 77.5, 27.0, 0.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_3  &
   adams_id = 3  &
   location = -306.0, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_41  &
   adams_id = 41  &
   location = 121.3802319, -4.75, 27.5  &
   orientation = 87.45390898d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_44  &
   adams_id = 44  &
   location = 175.0, 0.0, 20.75  &
   orientation = 87.45390898d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.Simple_Linear_Actuator_Base_1_Origin  &
   adams_id = 10013  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.cm  &
   adams_id = 10014  &
   location = -184.3106392, -7.0680215, 0.2673395493  &
   orientation = 179.1519373d, 1.3131684d, -179.075555d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.PSMAR  &
   adams_id = 10031  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Base_1.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1  &
   mass = 3.737165669  &
   center_of_mass_marker = .RPR3.Simple_Linear_Actuator_Base_1.cm  &
   ixx = 2399.7083  &
   iyy = 1.767910774E+05  &
   izz = 1.773214924E+05  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
part attributes  &
   part_name = .RPR3.Simple_Linear_Actuator_Base_1  &
   visibility = on
!
!--------------- Simple_Linear_Actuator_Moving_With_Bearing_1_6 ---------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6  &
   adams_id = 9  &
   location = -163.5499472, 390.0042248, 710.0  &
   orientation = 247.8523472d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_10043  &
   adams_id = 10043  &
   location = -650.9999999999, -1.9706458687E-11, 8.0  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_10044  &
   adams_id = 10044  &
   location = -650.9999999999, -1.9706458687E-11, 8.0  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_10  &
   adams_id = 10  &
   location = -636.5969994, 0.0, 6.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_12  &
   adams_id = 12  &
   location = -325.5, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_28  &
   adams_id = 28  &
   location = -646.808593, 1.6377139, -12.0  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_29  &
   adams_id = 29  &
   location = -651.0, 0.0, 0.0  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.Simple_Linear_Actuator_Moving_With_Bearing_1_6_Origin  &
   adams_id = 10016  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.cm  &
   adams_id = 10017  &
   location = -415.3110475, 1.822379656E-05, 2.821705271E-05  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.PSMAR  &
   adams_id = 10032  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6  &
   mass = 0.5332463599  &
   center_of_mass_marker =   &
                           .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.cm  &
   ixx = 49.06618071  &
   iyy = 2.37004231E+04  &
   izz = 2.37047179E+04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!--------------- Simple_Linear_Actuator_Moving_With_Bearing_1_4 ---------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4  &
   adams_id = 10  &
   location = -163.5499472, 390.0042248, 110.0  &
   orientation = 247.8523472d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.MARKER_6  &
   adams_id = 6  &
   location = -636.5969994, 0.0, 6.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.MARKER_8  &
   adams_id = 8  &
   location = -325.5, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.MARKER_23  &
   adams_id = 23  &
   location = -651.0, 0.0, 0.0  &
   orientation = 112.1476528d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.Simple_Linear_Actuator_Moving_With_Bearing_1_4_Origin  &
   adams_id = 10018  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.cm  &
   adams_id = 10019  &
   location = -415.3110475, 1.822379656E-05, 2.821705271E-05  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.PSMAR  &
   adams_id = 10033  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4  &
   mass = 0.5332463599  &
   center_of_mass_marker =   &
                           .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.cm  &
   ixx = 49.06618071  &
   iyy = 2.37004231E+04  &
   izz = 2.37047179E+04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!--------------- Simple_Linear_Actuator_Moving_With_Bearing_1_3 ---------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3  &
   adams_id = 11  &
   location = 225.7193275, 358.0614741, 760.0  &
   orientation = 282.76549219d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.MARKER_14  &
   adams_id = 14  &
   location = -636.5969994, 0.0, 6.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.MARKER_16  &
   adams_id = 16  &
   location = -325.5, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.MARKER_31  &
   adams_id = 31  &
   location = -651.0, 0.0, 0.0  &
   orientation = 77.23450781d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.Simple_Linear_Actuator_Moving_With_Bearing_1_3_Origin  &
   adams_id = 10020  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.cm  &
   adams_id = 10021  &
   location = -415.3110475, 1.822379656E-05, 2.821705271E-05  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.PSMAR  &
   adams_id = 10034  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3  &
   mass = 0.5332463599  &
   center_of_mass_marker =   &
                           .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.cm  &
   ixx = 49.06618071  &
   iyy = 2.37004231E+04  &
   izz = 2.37047179E+04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
!---------------- Simple_Linear_Actuator_Moving_With_Bearing_1 ----------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
part create rigid_body name_and_position  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1  &
   adams_id = 12  &
   location = -324.1639887, 348.728487, 410.0  &
   orientation = 272.54609102d, 0.0d, 0.0d
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1
!
! ****** Markers for current part ******
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_10040  &
   adams_id = 10040  &
   location = -427.156753862, 3.4120817283E-08, 0.0  &
   orientation = 87.45390898d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_2  &
   adams_id = 2  &
   location = -636.5969994, 0.0, 6.0  &
   orientation = 180.0d, 90.0d, -90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_4  &
   adams_id = 4  &
   location = -325.5, 0.0, 0.0  &
   orientation = -90.0d, 90.0d, 90.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_25  &
   adams_id = 25  &
   location = -651.0, 0.0, 0.0  &
   orientation = 87.45390898d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.Simple_Linear_Actuator_Moving_With_Bearing_1_Origin  &
   adams_id = 10022  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.cm  &
   adams_id = 10023  &
   location = -415.3110475, 1.822379656E-05, 2.821705271E-05  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker create  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.PSMAR  &
   adams_id = 10035  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0d, 0.0d, 0.0d
!
marker attributes  &
   marker_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.PSMAR  &
   visibility = off
!
part create rigid_body mass_properties  &
   part_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1  &
   mass = 0.5332463599  &
   center_of_mass_marker =   &
                           .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.cm  &
   ixx = 49.06618071  &
   iyy = 2.37004231E+04  &
   izz = 2.37047179E+04  &
   ixy = 0.0  &
   izx = 0.0  &
   iyz = 0.0
!
! ****** Graphics for current part ******
!
! ****** Graphics from Parasolid file ******
!
file parasolid read  &
   file_name = "Fkinev1.xmt_txt"  &
   model_name = .RPR3
!
geometry attributes  &
   geometry_name = .RPR3.ground.Simple_Base_Assembly_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Base_1_2.Simple_Linear_Actuator_Base_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Platform_1.Simple_Platform_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Base_1_4.Simple_Linear_Actuator_Base_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Base_1_6.Simple_Linear_Actuator_Base_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Base_1_5.Simple_Linear_Actuator_Base_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.Simple_Linear_Actuator_Moving_With_Bearing_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Base_1.Simple_Linear_Actuator_Base_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.Simple_Linear_Actuator_Moving_With_Bearing_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.Simple_Linear_Actuator_Moving_With_Bearing_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.Simple_Linear_Actuator_Moving_With_Bearing_1_graphic_body1  &
   color = WHITE
!
geometry attributes  &
   geometry_name = .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.Simple_Linear_Actuator_Moving_With_Bearing_1_graphic_body1  &
   color = WHITE
!
!----------------------------------- Joints -----------------------------------!
!
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric6  &
   adams_id = 1  &
   i_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.MARKER_31  &
   j_marker_name = .RPR3.Simple_Platform_1.MARKER_32
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric1_3  &
   adams_id = 2  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_11  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_12
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric9  &
   adams_id = 3  &
   i_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_25  &
   j_marker_name = .RPR3.Simple_Platform_1.MARKER_26
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric2  &
   adams_id = 4  &
   i_marker_name = .RPR3.ground.MARKER_47  &
   j_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_48
!
constraint create joint planar  &
   joint_name = .RPR3.Distance3  &
   adams_id = 5  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_41  &
   j_marker_name = .RPR3.ground.MARKER_42
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric1_4  &
   adams_id = 6  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_15  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.MARKER_16
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric5  &
   adams_id = 7  &
   i_marker_name = .RPR3.ground.MARKER_35  &
   j_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_36
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric7  &
   adams_id = 8  &
   i_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_29  &
   j_marker_name = .RPR3.Simple_Platform_1.MARKER_30
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric10  &
   adams_id = 9  &
   i_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.MARKER_23  &
   j_marker_name = .RPR3.Simple_Platform_1.MARKER_24
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric1_6  &
   adams_id = 10  &
   i_marker_name = .RPR3.ground.MARKER_51  &
   j_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_52
!
constraint create joint translational  &
   joint_name = .RPR3.Tran1  &
   adams_id = 11  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_19  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.MARKER_20
!
constraint create joint planar  &
   joint_name = .RPR3.Distance2  &
   adams_id = 12  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_45  &
   j_marker_name = .RPR3.ground.MARKER_46
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric4  &
   adams_id = 13  &
   i_marker_name = .RPR3.ground.MARKER_39  &
   j_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_40
!
constraint create joint planar  &
   joint_name = .RPR3.Distance5  &
   adams_id = 14  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_33  &
   j_marker_name = .RPR3.ground.MARKER_34
!
constraint create joint planar  &
   joint_name = .RPR3.Distance7  &
   adams_id = 15  &
   i_marker_name = .RPR3.Simple_Platform_1.MARKER_27  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_28
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric12  &
   adams_id = 16  &
   i_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.MARKER_21  &
   j_marker_name = .RPR3.Simple_Platform_1.MARKER_22
!
constraint create joint translational  &
   joint_name = .RPR3.Tran2  &
   adams_id = 17  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_7  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.MARKER_8
!
constraint create joint planar  &
   joint_name = .RPR3.Distance1  &
   adams_id = 18  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_49  &
   j_marker_name = .RPR3.ground.MARKER_50
!
constraint create joint cylindrical  &
   joint_name = .RPR3.Concentric3  &
   adams_id = 19  &
   i_marker_name = .RPR3.ground.MARKER_43  &
   j_marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_44
!
constraint create joint translational  &
   joint_name = .RPR3.Tran3  &
   adams_id = 20  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_3  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_4  &
   translational_ic = -146.9925875  &
   velocity_ic = -0.1815
!
constraint create joint planar  &
   joint_name = .RPR3.Distance4  &
   adams_id = 21  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_37  &
   j_marker_name = .RPR3.ground.MARKER_38
!
!------------------------------ Joint Primitives ------------------------------!
!
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .RPR3.a_1_2  &
   adams_id = 1  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_5.MARKER_5  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_4.MARKER_6
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .RPR3.a_1  &
   adams_id = 2  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_1  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_2
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .RPR3.a_1_3  &
   adams_id = 3  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_2.MARKER_9  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_10
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .RPR3.a_1_4  &
   adams_id = 4  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_6.MARKER_13  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_3.MARKER_14
!
constraint create primitive_joint parallel_axis  &
   jprim_name = .RPR3.a_1_5  &
   adams_id = 5  &
   i_marker_name = .RPR3.Simple_Linear_Actuator_Base_1_4.MARKER_17  &
   j_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_2.MARKER_18
!
!----------------------------------- Forces -----------------------------------!
!
!
force create direct single_component_force  &
   single_component_force_name = .RPR3.SFORCE_3  &
   adams_id = 3  &
   type_of_freedom = translational  &
   i_marker_name =   &
                   .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_10040  &
   j_marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_10041  &
   action_only = off  &
   function = ""
!
!----------------------------- Simulation Scripts -----------------------------!
!
!
simulation script create  &
   sim_script_name = .RPR3.Last_Sim  &
   commands =   &
              "simulation single_run transient type=auto_select initial_static=no end_time=5.0 number_of_steps=500 model_name=.RPR3"
!
!-------------------------- Adams View UDE Instances --------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
undo begin_block suppress = yes
!
ude create instance  &
   instance_name = .RPR3.Controls_Plant_1  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
ude create instance  &
   instance_name = .RPR3.Controls_Plant_2  &
   definition_name = .controls.controls_plant  &
   location = 0.0, 0.0, 0.0  &
   orientation = 0.0, 0.0, 0.0
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.input_channels  &
   object_value =   &
      .RPR3.q1,  &
      .RPR3.q2,  &
      .RPR3.q3
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.output_channels  &
   object_value =   &
      .RPR3.q1out,  &
      .RPR3.q2out,  &
      .RPR3.q3out,  &
      .RPR3.dq1,  &
      .RPR3.dq2,  &
      .RPR3.dq3
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.file_name  &
   string_value = "fkinev1"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.host  &
   string_value = "DESKTOP-O1FIFKV.si.sjtu.edu.cn"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_1.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .RPR3.Controls_Plant_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.input_channels  &
   object_value = .RPR3.Force3
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.output_channels  &
   object_value =   &
      .RPR3.dq1,  &
      .RPR3.dq2,  &
      .RPR3.dq3,  &
      .RPR3.q1out,  &
      .RPR3.q2out,  &
      .RPR3.q3out
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.file_name  &
   string_value = "Fkinev1"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.event_name  &
   string_value = ""
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.solver_type  &
   string_value = "cplusplus"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.target  &
   string_value = "MATLAB"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.FMI_Master  &
   string_value = "none"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.analysis_type  &
   string_value = "non_linear"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.analysis_init  &
   string_value = "no"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.analysis_init_str  &
   string_value = ""
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.user_lib  &
   string_value = ""
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.host  &
   string_value = "DESKTOP-O1FIFKV"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.dynamic_state  &
   string_value = "on"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.tcp_ip  &
   string_value = "off"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.output_rate  &
   integer_value = 1
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.realtime  &
   string_value = "off"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.include_mnf  &
   string_value = "no"
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.hp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.pv_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.gp_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.pf_group  &
   object_value = (NONE)
!
variable modify  &
   variable_name = .RPR3.Controls_Plant_2.ude_group  &
   object_value = (NONE)
!
ude modify instance  &
   instance_name = .RPR3.Controls_Plant_2
!
undo end_block
!
!------------------------------ Dynamic Graphics ------------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = .RPR3.ground
!
geometry create shape force  &
   force_name = .RPR3.SFORCE_3_force_graphic_1  &
   adams_id = 21  &
   force_element_name = .RPR3.SFORCE_3  &
   applied_at_marker_name =   &
                            .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1.MARKER_10040
!
geometry create shape force  &
   force_name = .RPR3.SFORCE_3_force_graphic_2  &
   adams_id = 26  &
   force_element_name = .RPR3.SFORCE_3  &
   applied_at_marker_name = .RPR3.Simple_Linear_Actuator_Base_1.MARKER_10041
!
!---------------------------------- Motions -----------------------------------!
!
!
constraint create motion_generator  &
   motion_name = .RPR3.MOTION_1  &
   adams_id = 1  &
   type_of_freedom = translational  &
   joint_name = .RPR3.Tran1  &
   function = ""
!
constraint attributes  &
   constraint_name = .RPR3.MOTION_1  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .RPR3.MOTION_2  &
   adams_id = 2  &
   type_of_freedom = translational  &
   joint_name = .RPR3.Tran2  &
   function = ""
!
constraint attributes  &
   constraint_name = .RPR3.MOTION_2  &
   name_visibility = off
!
constraint create motion_generator  &
   motion_name = .RPR3.MOTION_3  &
   adams_id = 3  &
   type_of_freedom = translational  &
   joint_name = .RPR3.Tran3  &
   function = ""
!
constraint attributes  &
   constraint_name = .RPR3.MOTION_3  &
   active = off  &
   name_visibility = off
!
!---------------------------------- Accgrav -----------------------------------!
!
!
force create body gravitational  &
   gravity_field_name = ACCGRAV_1  &
   x_component_gravity = 0.0  &
   y_component_gravity = -9800.0  &
   z_component_gravity = 0.0
!
force attributes  &
   force_name = .RPR3.ACCGRAV_1  &
   active = on  &
   size_of_icons = 200.0
!
!----------------------------- Analysis settings ------------------------------!
!
!
executive_control set numerical_integration_parameters  &
   model_name = RPR3  &
   error_tolerance = 1.0E-04  &
   pattern_for_jacobian = yes, yes, yes, yes, yes, yes, yes, yes, yes, yes  &
   maxit_corrector_iterations = 25  &
   hinit_time_step = 1.0E-04  &
   hmin_time_step = 1.0E-07  &
   hmax_time_step = 1.0E-02
!
executive_control set kinematics_parameters  &
   model_name = RPR3  &
   hmax = 1.0E-02
!
output_control set output  &
   model_name = RPR3  &
   separator = off
!
output_control set results  &
   model_name = RPR3  &
   formatted = on
!
executive_control set preferences  &
   model_name = RPR3  &
   contact_faceting_tolerance = 900.0
!
!---------------------------------- Measures ----------------------------------!
!
!
measure create object  &
   measure_name = .RPR3.Tran1_MEA_1  &
   from_first = yes  &
   object = .RPR3.Tran1  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran1_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran2_MEA_1  &
   from_first = yes  &
   object = .RPR3.Tran2  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran2_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran3_Displacement  &
   from_first = yes  &
   object = .RPR3.Tran3  &
   characteristic = translational_displacement  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran3_Displacement  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran1_MEA_2  &
   from_first = yes  &
   object = .RPR3.Tran1  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran1_MEA_2  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran2_MEA_2  &
   from_first = yes  &
   object = .RPR3.Tran2  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran2_MEA_2  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran3_MEA_2  &
   from_first = yes  &
   object = .RPR3.Tran3  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran3_MEA_2  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.SFORCE_x  &
   from_first = yes  &
   object = .RPR3.SFORCE_3  &
   characteristic = element_force  &
   component = x_component
!
data_element attributes  &
   data_element_name = .RPR3.SFORCE_x  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.SFORCE_y  &
   from_first = yes  &
   object = .RPR3.SFORCE_3  &
   characteristic = element_force  &
   component = y_component
!
data_element attributes  &
   data_element_name = .RPR3.SFORCE_y  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.SFORCE_3_MEA_1  &
   from_first = yes  &
   object = .RPR3.SFORCE_3  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.SFORCE_3_MEA_1  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran1_MEA_3  &
   from_first = yes  &
   object = .RPR3.Tran1  &
   characteristic = translational_velocity  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran1_MEA_3  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran2_MEA_3  &
   from_first = yes  &
   object = .RPR3.Tran2  &
   characteristic = translational_velocity  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran2_MEA_3  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran3_MEA_3  &
   from_first = yes  &
   object = .RPR3.Tran3  &
   characteristic = translational_velocity  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran3_MEA_3  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran1_vx  &
   from_first = yes  &
   object = .RPR3.Tran1  &
   characteristic = translational_velocity  &
   component = x_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran1_vx  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran1_vy  &
   from_first = yes  &
   object = .RPR3.Tran1  &
   characteristic = translational_velocity  &
   component = y_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran1_vy  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran1_vz  &
   from_first = yes  &
   object = .RPR3.Tran1  &
   characteristic = translational_velocity  &
   component = z_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran1_vz  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.SFORCE_z  &
   from_first = yes  &
   object = .RPR3.SFORCE_3  &
   characteristic = element_force  &
   component = z_component
!
data_element attributes  &
   data_element_name = .RPR3.SFORCE_z  &
   color = WHITE
!
measure create object  &
   measure_name = .RPR3.Tran3_Force  &
   from_first = yes  &
   object = .RPR3.Tran3  &
   characteristic = element_force  &
   component = mag_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.Tran3_Force  &
   color = WHITE
!
measure create orient  &
   measure_name = .RPR3.MEA_ORIENTATION  &
   to_frame = .RPR3.Simple_Platform_1.Simple_Platform_1_Origin  &
   from_frame = .RPR3.ground.MARKER_34  &
   characteristic = yaw_pitch_roll  &
   component = angle_1_component  &
   create_measure_display = no
!
data_element attributes  &
   data_element_name = .RPR3.MEA_ORIENTATION  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .RPR3.PPx  &
   from_point = .RPR3.ground.MARKER_10042  &
   to_point =   &
              .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_10043  &
   characteristic = translational_displacement  &
   component = x_component
!
data_element attributes  &
   data_element_name = .RPR3.PPx  &
   color = WHITE
!
measure create pt2pt  &
   measure_name = .RPR3.PPy  &
   from_point =   &
                .RPR3.Simple_Linear_Actuator_Moving_With_Bearing_1_6.MARKER_10044  &
   to_point = .RPR3.ground.MARKER_10045  &
   characteristic = translational_displacement  &
   component = y_component
!
data_element attributes  &
   data_element_name = .RPR3.PPy  &
   color = WHITE
!
!---------------------------- Function definitions ----------------------------!
!
!
constraint modify motion_generator  &
   motion_name = .RPR3.MOTION_1  &
   function = "-150"
!
constraint modify motion_generator  &
   motion_name = .RPR3.MOTION_2  &
   function = "-200"
!
constraint modify motion_generator  &
   motion_name = .RPR3.MOTION_3  &
   function = "varval(.RPR3.q3)*0"
!
data_element modify variable  &
   variable_name = .RPR3.q1  &
   function = "72.0298"
!
data_element modify variable  &
   variable_name = .RPR3.q1out  &
   function = ".RPR3.Tran1_MEA_1"
!
data_element modify variable  &
   variable_name = .RPR3.q2  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RPR3.q2out  &
   function = ".RPR3.Tran2_MEA_1"
!
data_element modify variable  &
   variable_name = .RPR3.q3  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RPR3.q3out  &
   function = ".RPR3.Tran3_Displacement"
!
data_element modify variable  &
   variable_name = .RPR3.scale  &
   function = "0"
!
data_element modify variable  &
   variable_name = .RPR3.dq1  &
   function = ".RPR3.Tran1_MEA_3"
!
data_element modify variable  &
   variable_name = .RPR3.dq2  &
   function = ".RPR3.Tran2_MEA_3"
!
data_element modify variable  &
   variable_name = .RPR3.dq3  &
   function = ".RPR3.Tran3_MEA_3"
!
data_element modify variable  &
   variable_name = .RPR3.Force3  &
   function = "0"
!
force modify direct single_component_force  &
   single_component_force_name = .RPR3.SFORCE_3  &
   function = "varval(.RPR3.Force3)"
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .RPR3.Controls_Plant_1
!
!-------------------------- Adams View UDE Instance ---------------------------!
!
!
ude modify instance  &
   instance_name = .RPR3.Controls_Plant_2
!
!--------------------------- Expression definitions ---------------------------!
!
!
defaults coordinate_system  &
   default_coordinate_system = ground
!
geometry modify shape force  &
   force_name = .RPR3.SFORCE_3_force_graphic_1  &
   applied_at_marker_name = (.RPR3.SFORCE_3.i)
!
geometry modify shape force  &
   force_name = .RPR3.SFORCE_3_force_graphic_2  &
   applied_at_marker_name = (.RPR3.SFORCE_3.j)
!
model display  &
   model_name = RPR3
