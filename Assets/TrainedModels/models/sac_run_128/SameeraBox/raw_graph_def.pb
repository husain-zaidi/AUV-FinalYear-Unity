
C
global_step/initial_valueConst*
value	B : *
dtype0
W
global_step
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
global_step/AssignAssignglobal_stepglobal_step/initial_value*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
R
global_step/readIdentityglobal_step*
T0*
_class
loc:@global_step
;
steps_to_incrementPlaceholder*
shape: *
dtype0
9
AddAddglobal_step/readsteps_to_increment*
T0
t
AssignAssignglobal_stepAdd*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
L
vector_observationPlaceholder*
shape:���������*
dtype0
w
%normalization_steps/Initializer/zerosConst*&
_class
loc:@normalization_steps*
value	B : *
dtype0
�
normalization_steps
VariableV2*
shape: *
shared_name *&
_class
loc:@normalization_steps*
dtype0*
	container 
�
normalization_steps/AssignAssignnormalization_steps%normalization_steps/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@normalization_steps*
validate_shape(
j
normalization_steps/readIdentitynormalization_steps*
T0*&
_class
loc:@normalization_steps
p
running_mean/Initializer/zerosConst*
_class
loc:@running_mean*
valueB*    *
dtype0
}
running_mean
VariableV2*
shape:*
shared_name *
_class
loc:@running_mean*
dtype0*
	container 
�
running_mean/AssignAssignrunning_meanrunning_mean/Initializer/zeros*
use_locking(*
T0*
_class
loc:@running_mean*
validate_shape(
U
running_mean/readIdentityrunning_mean*
T0*
_class
loc:@running_mean
w
!running_variance/Initializer/onesConst*#
_class
loc:@running_variance*
valueB*  �?*
dtype0
�
running_variance
VariableV2*
shape:*
shared_name *#
_class
loc:@running_variance*
dtype0*
	container 
�
running_variance/AssignAssignrunning_variance!running_variance/Initializer/ones*
use_locking(*
T0*#
_class
loc:@running_variance*
validate_shape(
a
running_variance/readIdentityrunning_variance*
T0*#
_class
loc:@running_variance
;
ShapeShapevector_observation*
T0*
out_type0
A
strided_slice/stackConst*
valueB: *
dtype0
C
strided_slice/stack_1Const*
valueB:*
dtype0
C
strided_slice/stack_2Const*
valueB:*
dtype0
�
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
>
Add_1Addnormalization_steps/readstrided_slice*
T0
:
SubSubvector_observationrunning_mean/read*
T0
;
CastCastAdd_1*

SrcT0*
Truncate( *

DstT0
&
truedivRealDivSubCast*
T0
?
Sum/reduction_indicesConst*
value	B : *
dtype0
P
SumSumtruedivSum/reduction_indices*

Tidx0*
	keep_dims( *
T0
/
add_2AddV2running_mean/readSum*
T0
0
Sub_1Subvector_observationadd_2*
T0

mulMulSub_1Sub*
T0
A
Sum_1/reduction_indicesConst*
value	B : *
dtype0
P
Sum_1SummulSum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0
5
add_3AddV2running_variance/readSum_1*
T0
z
Assign_1Assignrunning_meanadd_2*
use_locking(*
T0*
_class
loc:@running_mean*
validate_shape(
�
Assign_2Assignrunning_varianceadd_3*
use_locking(*
T0*#
_class
loc:@running_variance*
validate_shape(
�
Assign_3Assignnormalization_stepsAdd_1*
use_locking(*
T0*&
_class
loc:@normalization_steps*
validate_shape(
3

group_depsNoOp	^Assign_1	^Assign_2	^Assign_3
<
sub_2Subvector_observationrunning_mean/read*
T0
P
Cast_1Castnormalization_steps/read*

SrcT0*
Truncate( *

DstT0
4
add_4/yConst*
valueB
 *  �?*
dtype0
(
add_4AddV2Cast_1add_4/y*
T0
;
	truediv_1RealDivrunning_variance/readadd_4*
T0
 
SqrtSqrt	truediv_1*
T0
*
	truediv_2RealDivsub_2Sqrt*
T0
G
normalized_state/Minimum/yConst*
valueB
 *  �@*
dtype0
S
normalized_state/MinimumMinimum	truediv_2normalized_state/Minimum/y*
T0
?
normalized_state/yConst*
valueB
 *  ��*
dtype0
R
normalized_stateMaximumnormalized_state/Minimumnormalized_state/y*
T0
5

batch_sizePlaceholder*
shape:*
dtype0
:
sequence_lengthPlaceholder*
shape:*
dtype0
;
masksPlaceholder*
shape:���������*
dtype0
A
epsilonPlaceholder*
shape:���������*
dtype0
=
Cast_2Castmasks*

SrcT0*
Truncate( *

DstT0
M
#is_continuous_control/initial_valueConst*
value	B :*
dtype0
a
is_continuous_control
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
is_continuous_control/AssignAssignis_continuous_control#is_continuous_control/initial_value*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
p
is_continuous_control/readIdentityis_continuous_control*
T0*(
_class
loc:@is_continuous_control
F
version_number/initial_valueConst*
value	B :*
dtype0
Z
version_number
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
version_number/AssignAssignversion_numberversion_number/initial_value*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
[
version_number/readIdentityversion_number*
T0*!
_class
loc:@version_number
C
memory_size/initial_valueConst*
value	B : *
dtype0
W
memory_size
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
memory_size/AssignAssignmemory_sizememory_size/initial_value*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
R
memory_size/readIdentitymemory_size*
T0*
_class
loc:@memory_size
K
!action_output_shape/initial_valueConst*
value	B :*
dtype0
_
action_output_shape
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
action_output_shape/AssignAssignaction_output_shape!action_output_shape/initial_value*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
j
action_output_shape/readIdentityaction_output_shape*
T0*&
_class
loc:@action_output_shape
�
Fpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
valueB"      *
dtype0
�
Epolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
valueB
 *    *
dtype0
�
Gpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
valueB
 *�	`>*
dtype0
�
Ppolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
seed2L
�
Dpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulPpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalGpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
@policy/main_graph_0/hidden_0/kernel/Initializer/truncated_normalAddDpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulEpolicy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
#policy/main_graph_0/hidden_0/kernel
VariableV2*
shape:	�*
shared_name *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
	container 
�
*policy/main_graph_0/hidden_0/kernel/AssignAssign#policy/main_graph_0/hidden_0/kernel@policy/main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
(policy/main_graph_0/hidden_0/kernel/readIdentity#policy/main_graph_0/hidden_0/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
3policy/main_graph_0/hidden_0/bias/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
valueB�*    *
dtype0
�
!policy/main_graph_0/hidden_0/bias
VariableV2*
shape:�*
shared_name *4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0*
	container 
�
(policy/main_graph_0/hidden_0/bias/AssignAssign!policy/main_graph_0/hidden_0/bias3policy/main_graph_0/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
&policy/main_graph_0/hidden_0/bias/readIdentity!policy/main_graph_0/hidden_0/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
�
#policy/main_graph_0/hidden_0/MatMulMatMulnormalized_state(policy/main_graph_0/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
$policy/main_graph_0/hidden_0/BiasAddBiasAdd#policy/main_graph_0/hidden_0/MatMul&policy/main_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
^
$policy/main_graph_0/hidden_0/SigmoidSigmoid$policy/main_graph_0/hidden_0/BiasAdd*
T0
|
 policy/main_graph_0/hidden_0/MulMul$policy/main_graph_0/hidden_0/BiasAdd$policy/main_graph_0/hidden_0/Sigmoid*
T0
�
Fpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
valueB"      *
dtype0
�
Epolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
valueB
 *    *
dtype0
�
Gpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
valueB
 *��M=*
dtype0
�
Ppolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalFpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
seed2]
�
Dpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulPpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalGpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
@policy/main_graph_0/hidden_1/kernel/Initializer/truncated_normalAddDpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulEpolicy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
#policy/main_graph_0/hidden_1/kernel
VariableV2*
shape:
��*
shared_name *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
	container 
�
*policy/main_graph_0/hidden_1/kernel/AssignAssign#policy/main_graph_0/hidden_1/kernel@policy/main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
(policy/main_graph_0/hidden_1/kernel/readIdentity#policy/main_graph_0/hidden_1/kernel*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
3policy/main_graph_0/hidden_1/bias/Initializer/zerosConst*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
valueB�*    *
dtype0
�
!policy/main_graph_0/hidden_1/bias
VariableV2*
shape:�*
shared_name *4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0*
	container 
�
(policy/main_graph_0/hidden_1/bias/AssignAssign!policy/main_graph_0/hidden_1/bias3policy/main_graph_0/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
&policy/main_graph_0/hidden_1/bias/readIdentity!policy/main_graph_0/hidden_1/bias*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias
�
#policy/main_graph_0/hidden_1/MatMulMatMul policy/main_graph_0/hidden_0/Mul(policy/main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
$policy/main_graph_0/hidden_1/BiasAddBiasAdd#policy/main_graph_0/hidden_1/MatMul&policy/main_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
^
$policy/main_graph_0/hidden_1/SigmoidSigmoid$policy/main_graph_0/hidden_1/BiasAdd*
T0
|
 policy/main_graph_0/hidden_1/MulMul$policy/main_graph_0/hidden_1/BiasAdd$policy/main_graph_0/hidden_1/Sigmoid*
T0
�
3policy/mu/kernel/Initializer/truncated_normal/shapeConst*#
_class
loc:@policy/mu/kernel*
valueB"      *
dtype0
�
2policy/mu/kernel/Initializer/truncated_normal/meanConst*#
_class
loc:@policy/mu/kernel*
valueB
 *    *
dtype0
�
4policy/mu/kernel/Initializer/truncated_normal/stddevConst*#
_class
loc:@policy/mu/kernel*
valueB
 *��;*
dtype0
�
=policy/mu/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal3policy/mu/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*#
_class
loc:@policy/mu/kernel*
dtype0*
seed2n
�
1policy/mu/kernel/Initializer/truncated_normal/mulMul=policy/mu/kernel/Initializer/truncated_normal/TruncatedNormal4policy/mu/kernel/Initializer/truncated_normal/stddev*
T0*#
_class
loc:@policy/mu/kernel
�
-policy/mu/kernel/Initializer/truncated_normalAdd1policy/mu/kernel/Initializer/truncated_normal/mul2policy/mu/kernel/Initializer/truncated_normal/mean*
T0*#
_class
loc:@policy/mu/kernel
�
policy/mu/kernel
VariableV2*
shape:	�*
shared_name *#
_class
loc:@policy/mu/kernel*
dtype0*
	container 
�
policy/mu/kernel/AssignAssignpolicy/mu/kernel-policy/mu/kernel/Initializer/truncated_normal*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(
a
policy/mu/kernel/readIdentitypolicy/mu/kernel*
T0*#
_class
loc:@policy/mu/kernel
t
 policy/mu/bias/Initializer/zerosConst*!
_class
loc:@policy/mu/bias*
valueB*    *
dtype0
�
policy/mu/bias
VariableV2*
shape:*
shared_name *!
_class
loc:@policy/mu/bias*
dtype0*
	container 
�
policy/mu/bias/AssignAssignpolicy/mu/bias policy/mu/bias/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
[
policy/mu/bias/readIdentitypolicy/mu/bias*
T0*!
_class
loc:@policy/mu/bias
�
policy_1/mu/MatMulMatMul policy/main_graph_0/hidden_1/Mulpolicy/mu/kernel/read*
transpose_b( *
T0*
transpose_a( 
g
policy_1/mu/BiasAddBiasAddpolicy_1/mu/MatMulpolicy/mu/bias/read*
T0*
data_formatNHWC
�
8policy/log_std/kernel/Initializer/truncated_normal/shapeConst*(
_class
loc:@policy/log_std/kernel*
valueB"      *
dtype0
�
7policy/log_std/kernel/Initializer/truncated_normal/meanConst*(
_class
loc:@policy/log_std/kernel*
valueB
 *    *
dtype0
�
9policy/log_std/kernel/Initializer/truncated_normal/stddevConst*(
_class
loc:@policy/log_std/kernel*
valueB
 *��;*
dtype0
�
Bpolicy/log_std/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal8policy/log_std/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*(
_class
loc:@policy/log_std/kernel*
dtype0*
seed2}
�
6policy/log_std/kernel/Initializer/truncated_normal/mulMulBpolicy/log_std/kernel/Initializer/truncated_normal/TruncatedNormal9policy/log_std/kernel/Initializer/truncated_normal/stddev*
T0*(
_class
loc:@policy/log_std/kernel
�
2policy/log_std/kernel/Initializer/truncated_normalAdd6policy/log_std/kernel/Initializer/truncated_normal/mul7policy/log_std/kernel/Initializer/truncated_normal/mean*
T0*(
_class
loc:@policy/log_std/kernel
�
policy/log_std/kernel
VariableV2*
shape:	�*
shared_name *(
_class
loc:@policy/log_std/kernel*
dtype0*
	container 
�
policy/log_std/kernel/AssignAssignpolicy/log_std/kernel2policy/log_std/kernel/Initializer/truncated_normal*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
p
policy/log_std/kernel/readIdentitypolicy/log_std/kernel*
T0*(
_class
loc:@policy/log_std/kernel
~
%policy/log_std/bias/Initializer/zerosConst*&
_class
loc:@policy/log_std/bias*
valueB*    *
dtype0
�
policy/log_std/bias
VariableV2*
shape:*
shared_name *&
_class
loc:@policy/log_std/bias*
dtype0*
	container 
�
policy/log_std/bias/AssignAssignpolicy/log_std/bias%policy/log_std/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
j
policy/log_std/bias/readIdentitypolicy/log_std/bias*
T0*&
_class
loc:@policy/log_std/bias
�
policy_1/log_std/MatMulMatMul policy/main_graph_0/hidden_1/Mulpolicy/log_std/kernel/read*
transpose_b( *
T0*
transpose_a( 
v
policy_1/log_std/BiasAddBiasAddpolicy_1/log_std/MatMulpolicy/log_std/bias/read*
T0*
data_formatNHWC
M
 policy_1/clip_by_value/Minimum/yConst*
valueB
 *   @*
dtype0
n
policy_1/clip_by_value/MinimumMinimumpolicy_1/log_std/BiasAdd policy_1/clip_by_value/Minimum/y*
T0
E
policy_1/clip_by_value/yConst*
valueB
 *  ��*
dtype0
d
policy_1/clip_by_valueMaximumpolicy_1/clip_by_value/Minimumpolicy_1/clip_by_value/y*
T0
4
policy_1/ExpExppolicy_1/clip_by_value*
T0
E
policy_1/ShapeShapepolicy_1/mu/BiasAdd*
T0*
out_type0
H
policy_1/random_normal/meanConst*
valueB
 *    *
dtype0
J
policy_1/random_normal/stddevConst*
valueB
 *  �?*
dtype0
�
+policy_1/random_normal/RandomStandardNormalRandomStandardNormalpolicy_1/Shape*
seed�&*
T0*
dtype0*
seed2�
v
policy_1/random_normal/mulMul+policy_1/random_normal/RandomStandardNormalpolicy_1/random_normal/stddev*
T0
_
policy_1/random_normalAddpolicy_1/random_normal/mulpolicy_1/random_normal/mean*
T0
B
policy_1/mulMulpolicy_1/Exppolicy_1/random_normal*
T0
A
policy_1/addAddV2policy_1/mu/BiasAddpolicy_1/mul*
T0
?
policy_1/subSubpolicy_1/addpolicy_1/mu/BiasAdd*
T0
=
policy_1/add_1/yConst*
valueB
 *�7�5*
dtype0
@
policy_1/add_1AddV2policy_1/Exppolicy_1/add_1/y*
T0
B
policy_1/truedivRealDivpolicy_1/subpolicy_1/add_1*
T0
;
policy_1/pow/yConst*
valueB
 *   @*
dtype0
>
policy_1/powPowpolicy_1/truedivpolicy_1/pow/y*
T0
=
policy_1/mul_1/xConst*
valueB
 *   @*
dtype0
H
policy_1/mul_1Mulpolicy_1/mul_1/xpolicy_1/clip_by_value*
T0
>
policy_1/add_2AddV2policy_1/powpolicy_1/mul_1*
T0
=
policy_1/add_3/yConst*
valueB
 *�?�?*
dtype0
B
policy_1/add_3AddV2policy_1/add_2policy_1/add_3/y*
T0
=
policy_1/mul_2/xConst*
valueB
 *   �*
dtype0
@
policy_1/mul_2Mulpolicy_1/mul_2/xpolicy_1/add_3*
T0
,
policy_1/TanhTanhpolicy_1/add*
T0
=
policy_1/pow_1/yConst*
valueB
 *   @*
dtype0
?
policy_1/pow_1Powpolicy_1/Tanhpolicy_1/pow_1/y*
T0
=
policy_1/sub_1/xConst*
valueB
 *  �?*
dtype0
@
policy_1/sub_1Subpolicy_1/sub_1/xpolicy_1/pow_1*
T0
=
policy_1/add_4/yConst*
valueB
 *�7�5*
dtype0
B
policy_1/add_4AddV2policy_1/sub_1policy_1/add_4/y*
T0
,
policy_1/LogLogpolicy_1/add_4*
T0
<
policy_1/sub_2Subpolicy_1/mul_2policy_1/Log*
T0
H
policy_1/Sum/reduction_indicesConst*
value	B :*
dtype0
i
policy_1/SumSumpolicy_1/sub_2policy_1/Sum/reduction_indices*

Tidx0*
	keep_dims(*
T0
=
policy_1/Log_1/xConst*
valueB
 *���A*
dtype0
0
policy_1/Log_1Logpolicy_1/Log_1/x*
T0
=
policy_1/mul_3/xConst*
valueB
 *   @*
dtype0
H
policy_1/mul_3Mulpolicy_1/mul_3/xpolicy_1/clip_by_value*
T0
@
policy_1/add_5AddV2policy_1/Log_1policy_1/mul_3*
T0
C
policy_1/ConstConst*
valueB"       *
dtype0
[
policy_1/MeanMeanpolicy_1/add_5policy_1/Const*

Tidx0*
	keep_dims( *
T0
=
policy_1/mul_4/xConst*
valueB
 *   ?*
dtype0
?
policy_1/mul_4Mulpolicy_1/mul_4/xpolicy_1/Mean*
T0
Q
policy_1/strided_slice/stackConst*
valueB"        *
dtype0
S
policy_1/strided_slice/stack_1Const*
valueB"       *
dtype0
S
policy_1/strided_slice/stack_2Const*
valueB"      *
dtype0
�
policy_1/strided_sliceStridedSlicepolicy_1/mu/BiasAddpolicy_1/strided_slice/stackpolicy_1/strided_slice/stack_1policy_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
M
policy_1/Reshape/shapeConst*
valueB:
���������*
dtype0
b
policy_1/ReshapeReshapepolicy_1/strided_slicepolicy_1/Reshape/shape*
T0*
Tshape0
L
policy_1/ones_like/ShapeShapepolicy_1/Reshape*
T0*
out_type0
E
policy_1/ones_like/ConstConst*
valueB
 *  �?*
dtype0
i
policy_1/ones_likeFillpolicy_1/ones_like/Shapepolicy_1/ones_like/Const*
T0*

index_type0
B
policy_1/mul_5Mulpolicy_1/ones_likepolicy_1/mul_4*
T0
*
actionIdentitypolicy_1/Tanh*
T0
-
StopGradientStopGradientaction*
T0
1
action_probsIdentitypolicy_1/sub_2*
T0
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0
�
save/SaveV2/tensor_namesConst*�
value�B�Baction_output_shapeBglobal_stepBis_continuous_controlBmemory_sizeBnormalization_stepsBpolicy/log_std/biasBpolicy/log_std/kernelB!policy/main_graph_0/hidden_0/biasB#policy/main_graph_0/hidden_0/kernelB!policy/main_graph_0/hidden_1/biasB#policy/main_graph_0/hidden_1/kernelBpolicy/mu/biasBpolicy/mu/kernelBrunning_meanBrunning_varianceBversion_number*
dtype0
g
save/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapeglobal_stepis_continuous_controlmemory_sizenormalization_stepspolicy/log_std/biaspolicy/log_std/kernel!policy/main_graph_0/hidden_0/bias#policy/main_graph_0/hidden_0/kernel!policy/main_graph_0/hidden_1/bias#policy/main_graph_0/hidden_1/kernelpolicy/mu/biaspolicy/mu/kernelrunning_meanrunning_varianceversion_number*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Baction_output_shapeBglobal_stepBis_continuous_controlBmemory_sizeBnormalization_stepsBpolicy/log_std/biasBpolicy/log_std/kernelB!policy/main_graph_0/hidden_0/biasB#policy/main_graph_0/hidden_0/kernelB!policy/main_graph_0/hidden_1/biasB#policy/main_graph_0/hidden_1/kernelBpolicy/mu/biasBpolicy/mu/kernelBrunning_meanBrunning_varianceBversion_number*
dtype0
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*3
value*B(B B B B B B B B B B B B B B B B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
�
save/AssignAssignaction_output_shapesave/RestoreV2*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
�
save/Assign_1Assignglobal_stepsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save/Assign_2Assignis_continuous_controlsave/RestoreV2:2*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
�
save/Assign_3Assignmemory_sizesave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
�
save/Assign_4Assignnormalization_stepssave/RestoreV2:4*
use_locking(*
T0*&
_class
loc:@normalization_steps*
validate_shape(
�
save/Assign_5Assignpolicy/log_std/biassave/RestoreV2:5*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
save/Assign_6Assignpolicy/log_std/kernelsave/RestoreV2:6*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
�
save/Assign_7Assign!policy/main_graph_0/hidden_0/biassave/RestoreV2:7*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
save/Assign_8Assign#policy/main_graph_0/hidden_0/kernelsave/RestoreV2:8*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
save/Assign_9Assign!policy/main_graph_0/hidden_1/biassave/RestoreV2:9*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
save/Assign_10Assign#policy/main_graph_0/hidden_1/kernelsave/RestoreV2:10*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
save/Assign_11Assignpolicy/mu/biassave/RestoreV2:11*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
�
save/Assign_12Assignpolicy/mu/kernelsave/RestoreV2:12*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(
�
save/Assign_13Assignrunning_meansave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@running_mean*
validate_shape(
�
save/Assign_14Assignrunning_variancesave/RestoreV2:14*
use_locking(*
T0*#
_class
loc:@running_variance*
validate_shape(
�
save/Assign_15Assignversion_numbersave/RestoreV2:15*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
�
initNoOp^action_output_shape/Assign^global_step/Assign^is_continuous_control/Assign^memory_size/Assign^normalization_steps/Assign^policy/log_std/bias/Assign^policy/log_std/kernel/Assign)^policy/main_graph_0/hidden_0/bias/Assign+^policy/main_graph_0/hidden_0/kernel/Assign)^policy/main_graph_0/hidden_1/bias/Assign+^policy/main_graph_0/hidden_1/kernel/Assign^policy/mu/bias/Assign^policy/mu/kernel/Assign^running_mean/Assign^running_variance/Assign^version_number/Assign
C
Variable/initial_valueConst*
valueB
 *  �?*
dtype0
T
Variable
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
Variable/AssignAssignVariableVariable/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
;
Assign_4/valueConst*
valueB
 *    *
dtype0
{
Assign_4AssignVariableAssign_4/value*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(
>
sac_sequence_lengthPlaceholder*
shape:*
dtype0
�
Gcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
valueB"      *
dtype0
�
Fcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
valueB
 *    *
dtype0
�
Hcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
valueB
 *�	`>*
dtype0
�
Qcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
seed2�
�
Ecritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulMulQcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalHcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
Acritic/value/encoder/hidden_0/kernel/Initializer/truncated_normalAddEcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulFcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
$critic/value/encoder/hidden_0/kernel
VariableV2*
shape:	�*
shared_name *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
	container 
�
+critic/value/encoder/hidden_0/kernel/AssignAssign$critic/value/encoder/hidden_0/kernelAcritic/value/encoder/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
validate_shape(
�
)critic/value/encoder/hidden_0/kernel/readIdentity$critic/value/encoder/hidden_0/kernel*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
4critic/value/encoder/hidden_0/bias/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
valueB�*    *
dtype0
�
"critic/value/encoder/hidden_0/bias
VariableV2*
shape:�*
shared_name *5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0*
	container 
�
)critic/value/encoder/hidden_0/bias/AssignAssign"critic/value/encoder/hidden_0/bias4critic/value/encoder/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
validate_shape(
�
'critic/value/encoder/hidden_0/bias/readIdentity"critic/value/encoder/hidden_0/bias*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias
�
$critic/value/encoder/hidden_0/MatMulMatMulnormalized_state)critic/value/encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
%critic/value/encoder/hidden_0/BiasAddBiasAdd$critic/value/encoder/hidden_0/MatMul'critic/value/encoder/hidden_0/bias/read*
T0*
data_formatNHWC
`
%critic/value/encoder/hidden_0/SigmoidSigmoid%critic/value/encoder/hidden_0/BiasAdd*
T0

!critic/value/encoder/hidden_0/MulMul%critic/value/encoder/hidden_0/BiasAdd%critic/value/encoder/hidden_0/Sigmoid*
T0
�
Gcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
valueB"      *
dtype0
�
Fcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
valueB
 *    *
dtype0
�
Hcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
valueB
 *��M=*
dtype0
�
Qcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalGcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
seed2�
�
Ecritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulMulQcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalHcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
Acritic/value/encoder/hidden_1/kernel/Initializer/truncated_normalAddEcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulFcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
$critic/value/encoder/hidden_1/kernel
VariableV2*
shape:
��*
shared_name *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
	container 
�
+critic/value/encoder/hidden_1/kernel/AssignAssign$critic/value/encoder/hidden_1/kernelAcritic/value/encoder/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
validate_shape(
�
)critic/value/encoder/hidden_1/kernel/readIdentity$critic/value/encoder/hidden_1/kernel*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
4critic/value/encoder/hidden_1/bias/Initializer/zerosConst*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
valueB�*    *
dtype0
�
"critic/value/encoder/hidden_1/bias
VariableV2*
shape:�*
shared_name *5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0*
	container 
�
)critic/value/encoder/hidden_1/bias/AssignAssign"critic/value/encoder/hidden_1/bias4critic/value/encoder/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
validate_shape(
�
'critic/value/encoder/hidden_1/bias/readIdentity"critic/value/encoder/hidden_1/bias*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias
�
$critic/value/encoder/hidden_1/MatMulMatMul!critic/value/encoder/hidden_0/Mul)critic/value/encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
%critic/value/encoder/hidden_1/BiasAddBiasAdd$critic/value/encoder/hidden_1/MatMul'critic/value/encoder/hidden_1/bias/read*
T0*
data_formatNHWC
`
%critic/value/encoder/hidden_1/SigmoidSigmoid%critic/value/encoder/hidden_1/BiasAdd*
T0

!critic/value/encoder/hidden_1/MulMul%critic/value/encoder/hidden_1/BiasAdd%critic/value/encoder/hidden_1/Sigmoid*
T0
�
Dcritic/value/extrinsic_value/kernel/Initializer/random_uniform/shapeConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
valueB"      *
dtype0
�
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/minConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
valueB
 *|ݽ*
dtype0
�
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/maxConst*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
valueB
 *|�=*
dtype0
�
Lcritic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniformDcritic/value/extrinsic_value/kernel/Initializer/random_uniform/shape*
seed�&*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
seed2�
�
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/subSubBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/maxBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
�
Bcritic/value/extrinsic_value/kernel/Initializer/random_uniform/mulMulLcritic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
�
>critic/value/extrinsic_value/kernel/Initializer/random_uniformAddBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/mulBcritic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
�
#critic/value/extrinsic_value/kernel
VariableV2*
shape:	�*
shared_name *6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
	container 
�
*critic/value/extrinsic_value/kernel/AssignAssign#critic/value/extrinsic_value/kernel>critic/value/extrinsic_value/kernel/Initializer/random_uniform*
use_locking(*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
validate_shape(
�
(critic/value/extrinsic_value/kernel/readIdentity#critic/value/extrinsic_value/kernel*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
�
3critic/value/extrinsic_value/bias/Initializer/zerosConst*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
valueB*    *
dtype0
�
!critic/value/extrinsic_value/bias
VariableV2*
shape:*
shared_name *4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0*
	container 
�
(critic/value/extrinsic_value/bias/AssignAssign!critic/value/extrinsic_value/bias3critic/value/extrinsic_value/bias/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
validate_shape(
�
&critic/value/extrinsic_value/bias/readIdentity!critic/value/extrinsic_value/bias*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias
�
#critic/value/extrinsic_value/MatMulMatMul!critic/value/encoder/hidden_1/Mul(critic/value/extrinsic_value/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
$critic/value/extrinsic_value/BiasAddBiasAdd#critic/value/extrinsic_value/MatMul&critic/value/extrinsic_value/bias/read*
T0*
data_formatNHWC
c
critic/value/Mean/inputPack$critic/value/extrinsic_value/BiasAdd*
T0*

axis *
N
M
#critic/value/Mean/reduction_indicesConst*
value	B : *
dtype0
}
critic/value/MeanMeancritic/value/Mean/input#critic/value/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
L
external_action_inPlaceholder*
shape:���������*
dtype0
>
concat/axisConst*
valueB :
���������*
dtype0
c
concatConcatV2normalized_stateexternal_action_inconcat/axis*

Tidx0*
T0*
N
@
concat_1/axisConst*
valueB :
���������*
dtype0
[
concat_1ConcatV2normalized_stateactionconcat_1/axis*

Tidx0*
T0*
N
�
Rcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
valueB"      *
dtype0
�
Qcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
valueB
 *    *
dtype0
�
Scritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
valueB
 *�Q>*
dtype0
�
\critic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
seed2�
�
Pcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMul\critic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
Lcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normalAddPcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/mulQcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
/critic/q/q1_encoding/q1_encoder/hidden_0/kernel
VariableV2*
shape:	�*
shared_name *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
	container 
�
6critic/q/q1_encoding/q1_encoder/hidden_0/kernel/AssignAssign/critic/q/q1_encoding/q1_encoder/hidden_0/kernelLcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
validate_shape(
�
4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/readIdentity/critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
?critic/q/q1_encoding/q1_encoder/hidden_0/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
valueB�*    *
dtype0
�
-critic/q/q1_encoding/q1_encoder/hidden_0/bias
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0*
	container 
�
4critic/q/q1_encoding/q1_encoder/hidden_0/bias/AssignAssign-critic/q/q1_encoding/q1_encoder/hidden_0/bias?critic/q/q1_encoding/q1_encoder/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
validate_shape(
�
2critic/q/q1_encoding/q1_encoder/hidden_0/bias/readIdentity-critic/q/q1_encoding/q1_encoder/hidden_0/bias*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias
�
/critic/q/q1_encoding/q1_encoder/hidden_0/MatMulMatMulconcat4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAddBiasAdd/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul2critic/q/q1_encoding/q1_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
v
0critic/q/q1_encoding/q1_encoder/hidden_0/SigmoidSigmoid0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd*
T0
�
,critic/q/q1_encoding/q1_encoder/hidden_0/MulMul0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd0critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid*
T0
�
Rcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
valueB"      *
dtype0
�
Qcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
valueB
 *    *
dtype0
�
Scritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
valueB
 *��M=*
dtype0
�
\critic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
seed2�
�
Pcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMul\critic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
Lcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normalAddPcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/mulQcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
/critic/q/q1_encoding/q1_encoder/hidden_1/kernel
VariableV2*
shape:
��*
shared_name *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
	container 
�
6critic/q/q1_encoding/q1_encoder/hidden_1/kernel/AssignAssign/critic/q/q1_encoding/q1_encoder/hidden_1/kernelLcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
validate_shape(
�
4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/readIdentity/critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
?critic/q/q1_encoding/q1_encoder/hidden_1/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
valueB�*    *
dtype0
�
-critic/q/q1_encoding/q1_encoder/hidden_1/bias
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0*
	container 
�
4critic/q/q1_encoding/q1_encoder/hidden_1/bias/AssignAssign-critic/q/q1_encoding/q1_encoder/hidden_1/bias?critic/q/q1_encoding/q1_encoder/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
validate_shape(
�
2critic/q/q1_encoding/q1_encoder/hidden_1/bias/readIdentity-critic/q/q1_encoding/q1_encoder/hidden_1/bias*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias
�
/critic/q/q1_encoding/q1_encoder/hidden_1/MatMulMatMul,critic/q/q1_encoding/q1_encoder/hidden_0/Mul4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAddBiasAdd/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul2critic/q/q1_encoding/q1_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
v
0critic/q/q1_encoding/q1_encoder/hidden_1/SigmoidSigmoid0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd*
T0
�
,critic/q/q1_encoding/q1_encoder/hidden_1/MulMul0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd0critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid*
T0
�
Icritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
valueB"      *
dtype0
�
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
valueB
 *|ݽ*
dtype0
�
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
valueB
 *|�=*
dtype0
�
Qcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/RandomUniformRandomUniformIcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/shape*
seed�&*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
seed2�
�
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/subSubGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/maxGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
�
Gcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/mulMulQcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/RandomUniformGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
�
Ccritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniformAddGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/mulGcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
�
(critic/q/q1_encoding/extrinsic_q1/kernel
VariableV2*
shape:	�*
shared_name *;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
	container 
�
/critic/q/q1_encoding/extrinsic_q1/kernel/AssignAssign(critic/q/q1_encoding/extrinsic_q1/kernelCcritic/q/q1_encoding/extrinsic_q1/kernel/Initializer/random_uniform*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
validate_shape(
�
-critic/q/q1_encoding/extrinsic_q1/kernel/readIdentity(critic/q/q1_encoding/extrinsic_q1/kernel*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
�
8critic/q/q1_encoding/extrinsic_q1/bias/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
valueB*    *
dtype0
�
&critic/q/q1_encoding/extrinsic_q1/bias
VariableV2*
shape:*
shared_name *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
	container 
�
-critic/q/q1_encoding/extrinsic_q1/bias/AssignAssign&critic/q/q1_encoding/extrinsic_q1/bias8critic/q/q1_encoding/extrinsic_q1/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
+critic/q/q1_encoding/extrinsic_q1/bias/readIdentity&critic/q/q1_encoding/extrinsic_q1/bias*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
(critic/q/q1_encoding/extrinsic_q1/MatMulMatMul,critic/q/q1_encoding/q1_encoder/hidden_1/Mul-critic/q/q1_encoding/extrinsic_q1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
)critic/q/q1_encoding/extrinsic_q1/BiasAddBiasAdd(critic/q/q1_encoding/extrinsic_q1/MatMul+critic/q/q1_encoding/extrinsic_q1/bias/read*
T0*
data_formatNHWC
p
critic/q/q1_encoding/Mean/inputPack)critic/q/q1_encoding/extrinsic_q1/BiasAdd*
T0*

axis *
N
U
+critic/q/q1_encoding/Mean/reduction_indicesConst*
value	B : *
dtype0
�
critic/q/q1_encoding/MeanMeancritic/q/q1_encoding/Mean/input+critic/q/q1_encoding/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
�
Rcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
valueB"      *
dtype0
�
Qcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
valueB
 *    *
dtype0
�
Scritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
valueB
 *�Q>*
dtype0
�
\critic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
seed2�
�
Pcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/mulMul\critic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
Lcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normalAddPcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/mulQcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
/critic/q/q2_encoding/q2_encoder/hidden_0/kernel
VariableV2*
shape:	�*
shared_name *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
	container 
�
6critic/q/q2_encoding/q2_encoder/hidden_0/kernel/AssignAssign/critic/q/q2_encoding/q2_encoder/hidden_0/kernelLcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
validate_shape(
�
4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/readIdentity/critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
?critic/q/q2_encoding/q2_encoder/hidden_0/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
valueB�*    *
dtype0
�
-critic/q/q2_encoding/q2_encoder/hidden_0/bias
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0*
	container 
�
4critic/q/q2_encoding/q2_encoder/hidden_0/bias/AssignAssign-critic/q/q2_encoding/q2_encoder/hidden_0/bias?critic/q/q2_encoding/q2_encoder/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
validate_shape(
�
2critic/q/q2_encoding/q2_encoder/hidden_0/bias/readIdentity-critic/q/q2_encoding/q2_encoder/hidden_0/bias*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias
�
/critic/q/q2_encoding/q2_encoder/hidden_0/MatMulMatMulconcat4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAddBiasAdd/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul2critic/q/q2_encoding/q2_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
v
0critic/q/q2_encoding/q2_encoder/hidden_0/SigmoidSigmoid0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd*
T0
�
,critic/q/q2_encoding/q2_encoder/hidden_0/MulMul0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd0critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid*
T0
�
Rcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
valueB"      *
dtype0
�
Qcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
valueB
 *    *
dtype0
�
Scritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
valueB
 *��M=*
dtype0
�
\critic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalRcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
seed2�
�
Pcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/mulMul\critic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalScritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
Lcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normalAddPcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/mulQcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
/critic/q/q2_encoding/q2_encoder/hidden_1/kernel
VariableV2*
shape:
��*
shared_name *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
	container 
�
6critic/q/q2_encoding/q2_encoder/hidden_1/kernel/AssignAssign/critic/q/q2_encoding/q2_encoder/hidden_1/kernelLcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
validate_shape(
�
4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/readIdentity/critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
?critic/q/q2_encoding/q2_encoder/hidden_1/bias/Initializer/zerosConst*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
valueB�*    *
dtype0
�
-critic/q/q2_encoding/q2_encoder/hidden_1/bias
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0*
	container 
�
4critic/q/q2_encoding/q2_encoder/hidden_1/bias/AssignAssign-critic/q/q2_encoding/q2_encoder/hidden_1/bias?critic/q/q2_encoding/q2_encoder/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
validate_shape(
�
2critic/q/q2_encoding/q2_encoder/hidden_1/bias/readIdentity-critic/q/q2_encoding/q2_encoder/hidden_1/bias*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias
�
/critic/q/q2_encoding/q2_encoder/hidden_1/MatMulMatMul,critic/q/q2_encoding/q2_encoder/hidden_0/Mul4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAddBiasAdd/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul2critic/q/q2_encoding/q2_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
v
0critic/q/q2_encoding/q2_encoder/hidden_1/SigmoidSigmoid0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd*
T0
�
,critic/q/q2_encoding/q2_encoder/hidden_1/MulMul0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd0critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid*
T0
�
Icritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/shapeConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
valueB"      *
dtype0
�
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/minConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
valueB
 *|ݽ*
dtype0
�
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/maxConst*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
valueB
 *|�=*
dtype0
�
Qcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/RandomUniformRandomUniformIcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/shape*
seed�&*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
seed2�
�
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/subSubGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/maxGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
�
Gcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/mulMulQcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/RandomUniformGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/sub*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
�
Ccritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniformAddGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/mulGcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform/min*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
�
(critic/q/q2_encoding/extrinsic_q2/kernel
VariableV2*
shape:	�*
shared_name *;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
	container 
�
/critic/q/q2_encoding/extrinsic_q2/kernel/AssignAssign(critic/q/q2_encoding/extrinsic_q2/kernelCcritic/q/q2_encoding/extrinsic_q2/kernel/Initializer/random_uniform*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
validate_shape(
�
-critic/q/q2_encoding/extrinsic_q2/kernel/readIdentity(critic/q/q2_encoding/extrinsic_q2/kernel*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
�
8critic/q/q2_encoding/extrinsic_q2/bias/Initializer/zerosConst*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
valueB*    *
dtype0
�
&critic/q/q2_encoding/extrinsic_q2/bias
VariableV2*
shape:*
shared_name *9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0*
	container 
�
-critic/q/q2_encoding/extrinsic_q2/bias/AssignAssign&critic/q/q2_encoding/extrinsic_q2/bias8critic/q/q2_encoding/extrinsic_q2/bias/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
validate_shape(
�
+critic/q/q2_encoding/extrinsic_q2/bias/readIdentity&critic/q/q2_encoding/extrinsic_q2/bias*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias
�
(critic/q/q2_encoding/extrinsic_q2/MatMulMatMul,critic/q/q2_encoding/q2_encoder/hidden_1/Mul-critic/q/q2_encoding/extrinsic_q2/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
)critic/q/q2_encoding/extrinsic_q2/BiasAddBiasAdd(critic/q/q2_encoding/extrinsic_q2/MatMul+critic/q/q2_encoding/extrinsic_q2/bias/read*
T0*
data_formatNHWC
p
critic/q/q2_encoding/Mean/inputPack)critic/q/q2_encoding/extrinsic_q2/BiasAdd*
T0*

axis *
N
U
+critic/q/q2_encoding/Mean/reduction_indicesConst*
value	B : *
dtype0
�
critic/q/q2_encoding/MeanMeancritic/q/q2_encoding/Mean/input+critic/q/q2_encoding/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
�
1critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMulMatMulconcat_14critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAddBiasAdd1critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul2critic/q/q1_encoding/q1_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
z
2critic/q/q1_encoding_1/q1_encoder/hidden_0/SigmoidSigmoid2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd*
T0
�
.critic/q/q1_encoding_1/q1_encoder/hidden_0/MulMul2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd2critic/q/q1_encoding_1/q1_encoder/hidden_0/Sigmoid*
T0
�
1critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMulMatMul.critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAddBiasAdd1critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul2critic/q/q1_encoding/q1_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
z
2critic/q/q1_encoding_1/q1_encoder/hidden_1/SigmoidSigmoid2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd*
T0
�
.critic/q/q1_encoding_1/q1_encoder/hidden_1/MulMul2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd2critic/q/q1_encoding_1/q1_encoder/hidden_1/Sigmoid*
T0
�
*critic/q/q1_encoding_1/extrinsic_q1/MatMulMatMul.critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul-critic/q/q1_encoding/extrinsic_q1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
+critic/q/q1_encoding_1/extrinsic_q1/BiasAddBiasAdd*critic/q/q1_encoding_1/extrinsic_q1/MatMul+critic/q/q1_encoding/extrinsic_q1/bias/read*
T0*
data_formatNHWC
t
!critic/q/q1_encoding_1/Mean/inputPack+critic/q/q1_encoding_1/extrinsic_q1/BiasAdd*
T0*

axis *
N
W
-critic/q/q1_encoding_1/Mean/reduction_indicesConst*
value	B : *
dtype0
�
critic/q/q1_encoding_1/MeanMean!critic/q/q1_encoding_1/Mean/input-critic/q/q1_encoding_1/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
�
1critic/q/q2_encoding_1/q2_encoder/hidden_0/MatMulMatMulconcat_14critic/q/q2_encoding/q2_encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
2critic/q/q2_encoding_1/q2_encoder/hidden_0/BiasAddBiasAdd1critic/q/q2_encoding_1/q2_encoder/hidden_0/MatMul2critic/q/q2_encoding/q2_encoder/hidden_0/bias/read*
T0*
data_formatNHWC
z
2critic/q/q2_encoding_1/q2_encoder/hidden_0/SigmoidSigmoid2critic/q/q2_encoding_1/q2_encoder/hidden_0/BiasAdd*
T0
�
.critic/q/q2_encoding_1/q2_encoder/hidden_0/MulMul2critic/q/q2_encoding_1/q2_encoder/hidden_0/BiasAdd2critic/q/q2_encoding_1/q2_encoder/hidden_0/Sigmoid*
T0
�
1critic/q/q2_encoding_1/q2_encoder/hidden_1/MatMulMatMul.critic/q/q2_encoding_1/q2_encoder/hidden_0/Mul4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
2critic/q/q2_encoding_1/q2_encoder/hidden_1/BiasAddBiasAdd1critic/q/q2_encoding_1/q2_encoder/hidden_1/MatMul2critic/q/q2_encoding/q2_encoder/hidden_1/bias/read*
T0*
data_formatNHWC
z
2critic/q/q2_encoding_1/q2_encoder/hidden_1/SigmoidSigmoid2critic/q/q2_encoding_1/q2_encoder/hidden_1/BiasAdd*
T0
�
.critic/q/q2_encoding_1/q2_encoder/hidden_1/MulMul2critic/q/q2_encoding_1/q2_encoder/hidden_1/BiasAdd2critic/q/q2_encoding_1/q2_encoder/hidden_1/Sigmoid*
T0
�
*critic/q/q2_encoding_1/extrinsic_q2/MatMulMatMul.critic/q/q2_encoding_1/q2_encoder/hidden_1/Mul-critic/q/q2_encoding/extrinsic_q2/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
+critic/q/q2_encoding_1/extrinsic_q2/BiasAddBiasAdd*critic/q/q2_encoding_1/extrinsic_q2/MatMul+critic/q/q2_encoding/extrinsic_q2/bias/read*
T0*
data_formatNHWC
t
!critic/q/q2_encoding_1/Mean/inputPack+critic/q/q2_encoding_1/extrinsic_q2/BiasAdd*
T0*

axis *
N
W
-critic/q/q2_encoding_1/Mean/reduction_indicesConst*
value	B : *
dtype0
�
critic/q/q2_encoding_1/MeanMean!critic/q/q2_encoding_1/Mean/input-critic/q/q2_encoding_1/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
@
sac_sequence_length_1Placeholder*
shape:*
dtype0
[
!target_network/vector_observationPlaceholder*
shape:���������*
dtype0
�
4target_network/normalization_steps/Initializer/zerosConst*5
_class+
)'loc:@target_network/normalization_steps*
value	B : *
dtype0
�
"target_network/normalization_steps
VariableV2*
shape: *
shared_name *5
_class+
)'loc:@target_network/normalization_steps*
dtype0*
	container 
�
)target_network/normalization_steps/AssignAssign"target_network/normalization_steps4target_network/normalization_steps/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@target_network/normalization_steps*
validate_shape(
�
'target_network/normalization_steps/readIdentity"target_network/normalization_steps*
T0*5
_class+
)'loc:@target_network/normalization_steps
�
-target_network/running_mean/Initializer/zerosConst*.
_class$
" loc:@target_network/running_mean*
valueB*    *
dtype0
�
target_network/running_mean
VariableV2*
shape:*
shared_name *.
_class$
" loc:@target_network/running_mean*
dtype0*
	container 
�
"target_network/running_mean/AssignAssigntarget_network/running_mean-target_network/running_mean/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@target_network/running_mean*
validate_shape(
�
 target_network/running_mean/readIdentitytarget_network/running_mean*
T0*.
_class$
" loc:@target_network/running_mean
�
0target_network/running_variance/Initializer/onesConst*2
_class(
&$loc:@target_network/running_variance*
valueB*  �?*
dtype0
�
target_network/running_variance
VariableV2*
shape:*
shared_name *2
_class(
&$loc:@target_network/running_variance*
dtype0*
	container 
�
&target_network/running_variance/AssignAssigntarget_network/running_variance0target_network/running_variance/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@target_network/running_variance*
validate_shape(
�
$target_network/running_variance/readIdentitytarget_network/running_variance*
T0*2
_class(
&$loc:@target_network/running_variance
Y
target_network/ShapeShape!target_network/vector_observation*
T0*
out_type0
P
"target_network/strided_slice/stackConst*
valueB: *
dtype0
R
$target_network/strided_slice/stack_1Const*
valueB:*
dtype0
R
$target_network/strided_slice/stack_2Const*
valueB:*
dtype0
�
target_network/strided_sliceStridedSlicetarget_network/Shape"target_network/strided_slice/stack$target_network/strided_slice/stack_1$target_network/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
i
target_network/AddAdd'target_network/normalization_steps/readtarget_network/strided_slice*
T0
g
target_network/SubSub!target_network/vector_observation target_network/running_mean/read*
T0
W
target_network/CastCasttarget_network/Add*

SrcT0*
Truncate( *

DstT0
S
target_network/truedivRealDivtarget_network/Subtarget_network/Cast*
T0
N
$target_network/Sum/reduction_indicesConst*
value	B : *
dtype0
}
target_network/SumSumtarget_network/truediv$target_network/Sum/reduction_indices*

Tidx0*
	keep_dims( *
T0
\
target_network/add_1AddV2 target_network/running_mean/readtarget_network/Sum*
T0
]
target_network/Sub_1Sub!target_network/vector_observationtarget_network/add_1*
T0
L
target_network/mulMultarget_network/Sub_1target_network/Sub*
T0
P
&target_network/Sum_1/reduction_indicesConst*
value	B : *
dtype0
}
target_network/Sum_1Sumtarget_network/mul&target_network/Sum_1/reduction_indices*

Tidx0*
	keep_dims( *
T0
b
target_network/add_2AddV2$target_network/running_variance/readtarget_network/Sum_1*
T0
�
target_network/AssignAssigntarget_network/running_meantarget_network/add_1*
use_locking(*
T0*.
_class$
" loc:@target_network/running_mean*
validate_shape(
�
target_network/Assign_1Assigntarget_network/running_variancetarget_network/add_2*
use_locking(*
T0*2
_class(
&$loc:@target_network/running_variance*
validate_shape(
�
target_network/Assign_2Assign"target_network/normalization_stepstarget_network/Add*
use_locking(*
T0*5
_class+
)'loc:@target_network/normalization_steps*
validate_shape(
m
target_network/group_depsNoOp^target_network/Assign^target_network/Assign_1^target_network/Assign_2
i
target_network/sub_2Sub!target_network/vector_observation target_network/running_mean/read*
T0
n
target_network/Cast_1Cast'target_network/normalization_steps/read*

SrcT0*
Truncate( *

DstT0
C
target_network/add_3/yConst*
valueB
 *  �?*
dtype0
U
target_network/add_3AddV2target_network/Cast_1target_network/add_3/y*
T0
h
target_network/truediv_1RealDiv$target_network/running_variance/readtarget_network/add_3*
T0
>
target_network/SqrtSqrttarget_network/truediv_1*
T0
W
target_network/truediv_2RealDivtarget_network/sub_2target_network/Sqrt*
T0
V
)target_network/normalized_state/Minimum/yConst*
valueB
 *  �@*
dtype0
�
'target_network/normalized_state/MinimumMinimumtarget_network/truediv_2)target_network/normalized_state/Minimum/y*
T0
N
!target_network/normalized_state/yConst*
valueB
 *  ��*
dtype0

target_network/normalized_stateMaximum'target_network/normalized_state/Minimum!target_network/normalized_state/y*
T0
�
Vtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
valueB"      *
dtype0
�
Utarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/meanConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
valueB
 *    *
dtype0
�
Wtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
valueB
 *�	`>*
dtype0
�
`target_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
dtype0*
seed2�
�
Ttarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulMul`target_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalWtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel
�
Ptarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normalAddTtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mulUtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel
�
3target_network/critic/value/encoder/hidden_0/kernel
VariableV2*
shape:	�*
shared_name *F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
dtype0*
	container 
�
:target_network/critic/value/encoder/hidden_0/kernel/AssignAssign3target_network/critic/value/encoder/hidden_0/kernelPtarget_network/critic/value/encoder/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
validate_shape(
�
8target_network/critic/value/encoder/hidden_0/kernel/readIdentity3target_network/critic/value/encoder/hidden_0/kernel*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel
�
Ctarget_network/critic/value/encoder/hidden_0/bias/Initializer/zerosConst*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
valueB�*    *
dtype0
�
1target_network/critic/value/encoder/hidden_0/bias
VariableV2*
shape:�*
shared_name *D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
dtype0*
	container 
�
8target_network/critic/value/encoder/hidden_0/bias/AssignAssign1target_network/critic/value/encoder/hidden_0/biasCtarget_network/critic/value/encoder/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
validate_shape(
�
6target_network/critic/value/encoder/hidden_0/bias/readIdentity1target_network/critic/value/encoder/hidden_0/bias*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias
�
3target_network/critic/value/encoder/hidden_0/MatMulMatMultarget_network/normalized_state8target_network/critic/value/encoder/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
4target_network/critic/value/encoder/hidden_0/BiasAddBiasAdd3target_network/critic/value/encoder/hidden_0/MatMul6target_network/critic/value/encoder/hidden_0/bias/read*
T0*
data_formatNHWC
~
4target_network/critic/value/encoder/hidden_0/SigmoidSigmoid4target_network/critic/value/encoder/hidden_0/BiasAdd*
T0
�
0target_network/critic/value/encoder/hidden_0/MulMul4target_network/critic/value/encoder/hidden_0/BiasAdd4target_network/critic/value/encoder/hidden_0/Sigmoid*
T0
�
Vtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shapeConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
valueB"      *
dtype0
�
Utarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/meanConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
valueB
 *    *
dtype0
�
Wtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddevConst*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
valueB
 *��M=*
dtype0
�
`target_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormalVtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/shape*
seed�&*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
dtype0*
seed2�
�
Ttarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulMul`target_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalWtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel
�
Ptarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normalAddTtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mulUtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel
�
3target_network/critic/value/encoder/hidden_1/kernel
VariableV2*
shape:
��*
shared_name *F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
dtype0*
	container 
�
:target_network/critic/value/encoder/hidden_1/kernel/AssignAssign3target_network/critic/value/encoder/hidden_1/kernelPtarget_network/critic/value/encoder/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
validate_shape(
�
8target_network/critic/value/encoder/hidden_1/kernel/readIdentity3target_network/critic/value/encoder/hidden_1/kernel*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel
�
Ctarget_network/critic/value/encoder/hidden_1/bias/Initializer/zerosConst*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
valueB�*    *
dtype0
�
1target_network/critic/value/encoder/hidden_1/bias
VariableV2*
shape:�*
shared_name *D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
dtype0*
	container 
�
8target_network/critic/value/encoder/hidden_1/bias/AssignAssign1target_network/critic/value/encoder/hidden_1/biasCtarget_network/critic/value/encoder/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
validate_shape(
�
6target_network/critic/value/encoder/hidden_1/bias/readIdentity1target_network/critic/value/encoder/hidden_1/bias*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias
�
3target_network/critic/value/encoder/hidden_1/MatMulMatMul0target_network/critic/value/encoder/hidden_0/Mul8target_network/critic/value/encoder/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
4target_network/critic/value/encoder/hidden_1/BiasAddBiasAdd3target_network/critic/value/encoder/hidden_1/MatMul6target_network/critic/value/encoder/hidden_1/bias/read*
T0*
data_formatNHWC
~
4target_network/critic/value/encoder/hidden_1/SigmoidSigmoid4target_network/critic/value/encoder/hidden_1/BiasAdd*
T0
�
0target_network/critic/value/encoder/hidden_1/MulMul4target_network/critic/value/encoder/hidden_1/BiasAdd4target_network/critic/value/encoder/hidden_1/Sigmoid*
T0
�
Starget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/shapeConst*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
valueB"      *
dtype0
�
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/minConst*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
valueB
 *|ݽ*
dtype0
�
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/maxConst*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
valueB
 *|�=*
dtype0
�
[target_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniformStarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/shape*
seed�&*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
dtype0*
seed2�
�
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/subSubQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/maxQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
�
Qtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/mulMul[target_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/RandomUniformQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
�
Mtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniformAddQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/mulQtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform/min*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
�
2target_network/critic/value/extrinsic_value/kernel
VariableV2*
shape:	�*
shared_name *E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
dtype0*
	container 
�
9target_network/critic/value/extrinsic_value/kernel/AssignAssign2target_network/critic/value/extrinsic_value/kernelMtarget_network/critic/value/extrinsic_value/kernel/Initializer/random_uniform*
use_locking(*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
validate_shape(
�
7target_network/critic/value/extrinsic_value/kernel/readIdentity2target_network/critic/value/extrinsic_value/kernel*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel
�
Btarget_network/critic/value/extrinsic_value/bias/Initializer/zerosConst*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
valueB*    *
dtype0
�
0target_network/critic/value/extrinsic_value/bias
VariableV2*
shape:*
shared_name *C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
dtype0*
	container 
�
7target_network/critic/value/extrinsic_value/bias/AssignAssign0target_network/critic/value/extrinsic_value/biasBtarget_network/critic/value/extrinsic_value/bias/Initializer/zeros*
use_locking(*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
validate_shape(
�
5target_network/critic/value/extrinsic_value/bias/readIdentity0target_network/critic/value/extrinsic_value/bias*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias
�
2target_network/critic/value/extrinsic_value/MatMulMatMul0target_network/critic/value/encoder/hidden_1/Mul7target_network/critic/value/extrinsic_value/kernel/read*
transpose_b( *
T0*
transpose_a( 
�
3target_network/critic/value/extrinsic_value/BiasAddBiasAdd2target_network/critic/value/extrinsic_value/MatMul5target_network/critic/value/extrinsic_value/bias/read*
T0*
data_formatNHWC
�
&target_network/critic/value/Mean/inputPack3target_network/critic/value/extrinsic_value/BiasAdd*
T0*

axis *
N
\
2target_network/critic/value/Mean/reduction_indicesConst*
value	B : *
dtype0
�
 target_network/critic/value/MeanMean&target_network/critic/value/Mean/input2target_network/critic/value/Mean/reduction_indices*

Tidx0*
	keep_dims( *
T0
N
external_action_in_1Placeholder*
shape:���������*
dtype0
=
value_estimate_unusedIdentitycritic/value/Mean*
T0
B
dones_holderPlaceholder*
shape:���������*
dtype0
E
Variable_1/initial_valueConst*
valueB
 *RI�9*
dtype0
V

Variable_1
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
Variable_1/AssignAssign
Variable_1Variable_1/initial_value*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
O
Variable_1/readIdentity
Variable_1*
T0*
_class
loc:@Variable_1
u
MinimumMinimum+critic/q/q1_encoding_1/extrinsic_q1/BiasAdd+critic/q/q2_encoding_1/extrinsic_q2/BiasAdd*
T0
G
extrinsic_rewardsPlaceholder*
shape:���������*
dtype0
A
ExpandDims/dimConst*
valueB :
���������*
dtype0
K

ExpandDims
ExpandDimsdones_holderExpandDims/dim*

Tdim0*
T0
C
ExpandDims_1/dimConst*
valueB :
���������*
dtype0
T
ExpandDims_1
ExpandDimsextrinsic_rewardsExpandDims_1/dim*

Tdim0*
T0
0
mul_1MulVariable/read
ExpandDims*
T0
4
sub_3/xConst*
valueB
 *  �?*
dtype0
%
sub_3Subsub_3/xmul_1*
T0
4
mul_2/yConst*
valueB
 *�p}?*
dtype0
%
mul_2Mulsub_3mul_2/y*
T0
Q
mul_3Mulmul_23target_network/critic/value/extrinsic_value/BiasAdd*
T0
,
add_5AddV2ExpandDims_1mul_3*
T0
.
StopGradient_1StopGradientadd_5*
T0
?
ToFloatCastCast_2*

SrcT0*
Truncate( *

DstT0
j
SquaredDifferenceSquaredDifferenceStopGradient_1)critic/q/q1_encoding/extrinsic_q1/BiasAdd*
T0
1
mul_4MulToFloatSquaredDifference*
T0
:
ConstConst*
valueB"       *
dtype0
@
MeanMeanmul_4Const*

Tidx0*
	keep_dims( *
T0
4
mul_5/xConst*
valueB
 *   ?*
dtype0
$
mul_5Mulmul_5/xMean*
T0
A
	ToFloat_1CastCast_2*

SrcT0*
Truncate( *

DstT0
l
SquaredDifference_1SquaredDifferenceStopGradient_1)critic/q/q2_encoding/extrinsic_q2/BiasAdd*
T0
5
mul_6Mul	ToFloat_1SquaredDifference_1*
T0
<
Const_1Const*
valueB"       *
dtype0
D
Mean_1Meanmul_6Const_1*

Tidx0*
	keep_dims( *
T0
4
mul_7/xConst*
valueB
 *   ?*
dtype0
&
mul_7Mulmul_7/xMean_1*
T0
8
Rank/packedPackmul_5*
T0*

axis *
N
.
RankConst*
value	B :*
dtype0
5
range/startConst*
value	B : *
dtype0
5
range/deltaConst*
value	B :*
dtype0
:
rangeRangerange/startRankrange/delta*

Tidx0
9
Mean_2/inputPackmul_5*
T0*

axis *
N
I
Mean_2MeanMean_2/inputrange*

Tidx0*
	keep_dims( *
T0
:
Rank_1/packedPackmul_7*
T0*

axis *
N
0
Rank_1Const*
value	B :*
dtype0
7
range_1/startConst*
value	B : *
dtype0
7
range_1/deltaConst*
value	B :*
dtype0
B
range_1Rangerange_1/startRank_1range_1/delta*

Tidx0
9
Mean_3/inputPackmul_7*
T0*

axis *
N
K
Mean_3MeanMean_3/inputrange_1*

Tidx0*
	keep_dims( *
T0
4
Const_2Const*
valueB
 *    *
dtype0
G
log_ent_coef/initial_valueConst*
valueB
 *    *
dtype0
X
log_ent_coef
VariableV2*
shape: *
shared_name *
dtype0*
	container 
�
log_ent_coef/AssignAssignlog_ent_coeflog_ent_coef/initial_value*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
U
log_ent_coef/readIdentitylog_ent_coef*
T0*
_class
loc:@log_ent_coef
&
ExpExplog_ent_coef/read*
T0
A
	ToFloat_2CastCast_2*

SrcT0*
Truncate( *

DstT0
3
mul_8Mullog_ent_coef/read	ToFloat_2*
T0
4
add_6/yConst*
valueB
 *  ��*
dtype0
.
add_6AddV2action_probsadd_6/y*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
R
Sum_2Sumadd_6Sum_2/reduction_indices*

Tidx0*
	keep_dims(*
T0
.
StopGradient_2StopGradientSum_2*
T0
,
mul_9Mulmul_8StopGradient_2*
T0
<
Const_3Const*
valueB"       *
dtype0
D
Mean_4Meanmul_9Const_3*

Tidx0*
	keep_dims( *
T0

NegNegMean_4*
T0
)
mul_10MulExpaction_probs*
T0
:
sub_4Submul_10critic/q/q1_encoding_1/Mean*
T0
B
Mean_5/reduction_indicesConst*
value	B :*
dtype0
U
Mean_5Meansub_4Mean_5/reduction_indices*

Tidx0*
	keep_dims( *
T0
A
	ToFloat_3CastCast_2*

SrcT0*
Truncate( *

DstT0
)
mul_11Mul	ToFloat_3Mean_5*
T0
5
Const_4Const*
valueB: *
dtype0
E
Mean_6Meanmul_11Const_4*

Tidx0*
	keep_dims( *
T0
)
mul_12MulExpaction_probs*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
S
Sum_3Summul_12Sum_3/reduction_indices*

Tidx0*
	keep_dims( *
T0
%
sub_5SubMinimumSum_3*
T0
.
StopGradient_3StopGradientsub_5*
T0
A
	ToFloat_4CastCast_2*

SrcT0*
Truncate( *

DstT0
g
SquaredDifference_2SquaredDifference$critic/value/extrinsic_value/BiasAddStopGradient_3*
T0
6
mul_13Mul	ToFloat_4SquaredDifference_2*
T0
<
Const_5Const*
valueB"       *
dtype0
E
Mean_7Meanmul_13Const_5*

Tidx0*
	keep_dims( *
T0
5
mul_14/xConst*
valueB
 *   ?*
dtype0
(
mul_14Mulmul_14/xMean_7*
T0
;
Rank_2/packedPackmul_14*
T0*

axis *
N
0
Rank_2Const*
value	B :*
dtype0
7
range_2/startConst*
value	B : *
dtype0
7
range_2/deltaConst*
value	B :*
dtype0
B
range_2Rangerange_2/startRank_2range_2/delta*

Tidx0
:
Mean_8/inputPackmul_14*
T0*

axis *
N
K
Mean_8MeanMean_8/inputrange_2*

Tidx0*
	keep_dims( *
T0
'
add_7AddV2Mean_2Mean_3*
T0
&
add_8AddV2add_7Mean_8*
T0
5
mul_15/xConst*
valueB
 *R�~?*
dtype0
Z
mul_15Mulmul_15/x8target_network/critic/value/encoder/hidden_0/kernel/read*
T0
5
mul_16/xConst*
valueB
 *
ף;*
dtype0
K
mul_16Mulmul_16/x)critic/value/encoder/hidden_0/kernel/read*
T0
'
add_9AddV2mul_15mul_16*
T0
�
Assign_5Assign3target_network/critic/value/encoder/hidden_0/kerneladd_9*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
validate_shape(
5
mul_17/xConst*
valueB
 *R�~?*
dtype0
X
mul_17Mulmul_17/x6target_network/critic/value/encoder/hidden_0/bias/read*
T0
5
mul_18/xConst*
valueB
 *
ף;*
dtype0
I
mul_18Mulmul_18/x'critic/value/encoder/hidden_0/bias/read*
T0
(
add_10AddV2mul_17mul_18*
T0
�
Assign_6Assign1target_network/critic/value/encoder/hidden_0/biasadd_10*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
validate_shape(
5
mul_19/xConst*
valueB
 *R�~?*
dtype0
Z
mul_19Mulmul_19/x8target_network/critic/value/encoder/hidden_1/kernel/read*
T0
5
mul_20/xConst*
valueB
 *
ף;*
dtype0
K
mul_20Mulmul_20/x)critic/value/encoder/hidden_1/kernel/read*
T0
(
add_11AddV2mul_19mul_20*
T0
�
Assign_7Assign3target_network/critic/value/encoder/hidden_1/kerneladd_11*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
validate_shape(
5
mul_21/xConst*
valueB
 *R�~?*
dtype0
X
mul_21Mulmul_21/x6target_network/critic/value/encoder/hidden_1/bias/read*
T0
5
mul_22/xConst*
valueB
 *
ף;*
dtype0
I
mul_22Mulmul_22/x'critic/value/encoder/hidden_1/bias/read*
T0
(
add_12AddV2mul_21mul_22*
T0
�
Assign_8Assign1target_network/critic/value/encoder/hidden_1/biasadd_12*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
validate_shape(
5
mul_23/xConst*
valueB
 *R�~?*
dtype0
Y
mul_23Mulmul_23/x7target_network/critic/value/extrinsic_value/kernel/read*
T0
5
mul_24/xConst*
valueB
 *
ף;*
dtype0
J
mul_24Mulmul_24/x(critic/value/extrinsic_value/kernel/read*
T0
(
add_13AddV2mul_23mul_24*
T0
�
Assign_9Assign2target_network/critic/value/extrinsic_value/kerneladd_13*
use_locking(*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
validate_shape(
5
mul_25/xConst*
valueB
 *R�~?*
dtype0
W
mul_25Mulmul_25/x5target_network/critic/value/extrinsic_value/bias/read*
T0
5
mul_26/xConst*
valueB
 *
ף;*
dtype0
H
mul_26Mulmul_26/x&critic/value/extrinsic_value/bias/read*
T0
(
add_14AddV2mul_25mul_26*
T0
�
	Assign_10Assign0target_network/critic/value/extrinsic_value/biasadd_14*
use_locking(*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
validate_shape(
�
	Assign_11Assign3target_network/critic/value/encoder/hidden_0/kernel)critic/value/encoder/hidden_0/kernel/read*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
validate_shape(
�
	Assign_12Assign1target_network/critic/value/encoder/hidden_0/bias'critic/value/encoder/hidden_0/bias/read*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
validate_shape(
�
	Assign_13Assign3target_network/critic/value/encoder/hidden_1/kernel)critic/value/encoder/hidden_1/kernel/read*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
validate_shape(
�
	Assign_14Assign1target_network/critic/value/encoder/hidden_1/bias'critic/value/encoder/hidden_1/bias/read*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
validate_shape(
�
	Assign_15Assign2target_network/critic/value/extrinsic_value/kernel(critic/value/extrinsic_value/kernel/read*
use_locking(*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
validate_shape(
�
	Assign_16Assign0target_network/critic/value/extrinsic_value/bias&critic/value/extrinsic_value/bias/read*
use_locking(*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
validate_shape(
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  �?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
Q
#gradients/Mean_6_grad/Reshape/shapeConst*
valueB:*
dtype0
t
gradients/Mean_6_grad/ReshapeReshapegradients/Fill#gradients/Mean_6_grad/Reshape/shape*
T0*
Tshape0
E
gradients/Mean_6_grad/ShapeShapemul_11*
T0*
out_type0
y
gradients/Mean_6_grad/TileTilegradients/Mean_6_grad/Reshapegradients/Mean_6_grad/Shape*

Tmultiples0*
T0
G
gradients/Mean_6_grad/Shape_1Shapemul_11*
T0*
out_type0
F
gradients/Mean_6_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_6_grad/ConstConst*
valueB: *
dtype0
�
gradients/Mean_6_grad/ProdProdgradients/Mean_6_grad/Shape_1gradients/Mean_6_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_6_grad/Const_1Const*
valueB: *
dtype0
�
gradients/Mean_6_grad/Prod_1Prodgradients/Mean_6_grad/Shape_2gradients/Mean_6_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_6_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_6_grad/MaximumMaximumgradients/Mean_6_grad/Prod_1gradients/Mean_6_grad/Maximum/y*
T0
n
gradients/Mean_6_grad/floordivFloorDivgradients/Mean_6_grad/Prodgradients/Mean_6_grad/Maximum*
T0
j
gradients/Mean_6_grad/CastCastgradients/Mean_6_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_6_grad/truedivRealDivgradients/Mean_6_grad/Tilegradients/Mean_6_grad/Cast*
T0
H
gradients/mul_11_grad/ShapeShape	ToFloat_3*
T0*
out_type0
G
gradients/mul_11_grad/Shape_1ShapeMean_5*
T0*
out_type0
�
+gradients/mul_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_11_grad/Shapegradients/mul_11_grad/Shape_1*
T0
P
gradients/mul_11_grad/MulMulgradients/Mean_6_grad/truedivMean_5*
T0
�
gradients/mul_11_grad/SumSumgradients/mul_11_grad/Mul+gradients/mul_11_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/mul_11_grad/ReshapeReshapegradients/mul_11_grad/Sumgradients/mul_11_grad/Shape*
T0*
Tshape0
U
gradients/mul_11_grad/Mul_1Mul	ToFloat_3gradients/Mean_6_grad/truediv*
T0
�
gradients/mul_11_grad/Sum_1Sumgradients/mul_11_grad/Mul_1-gradients/mul_11_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/mul_11_grad/Reshape_1Reshapegradients/mul_11_grad/Sum_1gradients/mul_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_11_grad/tuple/group_depsNoOp^gradients/mul_11_grad/Reshape ^gradients/mul_11_grad/Reshape_1
�
.gradients/mul_11_grad/tuple/control_dependencyIdentitygradients/mul_11_grad/Reshape'^gradients/mul_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_11_grad/Reshape
�
0gradients/mul_11_grad/tuple/control_dependency_1Identitygradients/mul_11_grad/Reshape_1'^gradients/mul_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_11_grad/Reshape_1
D
gradients/Mean_5_grad/ShapeShapesub_4*
T0*
out_type0
t
gradients/Mean_5_grad/SizeConst*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
value	B :*
dtype0
�
gradients/Mean_5_grad/addAddV2Mean_5/reduction_indicesgradients/Mean_5_grad/Size*
T0*.
_class$
" loc:@gradients/Mean_5_grad/Shape
�
gradients/Mean_5_grad/modFloorModgradients/Mean_5_grad/addgradients/Mean_5_grad/Size*
T0*.
_class$
" loc:@gradients/Mean_5_grad/Shape
v
gradients/Mean_5_grad/Shape_1Const*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
valueB *
dtype0
{
!gradients/Mean_5_grad/range/startConst*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
value	B : *
dtype0
{
!gradients/Mean_5_grad/range/deltaConst*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
value	B :*
dtype0
�
gradients/Mean_5_grad/rangeRange!gradients/Mean_5_grad/range/startgradients/Mean_5_grad/Size!gradients/Mean_5_grad/range/delta*

Tidx0*.
_class$
" loc:@gradients/Mean_5_grad/Shape
z
 gradients/Mean_5_grad/Fill/valueConst*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
value	B :*
dtype0
�
gradients/Mean_5_grad/FillFillgradients/Mean_5_grad/Shape_1 gradients/Mean_5_grad/Fill/value*
T0*.
_class$
" loc:@gradients/Mean_5_grad/Shape*

index_type0
�
#gradients/Mean_5_grad/DynamicStitchDynamicStitchgradients/Mean_5_grad/rangegradients/Mean_5_grad/modgradients/Mean_5_grad/Shapegradients/Mean_5_grad/Fill*
T0*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
N
y
gradients/Mean_5_grad/Maximum/yConst*.
_class$
" loc:@gradients/Mean_5_grad/Shape*
value	B :*
dtype0
�
gradients/Mean_5_grad/MaximumMaximum#gradients/Mean_5_grad/DynamicStitchgradients/Mean_5_grad/Maximum/y*
T0*.
_class$
" loc:@gradients/Mean_5_grad/Shape
�
gradients/Mean_5_grad/floordivFloorDivgradients/Mean_5_grad/Shapegradients/Mean_5_grad/Maximum*
T0*.
_class$
" loc:@gradients/Mean_5_grad/Shape
�
gradients/Mean_5_grad/ReshapeReshape0gradients/mul_11_grad/tuple/control_dependency_1#gradients/Mean_5_grad/DynamicStitch*
T0*
Tshape0
|
gradients/Mean_5_grad/TileTilegradients/Mean_5_grad/Reshapegradients/Mean_5_grad/floordiv*

Tmultiples0*
T0
F
gradients/Mean_5_grad/Shape_2Shapesub_4*
T0*
out_type0
G
gradients/Mean_5_grad/Shape_3ShapeMean_5*
T0*
out_type0
I
gradients/Mean_5_grad/ConstConst*
valueB: *
dtype0
�
gradients/Mean_5_grad/ProdProdgradients/Mean_5_grad/Shape_2gradients/Mean_5_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_5_grad/Const_1Const*
valueB: *
dtype0
�
gradients/Mean_5_grad/Prod_1Prodgradients/Mean_5_grad/Shape_3gradients/Mean_5_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients/Mean_5_grad/Maximum_1/yConst*
value	B :*
dtype0
t
gradients/Mean_5_grad/Maximum_1Maximumgradients/Mean_5_grad/Prod_1!gradients/Mean_5_grad/Maximum_1/y*
T0
r
 gradients/Mean_5_grad/floordiv_1FloorDivgradients/Mean_5_grad/Prodgradients/Mean_5_grad/Maximum_1*
T0
l
gradients/Mean_5_grad/CastCast gradients/Mean_5_grad/floordiv_1*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_5_grad/truedivRealDivgradients/Mean_5_grad/Tilegradients/Mean_5_grad/Cast*
T0
D
gradients/sub_4_grad/ShapeShapemul_10*
T0*
out_type0
[
gradients/sub_4_grad/Shape_1Shapecritic/q/q1_encoding_1/Mean*
T0*
out_type0
�
*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0
�
gradients/sub_4_grad/SumSumgradients/Mean_5_grad/truediv*gradients/sub_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
T0*
Tshape0
G
gradients/sub_4_grad/NegNeggradients/Mean_5_grad/truediv*
T0
�
gradients/sub_4_grad/Sum_1Sumgradients/sub_4_grad/Neg,gradients/sub_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Sum_1gradients/sub_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
�
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_4_grad/Reshape
�
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
B
gradients/mul_10_grad/ShapeShapeExp*
T0*
out_type0
M
gradients/mul_10_grad/Shape_1Shapeaction_probs*
T0*
out_type0
�
+gradients/mul_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_10_grad/Shapegradients/mul_10_grad/Shape_1*
T0
f
gradients/mul_10_grad/MulMul-gradients/sub_4_grad/tuple/control_dependencyaction_probs*
T0
�
gradients/mul_10_grad/SumSumgradients/mul_10_grad/Mul+gradients/mul_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/mul_10_grad/ReshapeReshapegradients/mul_10_grad/Sumgradients/mul_10_grad/Shape*
T0*
Tshape0
_
gradients/mul_10_grad/Mul_1MulExp-gradients/sub_4_grad/tuple/control_dependency*
T0
�
gradients/mul_10_grad/Sum_1Sumgradients/mul_10_grad/Mul_1-gradients/mul_10_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/mul_10_grad/Reshape_1Reshapegradients/mul_10_grad/Sum_1gradients/mul_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/mul_10_grad/tuple/group_depsNoOp^gradients/mul_10_grad/Reshape ^gradients/mul_10_grad/Reshape_1
�
.gradients/mul_10_grad/tuple/control_dependencyIdentitygradients/mul_10_grad/Reshape'^gradients/mul_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/mul_10_grad/Reshape
�
0gradients/mul_10_grad/tuple/control_dependency_1Identitygradients/mul_10_grad/Reshape_1'^gradients/mul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/mul_10_grad/Reshape_1
u
0gradients/critic/q/q1_encoding_1/Mean_grad/ShapeShape!critic/q/q1_encoding_1/Mean/input*
T0*
out_type0
�
/gradients/critic/q/q1_encoding_1/Mean_grad/SizeConst*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
value	B :*
dtype0
�
.gradients/critic/q/q1_encoding_1/Mean_grad/addAddV2-critic/q/q1_encoding_1/Mean/reduction_indices/gradients/critic/q/q1_encoding_1/Mean_grad/Size*
T0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape
�
.gradients/critic/q/q1_encoding_1/Mean_grad/modFloorMod.gradients/critic/q/q1_encoding_1/Mean_grad/add/gradients/critic/q/q1_encoding_1/Mean_grad/Size*
T0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape
�
2gradients/critic/q/q1_encoding_1/Mean_grad/Shape_1Const*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
valueB *
dtype0
�
6gradients/critic/q/q1_encoding_1/Mean_grad/range/startConst*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
value	B : *
dtype0
�
6gradients/critic/q/q1_encoding_1/Mean_grad/range/deltaConst*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
value	B :*
dtype0
�
0gradients/critic/q/q1_encoding_1/Mean_grad/rangeRange6gradients/critic/q/q1_encoding_1/Mean_grad/range/start/gradients/critic/q/q1_encoding_1/Mean_grad/Size6gradients/critic/q/q1_encoding_1/Mean_grad/range/delta*

Tidx0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape
�
5gradients/critic/q/q1_encoding_1/Mean_grad/Fill/valueConst*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
value	B :*
dtype0
�
/gradients/critic/q/q1_encoding_1/Mean_grad/FillFill2gradients/critic/q/q1_encoding_1/Mean_grad/Shape_15gradients/critic/q/q1_encoding_1/Mean_grad/Fill/value*
T0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*

index_type0
�
8gradients/critic/q/q1_encoding_1/Mean_grad/DynamicStitchDynamicStitch0gradients/critic/q/q1_encoding_1/Mean_grad/range.gradients/critic/q/q1_encoding_1/Mean_grad/mod0gradients/critic/q/q1_encoding_1/Mean_grad/Shape/gradients/critic/q/q1_encoding_1/Mean_grad/Fill*
T0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
N
�
4gradients/critic/q/q1_encoding_1/Mean_grad/Maximum/yConst*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape*
value	B :*
dtype0
�
2gradients/critic/q/q1_encoding_1/Mean_grad/MaximumMaximum8gradients/critic/q/q1_encoding_1/Mean_grad/DynamicStitch4gradients/critic/q/q1_encoding_1/Mean_grad/Maximum/y*
T0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape
�
3gradients/critic/q/q1_encoding_1/Mean_grad/floordivFloorDiv0gradients/critic/q/q1_encoding_1/Mean_grad/Shape2gradients/critic/q/q1_encoding_1/Mean_grad/Maximum*
T0*C
_class9
75loc:@gradients/critic/q/q1_encoding_1/Mean_grad/Shape
�
2gradients/critic/q/q1_encoding_1/Mean_grad/ReshapeReshape/gradients/sub_4_grad/tuple/control_dependency_18gradients/critic/q/q1_encoding_1/Mean_grad/DynamicStitch*
T0*
Tshape0
�
/gradients/critic/q/q1_encoding_1/Mean_grad/TileTile2gradients/critic/q/q1_encoding_1/Mean_grad/Reshape3gradients/critic/q/q1_encoding_1/Mean_grad/floordiv*

Tmultiples0*
T0
w
2gradients/critic/q/q1_encoding_1/Mean_grad/Shape_2Shape!critic/q/q1_encoding_1/Mean/input*
T0*
out_type0
q
2gradients/critic/q/q1_encoding_1/Mean_grad/Shape_3Shapecritic/q/q1_encoding_1/Mean*
T0*
out_type0
^
0gradients/critic/q/q1_encoding_1/Mean_grad/ConstConst*
valueB: *
dtype0
�
/gradients/critic/q/q1_encoding_1/Mean_grad/ProdProd2gradients/critic/q/q1_encoding_1/Mean_grad/Shape_20gradients/critic/q/q1_encoding_1/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
`
2gradients/critic/q/q1_encoding_1/Mean_grad/Const_1Const*
valueB: *
dtype0
�
1gradients/critic/q/q1_encoding_1/Mean_grad/Prod_1Prod2gradients/critic/q/q1_encoding_1/Mean_grad/Shape_32gradients/critic/q/q1_encoding_1/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
`
6gradients/critic/q/q1_encoding_1/Mean_grad/Maximum_1/yConst*
value	B :*
dtype0
�
4gradients/critic/q/q1_encoding_1/Mean_grad/Maximum_1Maximum1gradients/critic/q/q1_encoding_1/Mean_grad/Prod_16gradients/critic/q/q1_encoding_1/Mean_grad/Maximum_1/y*
T0
�
5gradients/critic/q/q1_encoding_1/Mean_grad/floordiv_1FloorDiv/gradients/critic/q/q1_encoding_1/Mean_grad/Prod4gradients/critic/q/q1_encoding_1/Mean_grad/Maximum_1*
T0
�
/gradients/critic/q/q1_encoding_1/Mean_grad/CastCast5gradients/critic/q/q1_encoding_1/Mean_grad/floordiv_1*

SrcT0*
Truncate( *

DstT0
�
2gradients/critic/q/q1_encoding_1/Mean_grad/truedivRealDiv/gradients/critic/q/q1_encoding_1/Mean_grad/Tile/gradients/critic/q/q1_encoding_1/Mean_grad/Cast*
T0
�
8gradients/critic/q/q1_encoding_1/Mean/input_grad/unstackUnpack2gradients/critic/q/q1_encoding_1/Mean_grad/truediv*
T0*	
num*

axis 
U
#gradients/policy_1/sub_2_grad/ShapeShapepolicy_1/mul_2*
T0*
out_type0
U
%gradients/policy_1/sub_2_grad/Shape_1Shapepolicy_1/Log*
T0*
out_type0
�
3gradients/policy_1/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/sub_2_grad/Shape%gradients/policy_1/sub_2_grad/Shape_1*
T0
�
!gradients/policy_1/sub_2_grad/SumSum0gradients/mul_10_grad/tuple/control_dependency_13gradients/policy_1/sub_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/sub_2_grad/ReshapeReshape!gradients/policy_1/sub_2_grad/Sum#gradients/policy_1/sub_2_grad/Shape*
T0*
Tshape0
c
!gradients/policy_1/sub_2_grad/NegNeg0gradients/mul_10_grad/tuple/control_dependency_1*
T0
�
#gradients/policy_1/sub_2_grad/Sum_1Sum!gradients/policy_1/sub_2_grad/Neg5gradients/policy_1/sub_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/sub_2_grad/Reshape_1Reshape#gradients/policy_1/sub_2_grad/Sum_1%gradients/policy_1/sub_2_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/sub_2_grad/tuple/group_depsNoOp&^gradients/policy_1/sub_2_grad/Reshape(^gradients/policy_1/sub_2_grad/Reshape_1
�
6gradients/policy_1/sub_2_grad/tuple/control_dependencyIdentity%gradients/policy_1/sub_2_grad/Reshape/^gradients/policy_1/sub_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/sub_2_grad/Reshape
�
8gradients/policy_1/sub_2_grad/tuple/control_dependency_1Identity'gradients/policy_1/sub_2_grad/Reshape_1/^gradients/policy_1/sub_2_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/sub_2_grad/Reshape_1
�
Fgradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/BiasAddGradBiasAddGrad8gradients/critic/q/q1_encoding_1/Mean/input_grad/unstack*
T0*
data_formatNHWC
�
Kgradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/group_depsNoOp9^gradients/critic/q/q1_encoding_1/Mean/input_grad/unstackG^gradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/BiasAddGrad
�
Sgradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/control_dependencyIdentity8gradients/critic/q/q1_encoding_1/Mean/input_grad/unstackL^gradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/critic/q/q1_encoding_1/Mean/input_grad/unstack
�
Ugradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/BiasAddGradL^gradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/BiasAddGrad
W
#gradients/policy_1/mul_2_grad/ShapeShapepolicy_1/mul_2/x*
T0*
out_type0
W
%gradients/policy_1/mul_2_grad/Shape_1Shapepolicy_1/add_3*
T0*
out_type0
�
3gradients/policy_1/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/mul_2_grad/Shape%gradients/policy_1/mul_2_grad/Shape_1*
T0
y
!gradients/policy_1/mul_2_grad/MulMul6gradients/policy_1/sub_2_grad/tuple/control_dependencypolicy_1/add_3*
T0
�
!gradients/policy_1/mul_2_grad/SumSum!gradients/policy_1/mul_2_grad/Mul3gradients/policy_1/mul_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/mul_2_grad/ReshapeReshape!gradients/policy_1/mul_2_grad/Sum#gradients/policy_1/mul_2_grad/Shape*
T0*
Tshape0
}
#gradients/policy_1/mul_2_grad/Mul_1Mulpolicy_1/mul_2/x6gradients/policy_1/sub_2_grad/tuple/control_dependency*
T0
�
#gradients/policy_1/mul_2_grad/Sum_1Sum#gradients/policy_1/mul_2_grad/Mul_15gradients/policy_1/mul_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/mul_2_grad/Reshape_1Reshape#gradients/policy_1/mul_2_grad/Sum_1%gradients/policy_1/mul_2_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/mul_2_grad/tuple/group_depsNoOp&^gradients/policy_1/mul_2_grad/Reshape(^gradients/policy_1/mul_2_grad/Reshape_1
�
6gradients/policy_1/mul_2_grad/tuple/control_dependencyIdentity%gradients/policy_1/mul_2_grad/Reshape/^gradients/policy_1/mul_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/mul_2_grad/Reshape
�
8gradients/policy_1/mul_2_grad/tuple/control_dependency_1Identity'gradients/policy_1/mul_2_grad/Reshape_1/^gradients/policy_1/mul_2_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/mul_2_grad/Reshape_1
�
&gradients/policy_1/Log_grad/Reciprocal
Reciprocalpolicy_1/add_49^gradients/policy_1/sub_2_grad/tuple/control_dependency_1*
T0
�
gradients/policy_1/Log_grad/mulMul8gradients/policy_1/sub_2_grad/tuple/control_dependency_1&gradients/policy_1/Log_grad/Reciprocal*
T0
�
@gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMulMatMulSgradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/control_dependency-critic/q/q1_encoding/extrinsic_q1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Bgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMul_1MatMul.critic/q/q1_encoding_1/q1_encoder/hidden_1/MulSgradients/critic/q/q1_encoding_1/extrinsic_q1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Jgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/group_depsNoOpA^gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMulC^gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMul_1
�
Rgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/control_dependencyIdentity@gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMulK^gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMul
�
Tgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/control_dependency_1IdentityBgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMul_1K^gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/MatMul_1
U
#gradients/policy_1/add_3_grad/ShapeShapepolicy_1/add_2*
T0*
out_type0
Y
%gradients/policy_1/add_3_grad/Shape_1Shapepolicy_1/add_3/y*
T0*
out_type0
�
3gradients/policy_1/add_3_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/add_3_grad/Shape%gradients/policy_1/add_3_grad/Shape_1*
T0
�
!gradients/policy_1/add_3_grad/SumSum8gradients/policy_1/mul_2_grad/tuple/control_dependency_13gradients/policy_1/add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/add_3_grad/ReshapeReshape!gradients/policy_1/add_3_grad/Sum#gradients/policy_1/add_3_grad/Shape*
T0*
Tshape0
�
#gradients/policy_1/add_3_grad/Sum_1Sum8gradients/policy_1/mul_2_grad/tuple/control_dependency_15gradients/policy_1/add_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/add_3_grad/Reshape_1Reshape#gradients/policy_1/add_3_grad/Sum_1%gradients/policy_1/add_3_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/add_3_grad/tuple/group_depsNoOp&^gradients/policy_1/add_3_grad/Reshape(^gradients/policy_1/add_3_grad/Reshape_1
�
6gradients/policy_1/add_3_grad/tuple/control_dependencyIdentity%gradients/policy_1/add_3_grad/Reshape/^gradients/policy_1/add_3_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_3_grad/Reshape
�
8gradients/policy_1/add_3_grad/tuple/control_dependency_1Identity'gradients/policy_1/add_3_grad/Reshape_1/^gradients/policy_1/add_3_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/add_3_grad/Reshape_1
U
#gradients/policy_1/add_4_grad/ShapeShapepolicy_1/sub_1*
T0*
out_type0
Y
%gradients/policy_1/add_4_grad/Shape_1Shapepolicy_1/add_4/y*
T0*
out_type0
�
3gradients/policy_1/add_4_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/add_4_grad/Shape%gradients/policy_1/add_4_grad/Shape_1*
T0
�
!gradients/policy_1/add_4_grad/SumSumgradients/policy_1/Log_grad/mul3gradients/policy_1/add_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/add_4_grad/ReshapeReshape!gradients/policy_1/add_4_grad/Sum#gradients/policy_1/add_4_grad/Shape*
T0*
Tshape0
�
#gradients/policy_1/add_4_grad/Sum_1Sumgradients/policy_1/Log_grad/mul5gradients/policy_1/add_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/add_4_grad/Reshape_1Reshape#gradients/policy_1/add_4_grad/Sum_1%gradients/policy_1/add_4_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/add_4_grad/tuple/group_depsNoOp&^gradients/policy_1/add_4_grad/Reshape(^gradients/policy_1/add_4_grad/Reshape_1
�
6gradients/policy_1/add_4_grad/tuple/control_dependencyIdentity%gradients/policy_1/add_4_grad/Reshape/^gradients/policy_1/add_4_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_4_grad/Reshape
�
8gradients/policy_1/add_4_grad/tuple/control_dependency_1Identity'gradients/policy_1/add_4_grad/Reshape_1/^gradients/policy_1/add_4_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/add_4_grad/Reshape_1
�
Cgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/ShapeShape2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd*
T0*
out_type0
�
Egradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Shape_1Shape2critic/q/q1_encoding_1/q1_encoder/hidden_1/Sigmoid*
T0*
out_type0
�
Sgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/ShapeEgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Shape_1*
T0
�
Agradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/MulMulRgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/control_dependency2critic/q/q1_encoding_1/q1_encoder/hidden_1/Sigmoid*
T0
�
Agradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/SumSumAgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/MulSgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
Egradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/ReshapeReshapeAgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/SumCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
�
Cgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Mul_1Mul2critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAddRgradients/critic/q/q1_encoding_1/extrinsic_q1/MatMul_grad/tuple/control_dependency*
T0
�
Cgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Sum_1SumCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Mul_1Ugradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
Ggradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape_1ReshapeCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Sum_1Egradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
Ngradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/group_depsNoOpF^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/ReshapeH^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape_1
�
Vgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentityEgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/ReshapeO^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape
�
Xgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/control_dependency_1IdentityGgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape_1O^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape_1
S
#gradients/policy_1/add_2_grad/ShapeShapepolicy_1/pow*
T0*
out_type0
W
%gradients/policy_1/add_2_grad/Shape_1Shapepolicy_1/mul_1*
T0*
out_type0
�
3gradients/policy_1/add_2_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/add_2_grad/Shape%gradients/policy_1/add_2_grad/Shape_1*
T0
�
!gradients/policy_1/add_2_grad/SumSum6gradients/policy_1/add_3_grad/tuple/control_dependency3gradients/policy_1/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/add_2_grad/ReshapeReshape!gradients/policy_1/add_2_grad/Sum#gradients/policy_1/add_2_grad/Shape*
T0*
Tshape0
�
#gradients/policy_1/add_2_grad/Sum_1Sum6gradients/policy_1/add_3_grad/tuple/control_dependency5gradients/policy_1/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/add_2_grad/Reshape_1Reshape#gradients/policy_1/add_2_grad/Sum_1%gradients/policy_1/add_2_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/add_2_grad/tuple/group_depsNoOp&^gradients/policy_1/add_2_grad/Reshape(^gradients/policy_1/add_2_grad/Reshape_1
�
6gradients/policy_1/add_2_grad/tuple/control_dependencyIdentity%gradients/policy_1/add_2_grad/Reshape/^gradients/policy_1/add_2_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_2_grad/Reshape
�
8gradients/policy_1/add_2_grad/tuple/control_dependency_1Identity'gradients/policy_1/add_2_grad/Reshape_1/^gradients/policy_1/add_2_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/add_2_grad/Reshape_1
W
#gradients/policy_1/sub_1_grad/ShapeShapepolicy_1/sub_1/x*
T0*
out_type0
W
%gradients/policy_1/sub_1_grad/Shape_1Shapepolicy_1/pow_1*
T0*
out_type0
�
3gradients/policy_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/sub_1_grad/Shape%gradients/policy_1/sub_1_grad/Shape_1*
T0
�
!gradients/policy_1/sub_1_grad/SumSum6gradients/policy_1/add_4_grad/tuple/control_dependency3gradients/policy_1/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/sub_1_grad/ReshapeReshape!gradients/policy_1/sub_1_grad/Sum#gradients/policy_1/sub_1_grad/Shape*
T0*
Tshape0
i
!gradients/policy_1/sub_1_grad/NegNeg6gradients/policy_1/add_4_grad/tuple/control_dependency*
T0
�
#gradients/policy_1/sub_1_grad/Sum_1Sum!gradients/policy_1/sub_1_grad/Neg5gradients/policy_1/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/sub_1_grad/Reshape_1Reshape#gradients/policy_1/sub_1_grad/Sum_1%gradients/policy_1/sub_1_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/sub_1_grad/tuple/group_depsNoOp&^gradients/policy_1/sub_1_grad/Reshape(^gradients/policy_1/sub_1_grad/Reshape_1
�
6gradients/policy_1/sub_1_grad/tuple/control_dependencyIdentity%gradients/policy_1/sub_1_grad/Reshape/^gradients/policy_1/sub_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/sub_1_grad/Reshape
�
8gradients/policy_1/sub_1_grad/tuple/control_dependency_1Identity'gradients/policy_1/sub_1_grad/Reshape_1/^gradients/policy_1/sub_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/sub_1_grad/Reshape_1
�
Mgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad2critic/q/q1_encoding_1/q1_encoder/hidden_1/SigmoidXgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
U
!gradients/policy_1/pow_grad/ShapeShapepolicy_1/truediv*
T0*
out_type0
U
#gradients/policy_1/pow_grad/Shape_1Shapepolicy_1/pow/y*
T0*
out_type0
�
1gradients/policy_1/pow_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/policy_1/pow_grad/Shape#gradients/policy_1/pow_grad/Shape_1*
T0
w
gradients/policy_1/pow_grad/mulMul6gradients/policy_1/add_2_grad/tuple/control_dependencypolicy_1/pow/y*
T0
N
!gradients/policy_1/pow_grad/sub/yConst*
valueB
 *  �?*
dtype0
b
gradients/policy_1/pow_grad/subSubpolicy_1/pow/y!gradients/policy_1/pow_grad/sub/y*
T0
b
gradients/policy_1/pow_grad/PowPowpolicy_1/truedivgradients/policy_1/pow_grad/sub*
T0
s
!gradients/policy_1/pow_grad/mul_1Mulgradients/policy_1/pow_grad/mulgradients/policy_1/pow_grad/Pow*
T0
�
gradients/policy_1/pow_grad/SumSum!gradients/policy_1/pow_grad/mul_11gradients/policy_1/pow_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
#gradients/policy_1/pow_grad/ReshapeReshapegradients/policy_1/pow_grad/Sum!gradients/policy_1/pow_grad/Shape*
T0*
Tshape0
R
%gradients/policy_1/pow_grad/Greater/yConst*
valueB
 *    *
dtype0
p
#gradients/policy_1/pow_grad/GreaterGreaterpolicy_1/truediv%gradients/policy_1/pow_grad/Greater/y*
T0
_
+gradients/policy_1/pow_grad/ones_like/ShapeShapepolicy_1/truediv*
T0*
out_type0
X
+gradients/policy_1/pow_grad/ones_like/ConstConst*
valueB
 *  �?*
dtype0
�
%gradients/policy_1/pow_grad/ones_likeFill+gradients/policy_1/pow_grad/ones_like/Shape+gradients/policy_1/pow_grad/ones_like/Const*
T0*

index_type0
�
"gradients/policy_1/pow_grad/SelectSelect#gradients/policy_1/pow_grad/Greaterpolicy_1/truediv%gradients/policy_1/pow_grad/ones_like*
T0
S
gradients/policy_1/pow_grad/LogLog"gradients/policy_1/pow_grad/Select*
T0
N
&gradients/policy_1/pow_grad/zeros_like	ZerosLikepolicy_1/truediv*
T0
�
$gradients/policy_1/pow_grad/Select_1Select#gradients/policy_1/pow_grad/Greatergradients/policy_1/pow_grad/Log&gradients/policy_1/pow_grad/zeros_like*
T0
w
!gradients/policy_1/pow_grad/mul_2Mul6gradients/policy_1/add_2_grad/tuple/control_dependencypolicy_1/pow*
T0
z
!gradients/policy_1/pow_grad/mul_3Mul!gradients/policy_1/pow_grad/mul_2$gradients/policy_1/pow_grad/Select_1*
T0
�
!gradients/policy_1/pow_grad/Sum_1Sum!gradients/policy_1/pow_grad/mul_33gradients/policy_1/pow_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/pow_grad/Reshape_1Reshape!gradients/policy_1/pow_grad/Sum_1#gradients/policy_1/pow_grad/Shape_1*
T0*
Tshape0
�
,gradients/policy_1/pow_grad/tuple/group_depsNoOp$^gradients/policy_1/pow_grad/Reshape&^gradients/policy_1/pow_grad/Reshape_1
�
4gradients/policy_1/pow_grad/tuple/control_dependencyIdentity#gradients/policy_1/pow_grad/Reshape-^gradients/policy_1/pow_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/policy_1/pow_grad/Reshape
�
6gradients/policy_1/pow_grad/tuple/control_dependency_1Identity%gradients/policy_1/pow_grad/Reshape_1-^gradients/policy_1/pow_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/pow_grad/Reshape_1
W
#gradients/policy_1/mul_1_grad/ShapeShapepolicy_1/mul_1/x*
T0*
out_type0
_
%gradients/policy_1/mul_1_grad/Shape_1Shapepolicy_1/clip_by_value*
T0*
out_type0
�
3gradients/policy_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/mul_1_grad/Shape%gradients/policy_1/mul_1_grad/Shape_1*
T0
�
!gradients/policy_1/mul_1_grad/MulMul8gradients/policy_1/add_2_grad/tuple/control_dependency_1policy_1/clip_by_value*
T0
�
!gradients/policy_1/mul_1_grad/SumSum!gradients/policy_1/mul_1_grad/Mul3gradients/policy_1/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/mul_1_grad/ReshapeReshape!gradients/policy_1/mul_1_grad/Sum#gradients/policy_1/mul_1_grad/Shape*
T0*
Tshape0

#gradients/policy_1/mul_1_grad/Mul_1Mulpolicy_1/mul_1/x8gradients/policy_1/add_2_grad/tuple/control_dependency_1*
T0
�
#gradients/policy_1/mul_1_grad/Sum_1Sum#gradients/policy_1/mul_1_grad/Mul_15gradients/policy_1/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/mul_1_grad/Reshape_1Reshape#gradients/policy_1/mul_1_grad/Sum_1%gradients/policy_1/mul_1_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/mul_1_grad/tuple/group_depsNoOp&^gradients/policy_1/mul_1_grad/Reshape(^gradients/policy_1/mul_1_grad/Reshape_1
�
6gradients/policy_1/mul_1_grad/tuple/control_dependencyIdentity%gradients/policy_1/mul_1_grad/Reshape/^gradients/policy_1/mul_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/mul_1_grad/Reshape
�
8gradients/policy_1/mul_1_grad/tuple/control_dependency_1Identity'gradients/policy_1/mul_1_grad/Reshape_1/^gradients/policy_1/mul_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/mul_1_grad/Reshape_1
T
#gradients/policy_1/pow_1_grad/ShapeShapepolicy_1/Tanh*
T0*
out_type0
Y
%gradients/policy_1/pow_1_grad/Shape_1Shapepolicy_1/pow_1/y*
T0*
out_type0
�
3gradients/policy_1/pow_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/pow_1_grad/Shape%gradients/policy_1/pow_1_grad/Shape_1*
T0
}
!gradients/policy_1/pow_1_grad/mulMul8gradients/policy_1/sub_1_grad/tuple/control_dependency_1policy_1/pow_1/y*
T0
P
#gradients/policy_1/pow_1_grad/sub/yConst*
valueB
 *  �?*
dtype0
h
!gradients/policy_1/pow_1_grad/subSubpolicy_1/pow_1/y#gradients/policy_1/pow_1_grad/sub/y*
T0
c
!gradients/policy_1/pow_1_grad/PowPowpolicy_1/Tanh!gradients/policy_1/pow_1_grad/sub*
T0
y
#gradients/policy_1/pow_1_grad/mul_1Mul!gradients/policy_1/pow_1_grad/mul!gradients/policy_1/pow_1_grad/Pow*
T0
�
!gradients/policy_1/pow_1_grad/SumSum#gradients/policy_1/pow_1_grad/mul_13gradients/policy_1/pow_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/pow_1_grad/ReshapeReshape!gradients/policy_1/pow_1_grad/Sum#gradients/policy_1/pow_1_grad/Shape*
T0*
Tshape0
T
'gradients/policy_1/pow_1_grad/Greater/yConst*
valueB
 *    *
dtype0
q
%gradients/policy_1/pow_1_grad/GreaterGreaterpolicy_1/Tanh'gradients/policy_1/pow_1_grad/Greater/y*
T0
^
-gradients/policy_1/pow_1_grad/ones_like/ShapeShapepolicy_1/Tanh*
T0*
out_type0
Z
-gradients/policy_1/pow_1_grad/ones_like/ConstConst*
valueB
 *  �?*
dtype0
�
'gradients/policy_1/pow_1_grad/ones_likeFill-gradients/policy_1/pow_1_grad/ones_like/Shape-gradients/policy_1/pow_1_grad/ones_like/Const*
T0*

index_type0
�
$gradients/policy_1/pow_1_grad/SelectSelect%gradients/policy_1/pow_1_grad/Greaterpolicy_1/Tanh'gradients/policy_1/pow_1_grad/ones_like*
T0
W
!gradients/policy_1/pow_1_grad/LogLog$gradients/policy_1/pow_1_grad/Select*
T0
M
(gradients/policy_1/pow_1_grad/zeros_like	ZerosLikepolicy_1/Tanh*
T0
�
&gradients/policy_1/pow_1_grad/Select_1Select%gradients/policy_1/pow_1_grad/Greater!gradients/policy_1/pow_1_grad/Log(gradients/policy_1/pow_1_grad/zeros_like*
T0
}
#gradients/policy_1/pow_1_grad/mul_2Mul8gradients/policy_1/sub_1_grad/tuple/control_dependency_1policy_1/pow_1*
T0
�
#gradients/policy_1/pow_1_grad/mul_3Mul#gradients/policy_1/pow_1_grad/mul_2&gradients/policy_1/pow_1_grad/Select_1*
T0
�
#gradients/policy_1/pow_1_grad/Sum_1Sum#gradients/policy_1/pow_1_grad/mul_35gradients/policy_1/pow_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/pow_1_grad/Reshape_1Reshape#gradients/policy_1/pow_1_grad/Sum_1%gradients/policy_1/pow_1_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/pow_1_grad/tuple/group_depsNoOp&^gradients/policy_1/pow_1_grad/Reshape(^gradients/policy_1/pow_1_grad/Reshape_1
�
6gradients/policy_1/pow_1_grad/tuple/control_dependencyIdentity%gradients/policy_1/pow_1_grad/Reshape/^gradients/policy_1/pow_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/pow_1_grad/Reshape
�
8gradients/policy_1/pow_1_grad/tuple/control_dependency_1Identity'gradients/policy_1/pow_1_grad/Reshape_1/^gradients/policy_1/pow_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/pow_1_grad/Reshape_1
�
gradients/AddNAddNVgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/tuple/control_dependencyMgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*X
_classN
LJloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape*
N
�
Mgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN*
T0*
data_formatNHWC
�
Rgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddNN^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
�
Zgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddNS^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/Mul_grad/Reshape
�
\gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGradS^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
U
%gradients/policy_1/truediv_grad/ShapeShapepolicy_1/sub*
T0*
out_type0
Y
'gradients/policy_1/truediv_grad/Shape_1Shapepolicy_1/add_1*
T0*
out_type0
�
5gradients/policy_1/truediv_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/policy_1/truediv_grad/Shape'gradients/policy_1/truediv_grad/Shape_1*
T0
�
'gradients/policy_1/truediv_grad/RealDivRealDiv4gradients/policy_1/pow_grad/tuple/control_dependencypolicy_1/add_1*
T0
�
#gradients/policy_1/truediv_grad/SumSum'gradients/policy_1/truediv_grad/RealDiv5gradients/policy_1/truediv_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/truediv_grad/ReshapeReshape#gradients/policy_1/truediv_grad/Sum%gradients/policy_1/truediv_grad/Shape*
T0*
Tshape0
A
#gradients/policy_1/truediv_grad/NegNegpolicy_1/sub*
T0
r
)gradients/policy_1/truediv_grad/RealDiv_1RealDiv#gradients/policy_1/truediv_grad/Negpolicy_1/add_1*
T0
x
)gradients/policy_1/truediv_grad/RealDiv_2RealDiv)gradients/policy_1/truediv_grad/RealDiv_1policy_1/add_1*
T0
�
#gradients/policy_1/truediv_grad/mulMul4gradients/policy_1/pow_grad/tuple/control_dependency)gradients/policy_1/truediv_grad/RealDiv_2*
T0
�
%gradients/policy_1/truediv_grad/Sum_1Sum#gradients/policy_1/truediv_grad/mul7gradients/policy_1/truediv_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
)gradients/policy_1/truediv_grad/Reshape_1Reshape%gradients/policy_1/truediv_grad/Sum_1'gradients/policy_1/truediv_grad/Shape_1*
T0*
Tshape0
�
0gradients/policy_1/truediv_grad/tuple/group_depsNoOp(^gradients/policy_1/truediv_grad/Reshape*^gradients/policy_1/truediv_grad/Reshape_1
�
8gradients/policy_1/truediv_grad/tuple/control_dependencyIdentity'gradients/policy_1/truediv_grad/Reshape1^gradients/policy_1/truediv_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/truediv_grad/Reshape
�
:gradients/policy_1/truediv_grad/tuple/control_dependency_1Identity)gradients/policy_1/truediv_grad/Reshape_11^gradients/policy_1/truediv_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/policy_1/truediv_grad/Reshape_1
�
Ggradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMulMatMulZgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Igradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMul_1MatMul.critic/q/q1_encoding_1/q1_encoder/hidden_0/MulZgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Qgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOpH^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMulJ^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMul_1
�
Ygradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentityGgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMulR^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMul
�
[gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityIgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMul_1R^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/MatMul_1
Q
!gradients/policy_1/sub_grad/ShapeShapepolicy_1/add*
T0*
out_type0
Z
#gradients/policy_1/sub_grad/Shape_1Shapepolicy_1/mu/BiasAdd*
T0*
out_type0
�
1gradients/policy_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/policy_1/sub_grad/Shape#gradients/policy_1/sub_grad/Shape_1*
T0
�
gradients/policy_1/sub_grad/SumSum8gradients/policy_1/truediv_grad/tuple/control_dependency1gradients/policy_1/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
#gradients/policy_1/sub_grad/ReshapeReshapegradients/policy_1/sub_grad/Sum!gradients/policy_1/sub_grad/Shape*
T0*
Tshape0
i
gradients/policy_1/sub_grad/NegNeg8gradients/policy_1/truediv_grad/tuple/control_dependency*
T0
�
!gradients/policy_1/sub_grad/Sum_1Sumgradients/policy_1/sub_grad/Neg3gradients/policy_1/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/sub_grad/Reshape_1Reshape!gradients/policy_1/sub_grad/Sum_1#gradients/policy_1/sub_grad/Shape_1*
T0*
Tshape0
�
,gradients/policy_1/sub_grad/tuple/group_depsNoOp$^gradients/policy_1/sub_grad/Reshape&^gradients/policy_1/sub_grad/Reshape_1
�
4gradients/policy_1/sub_grad/tuple/control_dependencyIdentity#gradients/policy_1/sub_grad/Reshape-^gradients/policy_1/sub_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/policy_1/sub_grad/Reshape
�
6gradients/policy_1/sub_grad/tuple/control_dependency_1Identity%gradients/policy_1/sub_grad/Reshape_1-^gradients/policy_1/sub_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/sub_grad/Reshape_1
S
#gradients/policy_1/add_1_grad/ShapeShapepolicy_1/Exp*
T0*
out_type0
Y
%gradients/policy_1/add_1_grad/Shape_1Shapepolicy_1/add_1/y*
T0*
out_type0
�
3gradients/policy_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgs#gradients/policy_1/add_1_grad/Shape%gradients/policy_1/add_1_grad/Shape_1*
T0
�
!gradients/policy_1/add_1_grad/SumSum:gradients/policy_1/truediv_grad/tuple/control_dependency_13gradients/policy_1/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/add_1_grad/ReshapeReshape!gradients/policy_1/add_1_grad/Sum#gradients/policy_1/add_1_grad/Shape*
T0*
Tshape0
�
#gradients/policy_1/add_1_grad/Sum_1Sum:gradients/policy_1/truediv_grad/tuple/control_dependency_15gradients/policy_1/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
'gradients/policy_1/add_1_grad/Reshape_1Reshape#gradients/policy_1/add_1_grad/Sum_1%gradients/policy_1/add_1_grad/Shape_1*
T0*
Tshape0
�
.gradients/policy_1/add_1_grad/tuple/group_depsNoOp&^gradients/policy_1/add_1_grad/Reshape(^gradients/policy_1/add_1_grad/Reshape_1
�
6gradients/policy_1/add_1_grad/tuple/control_dependencyIdentity%gradients/policy_1/add_1_grad/Reshape/^gradients/policy_1/add_1_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_1_grad/Reshape
�
8gradients/policy_1/add_1_grad/tuple/control_dependency_1Identity'gradients/policy_1/add_1_grad/Reshape_1/^gradients/policy_1/add_1_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/policy_1/add_1_grad/Reshape_1
�
Cgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/ShapeShape2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd*
T0*
out_type0
�
Egradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Shape_1Shape2critic/q/q1_encoding_1/q1_encoder/hidden_0/Sigmoid*
T0*
out_type0
�
Sgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/ShapeEgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Shape_1*
T0
�
Agradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/MulMulYgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency2critic/q/q1_encoding_1/q1_encoder/hidden_0/Sigmoid*
T0
�
Agradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/SumSumAgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/MulSgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
Egradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/ReshapeReshapeAgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/SumCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
Cgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Mul_1Mul2critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAddYgradients/critic/q/q1_encoding_1/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
Cgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Sum_1SumCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Mul_1Ugradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
Ggradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape_1ReshapeCgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Sum_1Egradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
Ngradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/group_depsNoOpF^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/ReshapeH^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape_1
�
Vgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentityEgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/ReshapeO^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape
�
Xgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/control_dependency_1IdentityGgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape_1O^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape_1
�
Mgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad2critic/q/q1_encoding_1/q1_encoder/hidden_0/SigmoidXgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
gradients/AddN_1AddNVgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/tuple/control_dependencyMgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*X
_classN
LJloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape*
N
�
Mgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC
�
Rgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_1N^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
�
Zgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_1S^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/Mul_grad/Reshape
�
\gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGradS^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
�
Ggradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMulMatMulZgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Igradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMul_1MatMulconcat_1Zgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Qgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOpH^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMulJ^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMul_1
�
Ygradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentityGgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMulR^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMul
�
[gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1IdentityIgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMul_1R^gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/MatMul_1
F
gradients/concat_1_grad/RankConst*
value	B :*
dtype0
]
gradients/concat_1_grad/modFloorModconcat_1/axisgradients/concat_1_grad/Rank*
T0
Q
gradients/concat_1_grad/ShapeShapenormalized_state*
T0*
out_type0
d
gradients/concat_1_grad/ShapeNShapeNnormalized_stateaction*
T0*
out_type0*
N
�
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/modgradients/concat_1_grad/ShapeN gradients/concat_1_grad/ShapeN:1*
N
�
gradients/concat_1_grad/SliceSliceYgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency$gradients/concat_1_grad/ConcatOffsetgradients/concat_1_grad/ShapeN*
T0*
Index0
�
gradients/concat_1_grad/Slice_1SliceYgradients/critic/q/q1_encoding_1/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency&gradients/concat_1_grad/ConcatOffset:1 gradients/concat_1_grad/ShapeN:1*
T0*
Index0
r
(gradients/concat_1_grad/tuple/group_depsNoOp^gradients/concat_1_grad/Slice ^gradients/concat_1_grad/Slice_1
�
0gradients/concat_1_grad/tuple/control_dependencyIdentitygradients/concat_1_grad/Slice)^gradients/concat_1_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/concat_1_grad/Slice
�
2gradients/concat_1_grad/tuple/control_dependency_1Identitygradients/concat_1_grad/Slice_1)^gradients/concat_1_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/concat_1_grad/Slice_1
�
gradients/AddN_2AddN6gradients/policy_1/pow_1_grad/tuple/control_dependency2gradients/concat_1_grad/tuple/control_dependency_1*
T0*8
_class.
,*loc:@gradients/policy_1/pow_1_grad/Reshape*
N
[
%gradients/policy_1/Tanh_grad/TanhGradTanhGradpolicy_1/Tanhgradients/AddN_2*
T0
�
gradients/AddN_3AddN4gradients/policy_1/sub_grad/tuple/control_dependency%gradients/policy_1/Tanh_grad/TanhGrad*
T0*6
_class,
*(loc:@gradients/policy_1/sub_grad/Reshape*
N
X
!gradients/policy_1/add_grad/ShapeShapepolicy_1/mu/BiasAdd*
T0*
out_type0
S
#gradients/policy_1/add_grad/Shape_1Shapepolicy_1/mul*
T0*
out_type0
�
1gradients/policy_1/add_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/policy_1/add_grad/Shape#gradients/policy_1/add_grad/Shape_1*
T0
�
gradients/policy_1/add_grad/SumSumgradients/AddN_31gradients/policy_1/add_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
#gradients/policy_1/add_grad/ReshapeReshapegradients/policy_1/add_grad/Sum!gradients/policy_1/add_grad/Shape*
T0*
Tshape0
�
!gradients/policy_1/add_grad/Sum_1Sumgradients/AddN_33gradients/policy_1/add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/add_grad/Reshape_1Reshape!gradients/policy_1/add_grad/Sum_1#gradients/policy_1/add_grad/Shape_1*
T0*
Tshape0
�
,gradients/policy_1/add_grad/tuple/group_depsNoOp$^gradients/policy_1/add_grad/Reshape&^gradients/policy_1/add_grad/Reshape_1
�
4gradients/policy_1/add_grad/tuple/control_dependencyIdentity#gradients/policy_1/add_grad/Reshape-^gradients/policy_1/add_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/policy_1/add_grad/Reshape
�
6gradients/policy_1/add_grad/tuple/control_dependency_1Identity%gradients/policy_1/add_grad/Reshape_1-^gradients/policy_1/add_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/add_grad/Reshape_1
�
gradients/AddN_4AddN6gradients/policy_1/sub_grad/tuple/control_dependency_14gradients/policy_1/add_grad/tuple/control_dependency*
T0*8
_class.
,*loc:@gradients/policy_1/sub_grad/Reshape_1*
N
o
.gradients/policy_1/mu/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_4*
T0*
data_formatNHWC

3gradients/policy_1/mu/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_4/^gradients/policy_1/mu/BiasAdd_grad/BiasAddGrad
�
;gradients/policy_1/mu/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_44^gradients/policy_1/mu/BiasAdd_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/sub_grad/Reshape_1
�
=gradients/policy_1/mu/BiasAdd_grad/tuple/control_dependency_1Identity.gradients/policy_1/mu/BiasAdd_grad/BiasAddGrad4^gradients/policy_1/mu/BiasAdd_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/policy_1/mu/BiasAdd_grad/BiasAddGrad
Q
!gradients/policy_1/mul_grad/ShapeShapepolicy_1/Exp*
T0*
out_type0
]
#gradients/policy_1/mul_grad/Shape_1Shapepolicy_1/random_normal*
T0*
out_type0
�
1gradients/policy_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs!gradients/policy_1/mul_grad/Shape#gradients/policy_1/mul_grad/Shape_1*
T0

gradients/policy_1/mul_grad/MulMul6gradients/policy_1/add_grad/tuple/control_dependency_1policy_1/random_normal*
T0
�
gradients/policy_1/mul_grad/SumSumgradients/policy_1/mul_grad/Mul1gradients/policy_1/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
#gradients/policy_1/mul_grad/ReshapeReshapegradients/policy_1/mul_grad/Sum!gradients/policy_1/mul_grad/Shape*
T0*
Tshape0
w
!gradients/policy_1/mul_grad/Mul_1Mulpolicy_1/Exp6gradients/policy_1/add_grad/tuple/control_dependency_1*
T0
�
!gradients/policy_1/mul_grad/Sum_1Sum!gradients/policy_1/mul_grad/Mul_13gradients/policy_1/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
%gradients/policy_1/mul_grad/Reshape_1Reshape!gradients/policy_1/mul_grad/Sum_1#gradients/policy_1/mul_grad/Shape_1*
T0*
Tshape0
�
,gradients/policy_1/mul_grad/tuple/group_depsNoOp$^gradients/policy_1/mul_grad/Reshape&^gradients/policy_1/mul_grad/Reshape_1
�
4gradients/policy_1/mul_grad/tuple/control_dependencyIdentity#gradients/policy_1/mul_grad/Reshape-^gradients/policy_1/mul_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/policy_1/mul_grad/Reshape
�
6gradients/policy_1/mul_grad/tuple/control_dependency_1Identity%gradients/policy_1/mul_grad/Reshape_1-^gradients/policy_1/mul_grad/tuple/group_deps*
T0*8
_class.
,*loc:@gradients/policy_1/mul_grad/Reshape_1
�
(gradients/policy_1/mu/MatMul_grad/MatMulMatMul;gradients/policy_1/mu/BiasAdd_grad/tuple/control_dependencypolicy/mu/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
*gradients/policy_1/mu/MatMul_grad/MatMul_1MatMul policy/main_graph_0/hidden_1/Mul;gradients/policy_1/mu/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
2gradients/policy_1/mu/MatMul_grad/tuple/group_depsNoOp)^gradients/policy_1/mu/MatMul_grad/MatMul+^gradients/policy_1/mu/MatMul_grad/MatMul_1
�
:gradients/policy_1/mu/MatMul_grad/tuple/control_dependencyIdentity(gradients/policy_1/mu/MatMul_grad/MatMul3^gradients/policy_1/mu/MatMul_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/policy_1/mu/MatMul_grad/MatMul
�
<gradients/policy_1/mu/MatMul_grad/tuple/control_dependency_1Identity*gradients/policy_1/mu/MatMul_grad/MatMul_13^gradients/policy_1/mu/MatMul_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/policy_1/mu/MatMul_grad/MatMul_1
�
gradients/AddN_5AddN6gradients/policy_1/add_1_grad/tuple/control_dependency4gradients/policy_1/mul_grad/tuple/control_dependency*
T0*8
_class.
,*loc:@gradients/policy_1/add_1_grad/Reshape*
N
O
gradients/policy_1/Exp_grad/mulMulgradients/AddN_5policy_1/Exp*
T0
�
gradients/AddN_6AddN8gradients/policy_1/mul_1_grad/tuple/control_dependency_1gradients/policy_1/Exp_grad/mul*
T0*:
_class0
.,loc:@gradients/policy_1/mul_1_grad/Reshape_1*
N
m
+gradients/policy_1/clip_by_value_grad/ShapeShapepolicy_1/clip_by_value/Minimum*
T0*
out_type0
V
-gradients/policy_1/clip_by_value_grad/Shape_1Const*
valueB *
dtype0
a
-gradients/policy_1/clip_by_value_grad/Shape_2Shapegradients/AddN_6*
T0*
out_type0
^
1gradients/policy_1/clip_by_value_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
+gradients/policy_1/clip_by_value_grad/zerosFill-gradients/policy_1/clip_by_value_grad/Shape_21gradients/policy_1/clip_by_value_grad/zeros/Const*
T0*

index_type0
�
2gradients/policy_1/clip_by_value_grad/GreaterEqualGreaterEqualpolicy_1/clip_by_value/Minimumpolicy_1/clip_by_value/y*
T0
�
;gradients/policy_1/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/policy_1/clip_by_value_grad/Shape-gradients/policy_1/clip_by_value_grad/Shape_1*
T0
�
,gradients/policy_1/clip_by_value_grad/SelectSelect2gradients/policy_1/clip_by_value_grad/GreaterEqualgradients/AddN_6+gradients/policy_1/clip_by_value_grad/zeros*
T0
�
)gradients/policy_1/clip_by_value_grad/SumSum,gradients/policy_1/clip_by_value_grad/Select;gradients/policy_1/clip_by_value_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
-gradients/policy_1/clip_by_value_grad/ReshapeReshape)gradients/policy_1/clip_by_value_grad/Sum+gradients/policy_1/clip_by_value_grad/Shape*
T0*
Tshape0
�
.gradients/policy_1/clip_by_value_grad/Select_1Select2gradients/policy_1/clip_by_value_grad/GreaterEqual+gradients/policy_1/clip_by_value_grad/zerosgradients/AddN_6*
T0
�
+gradients/policy_1/clip_by_value_grad/Sum_1Sum.gradients/policy_1/clip_by_value_grad/Select_1=gradients/policy_1/clip_by_value_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
/gradients/policy_1/clip_by_value_grad/Reshape_1Reshape+gradients/policy_1/clip_by_value_grad/Sum_1-gradients/policy_1/clip_by_value_grad/Shape_1*
T0*
Tshape0
�
6gradients/policy_1/clip_by_value_grad/tuple/group_depsNoOp.^gradients/policy_1/clip_by_value_grad/Reshape0^gradients/policy_1/clip_by_value_grad/Reshape_1
�
>gradients/policy_1/clip_by_value_grad/tuple/control_dependencyIdentity-gradients/policy_1/clip_by_value_grad/Reshape7^gradients/policy_1/clip_by_value_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/policy_1/clip_by_value_grad/Reshape
�
@gradients/policy_1/clip_by_value_grad/tuple/control_dependency_1Identity/gradients/policy_1/clip_by_value_grad/Reshape_17^gradients/policy_1/clip_by_value_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/policy_1/clip_by_value_grad/Reshape_1
o
3gradients/policy_1/clip_by_value/Minimum_grad/ShapeShapepolicy_1/log_std/BiasAdd*
T0*
out_type0
^
5gradients/policy_1/clip_by_value/Minimum_grad/Shape_1Const*
valueB *
dtype0
�
5gradients/policy_1/clip_by_value/Minimum_grad/Shape_2Shape>gradients/policy_1/clip_by_value_grad/tuple/control_dependency*
T0*
out_type0
f
9gradients/policy_1/clip_by_value/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
�
3gradients/policy_1/clip_by_value/Minimum_grad/zerosFill5gradients/policy_1/clip_by_value/Minimum_grad/Shape_29gradients/policy_1/clip_by_value/Minimum_grad/zeros/Const*
T0*

index_type0
�
7gradients/policy_1/clip_by_value/Minimum_grad/LessEqual	LessEqualpolicy_1/log_std/BiasAdd policy_1/clip_by_value/Minimum/y*
T0
�
Cgradients/policy_1/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/policy_1/clip_by_value/Minimum_grad/Shape5gradients/policy_1/clip_by_value/Minimum_grad/Shape_1*
T0
�
4gradients/policy_1/clip_by_value/Minimum_grad/SelectSelect7gradients/policy_1/clip_by_value/Minimum_grad/LessEqual>gradients/policy_1/clip_by_value_grad/tuple/control_dependency3gradients/policy_1/clip_by_value/Minimum_grad/zeros*
T0
�
1gradients/policy_1/clip_by_value/Minimum_grad/SumSum4gradients/policy_1/clip_by_value/Minimum_grad/SelectCgradients/policy_1/clip_by_value/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
5gradients/policy_1/clip_by_value/Minimum_grad/ReshapeReshape1gradients/policy_1/clip_by_value/Minimum_grad/Sum3gradients/policy_1/clip_by_value/Minimum_grad/Shape*
T0*
Tshape0
�
6gradients/policy_1/clip_by_value/Minimum_grad/Select_1Select7gradients/policy_1/clip_by_value/Minimum_grad/LessEqual3gradients/policy_1/clip_by_value/Minimum_grad/zeros>gradients/policy_1/clip_by_value_grad/tuple/control_dependency*
T0
�
3gradients/policy_1/clip_by_value/Minimum_grad/Sum_1Sum6gradients/policy_1/clip_by_value/Minimum_grad/Select_1Egradients/policy_1/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
7gradients/policy_1/clip_by_value/Minimum_grad/Reshape_1Reshape3gradients/policy_1/clip_by_value/Minimum_grad/Sum_15gradients/policy_1/clip_by_value/Minimum_grad/Shape_1*
T0*
Tshape0
�
>gradients/policy_1/clip_by_value/Minimum_grad/tuple/group_depsNoOp6^gradients/policy_1/clip_by_value/Minimum_grad/Reshape8^gradients/policy_1/clip_by_value/Minimum_grad/Reshape_1
�
Fgradients/policy_1/clip_by_value/Minimum_grad/tuple/control_dependencyIdentity5gradients/policy_1/clip_by_value/Minimum_grad/Reshape?^gradients/policy_1/clip_by_value/Minimum_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/policy_1/clip_by_value/Minimum_grad/Reshape
�
Hgradients/policy_1/clip_by_value/Minimum_grad/tuple/control_dependency_1Identity7gradients/policy_1/clip_by_value/Minimum_grad/Reshape_1?^gradients/policy_1/clip_by_value/Minimum_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy_1/clip_by_value/Minimum_grad/Reshape_1
�
3gradients/policy_1/log_std/BiasAdd_grad/BiasAddGradBiasAddGradFgradients/policy_1/clip_by_value/Minimum_grad/tuple/control_dependency*
T0*
data_formatNHWC
�
8gradients/policy_1/log_std/BiasAdd_grad/tuple/group_depsNoOpG^gradients/policy_1/clip_by_value/Minimum_grad/tuple/control_dependency4^gradients/policy_1/log_std/BiasAdd_grad/BiasAddGrad
�
@gradients/policy_1/log_std/BiasAdd_grad/tuple/control_dependencyIdentityFgradients/policy_1/clip_by_value/Minimum_grad/tuple/control_dependency9^gradients/policy_1/log_std/BiasAdd_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/policy_1/clip_by_value/Minimum_grad/Reshape
�
Bgradients/policy_1/log_std/BiasAdd_grad/tuple/control_dependency_1Identity3gradients/policy_1/log_std/BiasAdd_grad/BiasAddGrad9^gradients/policy_1/log_std/BiasAdd_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/policy_1/log_std/BiasAdd_grad/BiasAddGrad
�
-gradients/policy_1/log_std/MatMul_grad/MatMulMatMul@gradients/policy_1/log_std/BiasAdd_grad/tuple/control_dependencypolicy/log_std/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
/gradients/policy_1/log_std/MatMul_grad/MatMul_1MatMul policy/main_graph_0/hidden_1/Mul@gradients/policy_1/log_std/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
7gradients/policy_1/log_std/MatMul_grad/tuple/group_depsNoOp.^gradients/policy_1/log_std/MatMul_grad/MatMul0^gradients/policy_1/log_std/MatMul_grad/MatMul_1
�
?gradients/policy_1/log_std/MatMul_grad/tuple/control_dependencyIdentity-gradients/policy_1/log_std/MatMul_grad/MatMul8^gradients/policy_1/log_std/MatMul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/policy_1/log_std/MatMul_grad/MatMul
�
Agradients/policy_1/log_std/MatMul_grad/tuple/control_dependency_1Identity/gradients/policy_1/log_std/MatMul_grad/MatMul_18^gradients/policy_1/log_std/MatMul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/policy_1/log_std/MatMul_grad/MatMul_1
�
gradients/AddN_7AddN:gradients/policy_1/mu/MatMul_grad/tuple/control_dependency?gradients/policy_1/log_std/MatMul_grad/tuple/control_dependency*
T0*;
_class1
/-loc:@gradients/policy_1/mu/MatMul_grad/MatMul*
N
}
5gradients/policy/main_graph_0/hidden_1/Mul_grad/ShapeShape$policy/main_graph_0/hidden_1/BiasAdd*
T0*
out_type0

7gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape_1Shape$policy/main_graph_0/hidden_1/Sigmoid*
T0*
out_type0
�
Egradients/policy/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape7gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0
{
3gradients/policy/main_graph_0/hidden_1/Mul_grad/MulMulgradients/AddN_7$policy/main_graph_0/hidden_1/Sigmoid*
T0
�
3gradients/policy/main_graph_0/hidden_1/Mul_grad/SumSum3gradients/policy/main_graph_0/hidden_1/Mul_grad/MulEgradients/policy/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
7gradients/policy/main_graph_0/hidden_1/Mul_grad/ReshapeReshape3gradients/policy/main_graph_0/hidden_1/Mul_grad/Sum5gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0
}
5gradients/policy/main_graph_0/hidden_1/Mul_grad/Mul_1Mul$policy/main_graph_0/hidden_1/BiasAddgradients/AddN_7*
T0
�
5gradients/policy/main_graph_0/hidden_1/Mul_grad/Sum_1Sum5gradients/policy/main_graph_0/hidden_1/Mul_grad/Mul_1Ggradients/policy/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
9gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape5gradients/policy/main_graph_0/hidden_1/Mul_grad/Sum_17gradients/policy/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
@gradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp8^gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1
�
Hgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity7gradients/policy/main_graph_0/hidden_1/Mul_grad/ReshapeA^gradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape
�
Jgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity9gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1A^gradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape_1
�
?gradients/policy/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad$policy/main_graph_0/hidden_1/SigmoidJgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
�
gradients/AddN_8AddNHgradients/policy/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency?gradients/policy/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape*
N
�
?gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_8*
T0*
data_formatNHWC
�
Dgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_8@^gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
�
Lgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_8E^gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_1/Mul_grad/Reshape
�
Ngradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity?gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradE^gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/policy/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
�
9gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulLgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency(policy/main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
;gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMul policy/main_graph_0/hidden_0/MulLgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Cgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp:^gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul<^gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1
�
Kgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity9gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMulD^gradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul
�
Mgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity;gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1D^gradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/policy/main_graph_0/hidden_1/MatMul_grad/MatMul_1
}
5gradients/policy/main_graph_0/hidden_0/Mul_grad/ShapeShape$policy/main_graph_0/hidden_0/BiasAdd*
T0*
out_type0

7gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape_1Shape$policy/main_graph_0/hidden_0/Sigmoid*
T0*
out_type0
�
Egradients/policy/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs5gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape7gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
�
3gradients/policy/main_graph_0/hidden_0/Mul_grad/MulMulKgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency$policy/main_graph_0/hidden_0/Sigmoid*
T0
�
3gradients/policy/main_graph_0/hidden_0/Mul_grad/SumSum3gradients/policy/main_graph_0/hidden_0/Mul_grad/MulEgradients/policy/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
7gradients/policy/main_graph_0/hidden_0/Mul_grad/ReshapeReshape3gradients/policy/main_graph_0/hidden_0/Mul_grad/Sum5gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
5gradients/policy/main_graph_0/hidden_0/Mul_grad/Mul_1Mul$policy/main_graph_0/hidden_0/BiasAddKgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
5gradients/policy/main_graph_0/hidden_0/Mul_grad/Sum_1Sum5gradients/policy/main_graph_0/hidden_0/Mul_grad/Mul_1Ggradients/policy/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
9gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape5gradients/policy/main_graph_0/hidden_0/Mul_grad/Sum_17gradients/policy/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
@gradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp8^gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1
�
Hgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity7gradients/policy/main_graph_0/hidden_0/Mul_grad/ReshapeA^gradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape
�
Jgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity9gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1A^gradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape_1
�
?gradients/policy/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad$policy/main_graph_0/hidden_0/SigmoidJgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
gradients/AddN_9AddNHgradients/policy/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency?gradients/policy/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape*
N
�
?gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_9*
T0*
data_formatNHWC
�
Dgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_9@^gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
�
Lgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_9E^gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/policy/main_graph_0/hidden_0/Mul_grad/Reshape
�
Ngradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity?gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradE^gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*R
_classH
FDloc:@gradients/policy/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
�
9gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulLgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency(policy/main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
;gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulnormalized_stateLgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Cgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp:^gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul<^gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1
�
Kgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity9gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMulD^gradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*L
_classB
@>loc:@gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul
�
Mgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity;gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1D^gradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients/policy/main_graph_0/hidden_0/MatMul_grad/MatMul_1
n
beta1_power/initial_valueConst*&
_class
loc:@policy/log_std/bias*
valueB
 *fff?*
dtype0

beta1_power
VariableV2*
shape: *
shared_name *&
_class
loc:@policy/log_std/bias*
dtype0*
	container 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
Z
beta1_power/readIdentitybeta1_power*
T0*&
_class
loc:@policy/log_std/bias
n
beta2_power/initial_valueConst*&
_class
loc:@policy/log_std/bias*
valueB
 *w�?*
dtype0

beta2_power
VariableV2*
shape: *
shared_name *&
_class
loc:@policy/log_std/bias*
dtype0*
	container 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
Z
beta2_power/readIdentitybeta2_power*
T0*&
_class
loc:@policy/log_std/bias
�
Tpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0
�
Jpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/ConstConst*
valueB
 *    *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0
�
Dpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zerosFillTpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorJpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*

index_type0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
2policy/main_graph_0/hidden_0/kernel/sac_policy_opt
VariableV2*
shape:	�*
shared_name *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
	container 
�
9policy/main_graph_0/hidden_0/kernel/sac_policy_opt/AssignAssign2policy/main_graph_0/hidden_0/kernel/sac_policy_optDpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
7policy/main_graph_0/hidden_0/kernel/sac_policy_opt/readIdentity2policy/main_graph_0/hidden_0/kernel/sac_policy_opt*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
Vpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0
�
Lpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0
�
Fpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zerosFillVpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorLpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*

index_type0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1
VariableV2*
shape:	�*
shared_name *6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
dtype0*
	container 
�
;policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/AssignAssign4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1Fpolicy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
9policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/readIdentity4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel
�
Bpolicy/main_graph_0/hidden_0/bias/sac_policy_opt/Initializer/zerosConst*
valueB�*    *4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0
�
0policy/main_graph_0/hidden_0/bias/sac_policy_opt
VariableV2*
shape:�*
shared_name *4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0*
	container 
�
7policy/main_graph_0/hidden_0/bias/sac_policy_opt/AssignAssign0policy/main_graph_0/hidden_0/bias/sac_policy_optBpolicy/main_graph_0/hidden_0/bias/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
5policy/main_graph_0/hidden_0/bias/sac_policy_opt/readIdentity0policy/main_graph_0/hidden_0/bias/sac_policy_opt*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
�
Dpolicy/main_graph_0/hidden_0/bias/sac_policy_opt_1/Initializer/zerosConst*
valueB�*    *4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0
�
2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1
VariableV2*
shape:�*
shared_name *4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
dtype0*
	container 
�
9policy/main_graph_0/hidden_0/bias/sac_policy_opt_1/AssignAssign2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1Dpolicy/main_graph_0/hidden_0/bias/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
7policy/main_graph_0/hidden_0/bias/sac_policy_opt_1/readIdentity2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias
�
Tpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0
�
Jpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/ConstConst*
valueB
 *    *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0
�
Dpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zerosFillTpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorJpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*

index_type0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
2policy/main_graph_0/hidden_1/kernel/sac_policy_opt
VariableV2*
shape:
��*
shared_name *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
	container 
�
9policy/main_graph_0/hidden_1/kernel/sac_policy_opt/AssignAssign2policy/main_graph_0/hidden_1/kernel/sac_policy_optDpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
7policy/main_graph_0/hidden_1/kernel/sac_policy_opt/readIdentity2policy/main_graph_0/hidden_1/kernel/sac_policy_opt*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
Vpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0
�
Lpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0
�
Fpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zerosFillVpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorLpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*

index_type0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1
VariableV2*
shape:
��*
shared_name *6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
dtype0*
	container 
�
;policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/AssignAssign4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1Fpolicy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
9policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/readIdentity4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel
�
Bpolicy/main_graph_0/hidden_1/bias/sac_policy_opt/Initializer/zerosConst*
valueB�*    *4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0
�
0policy/main_graph_0/hidden_1/bias/sac_policy_opt
VariableV2*
shape:�*
shared_name *4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0*
	container 
�
7policy/main_graph_0/hidden_1/bias/sac_policy_opt/AssignAssign0policy/main_graph_0/hidden_1/bias/sac_policy_optBpolicy/main_graph_0/hidden_1/bias/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
5policy/main_graph_0/hidden_1/bias/sac_policy_opt/readIdentity0policy/main_graph_0/hidden_1/bias/sac_policy_opt*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias
�
Dpolicy/main_graph_0/hidden_1/bias/sac_policy_opt_1/Initializer/zerosConst*
valueB�*    *4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0
�
2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1
VariableV2*
shape:�*
shared_name *4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
dtype0*
	container 
�
9policy/main_graph_0/hidden_1/bias/sac_policy_opt_1/AssignAssign2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1Dpolicy/main_graph_0/hidden_1/bias/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
7policy/main_graph_0/hidden_1/bias/sac_policy_opt_1/readIdentity2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias
�
Apolicy/mu/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *#
_class
loc:@policy/mu/kernel*
dtype0
�
7policy/mu/kernel/sac_policy_opt/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@policy/mu/kernel*
dtype0
�
1policy/mu/kernel/sac_policy_opt/Initializer/zerosFillApolicy/mu/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensor7policy/mu/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@policy/mu/kernel
�
policy/mu/kernel/sac_policy_opt
VariableV2*
shape:	�*
shared_name *#
_class
loc:@policy/mu/kernel*
dtype0*
	container 
�
&policy/mu/kernel/sac_policy_opt/AssignAssignpolicy/mu/kernel/sac_policy_opt1policy/mu/kernel/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(

$policy/mu/kernel/sac_policy_opt/readIdentitypolicy/mu/kernel/sac_policy_opt*
T0*#
_class
loc:@policy/mu/kernel
�
Cpolicy/mu/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *#
_class
loc:@policy/mu/kernel*
dtype0
�
9policy/mu/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *#
_class
loc:@policy/mu/kernel*
dtype0
�
3policy/mu/kernel/sac_policy_opt_1/Initializer/zerosFillCpolicy/mu/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensor9policy/mu/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*

index_type0*#
_class
loc:@policy/mu/kernel
�
!policy/mu/kernel/sac_policy_opt_1
VariableV2*
shape:	�*
shared_name *#
_class
loc:@policy/mu/kernel*
dtype0*
	container 
�
(policy/mu/kernel/sac_policy_opt_1/AssignAssign!policy/mu/kernel/sac_policy_opt_13policy/mu/kernel/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(
�
&policy/mu/kernel/sac_policy_opt_1/readIdentity!policy/mu/kernel/sac_policy_opt_1*
T0*#
_class
loc:@policy/mu/kernel
�
/policy/mu/bias/sac_policy_opt/Initializer/zerosConst*
valueB*    *!
_class
loc:@policy/mu/bias*
dtype0
�
policy/mu/bias/sac_policy_opt
VariableV2*
shape:*
shared_name *!
_class
loc:@policy/mu/bias*
dtype0*
	container 
�
$policy/mu/bias/sac_policy_opt/AssignAssignpolicy/mu/bias/sac_policy_opt/policy/mu/bias/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
y
"policy/mu/bias/sac_policy_opt/readIdentitypolicy/mu/bias/sac_policy_opt*
T0*!
_class
loc:@policy/mu/bias
�
1policy/mu/bias/sac_policy_opt_1/Initializer/zerosConst*
valueB*    *!
_class
loc:@policy/mu/bias*
dtype0
�
policy/mu/bias/sac_policy_opt_1
VariableV2*
shape:*
shared_name *!
_class
loc:@policy/mu/bias*
dtype0*
	container 
�
&policy/mu/bias/sac_policy_opt_1/AssignAssignpolicy/mu/bias/sac_policy_opt_11policy/mu/bias/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
}
$policy/mu/bias/sac_policy_opt_1/readIdentitypolicy/mu/bias/sac_policy_opt_1*
T0*!
_class
loc:@policy/mu/bias
�
Fpolicy/log_std/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *(
_class
loc:@policy/log_std/kernel*
dtype0
�
<policy/log_std/kernel/sac_policy_opt/Initializer/zeros/ConstConst*
valueB
 *    *(
_class
loc:@policy/log_std/kernel*
dtype0
�
6policy/log_std/kernel/sac_policy_opt/Initializer/zerosFillFpolicy/log_std/kernel/sac_policy_opt/Initializer/zeros/shape_as_tensor<policy/log_std/kernel/sac_policy_opt/Initializer/zeros/Const*
T0*

index_type0*(
_class
loc:@policy/log_std/kernel
�
$policy/log_std/kernel/sac_policy_opt
VariableV2*
shape:	�*
shared_name *(
_class
loc:@policy/log_std/kernel*
dtype0*
	container 
�
+policy/log_std/kernel/sac_policy_opt/AssignAssign$policy/log_std/kernel/sac_policy_opt6policy/log_std/kernel/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
�
)policy/log_std/kernel/sac_policy_opt/readIdentity$policy/log_std/kernel/sac_policy_opt*
T0*(
_class
loc:@policy/log_std/kernel
�
Hpolicy/log_std/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *(
_class
loc:@policy/log_std/kernel*
dtype0
�
>policy/log_std/kernel/sac_policy_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *(
_class
loc:@policy/log_std/kernel*
dtype0
�
8policy/log_std/kernel/sac_policy_opt_1/Initializer/zerosFillHpolicy/log_std/kernel/sac_policy_opt_1/Initializer/zeros/shape_as_tensor>policy/log_std/kernel/sac_policy_opt_1/Initializer/zeros/Const*
T0*

index_type0*(
_class
loc:@policy/log_std/kernel
�
&policy/log_std/kernel/sac_policy_opt_1
VariableV2*
shape:	�*
shared_name *(
_class
loc:@policy/log_std/kernel*
dtype0*
	container 
�
-policy/log_std/kernel/sac_policy_opt_1/AssignAssign&policy/log_std/kernel/sac_policy_opt_18policy/log_std/kernel/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
�
+policy/log_std/kernel/sac_policy_opt_1/readIdentity&policy/log_std/kernel/sac_policy_opt_1*
T0*(
_class
loc:@policy/log_std/kernel
�
4policy/log_std/bias/sac_policy_opt/Initializer/zerosConst*
valueB*    *&
_class
loc:@policy/log_std/bias*
dtype0
�
"policy/log_std/bias/sac_policy_opt
VariableV2*
shape:*
shared_name *&
_class
loc:@policy/log_std/bias*
dtype0*
	container 
�
)policy/log_std/bias/sac_policy_opt/AssignAssign"policy/log_std/bias/sac_policy_opt4policy/log_std/bias/sac_policy_opt/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
'policy/log_std/bias/sac_policy_opt/readIdentity"policy/log_std/bias/sac_policy_opt*
T0*&
_class
loc:@policy/log_std/bias
�
6policy/log_std/bias/sac_policy_opt_1/Initializer/zerosConst*
valueB*    *&
_class
loc:@policy/log_std/bias*
dtype0
�
$policy/log_std/bias/sac_policy_opt_1
VariableV2*
shape:*
shared_name *&
_class
loc:@policy/log_std/bias*
dtype0*
	container 
�
+policy/log_std/bias/sac_policy_opt_1/AssignAssign$policy/log_std/bias/sac_policy_opt_16policy/log_std/bias/sac_policy_opt_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
)policy/log_std/bias/sac_policy_opt_1/readIdentity$policy/log_std/bias/sac_policy_opt_1*
T0*&
_class
loc:@policy/log_std/bias
A
sac_policy_opt/beta1Const*
valueB
 *fff?*
dtype0
A
sac_policy_opt/beta2Const*
valueB
 *w�?*
dtype0
C
sac_policy_opt/epsilonConst*
valueB
 *w�+2*
dtype0
�
Csac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdam#policy/main_graph_0/hidden_0/kernel2policy/main_graph_0/hidden_0/kernel/sac_policy_opt4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonMgradients/policy/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
use_nesterov( 
�
Asac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdam!policy/main_graph_0/hidden_0/bias0policy/main_graph_0/hidden_0/bias/sac_policy_opt2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonNgradients/policy/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
use_nesterov( 
�
Csac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdam#policy/main_graph_0/hidden_1/kernel2policy/main_graph_0/hidden_1/kernel/sac_policy_opt4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonMgradients/policy/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
use_nesterov( 
�
Asac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdam!policy/main_graph_0/hidden_1/bias0policy/main_graph_0/hidden_1/bias/sac_policy_opt2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonNgradients/policy/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
use_nesterov( 
�
0sac_policy_opt/update_policy/mu/kernel/ApplyAdam	ApplyAdampolicy/mu/kernelpolicy/mu/kernel/sac_policy_opt!policy/mu/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilon<gradients/policy_1/mu/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@policy/mu/kernel*
use_nesterov( 
�
.sac_policy_opt/update_policy/mu/bias/ApplyAdam	ApplyAdampolicy/mu/biaspolicy/mu/bias/sac_policy_optpolicy/mu/bias/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilon=gradients/policy_1/mu/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*!
_class
loc:@policy/mu/bias*
use_nesterov( 
�
5sac_policy_opt/update_policy/log_std/kernel/ApplyAdam	ApplyAdampolicy/log_std/kernel$policy/log_std/kernel/sac_policy_opt&policy/log_std/kernel/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonAgradients/policy_1/log_std/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*(
_class
loc:@policy/log_std/kernel*
use_nesterov( 
�
3sac_policy_opt/update_policy/log_std/bias/ApplyAdam	ApplyAdampolicy/log_std/bias"policy/log_std/bias/sac_policy_opt$policy/log_std/bias/sac_policy_opt_1beta1_power/readbeta2_power/readVariable_1/readsac_policy_opt/beta1sac_policy_opt/beta2sac_policy_opt/epsilonBgradients/policy_1/log_std/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@policy/log_std/bias*
use_nesterov( 
�
sac_policy_opt/mulMulbeta1_power/readsac_policy_opt/beta14^sac_policy_opt/update_policy/log_std/bias/ApplyAdam6^sac_policy_opt/update_policy/log_std/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam/^sac_policy_opt/update_policy/mu/bias/ApplyAdam1^sac_policy_opt/update_policy/mu/kernel/ApplyAdam*
T0*&
_class
loc:@policy/log_std/bias
�
sac_policy_opt/AssignAssignbeta1_powersac_policy_opt/mul*
use_locking( *
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
sac_policy_opt/mul_1Mulbeta2_power/readsac_policy_opt/beta24^sac_policy_opt/update_policy/log_std/bias/ApplyAdam6^sac_policy_opt/update_policy/log_std/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam/^sac_policy_opt/update_policy/mu/bias/ApplyAdam1^sac_policy_opt/update_policy/mu/kernel/ApplyAdam*
T0*&
_class
loc:@policy/log_std/bias
�
sac_policy_opt/Assign_1Assignbeta2_powersac_policy_opt/mul_1*
use_locking( *
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
sac_policy_optNoOp^sac_policy_opt/Assign^sac_policy_opt/Assign_14^sac_policy_opt/update_policy/log_std/bias/ApplyAdam6^sac_policy_opt/update_policy/log_std/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_0/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_0/kernel/ApplyAdamB^sac_policy_opt/update_policy/main_graph_0/hidden_1/bias/ApplyAdamD^sac_policy_opt/update_policy/main_graph_0/hidden_1/kernel/ApplyAdam/^sac_policy_opt/update_policy/mu/bias/ApplyAdam1^sac_policy_opt/update_policy/mu/kernel/ApplyAdam
K
gradients_1/ShapeConst^sac_policy_opt*
valueB *
dtype0
S
gradients_1/grad_ys_0Const^sac_policy_opt*
valueB
 *  �?*
dtype0
]
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0
S
'gradients_1/add_8_grad/tuple/group_depsNoOp^gradients_1/Fill^sac_policy_opt
�
/gradients_1/add_8_grad/tuple/control_dependencyIdentitygradients_1/Fill(^gradients_1/add_8_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
�
1gradients_1/add_8_grad/tuple/control_dependency_1Identitygradients_1/Fill(^gradients_1/add_8_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
r
'gradients_1/add_7_grad/tuple/group_depsNoOp0^gradients_1/add_8_grad/tuple/control_dependency^sac_policy_opt
�
/gradients_1/add_7_grad/tuple/control_dependencyIdentity/gradients_1/add_8_grad/tuple/control_dependency(^gradients_1/add_7_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
�
1gradients_1/add_7_grad/tuple/control_dependency_1Identity/gradients_1/add_8_grad/tuple/control_dependency(^gradients_1/add_7_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
d
%gradients_1/Mean_8_grad/Reshape/shapeConst^sac_policy_opt*
valueB:*
dtype0
�
gradients_1/Mean_8_grad/ReshapeReshape1gradients_1/add_8_grad/tuple/control_dependency_1%gradients_1/Mean_8_grad/Reshape/shape*
T0*
Tshape0
\
gradients_1/Mean_8_grad/ConstConst^sac_policy_opt*
valueB:*
dtype0

gradients_1/Mean_8_grad/TileTilegradients_1/Mean_8_grad/Reshapegradients_1/Mean_8_grad/Const*

Tmultiples0*
T0
]
gradients_1/Mean_8_grad/Const_1Const^sac_policy_opt*
valueB
 *  �?*
dtype0
r
gradients_1/Mean_8_grad/truedivRealDivgradients_1/Mean_8_grad/Tilegradients_1/Mean_8_grad/Const_1*
T0
d
%gradients_1/Mean_2_grad/Reshape/shapeConst^sac_policy_opt*
valueB:*
dtype0
�
gradients_1/Mean_2_grad/ReshapeReshape/gradients_1/add_7_grad/tuple/control_dependency%gradients_1/Mean_2_grad/Reshape/shape*
T0*
Tshape0
\
gradients_1/Mean_2_grad/ConstConst^sac_policy_opt*
valueB:*
dtype0

gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Const*

Tmultiples0*
T0
]
gradients_1/Mean_2_grad/Const_1Const^sac_policy_opt*
valueB
 *  �?*
dtype0
r
gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Const_1*
T0
d
%gradients_1/Mean_3_grad/Reshape/shapeConst^sac_policy_opt*
valueB:*
dtype0
�
gradients_1/Mean_3_grad/ReshapeReshape1gradients_1/add_7_grad/tuple/control_dependency_1%gradients_1/Mean_3_grad/Reshape/shape*
T0*
Tshape0
\
gradients_1/Mean_3_grad/ConstConst^sac_policy_opt*
valueB:*
dtype0

gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Const*

Tmultiples0*
T0
]
gradients_1/Mean_3_grad/Const_1Const^sac_policy_opt*
valueB
 *  �?*
dtype0
r
gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Const_1*
T0
p
%gradients_1/Mean_8/input_grad/unstackUnpackgradients_1/Mean_8_grad/truediv*
T0*	
num*

axis 
p
%gradients_1/Mean_2/input_grad/unstackUnpackgradients_1/Mean_2_grad/truediv*
T0*	
num*

axis 
p
%gradients_1/Mean_3/input_grad/unstackUnpackgradients_1/Mean_3_grad/truediv*
T0*	
num*

axis 
Z
gradients_1/mul_14_grad/MulMul%gradients_1/Mean_8/input_grad/unstackMean_7*
T0
^
gradients_1/mul_14_grad/Mul_1Mul%gradients_1/Mean_8/input_grad/unstackmul_14/x*
T0

(gradients_1/mul_14_grad/tuple/group_depsNoOp^gradients_1/mul_14_grad/Mul^gradients_1/mul_14_grad/Mul_1^sac_policy_opt
�
0gradients_1/mul_14_grad/tuple/control_dependencyIdentitygradients_1/mul_14_grad/Mul)^gradients_1/mul_14_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/mul_14_grad/Mul
�
2gradients_1/mul_14_grad/tuple/control_dependency_1Identitygradients_1/mul_14_grad/Mul_1)^gradients_1/mul_14_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients_1/mul_14_grad/Mul_1
W
gradients_1/mul_5_grad/MulMul%gradients_1/Mean_2/input_grad/unstackMean*
T0
\
gradients_1/mul_5_grad/Mul_1Mul%gradients_1/Mean_2/input_grad/unstackmul_5/x*
T0
|
'gradients_1/mul_5_grad/tuple/group_depsNoOp^gradients_1/mul_5_grad/Mul^gradients_1/mul_5_grad/Mul_1^sac_policy_opt
�
/gradients_1/mul_5_grad/tuple/control_dependencyIdentitygradients_1/mul_5_grad/Mul(^gradients_1/mul_5_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_5_grad/Mul
�
1gradients_1/mul_5_grad/tuple/control_dependency_1Identitygradients_1/mul_5_grad/Mul_1(^gradients_1/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_5_grad/Mul_1
Y
gradients_1/mul_7_grad/MulMul%gradients_1/Mean_3/input_grad/unstackMean_1*
T0
\
gradients_1/mul_7_grad/Mul_1Mul%gradients_1/Mean_3/input_grad/unstackmul_7/x*
T0
|
'gradients_1/mul_7_grad/tuple/group_depsNoOp^gradients_1/mul_7_grad/Mul^gradients_1/mul_7_grad/Mul_1^sac_policy_opt
�
/gradients_1/mul_7_grad/tuple/control_dependencyIdentitygradients_1/mul_7_grad/Mul(^gradients_1/mul_7_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_7_grad/Mul
�
1gradients_1/mul_7_grad/tuple/control_dependency_1Identitygradients_1/mul_7_grad/Mul_1(^gradients_1/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_7_grad/Mul_1
k
%gradients_1/Mean_7_grad/Reshape/shapeConst^sac_policy_opt*
valueB"      *
dtype0
�
gradients_1/Mean_7_grad/ReshapeReshape2gradients_1/mul_14_grad/tuple/control_dependency_1%gradients_1/Mean_7_grad/Reshape/shape*
T0*
Tshape0
X
gradients_1/Mean_7_grad/ShapeShapemul_13^sac_policy_opt*
T0*
out_type0

gradients_1/Mean_7_grad/TileTilegradients_1/Mean_7_grad/Reshapegradients_1/Mean_7_grad/Shape*

Tmultiples0*
T0
Z
gradients_1/Mean_7_grad/Shape_1Shapemul_13^sac_policy_opt*
T0*
out_type0
Y
gradients_1/Mean_7_grad/Shape_2Const^sac_policy_opt*
valueB *
dtype0
\
gradients_1/Mean_7_grad/ConstConst^sac_policy_opt*
valueB: *
dtype0
�
gradients_1/Mean_7_grad/ProdProdgradients_1/Mean_7_grad/Shape_1gradients_1/Mean_7_grad/Const*

Tidx0*
	keep_dims( *
T0
^
gradients_1/Mean_7_grad/Const_1Const^sac_policy_opt*
valueB: *
dtype0
�
gradients_1/Mean_7_grad/Prod_1Prodgradients_1/Mean_7_grad/Shape_2gradients_1/Mean_7_grad/Const_1*

Tidx0*
	keep_dims( *
T0
\
!gradients_1/Mean_7_grad/Maximum/yConst^sac_policy_opt*
value	B :*
dtype0
v
gradients_1/Mean_7_grad/MaximumMaximumgradients_1/Mean_7_grad/Prod_1!gradients_1/Mean_7_grad/Maximum/y*
T0
t
 gradients_1/Mean_7_grad/floordivFloorDivgradients_1/Mean_7_grad/Prodgradients_1/Mean_7_grad/Maximum*
T0
n
gradients_1/Mean_7_grad/CastCast gradients_1/Mean_7_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_7_grad/truedivRealDivgradients_1/Mean_7_grad/Tilegradients_1/Mean_7_grad/Cast*
T0
i
#gradients_1/Mean_grad/Reshape/shapeConst^sac_policy_opt*
valueB"      *
dtype0
�
gradients_1/Mean_grad/ReshapeReshape1gradients_1/mul_5_grad/tuple/control_dependency_1#gradients_1/Mean_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_grad/ShapeShapemul_4^sac_policy_opt*
T0*
out_type0
y
gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Shape*

Tmultiples0*
T0
W
gradients_1/Mean_grad/Shape_1Shapemul_4^sac_policy_opt*
T0*
out_type0
W
gradients_1/Mean_grad/Shape_2Const^sac_policy_opt*
valueB *
dtype0
Z
gradients_1/Mean_grad/ConstConst^sac_policy_opt*
valueB: *
dtype0
�
gradients_1/Mean_grad/ProdProdgradients_1/Mean_grad/Shape_1gradients_1/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
\
gradients_1/Mean_grad/Const_1Const^sac_policy_opt*
valueB: *
dtype0
�
gradients_1/Mean_grad/Prod_1Prodgradients_1/Mean_grad/Shape_2gradients_1/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
Z
gradients_1/Mean_grad/Maximum/yConst^sac_policy_opt*
value	B :*
dtype0
p
gradients_1/Mean_grad/MaximumMaximumgradients_1/Mean_grad/Prod_1gradients_1/Mean_grad/Maximum/y*
T0
n
gradients_1/Mean_grad/floordivFloorDivgradients_1/Mean_grad/Prodgradients_1/Mean_grad/Maximum*
T0
j
gradients_1/Mean_grad/CastCastgradients_1/Mean_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Cast*
T0
k
%gradients_1/Mean_1_grad/Reshape/shapeConst^sac_policy_opt*
valueB"      *
dtype0
�
gradients_1/Mean_1_grad/ReshapeReshape1gradients_1/mul_7_grad/tuple/control_dependency_1%gradients_1/Mean_1_grad/Reshape/shape*
T0*
Tshape0
W
gradients_1/Mean_1_grad/ShapeShapemul_6^sac_policy_opt*
T0*
out_type0

gradients_1/Mean_1_grad/TileTilegradients_1/Mean_1_grad/Reshapegradients_1/Mean_1_grad/Shape*

Tmultiples0*
T0
Y
gradients_1/Mean_1_grad/Shape_1Shapemul_6^sac_policy_opt*
T0*
out_type0
Y
gradients_1/Mean_1_grad/Shape_2Const^sac_policy_opt*
valueB *
dtype0
\
gradients_1/Mean_1_grad/ConstConst^sac_policy_opt*
valueB: *
dtype0
�
gradients_1/Mean_1_grad/ProdProdgradients_1/Mean_1_grad/Shape_1gradients_1/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0
^
gradients_1/Mean_1_grad/Const_1Const^sac_policy_opt*
valueB: *
dtype0
�
gradients_1/Mean_1_grad/Prod_1Prodgradients_1/Mean_1_grad/Shape_2gradients_1/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0
\
!gradients_1/Mean_1_grad/Maximum/yConst^sac_policy_opt*
value	B :*
dtype0
v
gradients_1/Mean_1_grad/MaximumMaximumgradients_1/Mean_1_grad/Prod_1!gradients_1/Mean_1_grad/Maximum/y*
T0
t
 gradients_1/Mean_1_grad/floordivFloorDivgradients_1/Mean_1_grad/Prodgradients_1/Mean_1_grad/Maximum*
T0
n
gradients_1/Mean_1_grad/CastCast gradients_1/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_1/Mean_1_grad/truedivRealDivgradients_1/Mean_1_grad/Tilegradients_1/Mean_1_grad/Cast*
T0
[
gradients_1/mul_13_grad/ShapeShape	ToFloat_4^sac_policy_opt*
T0*
out_type0
g
gradients_1/mul_13_grad/Shape_1ShapeSquaredDifference_2^sac_policy_opt*
T0*
out_type0
�
-gradients_1/mul_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_13_grad/Shapegradients_1/mul_13_grad/Shape_1*
T0
a
gradients_1/mul_13_grad/MulMulgradients_1/Mean_7_grad/truedivSquaredDifference_2*
T0
�
gradients_1/mul_13_grad/SumSumgradients_1/mul_13_grad/Mul-gradients_1/mul_13_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
}
gradients_1/mul_13_grad/ReshapeReshapegradients_1/mul_13_grad/Sumgradients_1/mul_13_grad/Shape*
T0*
Tshape0
Y
gradients_1/mul_13_grad/Mul_1Mul	ToFloat_4gradients_1/Mean_7_grad/truediv*
T0
�
gradients_1/mul_13_grad/Sum_1Sumgradients_1/mul_13_grad/Mul_1/gradients_1/mul_13_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
!gradients_1/mul_13_grad/Reshape_1Reshapegradients_1/mul_13_grad/Sum_1gradients_1/mul_13_grad/Shape_1*
T0*
Tshape0
�
(gradients_1/mul_13_grad/tuple/group_depsNoOp ^gradients_1/mul_13_grad/Reshape"^gradients_1/mul_13_grad/Reshape_1^sac_policy_opt
�
0gradients_1/mul_13_grad/tuple/control_dependencyIdentitygradients_1/mul_13_grad/Reshape)^gradients_1/mul_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients_1/mul_13_grad/Reshape
�
2gradients_1/mul_13_grad/tuple/control_dependency_1Identity!gradients_1/mul_13_grad/Reshape_1)^gradients_1/mul_13_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients_1/mul_13_grad/Reshape_1
X
gradients_1/mul_4_grad/ShapeShapeToFloat^sac_policy_opt*
T0*
out_type0
d
gradients_1/mul_4_grad/Shape_1ShapeSquaredDifference^sac_policy_opt*
T0*
out_type0
�
,gradients_1/mul_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_4_grad/Shapegradients_1/mul_4_grad/Shape_1*
T0
\
gradients_1/mul_4_grad/MulMulgradients_1/Mean_grad/truedivSquaredDifference*
T0
�
gradients_1/mul_4_grad/SumSumgradients_1/mul_4_grad/Mul,gradients_1/mul_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_4_grad/ReshapeReshapegradients_1/mul_4_grad/Sumgradients_1/mul_4_grad/Shape*
T0*
Tshape0
T
gradients_1/mul_4_grad/Mul_1MulToFloatgradients_1/Mean_grad/truediv*
T0
�
gradients_1/mul_4_grad/Sum_1Sumgradients_1/mul_4_grad/Mul_1.gradients_1/mul_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/mul_4_grad/Reshape_1Reshapegradients_1/mul_4_grad/Sum_1gradients_1/mul_4_grad/Shape_1*
T0*
Tshape0
�
'gradients_1/mul_4_grad/tuple/group_depsNoOp^gradients_1/mul_4_grad/Reshape!^gradients_1/mul_4_grad/Reshape_1^sac_policy_opt
�
/gradients_1/mul_4_grad/tuple/control_dependencyIdentitygradients_1/mul_4_grad/Reshape(^gradients_1/mul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_4_grad/Reshape
�
1gradients_1/mul_4_grad/tuple/control_dependency_1Identity gradients_1/mul_4_grad/Reshape_1(^gradients_1/mul_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_4_grad/Reshape_1
Z
gradients_1/mul_6_grad/ShapeShape	ToFloat_1^sac_policy_opt*
T0*
out_type0
f
gradients_1/mul_6_grad/Shape_1ShapeSquaredDifference_1^sac_policy_opt*
T0*
out_type0
�
,gradients_1/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_6_grad/Shapegradients_1/mul_6_grad/Shape_1*
T0
`
gradients_1/mul_6_grad/MulMulgradients_1/Mean_1_grad/truedivSquaredDifference_1*
T0
�
gradients_1/mul_6_grad/SumSumgradients_1/mul_6_grad/Mul,gradients_1/mul_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_6_grad/ReshapeReshapegradients_1/mul_6_grad/Sumgradients_1/mul_6_grad/Shape*
T0*
Tshape0
X
gradients_1/mul_6_grad/Mul_1Mul	ToFloat_1gradients_1/Mean_1_grad/truediv*
T0
�
gradients_1/mul_6_grad/Sum_1Sumgradients_1/mul_6_grad/Mul_1.gradients_1/mul_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_1/mul_6_grad/Reshape_1Reshapegradients_1/mul_6_grad/Sum_1gradients_1/mul_6_grad/Shape_1*
T0*
Tshape0
�
'gradients_1/mul_6_grad/tuple/group_depsNoOp^gradients_1/mul_6_grad/Reshape!^gradients_1/mul_6_grad/Reshape_1^sac_policy_opt
�
/gradients_1/mul_6_grad/tuple/control_dependencyIdentitygradients_1/mul_6_grad/Reshape(^gradients_1/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_6_grad/Reshape
�
1gradients_1/mul_6_grad/tuple/control_dependency_1Identity gradients_1/mul_6_grad/Reshape_1(^gradients_1/mul_6_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_6_grad/Reshape_1
�
+gradients_1/SquaredDifference_2_grad/scalarConst3^gradients_1/mul_13_grad/tuple/control_dependency_1^sac_policy_opt*
valueB
 *   @*
dtype0
�
(gradients_1/SquaredDifference_2_grad/MulMul+gradients_1/SquaredDifference_2_grad/scalar2gradients_1/mul_13_grad/tuple/control_dependency_1*
T0
�
(gradients_1/SquaredDifference_2_grad/subSub$critic/value/extrinsic_value/BiasAddStopGradient_33^gradients_1/mul_13_grad/tuple/control_dependency_1^sac_policy_opt*
T0
�
*gradients_1/SquaredDifference_2_grad/mul_1Mul(gradients_1/SquaredDifference_2_grad/Mul(gradients_1/SquaredDifference_2_grad/sub*
T0
�
*gradients_1/SquaredDifference_2_grad/ShapeShape$critic/value/extrinsic_value/BiasAdd^sac_policy_opt*
T0*
out_type0
o
,gradients_1/SquaredDifference_2_grad/Shape_1ShapeStopGradient_3^sac_policy_opt*
T0*
out_type0
�
:gradients_1/SquaredDifference_2_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_2_grad/Shape,gradients_1/SquaredDifference_2_grad/Shape_1*
T0
�
(gradients_1/SquaredDifference_2_grad/SumSum*gradients_1/SquaredDifference_2_grad/mul_1:gradients_1/SquaredDifference_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
,gradients_1/SquaredDifference_2_grad/ReshapeReshape(gradients_1/SquaredDifference_2_grad/Sum*gradients_1/SquaredDifference_2_grad/Shape*
T0*
Tshape0
�
*gradients_1/SquaredDifference_2_grad/Sum_1Sum*gradients_1/SquaredDifference_2_grad/mul_1<gradients_1/SquaredDifference_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
.gradients_1/SquaredDifference_2_grad/Reshape_1Reshape*gradients_1/SquaredDifference_2_grad/Sum_1,gradients_1/SquaredDifference_2_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_2_grad/NegNeg.gradients_1/SquaredDifference_2_grad/Reshape_1*
T0
�
5gradients_1/SquaredDifference_2_grad/tuple/group_depsNoOp)^gradients_1/SquaredDifference_2_grad/Neg-^gradients_1/SquaredDifference_2_grad/Reshape^sac_policy_opt
�
=gradients_1/SquaredDifference_2_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_2_grad/Reshape6^gradients_1/SquaredDifference_2_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_2_grad/Reshape
�
?gradients_1/SquaredDifference_2_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_2_grad/Neg6^gradients_1/SquaredDifference_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_2_grad/Neg
�
)gradients_1/SquaredDifference_grad/scalarConst2^gradients_1/mul_4_grad/tuple/control_dependency_1^sac_policy_opt*
valueB
 *   @*
dtype0
�
&gradients_1/SquaredDifference_grad/MulMul)gradients_1/SquaredDifference_grad/scalar1gradients_1/mul_4_grad/tuple/control_dependency_1*
T0
�
&gradients_1/SquaredDifference_grad/subSubStopGradient_1)critic/q/q1_encoding/extrinsic_q1/BiasAdd2^gradients_1/mul_4_grad/tuple/control_dependency_1^sac_policy_opt*
T0
�
(gradients_1/SquaredDifference_grad/mul_1Mul&gradients_1/SquaredDifference_grad/Mul&gradients_1/SquaredDifference_grad/sub*
T0
k
(gradients_1/SquaredDifference_grad/ShapeShapeStopGradient_1^sac_policy_opt*
T0*
out_type0
�
*gradients_1/SquaredDifference_grad/Shape_1Shape)critic/q/q1_encoding/extrinsic_q1/BiasAdd^sac_policy_opt*
T0*
out_type0
�
8gradients_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients_1/SquaredDifference_grad/Shape*gradients_1/SquaredDifference_grad/Shape_1*
T0
�
&gradients_1/SquaredDifference_grad/SumSum(gradients_1/SquaredDifference_grad/mul_18gradients_1/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
*gradients_1/SquaredDifference_grad/ReshapeReshape&gradients_1/SquaredDifference_grad/Sum(gradients_1/SquaredDifference_grad/Shape*
T0*
Tshape0
�
(gradients_1/SquaredDifference_grad/Sum_1Sum(gradients_1/SquaredDifference_grad/mul_1:gradients_1/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
,gradients_1/SquaredDifference_grad/Reshape_1Reshape(gradients_1/SquaredDifference_grad/Sum_1*gradients_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0
d
&gradients_1/SquaredDifference_grad/NegNeg,gradients_1/SquaredDifference_grad/Reshape_1*
T0
�
3gradients_1/SquaredDifference_grad/tuple/group_depsNoOp'^gradients_1/SquaredDifference_grad/Neg+^gradients_1/SquaredDifference_grad/Reshape^sac_policy_opt
�
;gradients_1/SquaredDifference_grad/tuple/control_dependencyIdentity*gradients_1/SquaredDifference_grad/Reshape4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/SquaredDifference_grad/Reshape
�
=gradients_1/SquaredDifference_grad/tuple/control_dependency_1Identity&gradients_1/SquaredDifference_grad/Neg4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/SquaredDifference_grad/Neg
�
+gradients_1/SquaredDifference_1_grad/scalarConst2^gradients_1/mul_6_grad/tuple/control_dependency_1^sac_policy_opt*
valueB
 *   @*
dtype0
�
(gradients_1/SquaredDifference_1_grad/MulMul+gradients_1/SquaredDifference_1_grad/scalar1gradients_1/mul_6_grad/tuple/control_dependency_1*
T0
�
(gradients_1/SquaredDifference_1_grad/subSubStopGradient_1)critic/q/q2_encoding/extrinsic_q2/BiasAdd2^gradients_1/mul_6_grad/tuple/control_dependency_1^sac_policy_opt*
T0
�
*gradients_1/SquaredDifference_1_grad/mul_1Mul(gradients_1/SquaredDifference_1_grad/Mul(gradients_1/SquaredDifference_1_grad/sub*
T0
m
*gradients_1/SquaredDifference_1_grad/ShapeShapeStopGradient_1^sac_policy_opt*
T0*
out_type0
�
,gradients_1/SquaredDifference_1_grad/Shape_1Shape)critic/q/q2_encoding/extrinsic_q2/BiasAdd^sac_policy_opt*
T0*
out_type0
�
:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_1_grad/Shape,gradients_1/SquaredDifference_1_grad/Shape_1*
T0
�
(gradients_1/SquaredDifference_1_grad/SumSum*gradients_1/SquaredDifference_1_grad/mul_1:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
,gradients_1/SquaredDifference_1_grad/ReshapeReshape(gradients_1/SquaredDifference_1_grad/Sum*gradients_1/SquaredDifference_1_grad/Shape*
T0*
Tshape0
�
*gradients_1/SquaredDifference_1_grad/Sum_1Sum*gradients_1/SquaredDifference_1_grad/mul_1<gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
.gradients_1/SquaredDifference_1_grad/Reshape_1Reshape*gradients_1/SquaredDifference_1_grad/Sum_1,gradients_1/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_1_grad/NegNeg.gradients_1/SquaredDifference_1_grad/Reshape_1*
T0
�
5gradients_1/SquaredDifference_1_grad/tuple/group_depsNoOp)^gradients_1/SquaredDifference_1_grad/Neg-^gradients_1/SquaredDifference_1_grad/Reshape^sac_policy_opt
�
=gradients_1/SquaredDifference_1_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_1_grad/Reshape6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_1_grad/Reshape
�
?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_1_grad/Neg6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_1_grad/Neg
�
Agradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGrad=gradients_1/SquaredDifference_2_grad/tuple/control_dependency*
T0*
data_formatNHWC
�
Fgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp>^gradients_1/SquaredDifference_2_grad/tuple/control_dependencyB^gradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Ngradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentity=gradients_1/SquaredDifference_2_grad/tuple/control_dependencyG^gradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_2_grad/Reshape
�
Pgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1IdentityAgradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGradG^gradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*T
_classJ
HFloc:@gradients_1/critic/value/extrinsic_value/BiasAdd_grad/BiasAddGrad
�
Fgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGradBiasAddGrad=gradients_1/SquaredDifference_grad/tuple/control_dependency_1*
T0*
data_formatNHWC
�
Kgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/group_depsNoOp>^gradients_1/SquaredDifference_grad/tuple/control_dependency_1G^gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Sgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependencyIdentity=gradients_1/SquaredDifference_grad/tuple/control_dependency_1L^gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/SquaredDifference_grad/Neg
�
Ugradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGradL^gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/BiasAddGrad
�
Fgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGradBiasAddGrad?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1*
T0*
data_formatNHWC
�
Kgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/group_depsNoOp@^gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1G^gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Sgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependencyIdentity?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1L^gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_1_grad/Neg
�
Ugradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency_1IdentityFgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGradL^gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/group_deps*
T0*Y
_classO
MKloc:@gradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/BiasAddGrad
�
;gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMulMatMulNgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency(critic/value/extrinsic_value/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
=gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1MatMul!critic/value/encoder/hidden_1/MulNgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Egradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/group_depsNoOp<^gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul>^gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1^sac_policy_opt
�
Mgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity;gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMulF^gradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*N
_classD
B@loc:@gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul
�
Ogradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity=gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1F^gradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*P
_classF
DBloc:@gradients_1/critic/value/extrinsic_value/MatMul_grad/MatMul_1
�
@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMulMatMulSgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency-critic/q/q1_encoding/extrinsic_q1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Bgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1MatMul,critic/q/q1_encoding/q1_encoder/hidden_1/MulSgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Jgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/group_depsNoOpA^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMulC^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1^sac_policy_opt
�
Rgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependencyIdentity@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMulK^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul
�
Tgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency_1IdentityBgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1K^gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/MatMul_1
�
@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMulMatMulSgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency-critic/q/q2_encoding/extrinsic_q2/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Bgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1MatMul,critic/q/q2_encoding/q2_encoder/hidden_1/MulSgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Jgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/group_depsNoOpA^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMulC^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1^sac_policy_opt
�
Rgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependencyIdentity@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMulK^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul
�
Tgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency_1IdentityBgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1K^gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/MatMul_1
�
8gradients_1/critic/value/encoder/hidden_1/Mul_grad/ShapeShape%critic/value/encoder/hidden_1/BiasAdd^sac_policy_opt*
T0*
out_type0
�
:gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape_1Shape%critic/value/encoder/hidden_1/Sigmoid^sac_policy_opt*
T0*
out_type0
�
Hgradients_1/critic/value/encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape:gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape_1*
T0
�
6gradients_1/critic/value/encoder/hidden_1/Mul_grad/MulMulMgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency%critic/value/encoder/hidden_1/Sigmoid*
T0
�
6gradients_1/critic/value/encoder/hidden_1/Mul_grad/SumSum6gradients_1/critic/value/encoder/hidden_1/Mul_grad/MulHgradients_1/critic/value/encoder/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
:gradients_1/critic/value/encoder/hidden_1/Mul_grad/ReshapeReshape6gradients_1/critic/value/encoder/hidden_1/Mul_grad/Sum8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
�
8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Mul_1Mul%critic/value/encoder/hidden_1/BiasAddMgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency*
T0
�
8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Sum_1Sum8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Mul_1Jgradients_1/critic/value/encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
<gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1Reshape8gradients_1/critic/value/encoder/hidden_1/Mul_grad/Sum_1:gradients_1/critic/value/encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
Cgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/group_depsNoOp;^gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape=^gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1^sac_policy_opt
�
Kgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentity:gradients_1/critic/value/encoder/hidden_1/Mul_grad/ReshapeD^gradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape
�
Mgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependency_1Identity<gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1D^gradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape_1
�
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ShapeShape0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd^sac_policy_opt*
T0*
out_type0
�
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape_1Shape0critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid^sac_policy_opt*
T0*
out_type0
�
Sgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ShapeEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape_1*
T0
�
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/MulMulRgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency0critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid*
T0
�
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/SumSumAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/MulSgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
�
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Mul_1Mul0critic/q/q1_encoding/q1_encoder/hidden_1/BiasAddRgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency*
T0
�
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Sum_1SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Mul_1Ugradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Sum_1Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
Ngradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ReshapeH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1^sac_policy_opt
�
Vgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/ReshapeO^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape
�
Xgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1O^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape_1
�
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ShapeShape0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd^sac_policy_opt*
T0*
out_type0
�
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape_1Shape0critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid^sac_policy_opt*
T0*
out_type0
�
Sgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ShapeEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape_1*
T0
�
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/MulMulRgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency0critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid*
T0
�
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/SumSumAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/MulSgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape*
T0*
Tshape0
�
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Mul_1Mul0critic/q/q2_encoding/q2_encoder/hidden_1/BiasAddRgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency*
T0
�
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Sum_1SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Mul_1Ugradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Sum_1Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
�
Ngradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ReshapeH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1^sac_policy_opt
�
Vgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/ReshapeO^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape
�
Xgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1O^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape_1
�
Bgradients_1/critic/value/encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad%critic/value/encoder/hidden_1/SigmoidMgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
�
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q1_encoding/q1_encoder/hidden_1/SigmoidXgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
�
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q2_encoding/q2_encoder/hidden_1/SigmoidXgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
�
gradients_1/AddNAddNKgradients_1/critic/value/encoder/hidden_1/Mul_grad/tuple/control_dependencyBgradients_1/critic/value/encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape*
N
�
Bgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN*
T0*
data_formatNHWC
�
Ggradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddNC^gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Ogradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddNH^gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_1/Mul_grad/Reshape
�
Qgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityBgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGradH^gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/BiasAddGrad
�
gradients_1/AddN_1AddNVgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape*
N
�
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_1*
T0*
data_formatNHWC
�
Rgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_1N^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Zgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_1S^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/Mul_grad/Reshape
�
\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
�
gradients_1/AddN_2AddNVgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape*
N
�
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_2*
T0*
data_formatNHWC
�
Rgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_2N^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Zgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_2S^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/Mul_grad/Reshape
�
\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/BiasAddGrad
�
<gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMulMatMulOgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency)critic/value/encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
>gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1MatMul!critic/value/encoder/hidden_0/MulOgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Fgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/group_depsNoOp=^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul?^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1^sac_policy_opt
�
Ngradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentity<gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMulG^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul
�
Pgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency_1Identity>gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1G^gradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients_1/critic/value/encoder/hidden_1/MatMul_grad/MatMul_1
�
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency4critic/q/q1_encoding/q1_encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Igradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1MatMul,critic/q/q1_encoding/q1_encoder/hidden_0/MulZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Qgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMulJ^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1^sac_policy_opt
�
Ygradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMulR^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul
�
[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1R^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/MatMul_1
�
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency4critic/q/q2_encoding/q2_encoder/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Igradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1MatMul,critic/q/q2_encoding/q2_encoder/hidden_0/MulZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Qgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMulJ^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1^sac_policy_opt
�
Ygradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMulR^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul
�
[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1R^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/MatMul_1
�
8gradients_1/critic/value/encoder/hidden_0/Mul_grad/ShapeShape%critic/value/encoder/hidden_0/BiasAdd^sac_policy_opt*
T0*
out_type0
�
:gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape_1Shape%critic/value/encoder/hidden_0/Sigmoid^sac_policy_opt*
T0*
out_type0
�
Hgradients_1/critic/value/encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape:gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape_1*
T0
�
6gradients_1/critic/value/encoder/hidden_0/Mul_grad/MulMulNgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency%critic/value/encoder/hidden_0/Sigmoid*
T0
�
6gradients_1/critic/value/encoder/hidden_0/Mul_grad/SumSum6gradients_1/critic/value/encoder/hidden_0/Mul_grad/MulHgradients_1/critic/value/encoder/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
:gradients_1/critic/value/encoder/hidden_0/Mul_grad/ReshapeReshape6gradients_1/critic/value/encoder/hidden_0/Mul_grad/Sum8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Mul_1Mul%critic/value/encoder/hidden_0/BiasAddNgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Sum_1Sum8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Mul_1Jgradients_1/critic/value/encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
<gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1Reshape8gradients_1/critic/value/encoder/hidden_0/Mul_grad/Sum_1:gradients_1/critic/value/encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
Cgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/group_depsNoOp;^gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape=^gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1^sac_policy_opt
�
Kgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentity:gradients_1/critic/value/encoder/hidden_0/Mul_grad/ReshapeD^gradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape
�
Mgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependency_1Identity<gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1D^gradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape_1
�
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ShapeShape0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd^sac_policy_opt*
T0*
out_type0
�
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape_1Shape0critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid^sac_policy_opt*
T0*
out_type0
�
Sgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ShapeEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape_1*
T0
�
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/MulMulYgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency0critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid*
T0
�
Agradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/SumSumAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/MulSgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Mul_1Mul0critic/q/q1_encoding/q1_encoder/hidden_0/BiasAddYgradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
Cgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Sum_1SumCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Mul_1Ugradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Sum_1Egradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
Ngradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ReshapeH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1^sac_policy_opt
�
Vgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/ReshapeO^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape
�
Xgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1O^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape_1
�
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ShapeShape0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd^sac_policy_opt*
T0*
out_type0
�
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape_1Shape0critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid^sac_policy_opt*
T0*
out_type0
�
Sgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ShapeEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape_1*
T0
�
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/MulMulYgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency0critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid*
T0
�
Agradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/SumSumAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/MulSgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
�
Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ReshapeReshapeAgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape*
T0*
Tshape0
�
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Mul_1Mul0critic/q/q2_encoding/q2_encoder/hidden_0/BiasAddYgradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency*
T0
�
Cgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Sum_1SumCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Mul_1Ugradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1ReshapeCgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Sum_1Egradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
�
Ngradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/group_depsNoOpF^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ReshapeH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1^sac_policy_opt
�
Vgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependencyIdentityEgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/ReshapeO^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape
�
Xgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependency_1IdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1O^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape_1
�
Bgradients_1/critic/value/encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad%critic/value/encoder/hidden_0/SigmoidMgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q1_encoding/q1_encoder/hidden_0/SigmoidXgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGrad0critic/q/q2_encoding/q2_encoder/hidden_0/SigmoidXgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
�
gradients_1/AddN_3AddNKgradients_1/critic/value/encoder/hidden_0/Mul_grad/tuple/control_dependencyBgradients_1/critic/value/encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape*
N
�
Bgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_3*
T0*
data_formatNHWC
�
Ggradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_3C^gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Ogradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_3H^gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/critic/value/encoder/hidden_0/Mul_grad/Reshape
�
Qgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityBgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGradH^gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/BiasAddGrad
�
gradients_1/AddN_4AddNVgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape*
N
�
Mgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_4*
T0*
data_formatNHWC
�
Rgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_4N^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Zgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_4S^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/Mul_grad/Reshape
�
\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
�
gradients_1/AddN_5AddNVgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/tuple/control_dependencyMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape*
N
�
Mgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_5*
T0*
data_formatNHWC
�
Rgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_5N^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGrad^sac_policy_opt
�
Zgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_5S^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*X
_classN
LJloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/Mul_grad/Reshape
�
\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1IdentityMgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGradS^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/BiasAddGrad
�
<gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMulMatMulOgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency)critic/value/encoder/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
>gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1MatMulnormalized_stateOgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Fgradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/group_depsNoOp=^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul?^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1^sac_policy_opt
�
Ngradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentity<gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMulG^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul
�
Pgradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/control_dependency_1Identity>gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1G^gradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients_1/critic/value/encoder/hidden_0/MatMul_grad/MatMul_1
�
Ggradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency4critic/q/q1_encoding/q1_encoder/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Igradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1MatMulconcatZgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Qgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMulJ^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1^sac_policy_opt
�
Ygradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMulR^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul
�
[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1R^gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/MatMul_1
�
Ggradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMulMatMulZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency4critic/q/q2_encoding/q2_encoder/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
�
Igradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1MatMulconcatZgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
�
Qgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/group_depsNoOpH^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMulJ^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1^sac_policy_opt
�
Ygradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/control_dependencyIdentityGgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMulR^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*Z
_classP
NLloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul
�
[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1IdentityIgradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1R^gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/MatMul_1
�
beta1_power_1/initial_valueConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
valueB
 *fff?*
dtype0
�
beta1_power_1
VariableV2*
shape: *
shared_name *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
	container 
�
beta1_power_1/AssignAssignbeta1_power_1beta1_power_1/initial_value*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
q
beta1_power_1/readIdentitybeta1_power_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
beta2_power_1/initial_valueConst*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
valueB
 *w�?*
dtype0
�
beta2_power_1
VariableV2*
shape: *
shared_name *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
	container 
�
beta2_power_1/AssignAssignbeta2_power_1beta2_power_1/initial_value*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
q
beta2_power_1/readIdentitybeta2_power_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
Tcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0
�
Jcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/ConstConst*
valueB
 *    *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0
�
Dcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zerosFillTcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorJcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/Const*
T0*

index_type0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
2critic/value/encoder/hidden_0/kernel/sac_value_opt
VariableV2*
shape:	�*
shared_name *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
	container 
�
9critic/value/encoder/hidden_0/kernel/sac_value_opt/AssignAssign2critic/value/encoder/hidden_0/kernel/sac_value_optDcritic/value/encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
validate_shape(
�
7critic/value/encoder/hidden_0/kernel/sac_value_opt/readIdentity2critic/value/encoder/hidden_0/kernel/sac_value_opt*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
Vcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0
�
Lcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0
�
Fcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zerosFillVcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorLcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*

index_type0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
4critic/value/encoder/hidden_0/kernel/sac_value_opt_1
VariableV2*
shape:	�*
shared_name *7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
dtype0*
	container 
�
;critic/value/encoder/hidden_0/kernel/sac_value_opt_1/AssignAssign4critic/value/encoder/hidden_0/kernel/sac_value_opt_1Fcritic/value/encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
validate_shape(
�
9critic/value/encoder/hidden_0/kernel/sac_value_opt_1/readIdentity4critic/value/encoder/hidden_0/kernel/sac_value_opt_1*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel
�
Bcritic/value/encoder/hidden_0/bias/sac_value_opt/Initializer/zerosConst*
valueB�*    *5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0
�
0critic/value/encoder/hidden_0/bias/sac_value_opt
VariableV2*
shape:�*
shared_name *5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0*
	container 
�
7critic/value/encoder/hidden_0/bias/sac_value_opt/AssignAssign0critic/value/encoder/hidden_0/bias/sac_value_optBcritic/value/encoder/hidden_0/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
validate_shape(
�
5critic/value/encoder/hidden_0/bias/sac_value_opt/readIdentity0critic/value/encoder/hidden_0/bias/sac_value_opt*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias
�
Dcritic/value/encoder/hidden_0/bias/sac_value_opt_1/Initializer/zerosConst*
valueB�*    *5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0
�
2critic/value/encoder/hidden_0/bias/sac_value_opt_1
VariableV2*
shape:�*
shared_name *5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
dtype0*
	container 
�
9critic/value/encoder/hidden_0/bias/sac_value_opt_1/AssignAssign2critic/value/encoder/hidden_0/bias/sac_value_opt_1Dcritic/value/encoder/hidden_0/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
validate_shape(
�
7critic/value/encoder/hidden_0/bias/sac_value_opt_1/readIdentity2critic/value/encoder/hidden_0/bias/sac_value_opt_1*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias
�
Tcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0
�
Jcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/ConstConst*
valueB
 *    *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0
�
Dcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zerosFillTcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorJcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*

index_type0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
2critic/value/encoder/hidden_1/kernel/sac_value_opt
VariableV2*
shape:
��*
shared_name *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
	container 
�
9critic/value/encoder/hidden_1/kernel/sac_value_opt/AssignAssign2critic/value/encoder/hidden_1/kernel/sac_value_optDcritic/value/encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
validate_shape(
�
7critic/value/encoder/hidden_1/kernel/sac_value_opt/readIdentity2critic/value/encoder/hidden_1/kernel/sac_value_opt*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
Vcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0
�
Lcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0
�
Fcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zerosFillVcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorLcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*

index_type0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
4critic/value/encoder/hidden_1/kernel/sac_value_opt_1
VariableV2*
shape:
��*
shared_name *7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
dtype0*
	container 
�
;critic/value/encoder/hidden_1/kernel/sac_value_opt_1/AssignAssign4critic/value/encoder/hidden_1/kernel/sac_value_opt_1Fcritic/value/encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
validate_shape(
�
9critic/value/encoder/hidden_1/kernel/sac_value_opt_1/readIdentity4critic/value/encoder/hidden_1/kernel/sac_value_opt_1*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel
�
Bcritic/value/encoder/hidden_1/bias/sac_value_opt/Initializer/zerosConst*
valueB�*    *5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0
�
0critic/value/encoder/hidden_1/bias/sac_value_opt
VariableV2*
shape:�*
shared_name *5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0*
	container 
�
7critic/value/encoder/hidden_1/bias/sac_value_opt/AssignAssign0critic/value/encoder/hidden_1/bias/sac_value_optBcritic/value/encoder/hidden_1/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
validate_shape(
�
5critic/value/encoder/hidden_1/bias/sac_value_opt/readIdentity0critic/value/encoder/hidden_1/bias/sac_value_opt*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias
�
Dcritic/value/encoder/hidden_1/bias/sac_value_opt_1/Initializer/zerosConst*
valueB�*    *5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0
�
2critic/value/encoder/hidden_1/bias/sac_value_opt_1
VariableV2*
shape:�*
shared_name *5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
dtype0*
	container 
�
9critic/value/encoder/hidden_1/bias/sac_value_opt_1/AssignAssign2critic/value/encoder/hidden_1/bias/sac_value_opt_1Dcritic/value/encoder/hidden_1/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
validate_shape(
�
7critic/value/encoder/hidden_1/bias/sac_value_opt_1/readIdentity2critic/value/encoder/hidden_1/bias/sac_value_opt_1*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias
�
Ccritic/value/extrinsic_value/kernel/sac_value_opt/Initializer/zerosConst*
valueB	�*    *6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0
�
1critic/value/extrinsic_value/kernel/sac_value_opt
VariableV2*
shape:	�*
shared_name *6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
	container 
�
8critic/value/extrinsic_value/kernel/sac_value_opt/AssignAssign1critic/value/extrinsic_value/kernel/sac_value_optCcritic/value/extrinsic_value/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
validate_shape(
�
6critic/value/extrinsic_value/kernel/sac_value_opt/readIdentity1critic/value/extrinsic_value/kernel/sac_value_opt*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
�
Ecritic/value/extrinsic_value/kernel/sac_value_opt_1/Initializer/zerosConst*
valueB	�*    *6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0
�
3critic/value/extrinsic_value/kernel/sac_value_opt_1
VariableV2*
shape:	�*
shared_name *6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
dtype0*
	container 
�
:critic/value/extrinsic_value/kernel/sac_value_opt_1/AssignAssign3critic/value/extrinsic_value/kernel/sac_value_opt_1Ecritic/value/extrinsic_value/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
validate_shape(
�
8critic/value/extrinsic_value/kernel/sac_value_opt_1/readIdentity3critic/value/extrinsic_value/kernel/sac_value_opt_1*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel
�
Acritic/value/extrinsic_value/bias/sac_value_opt/Initializer/zerosConst*
valueB*    *4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0
�
/critic/value/extrinsic_value/bias/sac_value_opt
VariableV2*
shape:*
shared_name *4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0*
	container 
�
6critic/value/extrinsic_value/bias/sac_value_opt/AssignAssign/critic/value/extrinsic_value/bias/sac_value_optAcritic/value/extrinsic_value/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
validate_shape(
�
4critic/value/extrinsic_value/bias/sac_value_opt/readIdentity/critic/value/extrinsic_value/bias/sac_value_opt*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias
�
Ccritic/value/extrinsic_value/bias/sac_value_opt_1/Initializer/zerosConst*
valueB*    *4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0
�
1critic/value/extrinsic_value/bias/sac_value_opt_1
VariableV2*
shape:*
shared_name *4
_class*
(&loc:@critic/value/extrinsic_value/bias*
dtype0*
	container 
�
8critic/value/extrinsic_value/bias/sac_value_opt_1/AssignAssign1critic/value/extrinsic_value/bias/sac_value_opt_1Ccritic/value/extrinsic_value/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
validate_shape(
�
6critic/value/extrinsic_value/bias/sac_value_opt_1/readIdentity1critic/value/extrinsic_value/bias/sac_value_opt_1*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias
�
_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0
�
Ucritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0
�
Ocritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt
VariableV2*
shape:	�*
shared_name *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
	container 
�
Dcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optOcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
validate_shape(
�
Bcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
acritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0
�
Wcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0
�
Qcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1
VariableV2*
shape:	�*
shared_name *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
dtype0*
	container 
�
Fcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/AssignAssign?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1Qcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
validate_shape(
�
Dcritic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/readIdentity?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel
�
Mcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0
�
;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0*
	container 
�
Bcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/AssignAssign;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optMcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
validate_shape(
�
@critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/readIdentity;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias
�
Ocritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0
�
=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
dtype0*
	container 
�
Dcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1Ocritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
validate_shape(
�
Bcritic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias
�
_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0
�
Ucritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0
�
Ocritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt
VariableV2*
shape:
��*
shared_name *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
	container 
�
Dcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optOcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
validate_shape(
�
Bcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
acritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0
�
Wcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0
�
Qcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1
VariableV2*
shape:
��*
shared_name *B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
dtype0*
	container 
�
Fcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/AssignAssign?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1Qcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
validate_shape(
�
Dcritic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/readIdentity?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel
�
Mcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0
�
;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0*
	container 
�
Bcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/AssignAssign;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optMcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
validate_shape(
�
@critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/readIdentity;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias
�
Ocritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0
�
=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
dtype0*
	container 
�
Dcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/AssignAssign=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1Ocritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
validate_shape(
�
Bcritic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/readIdentity=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias
�
Hcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zerosConst*
valueB	�*    *;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0
�
6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt
VariableV2*
shape:	�*
shared_name *;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
	container 
�
=critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/AssignAssign6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optHcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
validate_shape(
�
;critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/readIdentity6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
�
Jcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zerosConst*
valueB	�*    *;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0
�
8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1
VariableV2*
shape:	�*
shared_name *;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
dtype0*
	container 
�
?critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/AssignAssign8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1Jcritic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
validate_shape(
�
=critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/readIdentity8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel
�
Fcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0
�
4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt
VariableV2*
shape:*
shared_name *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
	container 
�
;critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/AssignAssign4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optFcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
9critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/readIdentity4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
Hcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0
�
6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1
VariableV2*
shape:*
shared_name *9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
dtype0*
	container 
�
=critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/AssignAssign6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1Hcritic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
;critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/readIdentity6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0
�
Ucritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0
�
Ocritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt
VariableV2*
shape:	�*
shared_name *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
	container 
�
Dcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optOcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
validate_shape(
�
Bcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
acritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0
�
Wcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0
�
Qcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1
VariableV2*
shape:	�*
shared_name *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
dtype0*
	container 
�
Fcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/AssignAssign?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1Qcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
validate_shape(
�
Dcritic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/readIdentity?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel
�
Mcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0
�
;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0*
	container 
�
Bcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/AssignAssign;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optMcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
validate_shape(
�
@critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/readIdentity;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias
�
Ocritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0
�
=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
dtype0*
	container 
�
Dcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1Ocritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
validate_shape(
�
Bcritic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias
�
_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0
�
Ucritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0
�
Ocritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zerosFill_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/shape_as_tensorUcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt
VariableV2*
shape:
��*
shared_name *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
	container 
�
Dcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optOcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
validate_shape(
�
Bcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
acritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0
�
Wcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/ConstConst*
valueB
 *    *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0
�
Qcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zerosFillacritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/shape_as_tensorWcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros/Const*
T0*

index_type0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1
VariableV2*
shape:
��*
shared_name *B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
dtype0*
	container 
�
Fcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/AssignAssign?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1Qcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
validate_shape(
�
Dcritic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/readIdentity?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel
�
Mcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0
�
;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0*
	container 
�
Bcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/AssignAssign;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optMcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
validate_shape(
�
@critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/readIdentity;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias
�
Ocritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zerosConst*
valueB�*    *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0
�
=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1
VariableV2*
shape:�*
shared_name *@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
dtype0*
	container 
�
Dcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/AssignAssign=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1Ocritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
validate_shape(
�
Bcritic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/readIdentity=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias
�
Hcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zerosConst*
valueB	�*    *;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0
�
6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt
VariableV2*
shape:	�*
shared_name *;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
	container 
�
=critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/AssignAssign6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optHcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
validate_shape(
�
;critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/readIdentity6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
�
Jcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zerosConst*
valueB	�*    *;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0
�
8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1
VariableV2*
shape:	�*
shared_name *;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
dtype0*
	container 
�
?critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/AssignAssign8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1Jcritic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
validate_shape(
�
=critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/readIdentity8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel
�
Fcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0
�
4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt
VariableV2*
shape:*
shared_name *9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0*
	container 
�
;critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/AssignAssign4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optFcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
validate_shape(
�
9critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/readIdentity4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias
�
Hcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/Initializer/zerosConst*
valueB*    *9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0
�
6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1
VariableV2*
shape:*
shared_name *9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
dtype0*
	container 
�
=critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/AssignAssign6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1Hcritic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/Initializer/zeros*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
validate_shape(
�
;critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/readIdentity6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias
Q
sac_value_opt/beta1Const^sac_policy_opt*
valueB
 *fff?*
dtype0
Q
sac_value_opt/beta2Const^sac_policy_opt*
valueB
 *w�?*
dtype0
S
sac_value_opt/epsilonConst^sac_policy_opt*
valueB
 *w�+2*
dtype0
�
Csac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdam	ApplyAdam$critic/value/encoder/hidden_0/kernel2critic/value/encoder/hidden_0/kernel/sac_value_opt4critic/value/encoder/hidden_0/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonPgradients_1/critic/value/encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
use_nesterov( 
�
Asac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdam	ApplyAdam"critic/value/encoder/hidden_0/bias0critic/value/encoder/hidden_0/bias/sac_value_opt2critic/value/encoder/hidden_0/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonQgradients_1/critic/value/encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
use_nesterov( 
�
Csac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdam	ApplyAdam$critic/value/encoder/hidden_1/kernel2critic/value/encoder/hidden_1/kernel/sac_value_opt4critic/value/encoder/hidden_1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonPgradients_1/critic/value/encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
use_nesterov( 
�
Asac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdam	ApplyAdam"critic/value/encoder/hidden_1/bias0critic/value/encoder/hidden_1/bias/sac_value_opt2critic/value/encoder/hidden_1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonQgradients_1/critic/value/encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
use_nesterov( 
�
Bsac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam	ApplyAdam#critic/value/extrinsic_value/kernel1critic/value/extrinsic_value/kernel/sac_value_opt3critic/value/extrinsic_value/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonOgradients_1/critic/value/extrinsic_value/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
use_nesterov( 
�
@sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdam	ApplyAdam!critic/value/extrinsic_value/bias/critic/value/extrinsic_value/bias/sac_value_opt1critic/value/extrinsic_value/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonPgradients_1/critic/value/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
use_nesterov( 
�
Nsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam/critic/q/q1_encoding/q1_encoder/hidden_0/kernel=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
use_nesterov( 
�
Lsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdam	ApplyAdam-critic/q/q1_encoding/q1_encoder/hidden_0/bias;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
use_nesterov( 
�
Nsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam/critic/q/q1_encoding/q1_encoder/hidden_1/kernel=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
use_nesterov( 
�
Lsac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdam	ApplyAdam-critic/q/q1_encoding/q1_encoder/hidden_1/bias;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q1_encoding/q1_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
use_nesterov( 
�
Gsac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdam	ApplyAdam(critic/q/q1_encoding/extrinsic_q1/kernel6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonTgradients_1/critic/q/q1_encoding/extrinsic_q1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
use_nesterov( 
�
Esac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdam	ApplyAdam&critic/q/q1_encoding/extrinsic_q1/bias4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonUgradients_1/critic/q/q1_encoding/extrinsic_q1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
use_nesterov( 
�
Nsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdam	ApplyAdam/critic/q/q2_encoding/q2_encoder/hidden_0/kernel=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
use_nesterov( 
�
Lsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdam	ApplyAdam-critic/q/q2_encoding/q2_encoder/hidden_0/bias;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
use_nesterov( 
�
Nsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdam	ApplyAdam/critic/q/q2_encoding/q2_encoder/hidden_1/kernel=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon[gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
use_nesterov( 
�
Lsac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdam	ApplyAdam-critic/q/q2_encoding/q2_encoder/hidden_1/bias;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilon\gradients_1/critic/q/q2_encoding/q2_encoder/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
use_nesterov( 
�
Gsac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdam	ApplyAdam(critic/q/q2_encoding/extrinsic_q2/kernel6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonTgradients_1/critic/q/q2_encoding/extrinsic_q2/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
use_nesterov( 
�
Esac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdam	ApplyAdam&critic/q/q2_encoding/extrinsic_q2/bias4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1beta1_power_1/readbeta2_power_1/readVariable_1/readsac_value_opt/beta1sac_value_opt/beta2sac_value_opt/epsilonUgradients_1/critic/q/q2_encoding/extrinsic_q2/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
use_nesterov( 
�
sac_value_opt/mulMulbeta1_power_1/readsac_value_opt/beta1F^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdamH^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdamF^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdamH^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdamA^sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdamC^sac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
sac_value_opt/AssignAssignbeta1_power_1sac_value_opt/mul*
use_locking( *
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
sac_value_opt/mul_1Mulbeta2_power_1/readsac_value_opt/beta2F^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdamH^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdamF^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdamH^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdamA^sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdamC^sac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias
�
sac_value_opt/Assign_1Assignbeta2_power_1sac_value_opt/mul_1*
use_locking( *
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
sac_value_optNoOp^sac_policy_opt^sac_value_opt/Assign^sac_value_opt/Assign_1F^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/bias/ApplyAdamH^sac_value_opt/update_critic/q/q1_encoding/extrinsic_q1/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q1_encoding/q1_encoder/hidden_1/kernel/ApplyAdamF^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/bias/ApplyAdamH^sac_value_opt/update_critic/q/q2_encoding/extrinsic_q2/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_0/kernel/ApplyAdamM^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/bias/ApplyAdamO^sac_value_opt/update_critic/q/q2_encoding/q2_encoder/hidden_1/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_0/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_0/kernel/ApplyAdamB^sac_value_opt/update_critic/value/encoder/hidden_1/bias/ApplyAdamD^sac_value_opt/update_critic/value/encoder/hidden_1/kernel/ApplyAdamA^sac_value_opt/update_critic/value/extrinsic_value/bias/ApplyAdamC^sac_value_opt/update_critic/value/extrinsic_value/kernel/ApplyAdam
[
gradients_2/ShapeConst^sac_policy_opt^sac_value_opt*
valueB *
dtype0
c
gradients_2/grad_ys_0Const^sac_policy_opt^sac_value_opt*
valueB
 *  �?*
dtype0
]
gradients_2/FillFillgradients_2/Shapegradients_2/grad_ys_0*
T0*

index_type0
:
gradients_2/Neg_grad/NegNeggradients_2/Fill*
T0
{
%gradients_2/Mean_4_grad/Reshape/shapeConst^sac_policy_opt^sac_value_opt*
valueB"      *
dtype0
�
gradients_2/Mean_4_grad/ReshapeReshapegradients_2/Neg_grad/Neg%gradients_2/Mean_4_grad/Reshape/shape*
T0*
Tshape0
g
gradients_2/Mean_4_grad/ShapeShapemul_9^sac_policy_opt^sac_value_opt*
T0*
out_type0

gradients_2/Mean_4_grad/TileTilegradients_2/Mean_4_grad/Reshapegradients_2/Mean_4_grad/Shape*

Tmultiples0*
T0
i
gradients_2/Mean_4_grad/Shape_1Shapemul_9^sac_policy_opt^sac_value_opt*
T0*
out_type0
i
gradients_2/Mean_4_grad/Shape_2Const^sac_policy_opt^sac_value_opt*
valueB *
dtype0
l
gradients_2/Mean_4_grad/ConstConst^sac_policy_opt^sac_value_opt*
valueB: *
dtype0
�
gradients_2/Mean_4_grad/ProdProdgradients_2/Mean_4_grad/Shape_1gradients_2/Mean_4_grad/Const*

Tidx0*
	keep_dims( *
T0
n
gradients_2/Mean_4_grad/Const_1Const^sac_policy_opt^sac_value_opt*
valueB: *
dtype0
�
gradients_2/Mean_4_grad/Prod_1Prodgradients_2/Mean_4_grad/Shape_2gradients_2/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
l
!gradients_2/Mean_4_grad/Maximum/yConst^sac_policy_opt^sac_value_opt*
value	B :*
dtype0
v
gradients_2/Mean_4_grad/MaximumMaximumgradients_2/Mean_4_grad/Prod_1!gradients_2/Mean_4_grad/Maximum/y*
T0
t
 gradients_2/Mean_4_grad/floordivFloorDivgradients_2/Mean_4_grad/Prodgradients_2/Mean_4_grad/Maximum*
T0
n
gradients_2/Mean_4_grad/CastCast gradients_2/Mean_4_grad/floordiv*

SrcT0*
Truncate( *

DstT0
o
gradients_2/Mean_4_grad/truedivRealDivgradients_2/Mean_4_grad/Tilegradients_2/Mean_4_grad/Cast*
T0
f
gradients_2/mul_9_grad/ShapeShapemul_8^sac_policy_opt^sac_value_opt*
T0*
out_type0
q
gradients_2/mul_9_grad/Shape_1ShapeStopGradient_2^sac_policy_opt^sac_value_opt*
T0*
out_type0
�
,gradients_2/mul_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_9_grad/Shapegradients_2/mul_9_grad/Shape_1*
T0
[
gradients_2/mul_9_grad/MulMulgradients_2/Mean_4_grad/truedivStopGradient_2*
T0
�
gradients_2/mul_9_grad/SumSumgradients_2/mul_9_grad/Mul,gradients_2/mul_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_2/mul_9_grad/ReshapeReshapegradients_2/mul_9_grad/Sumgradients_2/mul_9_grad/Shape*
T0*
Tshape0
T
gradients_2/mul_9_grad/Mul_1Mulmul_8gradients_2/Mean_4_grad/truediv*
T0
�
gradients_2/mul_9_grad/Sum_1Sumgradients_2/mul_9_grad/Mul_1.gradients_2/mul_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_2/mul_9_grad/Reshape_1Reshapegradients_2/mul_9_grad/Sum_1gradients_2/mul_9_grad/Shape_1*
T0*
Tshape0
�
'gradients_2/mul_9_grad/tuple/group_depsNoOp^gradients_2/mul_9_grad/Reshape!^gradients_2/mul_9_grad/Reshape_1^sac_policy_opt^sac_value_opt
�
/gradients_2/mul_9_grad/tuple/control_dependencyIdentitygradients_2/mul_9_grad/Reshape(^gradients_2/mul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_2/mul_9_grad/Reshape
�
1gradients_2/mul_9_grad/tuple/control_dependency_1Identity gradients_2/mul_9_grad/Reshape_1(^gradients_2/mul_9_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/mul_9_grad/Reshape_1
r
gradients_2/mul_8_grad/ShapeShapelog_ent_coef/read^sac_policy_opt^sac_value_opt*
T0*
out_type0
l
gradients_2/mul_8_grad/Shape_1Shape	ToFloat_2^sac_policy_opt^sac_value_opt*
T0*
out_type0
�
,gradients_2/mul_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_2/mul_8_grad/Shapegradients_2/mul_8_grad/Shape_1*
T0
f
gradients_2/mul_8_grad/MulMul/gradients_2/mul_9_grad/tuple/control_dependency	ToFloat_2*
T0
�
gradients_2/mul_8_grad/SumSumgradients_2/mul_8_grad/Mul,gradients_2/mul_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_2/mul_8_grad/ReshapeReshapegradients_2/mul_8_grad/Sumgradients_2/mul_8_grad/Shape*
T0*
Tshape0
p
gradients_2/mul_8_grad/Mul_1Mullog_ent_coef/read/gradients_2/mul_9_grad/tuple/control_dependency*
T0
�
gradients_2/mul_8_grad/Sum_1Sumgradients_2/mul_8_grad/Mul_1.gradients_2/mul_8_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
�
 gradients_2/mul_8_grad/Reshape_1Reshapegradients_2/mul_8_grad/Sum_1gradients_2/mul_8_grad/Shape_1*
T0*
Tshape0
�
'gradients_2/mul_8_grad/tuple/group_depsNoOp^gradients_2/mul_8_grad/Reshape!^gradients_2/mul_8_grad/Reshape_1^sac_policy_opt^sac_value_opt
�
/gradients_2/mul_8_grad/tuple/control_dependencyIdentitygradients_2/mul_8_grad/Reshape(^gradients_2/mul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_2/mul_8_grad/Reshape
�
1gradients_2/mul_8_grad/tuple/control_dependency_1Identity gradients_2/mul_8_grad/Reshape_1(^gradients_2/mul_8_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_2/mul_8_grad/Reshape_1
i
beta1_power_2/initial_valueConst*
_class
loc:@log_ent_coef*
valueB
 *fff?*
dtype0
z
beta1_power_2
VariableV2*
shape: *
shared_name *
_class
loc:@log_ent_coef*
dtype0*
	container 
�
beta1_power_2/AssignAssignbeta1_power_2beta1_power_2/initial_value*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
W
beta1_power_2/readIdentitybeta1_power_2*
T0*
_class
loc:@log_ent_coef
i
beta2_power_2/initial_valueConst*
_class
loc:@log_ent_coef*
valueB
 *w�?*
dtype0
z
beta2_power_2
VariableV2*
shape: *
shared_name *
_class
loc:@log_ent_coef*
dtype0*
	container 
�
beta2_power_2/AssignAssignbeta2_power_2beta2_power_2/initial_value*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
W
beta2_power_2/readIdentitybeta2_power_2*
T0*
_class
loc:@log_ent_coef
|
.log_ent_coef/sac_entropy_opt/Initializer/zerosConst*
valueB
 *    *
_class
loc:@log_ent_coef*
dtype0
�
log_ent_coef/sac_entropy_opt
VariableV2*
shape: *
shared_name *
_class
loc:@log_ent_coef*
dtype0*
	container 
�
#log_ent_coef/sac_entropy_opt/AssignAssignlog_ent_coef/sac_entropy_opt.log_ent_coef/sac_entropy_opt/Initializer/zeros*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
u
!log_ent_coef/sac_entropy_opt/readIdentitylog_ent_coef/sac_entropy_opt*
T0*
_class
loc:@log_ent_coef
~
0log_ent_coef/sac_entropy_opt_1/Initializer/zerosConst*
valueB
 *    *
_class
loc:@log_ent_coef*
dtype0
�
log_ent_coef/sac_entropy_opt_1
VariableV2*
shape: *
shared_name *
_class
loc:@log_ent_coef*
dtype0*
	container 
�
%log_ent_coef/sac_entropy_opt_1/AssignAssignlog_ent_coef/sac_entropy_opt_10log_ent_coef/sac_entropy_opt_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
y
#log_ent_coef/sac_entropy_opt_1/readIdentitylog_ent_coef/sac_entropy_opt_1*
T0*
_class
loc:@log_ent_coef
c
sac_entropy_opt/beta1Const^sac_policy_opt^sac_value_opt*
valueB
 *fff?*
dtype0
c
sac_entropy_opt/beta2Const^sac_policy_opt^sac_value_opt*
valueB
 *w�?*
dtype0
e
sac_entropy_opt/epsilonConst^sac_policy_opt^sac_value_opt*
valueB
 *w�+2*
dtype0
�
-sac_entropy_opt/update_log_ent_coef/ApplyAdam	ApplyAdamlog_ent_coeflog_ent_coef/sac_entropy_optlog_ent_coef/sac_entropy_opt_1beta1_power_2/readbeta2_power_2/readVariable_1/readsac_entropy_opt/beta1sac_entropy_opt/beta2sac_entropy_opt/epsilon/gradients_2/mul_8_grad/tuple/control_dependency*
use_locking( *
T0*
_class
loc:@log_ent_coef*
use_nesterov( 
�
sac_entropy_opt/mulMulbeta1_power_2/readsac_entropy_opt/beta1.^sac_entropy_opt/update_log_ent_coef/ApplyAdam*
T0*
_class
loc:@log_ent_coef
�
sac_entropy_opt/AssignAssignbeta1_power_2sac_entropy_opt/mul*
use_locking( *
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
sac_entropy_opt/mul_1Mulbeta2_power_2/readsac_entropy_opt/beta2.^sac_entropy_opt/update_log_ent_coef/ApplyAdam*
T0*
_class
loc:@log_ent_coef
�
sac_entropy_opt/Assign_1Assignbeta2_power_2sac_entropy_opt/mul_1*
use_locking( *
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
sac_entropy_optNoOp^sac_entropy_opt/Assign^sac_entropy_opt/Assign_1.^sac_entropy_opt/update_log_ent_coef/ApplyAdam^sac_policy_opt^sac_value_opt
�
	Assign_17Assigntarget_network/running_meanrunning_mean/read*
use_locking(*
T0*.
_class$
" loc:@target_network/running_mean*
validate_shape(
�
	Assign_18Assigntarget_network/running_variancerunning_variance/read*
use_locking(*
T0*2
_class(
&$loc:@target_network/running_variance*
validate_shape(
�
	Assign_19Assign"target_network/normalization_stepsnormalization_steps/read*
use_locking(*
T0*5
_class+
)'loc:@target_network/normalization_steps*
validate_shape(
8
group_deps_1NoOp
^Assign_17
^Assign_18
^Assign_19
0
group_deps_2NoOp^group_deps^group_deps_1
C
save_1/filename/inputConst*
valueB Bmodel*
dtype0
Z
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
shape: *
dtype0
Q
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0
�#
save_1/SaveV2/tensor_namesConst*�#
value�#B�#jBVariableB
Variable_1Baction_output_shapeBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta2_powerBbeta2_power_1Bbeta2_power_2B&critic/q/q1_encoding/extrinsic_q1/biasB4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optB6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1B(critic/q/q1_encoding/extrinsic_q1/kernelB6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optB8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_0/biasB;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_0/kernelB=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_1/biasB;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_1/kernelB=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1B&critic/q/q2_encoding/extrinsic_q2/biasB4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optB6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1B(critic/q/q2_encoding/extrinsic_q2/kernelB6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optB8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_0/biasB;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_0/kernelB=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_1/biasB;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_1/kernelB=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1B"critic/value/encoder/hidden_0/biasB0critic/value/encoder/hidden_0/bias/sac_value_optB2critic/value/encoder/hidden_0/bias/sac_value_opt_1B$critic/value/encoder/hidden_0/kernelB2critic/value/encoder/hidden_0/kernel/sac_value_optB4critic/value/encoder/hidden_0/kernel/sac_value_opt_1B"critic/value/encoder/hidden_1/biasB0critic/value/encoder/hidden_1/bias/sac_value_optB2critic/value/encoder/hidden_1/bias/sac_value_opt_1B$critic/value/encoder/hidden_1/kernelB2critic/value/encoder/hidden_1/kernel/sac_value_optB4critic/value/encoder/hidden_1/kernel/sac_value_opt_1B!critic/value/extrinsic_value/biasB/critic/value/extrinsic_value/bias/sac_value_optB1critic/value/extrinsic_value/bias/sac_value_opt_1B#critic/value/extrinsic_value/kernelB1critic/value/extrinsic_value/kernel/sac_value_optB3critic/value/extrinsic_value/kernel/sac_value_opt_1Bglobal_stepBis_continuous_controlBlog_ent_coefBlog_ent_coef/sac_entropy_optBlog_ent_coef/sac_entropy_opt_1Bmemory_sizeBnormalization_stepsBpolicy/log_std/biasB"policy/log_std/bias/sac_policy_optB$policy/log_std/bias/sac_policy_opt_1Bpolicy/log_std/kernelB$policy/log_std/kernel/sac_policy_optB&policy/log_std/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_0/biasB0policy/main_graph_0/hidden_0/bias/sac_policy_optB2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_0/kernelB2policy/main_graph_0/hidden_0/kernel/sac_policy_optB4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_1/biasB0policy/main_graph_0/hidden_1/bias/sac_policy_optB2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_1/kernelB2policy/main_graph_0/hidden_1/kernel/sac_policy_optB4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1Bpolicy/mu/biasBpolicy/mu/bias/sac_policy_optBpolicy/mu/bias/sac_policy_opt_1Bpolicy/mu/kernelBpolicy/mu/kernel/sac_policy_optB!policy/mu/kernel/sac_policy_opt_1Brunning_meanBrunning_varianceB1target_network/critic/value/encoder/hidden_0/biasB3target_network/critic/value/encoder/hidden_0/kernelB1target_network/critic/value/encoder/hidden_1/biasB3target_network/critic/value/encoder/hidden_1/kernelB0target_network/critic/value/extrinsic_value/biasB2target_network/critic/value/extrinsic_value/kernelB"target_network/normalization_stepsBtarget_network/running_meanBtarget_network/running_varianceBversion_number*
dtype0
�
save_1/SaveV2/shape_and_slicesConst*�
value�B�jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�$
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariable
Variable_1action_output_shapebeta1_powerbeta1_power_1beta1_power_2beta2_powerbeta2_power_1beta2_power_2&critic/q/q1_encoding/extrinsic_q1/bias4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1(critic/q/q1_encoding/extrinsic_q1/kernel6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1-critic/q/q1_encoding/q1_encoder/hidden_0/bias;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/critic/q/q1_encoding/q1_encoder/hidden_0/kernel=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1-critic/q/q1_encoding/q1_encoder/hidden_1/bias;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/critic/q/q1_encoding/q1_encoder/hidden_1/kernel=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1&critic/q/q2_encoding/extrinsic_q2/bias4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1(critic/q/q2_encoding/extrinsic_q2/kernel6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1-critic/q/q2_encoding/q2_encoder/hidden_0/bias;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/critic/q/q2_encoding/q2_encoder/hidden_0/kernel=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1-critic/q/q2_encoding/q2_encoder/hidden_1/bias;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/critic/q/q2_encoding/q2_encoder/hidden_1/kernel=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1"critic/value/encoder/hidden_0/bias0critic/value/encoder/hidden_0/bias/sac_value_opt2critic/value/encoder/hidden_0/bias/sac_value_opt_1$critic/value/encoder/hidden_0/kernel2critic/value/encoder/hidden_0/kernel/sac_value_opt4critic/value/encoder/hidden_0/kernel/sac_value_opt_1"critic/value/encoder/hidden_1/bias0critic/value/encoder/hidden_1/bias/sac_value_opt2critic/value/encoder/hidden_1/bias/sac_value_opt_1$critic/value/encoder/hidden_1/kernel2critic/value/encoder/hidden_1/kernel/sac_value_opt4critic/value/encoder/hidden_1/kernel/sac_value_opt_1!critic/value/extrinsic_value/bias/critic/value/extrinsic_value/bias/sac_value_opt1critic/value/extrinsic_value/bias/sac_value_opt_1#critic/value/extrinsic_value/kernel1critic/value/extrinsic_value/kernel/sac_value_opt3critic/value/extrinsic_value/kernel/sac_value_opt_1global_stepis_continuous_controllog_ent_coeflog_ent_coef/sac_entropy_optlog_ent_coef/sac_entropy_opt_1memory_sizenormalization_stepspolicy/log_std/bias"policy/log_std/bias/sac_policy_opt$policy/log_std/bias/sac_policy_opt_1policy/log_std/kernel$policy/log_std/kernel/sac_policy_opt&policy/log_std/kernel/sac_policy_opt_1!policy/main_graph_0/hidden_0/bias0policy/main_graph_0/hidden_0/bias/sac_policy_opt2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1#policy/main_graph_0/hidden_0/kernel2policy/main_graph_0/hidden_0/kernel/sac_policy_opt4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1!policy/main_graph_0/hidden_1/bias0policy/main_graph_0/hidden_1/bias/sac_policy_opt2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1#policy/main_graph_0/hidden_1/kernel2policy/main_graph_0/hidden_1/kernel/sac_policy_opt4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1policy/mu/biaspolicy/mu/bias/sac_policy_optpolicy/mu/bias/sac_policy_opt_1policy/mu/kernelpolicy/mu/kernel/sac_policy_opt!policy/mu/kernel/sac_policy_opt_1running_meanrunning_variance1target_network/critic/value/encoder/hidden_0/bias3target_network/critic/value/encoder/hidden_0/kernel1target_network/critic/value/encoder/hidden_1/bias3target_network/critic/value/encoder/hidden_1/kernel0target_network/critic/value/extrinsic_value/bias2target_network/critic/value/extrinsic_value/kernel"target_network/normalization_stepstarget_network/running_meantarget_network/running_varianceversion_number*x
dtypesn
l2j
m
save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
T0*
_class
loc:@save_1/Const
�#
save_1/RestoreV2/tensor_namesConst"/device:CPU:0*�#
value�#B�#jBVariableB
Variable_1Baction_output_shapeBbeta1_powerBbeta1_power_1Bbeta1_power_2Bbeta2_powerBbeta2_power_1Bbeta2_power_2B&critic/q/q1_encoding/extrinsic_q1/biasB4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optB6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1B(critic/q/q1_encoding/extrinsic_q1/kernelB6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optB8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_0/biasB;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_0/kernelB=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q1_encoding/q1_encoder/hidden_1/biasB;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optB=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q1_encoding/q1_encoder/hidden_1/kernelB=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optB?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1B&critic/q/q2_encoding/extrinsic_q2/biasB4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optB6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1B(critic/q/q2_encoding/extrinsic_q2/kernelB6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optB8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_0/biasB;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_0/kernelB=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1B-critic/q/q2_encoding/q2_encoder/hidden_1/biasB;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optB=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1B/critic/q/q2_encoding/q2_encoder/hidden_1/kernelB=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optB?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1B"critic/value/encoder/hidden_0/biasB0critic/value/encoder/hidden_0/bias/sac_value_optB2critic/value/encoder/hidden_0/bias/sac_value_opt_1B$critic/value/encoder/hidden_0/kernelB2critic/value/encoder/hidden_0/kernel/sac_value_optB4critic/value/encoder/hidden_0/kernel/sac_value_opt_1B"critic/value/encoder/hidden_1/biasB0critic/value/encoder/hidden_1/bias/sac_value_optB2critic/value/encoder/hidden_1/bias/sac_value_opt_1B$critic/value/encoder/hidden_1/kernelB2critic/value/encoder/hidden_1/kernel/sac_value_optB4critic/value/encoder/hidden_1/kernel/sac_value_opt_1B!critic/value/extrinsic_value/biasB/critic/value/extrinsic_value/bias/sac_value_optB1critic/value/extrinsic_value/bias/sac_value_opt_1B#critic/value/extrinsic_value/kernelB1critic/value/extrinsic_value/kernel/sac_value_optB3critic/value/extrinsic_value/kernel/sac_value_opt_1Bglobal_stepBis_continuous_controlBlog_ent_coefBlog_ent_coef/sac_entropy_optBlog_ent_coef/sac_entropy_opt_1Bmemory_sizeBnormalization_stepsBpolicy/log_std/biasB"policy/log_std/bias/sac_policy_optB$policy/log_std/bias/sac_policy_opt_1Bpolicy/log_std/kernelB$policy/log_std/kernel/sac_policy_optB&policy/log_std/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_0/biasB0policy/main_graph_0/hidden_0/bias/sac_policy_optB2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_0/kernelB2policy/main_graph_0/hidden_0/kernel/sac_policy_optB4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1B!policy/main_graph_0/hidden_1/biasB0policy/main_graph_0/hidden_1/bias/sac_policy_optB2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1B#policy/main_graph_0/hidden_1/kernelB2policy/main_graph_0/hidden_1/kernel/sac_policy_optB4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1Bpolicy/mu/biasBpolicy/mu/bias/sac_policy_optBpolicy/mu/bias/sac_policy_opt_1Bpolicy/mu/kernelBpolicy/mu/kernel/sac_policy_optB!policy/mu/kernel/sac_policy_opt_1Brunning_meanBrunning_varianceB1target_network/critic/value/encoder/hidden_0/biasB3target_network/critic/value/encoder/hidden_0/kernelB1target_network/critic/value/encoder/hidden_1/biasB3target_network/critic/value/encoder/hidden_1/kernelB0target_network/critic/value/extrinsic_value/biasB2target_network/critic/value/extrinsic_value/kernelB"target_network/normalization_stepsBtarget_network/running_meanBtarget_network/running_varianceBversion_number*
dtype0
�
!save_1/RestoreV2/shape_and_slicesConst"/device:CPU:0*�
value�B�jB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
�
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices"/device:CPU:0*x
dtypesn
l2j
�
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
�
save_1/Assign_1Assign
Variable_1save_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
�
save_1/Assign_2Assignaction_output_shapesave_1/RestoreV2:2*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(
�
save_1/Assign_3Assignbeta1_powersave_1/RestoreV2:3*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
save_1/Assign_4Assignbeta1_power_1save_1/RestoreV2:4*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
save_1/Assign_5Assignbeta1_power_2save_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
save_1/Assign_6Assignbeta2_powersave_1/RestoreV2:6*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
save_1/Assign_7Assignbeta2_power_1save_1/RestoreV2:7*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
save_1/Assign_8Assignbeta2_power_2save_1/RestoreV2:8*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
save_1/Assign_9Assign&critic/q/q1_encoding/extrinsic_q1/biassave_1/RestoreV2:9*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
save_1/Assign_10Assign4critic/q/q1_encoding/extrinsic_q1/bias/sac_value_optsave_1/RestoreV2:10*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
save_1/Assign_11Assign6critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1save_1/RestoreV2:11*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q1_encoding/extrinsic_q1/bias*
validate_shape(
�
save_1/Assign_12Assign(critic/q/q1_encoding/extrinsic_q1/kernelsave_1/RestoreV2:12*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
validate_shape(
�
save_1/Assign_13Assign6critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_optsave_1/RestoreV2:13*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
validate_shape(
�
save_1/Assign_14Assign8critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1save_1/RestoreV2:14*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q1_encoding/extrinsic_q1/kernel*
validate_shape(
�
save_1/Assign_15Assign-critic/q/q1_encoding/q1_encoder/hidden_0/biassave_1/RestoreV2:15*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_16Assign;critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_optsave_1/RestoreV2:16*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_17Assign=critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1save_1/RestoreV2:17*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_18Assign/critic/q/q1_encoding/q1_encoder/hidden_0/kernelsave_1/RestoreV2:18*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_19Assign=critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_optsave_1/RestoreV2:19*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_20Assign?critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1save_1/RestoreV2:20*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_21Assign-critic/q/q1_encoding/q1_encoder/hidden_1/biassave_1/RestoreV2:21*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_22Assign;critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_optsave_1/RestoreV2:22*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_23Assign=critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1save_1/RestoreV2:23*
use_locking(*
T0*@
_class6
42loc:@critic/q/q1_encoding/q1_encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_24Assign/critic/q/q1_encoding/q1_encoder/hidden_1/kernelsave_1/RestoreV2:24*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_25Assign=critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_optsave_1/RestoreV2:25*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_26Assign?critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1save_1/RestoreV2:26*
use_locking(*
T0*B
_class8
64loc:@critic/q/q1_encoding/q1_encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_27Assign&critic/q/q2_encoding/extrinsic_q2/biassave_1/RestoreV2:27*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
validate_shape(
�
save_1/Assign_28Assign4critic/q/q2_encoding/extrinsic_q2/bias/sac_value_optsave_1/RestoreV2:28*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
validate_shape(
�
save_1/Assign_29Assign6critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1save_1/RestoreV2:29*
use_locking(*
T0*9
_class/
-+loc:@critic/q/q2_encoding/extrinsic_q2/bias*
validate_shape(
�
save_1/Assign_30Assign(critic/q/q2_encoding/extrinsic_q2/kernelsave_1/RestoreV2:30*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
validate_shape(
�
save_1/Assign_31Assign6critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_optsave_1/RestoreV2:31*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
validate_shape(
�
save_1/Assign_32Assign8critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1save_1/RestoreV2:32*
use_locking(*
T0*;
_class1
/-loc:@critic/q/q2_encoding/extrinsic_q2/kernel*
validate_shape(
�
save_1/Assign_33Assign-critic/q/q2_encoding/q2_encoder/hidden_0/biassave_1/RestoreV2:33*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_34Assign;critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_optsave_1/RestoreV2:34*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_35Assign=critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1save_1/RestoreV2:35*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_36Assign/critic/q/q2_encoding/q2_encoder/hidden_0/kernelsave_1/RestoreV2:36*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_37Assign=critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_optsave_1/RestoreV2:37*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_38Assign?critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1save_1/RestoreV2:38*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_39Assign-critic/q/q2_encoding/q2_encoder/hidden_1/biassave_1/RestoreV2:39*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_40Assign;critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_optsave_1/RestoreV2:40*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_41Assign=critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1save_1/RestoreV2:41*
use_locking(*
T0*@
_class6
42loc:@critic/q/q2_encoding/q2_encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_42Assign/critic/q/q2_encoding/q2_encoder/hidden_1/kernelsave_1/RestoreV2:42*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_43Assign=critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_optsave_1/RestoreV2:43*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_44Assign?critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1save_1/RestoreV2:44*
use_locking(*
T0*B
_class8
64loc:@critic/q/q2_encoding/q2_encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_45Assign"critic/value/encoder/hidden_0/biassave_1/RestoreV2:45*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_46Assign0critic/value/encoder/hidden_0/bias/sac_value_optsave_1/RestoreV2:46*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_47Assign2critic/value/encoder/hidden_0/bias/sac_value_opt_1save_1/RestoreV2:47*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_48Assign$critic/value/encoder/hidden_0/kernelsave_1/RestoreV2:48*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_49Assign2critic/value/encoder/hidden_0/kernel/sac_value_optsave_1/RestoreV2:49*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_50Assign4critic/value/encoder/hidden_0/kernel/sac_value_opt_1save_1/RestoreV2:50*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_51Assign"critic/value/encoder/hidden_1/biassave_1/RestoreV2:51*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_52Assign0critic/value/encoder/hidden_1/bias/sac_value_optsave_1/RestoreV2:52*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_53Assign2critic/value/encoder/hidden_1/bias/sac_value_opt_1save_1/RestoreV2:53*
use_locking(*
T0*5
_class+
)'loc:@critic/value/encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_54Assign$critic/value/encoder/hidden_1/kernelsave_1/RestoreV2:54*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_55Assign2critic/value/encoder/hidden_1/kernel/sac_value_optsave_1/RestoreV2:55*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_56Assign4critic/value/encoder/hidden_1/kernel/sac_value_opt_1save_1/RestoreV2:56*
use_locking(*
T0*7
_class-
+)loc:@critic/value/encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_57Assign!critic/value/extrinsic_value/biassave_1/RestoreV2:57*
use_locking(*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
validate_shape(
�
save_1/Assign_58Assign/critic/value/extrinsic_value/bias/sac_value_optsave_1/RestoreV2:58*
use_locking(*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
validate_shape(
�
save_1/Assign_59Assign1critic/value/extrinsic_value/bias/sac_value_opt_1save_1/RestoreV2:59*
use_locking(*
T0*4
_class*
(&loc:@critic/value/extrinsic_value/bias*
validate_shape(
�
save_1/Assign_60Assign#critic/value/extrinsic_value/kernelsave_1/RestoreV2:60*
use_locking(*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
validate_shape(
�
save_1/Assign_61Assign1critic/value/extrinsic_value/kernel/sac_value_optsave_1/RestoreV2:61*
use_locking(*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
validate_shape(
�
save_1/Assign_62Assign3critic/value/extrinsic_value/kernel/sac_value_opt_1save_1/RestoreV2:62*
use_locking(*
T0*6
_class,
*(loc:@critic/value/extrinsic_value/kernel*
validate_shape(
�
save_1/Assign_63Assignglobal_stepsave_1/RestoreV2:63*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(
�
save_1/Assign_64Assignis_continuous_controlsave_1/RestoreV2:64*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(
�
save_1/Assign_65Assignlog_ent_coefsave_1/RestoreV2:65*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
save_1/Assign_66Assignlog_ent_coef/sac_entropy_optsave_1/RestoreV2:66*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
save_1/Assign_67Assignlog_ent_coef/sac_entropy_opt_1save_1/RestoreV2:67*
use_locking(*
T0*
_class
loc:@log_ent_coef*
validate_shape(
�
save_1/Assign_68Assignmemory_sizesave_1/RestoreV2:68*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(
�
save_1/Assign_69Assignnormalization_stepssave_1/RestoreV2:69*
use_locking(*
T0*&
_class
loc:@normalization_steps*
validate_shape(
�
save_1/Assign_70Assignpolicy/log_std/biassave_1/RestoreV2:70*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
save_1/Assign_71Assign"policy/log_std/bias/sac_policy_optsave_1/RestoreV2:71*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
save_1/Assign_72Assign$policy/log_std/bias/sac_policy_opt_1save_1/RestoreV2:72*
use_locking(*
T0*&
_class
loc:@policy/log_std/bias*
validate_shape(
�
save_1/Assign_73Assignpolicy/log_std/kernelsave_1/RestoreV2:73*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
�
save_1/Assign_74Assign$policy/log_std/kernel/sac_policy_optsave_1/RestoreV2:74*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
�
save_1/Assign_75Assign&policy/log_std/kernel/sac_policy_opt_1save_1/RestoreV2:75*
use_locking(*
T0*(
_class
loc:@policy/log_std/kernel*
validate_shape(
�
save_1/Assign_76Assign!policy/main_graph_0/hidden_0/biassave_1/RestoreV2:76*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
save_1/Assign_77Assign0policy/main_graph_0/hidden_0/bias/sac_policy_optsave_1/RestoreV2:77*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
save_1/Assign_78Assign2policy/main_graph_0/hidden_0/bias/sac_policy_opt_1save_1/RestoreV2:78*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_0/bias*
validate_shape(
�
save_1/Assign_79Assign#policy/main_graph_0/hidden_0/kernelsave_1/RestoreV2:79*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
save_1/Assign_80Assign2policy/main_graph_0/hidden_0/kernel/sac_policy_optsave_1/RestoreV2:80*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
save_1/Assign_81Assign4policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1save_1/RestoreV2:81*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_0/kernel*
validate_shape(
�
save_1/Assign_82Assign!policy/main_graph_0/hidden_1/biassave_1/RestoreV2:82*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
save_1/Assign_83Assign0policy/main_graph_0/hidden_1/bias/sac_policy_optsave_1/RestoreV2:83*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
save_1/Assign_84Assign2policy/main_graph_0/hidden_1/bias/sac_policy_opt_1save_1/RestoreV2:84*
use_locking(*
T0*4
_class*
(&loc:@policy/main_graph_0/hidden_1/bias*
validate_shape(
�
save_1/Assign_85Assign#policy/main_graph_0/hidden_1/kernelsave_1/RestoreV2:85*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
save_1/Assign_86Assign2policy/main_graph_0/hidden_1/kernel/sac_policy_optsave_1/RestoreV2:86*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
save_1/Assign_87Assign4policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1save_1/RestoreV2:87*
use_locking(*
T0*6
_class,
*(loc:@policy/main_graph_0/hidden_1/kernel*
validate_shape(
�
save_1/Assign_88Assignpolicy/mu/biassave_1/RestoreV2:88*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
�
save_1/Assign_89Assignpolicy/mu/bias/sac_policy_optsave_1/RestoreV2:89*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
�
save_1/Assign_90Assignpolicy/mu/bias/sac_policy_opt_1save_1/RestoreV2:90*
use_locking(*
T0*!
_class
loc:@policy/mu/bias*
validate_shape(
�
save_1/Assign_91Assignpolicy/mu/kernelsave_1/RestoreV2:91*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(
�
save_1/Assign_92Assignpolicy/mu/kernel/sac_policy_optsave_1/RestoreV2:92*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(
�
save_1/Assign_93Assign!policy/mu/kernel/sac_policy_opt_1save_1/RestoreV2:93*
use_locking(*
T0*#
_class
loc:@policy/mu/kernel*
validate_shape(
�
save_1/Assign_94Assignrunning_meansave_1/RestoreV2:94*
use_locking(*
T0*
_class
loc:@running_mean*
validate_shape(
�
save_1/Assign_95Assignrunning_variancesave_1/RestoreV2:95*
use_locking(*
T0*#
_class
loc:@running_variance*
validate_shape(
�
save_1/Assign_96Assign1target_network/critic/value/encoder/hidden_0/biassave_1/RestoreV2:96*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_0/bias*
validate_shape(
�
save_1/Assign_97Assign3target_network/critic/value/encoder/hidden_0/kernelsave_1/RestoreV2:97*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_0/kernel*
validate_shape(
�
save_1/Assign_98Assign1target_network/critic/value/encoder/hidden_1/biassave_1/RestoreV2:98*
use_locking(*
T0*D
_class:
86loc:@target_network/critic/value/encoder/hidden_1/bias*
validate_shape(
�
save_1/Assign_99Assign3target_network/critic/value/encoder/hidden_1/kernelsave_1/RestoreV2:99*
use_locking(*
T0*F
_class<
:8loc:@target_network/critic/value/encoder/hidden_1/kernel*
validate_shape(
�
save_1/Assign_100Assign0target_network/critic/value/extrinsic_value/biassave_1/RestoreV2:100*
use_locking(*
T0*C
_class9
75loc:@target_network/critic/value/extrinsic_value/bias*
validate_shape(
�
save_1/Assign_101Assign2target_network/critic/value/extrinsic_value/kernelsave_1/RestoreV2:101*
use_locking(*
T0*E
_class;
97loc:@target_network/critic/value/extrinsic_value/kernel*
validate_shape(
�
save_1/Assign_102Assign"target_network/normalization_stepssave_1/RestoreV2:102*
use_locking(*
T0*5
_class+
)'loc:@target_network/normalization_steps*
validate_shape(
�
save_1/Assign_103Assigntarget_network/running_meansave_1/RestoreV2:103*
use_locking(*
T0*.
_class$
" loc:@target_network/running_mean*
validate_shape(
�
save_1/Assign_104Assigntarget_network/running_variancesave_1/RestoreV2:104*
use_locking(*
T0*2
_class(
&$loc:@target_network/running_variance*
validate_shape(
�
save_1/Assign_105Assignversion_numbersave_1/RestoreV2:105*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(
�
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_100^save_1/Assign_101^save_1/Assign_102^save_1/Assign_103^save_1/Assign_104^save_1/Assign_105^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_72^save_1/Assign_73^save_1/Assign_74^save_1/Assign_75^save_1/Assign_76^save_1/Assign_77^save_1/Assign_78^save_1/Assign_79^save_1/Assign_8^save_1/Assign_80^save_1/Assign_81^save_1/Assign_82^save_1/Assign_83^save_1/Assign_84^save_1/Assign_85^save_1/Assign_86^save_1/Assign_87^save_1/Assign_88^save_1/Assign_89^save_1/Assign_9^save_1/Assign_90^save_1/Assign_91^save_1/Assign_92^save_1/Assign_93^save_1/Assign_94^save_1/Assign_95^save_1/Assign_96^save_1/Assign_97^save_1/Assign_98^save_1/Assign_99
�)
init_1NoOp^Variable/Assign^Variable_1/Assign^action_output_shape/Assign^beta1_power/Assign^beta1_power_1/Assign^beta1_power_2/Assign^beta2_power/Assign^beta2_power_1/Assign^beta2_power_2/Assign.^critic/q/q1_encoding/extrinsic_q1/bias/Assign<^critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt/Assign>^critic/q/q1_encoding/extrinsic_q1/bias/sac_value_opt_1/Assign0^critic/q/q1_encoding/extrinsic_q1/kernel/Assign>^critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt/Assign@^critic/q/q1_encoding/extrinsic_q1/kernel/sac_value_opt_1/Assign5^critic/q/q1_encoding/q1_encoder/hidden_0/bias/AssignC^critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt/AssignE^critic/q/q1_encoding/q1_encoder/hidden_0/bias/sac_value_opt_1/Assign7^critic/q/q1_encoding/q1_encoder/hidden_0/kernel/AssignE^critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt/AssignG^critic/q/q1_encoding/q1_encoder/hidden_0/kernel/sac_value_opt_1/Assign5^critic/q/q1_encoding/q1_encoder/hidden_1/bias/AssignC^critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt/AssignE^critic/q/q1_encoding/q1_encoder/hidden_1/bias/sac_value_opt_1/Assign7^critic/q/q1_encoding/q1_encoder/hidden_1/kernel/AssignE^critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt/AssignG^critic/q/q1_encoding/q1_encoder/hidden_1/kernel/sac_value_opt_1/Assign.^critic/q/q2_encoding/extrinsic_q2/bias/Assign<^critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt/Assign>^critic/q/q2_encoding/extrinsic_q2/bias/sac_value_opt_1/Assign0^critic/q/q2_encoding/extrinsic_q2/kernel/Assign>^critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt/Assign@^critic/q/q2_encoding/extrinsic_q2/kernel/sac_value_opt_1/Assign5^critic/q/q2_encoding/q2_encoder/hidden_0/bias/AssignC^critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt/AssignE^critic/q/q2_encoding/q2_encoder/hidden_0/bias/sac_value_opt_1/Assign7^critic/q/q2_encoding/q2_encoder/hidden_0/kernel/AssignE^critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt/AssignG^critic/q/q2_encoding/q2_encoder/hidden_0/kernel/sac_value_opt_1/Assign5^critic/q/q2_encoding/q2_encoder/hidden_1/bias/AssignC^critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt/AssignE^critic/q/q2_encoding/q2_encoder/hidden_1/bias/sac_value_opt_1/Assign7^critic/q/q2_encoding/q2_encoder/hidden_1/kernel/AssignE^critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt/AssignG^critic/q/q2_encoding/q2_encoder/hidden_1/kernel/sac_value_opt_1/Assign*^critic/value/encoder/hidden_0/bias/Assign8^critic/value/encoder/hidden_0/bias/sac_value_opt/Assign:^critic/value/encoder/hidden_0/bias/sac_value_opt_1/Assign,^critic/value/encoder/hidden_0/kernel/Assign:^critic/value/encoder/hidden_0/kernel/sac_value_opt/Assign<^critic/value/encoder/hidden_0/kernel/sac_value_opt_1/Assign*^critic/value/encoder/hidden_1/bias/Assign8^critic/value/encoder/hidden_1/bias/sac_value_opt/Assign:^critic/value/encoder/hidden_1/bias/sac_value_opt_1/Assign,^critic/value/encoder/hidden_1/kernel/Assign:^critic/value/encoder/hidden_1/kernel/sac_value_opt/Assign<^critic/value/encoder/hidden_1/kernel/sac_value_opt_1/Assign)^critic/value/extrinsic_value/bias/Assign7^critic/value/extrinsic_value/bias/sac_value_opt/Assign9^critic/value/extrinsic_value/bias/sac_value_opt_1/Assign+^critic/value/extrinsic_value/kernel/Assign9^critic/value/extrinsic_value/kernel/sac_value_opt/Assign;^critic/value/extrinsic_value/kernel/sac_value_opt_1/Assign^global_step/Assign^is_continuous_control/Assign^log_ent_coef/Assign$^log_ent_coef/sac_entropy_opt/Assign&^log_ent_coef/sac_entropy_opt_1/Assign^memory_size/Assign^normalization_steps/Assign^policy/log_std/bias/Assign*^policy/log_std/bias/sac_policy_opt/Assign,^policy/log_std/bias/sac_policy_opt_1/Assign^policy/log_std/kernel/Assign,^policy/log_std/kernel/sac_policy_opt/Assign.^policy/log_std/kernel/sac_policy_opt_1/Assign)^policy/main_graph_0/hidden_0/bias/Assign8^policy/main_graph_0/hidden_0/bias/sac_policy_opt/Assign:^policy/main_graph_0/hidden_0/bias/sac_policy_opt_1/Assign+^policy/main_graph_0/hidden_0/kernel/Assign:^policy/main_graph_0/hidden_0/kernel/sac_policy_opt/Assign<^policy/main_graph_0/hidden_0/kernel/sac_policy_opt_1/Assign)^policy/main_graph_0/hidden_1/bias/Assign8^policy/main_graph_0/hidden_1/bias/sac_policy_opt/Assign:^policy/main_graph_0/hidden_1/bias/sac_policy_opt_1/Assign+^policy/main_graph_0/hidden_1/kernel/Assign:^policy/main_graph_0/hidden_1/kernel/sac_policy_opt/Assign<^policy/main_graph_0/hidden_1/kernel/sac_policy_opt_1/Assign^policy/mu/bias/Assign%^policy/mu/bias/sac_policy_opt/Assign'^policy/mu/bias/sac_policy_opt_1/Assign^policy/mu/kernel/Assign'^policy/mu/kernel/sac_policy_opt/Assign)^policy/mu/kernel/sac_policy_opt_1/Assign^running_mean/Assign^running_variance/Assign9^target_network/critic/value/encoder/hidden_0/bias/Assign;^target_network/critic/value/encoder/hidden_0/kernel/Assign9^target_network/critic/value/encoder/hidden_1/bias/Assign;^target_network/critic/value/encoder/hidden_1/kernel/Assign8^target_network/critic/value/extrinsic_value/bias/Assign:^target_network/critic/value/extrinsic_value/kernel/Assign*^target_network/normalization_steps/Assign#^target_network/running_mean/Assign'^target_network/running_variance/Assign^version_number/Assign"w