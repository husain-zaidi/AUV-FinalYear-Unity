
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

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
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
+
CastCastmasks*

SrcT0*

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
¾
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
¢
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

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
¶
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
L
vector_observationPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
¥
?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shapeConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *o±`>*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0
þ
Imain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_0/kernel/Initializer/truncated_normal/shape*
seedÃ*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
seed2

=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
ù
9main_graph_0/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
¢
main_graph_0/hidden_0/kernel
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
é
#main_graph_0/hidden_0/kernel/AssignAssignmain_graph_0/hidden_0/kernel9main_graph_0/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

!main_graph_0/hidden_0/kernel/readIdentitymain_graph_0/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0

2main_graph_0/hidden_0/bias/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0
ð
,main_graph_0/hidden_0/bias/Initializer/zerosFill<main_graph_0/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_0/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
Ö
!main_graph_0/hidden_0/bias/AssignAssignmain_graph_0/hidden_0/bias,main_graph_0/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

main_graph_0/hidden_0/bias/readIdentitymain_graph_0/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/MatMulMatMulvector_observation!main_graph_0/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_0/BiasAddBiasAddmain_graph_0/hidden_0/MatMulmain_graph_0/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_0/SigmoidSigmoidmain_graph_0/hidden_0/BiasAdd*
T0
g
main_graph_0/hidden_0/MulMulmain_graph_0/hidden_0/BiasAddmain_graph_0/hidden_0/Sigmoid*
T0
¥
?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÐdÎ=*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0
þ
Imain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_0/hidden_1/kernel/Initializer/truncated_normal/shape*
seedÃ*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
seed22

=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_0/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_0/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ù
9main_graph_0/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_0/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
£
main_graph_0/hidden_1/kernel
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
é
#main_graph_0/hidden_1/kernel/AssignAssignmain_graph_0/hidden_1/kernel9main_graph_0/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

!main_graph_0/hidden_1/kernel/readIdentitymain_graph_0/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0

2main_graph_0/hidden_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0
ð
,main_graph_0/hidden_1/bias/Initializer/zerosFill<main_graph_0/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_0/hidden_1/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container 
Ö
!main_graph_0/hidden_1/bias/AssignAssignmain_graph_0/hidden_1/bias,main_graph_0/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

main_graph_0/hidden_1/bias/readIdentitymain_graph_0/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/MatMulMatMulmain_graph_0/hidden_0/Mul!main_graph_0/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_0/hidden_1/BiasAddBiasAddmain_graph_0/hidden_1/MatMulmain_graph_0/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_0/hidden_1/SigmoidSigmoidmain_graph_0/hidden_1/BiasAdd*
T0
g
main_graph_0/hidden_1/MulMulmain_graph_0/hidden_1/BiasAddmain_graph_0/hidden_1/Sigmoid*
T0
¥
?main_graph_1/hidden_0/kernel/Initializer/truncated_normal/shapeConst*
valueB"      */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

>main_graph_1/hidden_0/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

@main_graph_1/hidden_0/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *o±`>*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0
þ
Imain_graph_1/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_1/hidden_0/kernel/Initializer/truncated_normal/shape*
seedÃ*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
seed2E

=main_graph_1/hidden_0/kernel/Initializer/truncated_normal/mulMulImain_graph_1/hidden_0/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_1/hidden_0/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
ù
9main_graph_1/hidden_0/kernel/Initializer/truncated_normalAdd=main_graph_1/hidden_0/kernel/Initializer/truncated_normal/mul>main_graph_1/hidden_0/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
¢
main_graph_1/hidden_0/kernel
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
	container 
é
#main_graph_1/hidden_0/kernel/AssignAssignmain_graph_1/hidden_0/kernel9main_graph_1/hidden_0/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(

!main_graph_1/hidden_0/kernel/readIdentitymain_graph_1/hidden_0/kernel*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel

<main_graph_1/hidden_0/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0

2main_graph_1/hidden_0/bias/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0
ð
,main_graph_1/hidden_0/bias/Initializer/zerosFill<main_graph_1/hidden_0/bias/Initializer/zeros/shape_as_tensor2main_graph_1/hidden_0/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_1/hidden_0/bias

main_graph_1/hidden_0/bias
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0*
	container 
Ö
!main_graph_1/hidden_0/bias/AssignAssignmain_graph_1/hidden_0/bias,main_graph_1/hidden_0/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(

main_graph_1/hidden_0/bias/readIdentitymain_graph_1/hidden_0/bias*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias

main_graph_1/hidden_0/MatMulMatMulvector_observation!main_graph_1/hidden_0/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_1/hidden_0/BiasAddBiasAddmain_graph_1/hidden_0/MatMulmain_graph_1/hidden_0/bias/read*
T0*
data_formatNHWC
P
main_graph_1/hidden_0/SigmoidSigmoidmain_graph_1/hidden_0/BiasAdd*
T0
g
main_graph_1/hidden_0/MulMulmain_graph_1/hidden_0/BiasAddmain_graph_1/hidden_0/Sigmoid*
T0
¥
?main_graph_1/hidden_1/kernel/Initializer/truncated_normal/shapeConst*
valueB"      */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0

>main_graph_1/hidden_1/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0

@main_graph_1/hidden_1/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *ÐdÎ=*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0
þ
Imain_graph_1/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal?main_graph_1/hidden_1/kernel/Initializer/truncated_normal/shape*
seedÃ*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
seed2X

=main_graph_1/hidden_1/kernel/Initializer/truncated_normal/mulMulImain_graph_1/hidden_1/kernel/Initializer/truncated_normal/TruncatedNormal@main_graph_1/hidden_1/kernel/Initializer/truncated_normal/stddev*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
ù
9main_graph_1/hidden_1/kernel/Initializer/truncated_normalAdd=main_graph_1/hidden_1/kernel/Initializer/truncated_normal/mul>main_graph_1/hidden_1/kernel/Initializer/truncated_normal/mean*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
£
main_graph_1/hidden_1/kernel
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
	container 
é
#main_graph_1/hidden_1/kernel/AssignAssignmain_graph_1/hidden_1/kernel9main_graph_1/hidden_1/kernel/Initializer/truncated_normal*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

!main_graph_1/hidden_1/kernel/readIdentitymain_graph_1/hidden_1/kernel*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel

<main_graph_1/hidden_1/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0

2main_graph_1/hidden_1/bias/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0
ð
,main_graph_1/hidden_1/bias/Initializer/zerosFill<main_graph_1/hidden_1/bias/Initializer/zeros/shape_as_tensor2main_graph_1/hidden_1/bias/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_1/hidden_1/bias

main_graph_1/hidden_1/bias
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0*
	container 
Ö
!main_graph_1/hidden_1/bias/AssignAssignmain_graph_1/hidden_1/bias,main_graph_1/hidden_1/bias/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(

main_graph_1/hidden_1/bias/readIdentitymain_graph_1/hidden_1/bias*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias

main_graph_1/hidden_1/MatMulMatMulmain_graph_1/hidden_0/Mul!main_graph_1/hidden_1/kernel/read*
transpose_b( *
T0*
transpose_a( 

main_graph_1/hidden_1/BiasAddBiasAddmain_graph_1/hidden_1/MatMulmain_graph_1/hidden_1/bias/read*
T0*
data_formatNHWC
P
main_graph_1/hidden_1/SigmoidSigmoidmain_graph_1/hidden_1/BiasAdd*
T0
g
main_graph_1/hidden_1/MulMulmain_graph_1/hidden_1/BiasAddmain_graph_1/hidden_1/Sigmoid*
T0

/dense/kernel/Initializer/truncated_normal/shapeConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0
|
.dense/kernel/Initializer/truncated_normal/meanConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0
~
0dense/kernel/Initializer/truncated_normal/stddevConst*
valueB
 *s%<*
_class
loc:@dense/kernel*
dtype0
Î
9dense/kernel/Initializer/truncated_normal/TruncatedNormalTruncatedNormal/dense/kernel/Initializer/truncated_normal/shape*
seedÃ*
T0*
_class
loc:@dense/kernel*
dtype0*
seed2k
Ë
-dense/kernel/Initializer/truncated_normal/mulMul9dense/kernel/Initializer/truncated_normal/TruncatedNormal0dense/kernel/Initializer/truncated_normal/stddev*
T0*
_class
loc:@dense/kernel
¹
)dense/kernel/Initializer/truncated_normalAdd-dense/kernel/Initializer/truncated_normal/mul.dense/kernel/Initializer/truncated_normal/mean*
T0*
_class
loc:@dense/kernel

dense/kernel
VariableV2*
shape:	*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
©
dense/kernel/AssignAssigndense/kernel)dense/kernel/Initializer/truncated_normal*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
U
dense/kernel/readIdentitydense/kernel*
T0*
_class
loc:@dense/kernel
y
,dense/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0
n
"dense/bias/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0
°
dense/bias/Initializer/zerosFill,dense/bias/Initializer/zeros/shape_as_tensor"dense/bias/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias
y

dense/bias
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 

dense/bias/AssignAssign
dense/biasdense/bias/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
O
dense/bias/readIdentity
dense/bias*
T0*
_class
loc:@dense/bias
s
dense/MatMulMatMulmain_graph_0/hidden_1/Muldense/kernel/read*
transpose_b( *
T0*
transpose_a( 
W
dense/BiasAddBiasAdddense/MatMuldense/bias/read*
T0*
data_formatNHWC

3log_sigma_squared/Initializer/zeros/shape_as_tensorConst*
valueB:*$
_class
loc:@log_sigma_squared*
dtype0
|
)log_sigma_squared/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@log_sigma_squared*
dtype0
Ì
#log_sigma_squared/Initializer/zerosFill3log_sigma_squared/Initializer/zeros/shape_as_tensor)log_sigma_squared/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@log_sigma_squared

log_sigma_squared
VariableV2*
shape:*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container 
²
log_sigma_squared/AssignAssignlog_sigma_squared#log_sigma_squared/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
d
log_sigma_squared/readIdentitylog_sigma_squared*
T0*$
_class
loc:@log_sigma_squared
+
ExpExplog_sigma_squared/read*
T0
A
epsilonPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0

SqrtSqrtExp*
T0
"
mulMulSqrtepsilon*
T0
'
addAdddense/BiasAddmul*
T0
D
clip_by_value/Minimum/yConst*
valueB
 *  @@*
dtype0
G
clip_by_value/MinimumMinimumaddclip_by_value/Minimum/y*
T0
<
clip_by_value/yConst*
valueB
 *  @À*
dtype0
I
clip_by_valueMaximumclip_by_value/Minimumclip_by_value/y*
T0
6
	truediv/yConst*
valueB
 *  @@*
dtype0
5
truedivRealDivclip_by_value	truediv/y*
T0
$
actionIdentitytruediv*
T0
.
StopGradientStopGradienttruediv*
T0
,
StopGradient_1StopGradientadd*
T0
2
subSubStopGradient_1dense/BiasAdd*
T0

SquareSquaresub*
T0
4
mul_1/xConst*
valueB
 *   ¿*
dtype0
&
mul_1Mulmul_1/xSquare*
T0
)
	truediv_1RealDivmul_1Exp*
T0
2
Log/xConst*
valueB
 *ÛÉ@*
dtype0

LogLogLog/x*
T0
4
mul_2/xConst*
valueB
 *   ?*
dtype0
#
mul_2Mulmul_2/xLog*
T0
'
sub_1Sub	truediv_1mul_2*
T0
4
mul_3/xConst*
valueB
 *   ?*
dtype0
6
mul_3Mulmul_3/xlog_sigma_squared/read*
T0
#
sub_2Subsub_1mul_3*
T0
(
action_probsIdentitysub_2*
T0
4
Log_1/xConst*
valueB
 *À¢A*
dtype0

Log_1LogLog_1/x*
T0
4
add_1AddLog_1log_sigma_squared/read*
T0
3
ConstConst*
valueB: *
dtype0
@
MeanMeanadd_1Const*

Tidx0*
	keep_dims( *
T0
4
mul_4/xConst*
valueB
 *   ?*
dtype0
$
mul_4Mulmul_4/xMean*
T0

7extrinsic_value/kernel/Initializer/random_uniform/shapeConst*
valueB"      *)
_class
loc:@extrinsic_value/kernel*
dtype0

5extrinsic_value/kernel/Initializer/random_uniform/minConst*
valueB
 *n×\¾*)
_class
loc:@extrinsic_value/kernel*
dtype0

5extrinsic_value/kernel/Initializer/random_uniform/maxConst*
valueB
 *n×\>*)
_class
loc:@extrinsic_value/kernel*
dtype0
å
?extrinsic_value/kernel/Initializer/random_uniform/RandomUniformRandomUniform7extrinsic_value/kernel/Initializer/random_uniform/shape*
seedÃ*
T0*)
_class
loc:@extrinsic_value/kernel*
dtype0*
seed2¥
Þ
5extrinsic_value/kernel/Initializer/random_uniform/subSub5extrinsic_value/kernel/Initializer/random_uniform/max5extrinsic_value/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@extrinsic_value/kernel
è
5extrinsic_value/kernel/Initializer/random_uniform/mulMul?extrinsic_value/kernel/Initializer/random_uniform/RandomUniform5extrinsic_value/kernel/Initializer/random_uniform/sub*
T0*)
_class
loc:@extrinsic_value/kernel
Ú
1extrinsic_value/kernel/Initializer/random_uniformAdd5extrinsic_value/kernel/Initializer/random_uniform/mul5extrinsic_value/kernel/Initializer/random_uniform/min*
T0*)
_class
loc:@extrinsic_value/kernel

extrinsic_value/kernel
VariableV2*
shape:	*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
Ï
extrinsic_value/kernel/AssignAssignextrinsic_value/kernel1extrinsic_value/kernel/Initializer/random_uniform*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
s
extrinsic_value/kernel/readIdentityextrinsic_value/kernel*
T0*)
_class
loc:@extrinsic_value/kernel

6extrinsic_value/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*'
_class
loc:@extrinsic_value/bias*
dtype0

,extrinsic_value/bias/Initializer/zeros/ConstConst*
valueB
 *    *'
_class
loc:@extrinsic_value/bias*
dtype0
Ø
&extrinsic_value/bias/Initializer/zerosFill6extrinsic_value/bias/Initializer/zeros/shape_as_tensor,extrinsic_value/bias/Initializer/zeros/Const*
T0*

index_type0*'
_class
loc:@extrinsic_value/bias

extrinsic_value/bias
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
¾
extrinsic_value/bias/AssignAssignextrinsic_value/bias&extrinsic_value/bias/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
m
extrinsic_value/bias/readIdentityextrinsic_value/bias*
T0*'
_class
loc:@extrinsic_value/bias

extrinsic_value/MatMulMatMulmain_graph_1/hidden_1/Mulextrinsic_value/kernel/read*
transpose_b( *
T0*
transpose_a( 
u
extrinsic_value/BiasAddBiasAddextrinsic_value/MatMulextrinsic_value/bias/read*
T0*
data_formatNHWC
K
Mean_1/inputPackextrinsic_value/BiasAdd*
T0*

axis *
N
B
Mean_1/reduction_indicesConst*
value	B : *
dtype0
\
Mean_1MeanMean_1/inputMean_1/reduction_indices*

Tidx0*
	keep_dims( *
T0
K
old_probabilitiesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
+
IdentityIdentityaction_probs*
T0
?
Sum/reduction_indicesConst*
value	B :*
dtype0
Q
SumSumIdentitySum/reduction_indices*

Tidx0*
	keep_dims(*
T0
2

Identity_1Identityold_probabilities*
T0
A
Sum_1/reduction_indicesConst*
value	B :*
dtype0
W
Sum_1Sum
Identity_1Sum_1/reduction_indices*

Tidx0*
	keep_dims(*
T0
D
Reshape/shapeConst*
valueB:
ÿÿÿÿÿÿÿÿÿ*
dtype0
@
ReshapeReshapeMean_1Reshape/shape*
T0*
Tshape0
:
ones_like/ShapeShapeReshape*
T0*
out_type0
<
ones_like/ConstConst*
valueB
 *  ?*
dtype0
N
	ones_likeFillones_like/Shapeones_like/Const*
T0*

index_type0
'
mul_5Mul	ones_likemul_4*
T0
J
PolynomialDecay/learning_rateConst*
valueB
 *RI9*
dtype0
F
PolynomialDecay/CastCastglobal_step/read*

SrcT0*

DstT0
E
PolynomialDecay/Cast_1/xConst*
valueB
 * PCG*
dtype0
E
PolynomialDecay/Cast_2/xConst*
valueB
 *ÿæÛ.*
dtype0
E
PolynomialDecay/Cast_3/xConst*
valueB
 *  ?*
dtype0
[
PolynomialDecay/MinimumMinimumPolynomialDecay/CastPolynomialDecay/Cast_1/x*
T0
Z
PolynomialDecay/divRealDivPolynomialDecay/MinimumPolynomialDecay/Cast_1/x*
T0
\
PolynomialDecay/subSubPolynomialDecay/learning_ratePolynomialDecay/Cast_2/x*
T0
D
PolynomialDecay/sub_1/xConst*
valueB
 *  ?*
dtype0
S
PolynomialDecay/sub_1SubPolynomialDecay/sub_1/xPolynomialDecay/div*
T0
T
PolynomialDecay/PowPowPolynomialDecay/sub_1PolynomialDecay/Cast_3/x*
T0
M
PolynomialDecay/MulMulPolynomialDecay/subPolynomialDecay/Pow*
T0
N
PolynomialDecayAddPolynomialDecay/MulPolynomialDecay/Cast_2/x*
T0
G
extrinsic_returnsPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
N
extrinsic_value_estimatePlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
@

advantagesPlaceholder*
shape:ÿÿÿÿÿÿÿÿÿ*
dtype0
A
ExpandDims/dimConst*
valueB :
ÿÿÿÿÿÿÿÿÿ*
dtype0
I

ExpandDims
ExpandDims
advantagesExpandDims/dim*

Tdim0*
T0
L
PolynomialDecay_1/learning_rateConst*
valueB
 *ÍÌL>*
dtype0
H
PolynomialDecay_1/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_1/Cast_1/xConst*
valueB
 * PCG*
dtype0
G
PolynomialDecay_1/Cast_2/xConst*
valueB
 *ÍÌÌ=*
dtype0
G
PolynomialDecay_1/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_1/MinimumMinimumPolynomialDecay_1/CastPolynomialDecay_1/Cast_1/x*
T0
`
PolynomialDecay_1/divRealDivPolynomialDecay_1/MinimumPolynomialDecay_1/Cast_1/x*
T0
b
PolynomialDecay_1/subSubPolynomialDecay_1/learning_ratePolynomialDecay_1/Cast_2/x*
T0
F
PolynomialDecay_1/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_1/sub_1SubPolynomialDecay_1/sub_1/xPolynomialDecay_1/div*
T0
Z
PolynomialDecay_1/PowPowPolynomialDecay_1/sub_1PolynomialDecay_1/Cast_3/x*
T0
S
PolynomialDecay_1/MulMulPolynomialDecay_1/subPolynomialDecay_1/Pow*
T0
T
PolynomialDecay_1AddPolynomialDecay_1/MulPolynomialDecay_1/Cast_2/x*
T0
L
PolynomialDecay_2/learning_rateConst*
valueB
 *
×£;*
dtype0
H
PolynomialDecay_2/CastCastglobal_step/read*

SrcT0*

DstT0
G
PolynomialDecay_2/Cast_1/xConst*
valueB
 * PCG*
dtype0
G
PolynomialDecay_2/Cast_2/xConst*
valueB
 *¬Å'7*
dtype0
G
PolynomialDecay_2/Cast_3/xConst*
valueB
 *  ?*
dtype0
a
PolynomialDecay_2/MinimumMinimumPolynomialDecay_2/CastPolynomialDecay_2/Cast_1/x*
T0
`
PolynomialDecay_2/divRealDivPolynomialDecay_2/MinimumPolynomialDecay_2/Cast_1/x*
T0
b
PolynomialDecay_2/subSubPolynomialDecay_2/learning_ratePolynomialDecay_2/Cast_2/x*
T0
F
PolynomialDecay_2/sub_1/xConst*
valueB
 *  ?*
dtype0
Y
PolynomialDecay_2/sub_1SubPolynomialDecay_2/sub_1/xPolynomialDecay_2/div*
T0
Z
PolynomialDecay_2/PowPowPolynomialDecay_2/sub_1PolynomialDecay_2/Cast_3/x*
T0
S
PolynomialDecay_2/MulMulPolynomialDecay_2/subPolynomialDecay_2/Pow*
T0
T
PolynomialDecay_2AddPolynomialDecay_2/MulPolynomialDecay_2/Cast_2/x*
T0
A
Sum_2/reduction_indicesConst*
value	B :*
dtype0
d
Sum_2Sumextrinsic_value/BiasAddSum_2/reduction_indices*

Tidx0*
	keep_dims( *
T0
6
sub_3SubSum_2extrinsic_value_estimate*
T0
&
NegNegPolynomialDecay_1*
T0
E
clip_by_value_1/MinimumMinimumsub_3PolynomialDecay_1*
T0
A
clip_by_value_1Maximumclip_by_value_1/MinimumNeg*
T0
@
add_2Addextrinsic_value_estimateclip_by_value_1*
T0
A
Sum_3/reduction_indicesConst*
value	B :*
dtype0
d
Sum_3Sumextrinsic_value/BiasAddSum_3/reduction_indices*

Tidx0*
	keep_dims( *
T0
I
SquaredDifferenceSquaredDifferenceextrinsic_returnsSum_3*
T0
K
SquaredDifference_1SquaredDifferenceextrinsic_returnsadd_2*
T0
C
MaximumMaximumSquaredDifferenceSquaredDifference_1*
T0
R
DynamicPartitionDynamicPartitionMaximumCast*
num_partitions*
T0
5
Const_1Const*
valueB: *
dtype0
Q
Mean_2MeanDynamicPartition:1Const_1*

Tidx0*
	keep_dims( *
T0
9
Rank/packedPackMean_2*
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
:
Mean_3/inputPackMean_2*
T0*

axis *
N
I
Mean_3MeanMean_3/inputrange*

Tidx0*
	keep_dims( *
T0
!
sub_4SubSumSum_1*
T0

Exp_1Expsub_4*
T0
(
mul_6MulExp_1
ExpandDims*
T0
4
sub_5/xConst*
valueB
 *  ?*
dtype0
1
sub_5Subsub_5/xPolynomialDecay_1*
T0
4
add_3/xConst*
valueB
 *  ?*
dtype0
1
add_3Addadd_3/xPolynomialDecay_1*
T0
9
clip_by_value_2/MinimumMinimumExp_1add_3*
T0
C
clip_by_value_2Maximumclip_by_value_2/Minimumsub_5*
T0
2
mul_7Mulclip_by_value_2
ExpandDims*
T0
)
MinimumMinimummul_6mul_7*
T0
T
DynamicPartition_1DynamicPartitionMinimumCast*
num_partitions*
T0
<
Const_2Const*
valueB"       *
dtype0
S
Mean_4MeanDynamicPartition_1:1Const_2*

Tidx0*
	keep_dims( *
T0

Neg_1NegMean_4*
T0

AbsAbsNeg_1*
T0
4
mul_8/xConst*
valueB
 *   ?*
dtype0
&
mul_8Mulmul_8/xMean_3*
T0
#
add_4AddNeg_1mul_8*
T0
R
DynamicPartition_2DynamicPartitionmul_5Cast*
num_partitions*
T0
5
Const_3Const*
valueB: *
dtype0
S
Mean_5MeanDynamicPartition_2:1Const_3*

Tidx0*
	keep_dims( *
T0
0
mul_9MulPolynomialDecay_2Mean_5*
T0
#
sub_6Subadd_4mul_9*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
8
gradients/sub_6_grad/NegNeggradients/Fill*
T0
Y
%gradients/sub_6_grad/tuple/group_depsNoOp^gradients/Fill^gradients/sub_6_grad/Neg

-gradients/sub_6_grad/tuple/control_dependencyIdentitygradients/Fill&^gradients/sub_6_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
³
/gradients/sub_6_grad/tuple/control_dependency_1Identitygradients/sub_6_grad/Neg&^gradients/sub_6_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/sub_6_grad/Neg
]
%gradients/add_4_grad/tuple/group_depsNoOp.^gradients/sub_6_grad/tuple/control_dependency
¼
-gradients/add_4_grad/tuple/control_dependencyIdentity-gradients/sub_6_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
¾
/gradients/add_4_grad/tuple/control_dependency_1Identity-gradients/sub_6_grad/tuple/control_dependency&^gradients/add_4_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
a
gradients/mul_9_grad/MulMul/gradients/sub_6_grad/tuple/control_dependency_1Mean_5*
T0
n
gradients/mul_9_grad/Mul_1Mul/gradients/sub_6_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
e
%gradients/mul_9_grad/tuple/group_depsNoOp^gradients/mul_9_grad/Mul^gradients/mul_9_grad/Mul_1
±
-gradients/mul_9_grad/tuple/control_dependencyIdentitygradients/mul_9_grad/Mul&^gradients/mul_9_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_9_grad/Mul
·
/gradients/mul_9_grad/tuple/control_dependency_1Identitygradients/mul_9_grad/Mul_1&^gradients/mul_9_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_9_grad/Mul_1
W
gradients/Neg_1_grad/NegNeg-gradients/add_4_grad/tuple/control_dependency*
T0
a
gradients/mul_8_grad/MulMul/gradients/add_4_grad/tuple/control_dependency_1Mean_3*
T0
d
gradients/mul_8_grad/Mul_1Mul/gradients/add_4_grad/tuple/control_dependency_1mul_8/x*
T0
e
%gradients/mul_8_grad/tuple/group_depsNoOp^gradients/mul_8_grad/Mul^gradients/mul_8_grad/Mul_1
±
-gradients/mul_8_grad/tuple/control_dependencyIdentitygradients/mul_8_grad/Mul&^gradients/mul_8_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_8_grad/Mul
·
/gradients/mul_8_grad/tuple/control_dependency_1Identitygradients/mul_8_grad/Mul_1&^gradients/mul_8_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_8_grad/Mul_1
Q
#gradients/Mean_5_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_5_grad/ReshapeReshape/gradients/mul_9_grad/tuple/control_dependency_1#gradients/Mean_5_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_5_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0
y
gradients/Mean_5_grad/TileTilegradients/Mean_5_grad/Reshapegradients/Mean_5_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_5_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
F
gradients/Mean_5_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_5_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_5_grad/ProdProdgradients/Mean_5_grad/Shape_1gradients/Mean_5_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_5_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_5_grad/Prod_1Prodgradients/Mean_5_grad/Shape_2gradients/Mean_5_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_5_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_5_grad/MaximumMaximumgradients/Mean_5_grad/Prod_1gradients/Mean_5_grad/Maximum/y*
T0
n
gradients/Mean_5_grad/floordivFloorDivgradients/Mean_5_grad/Prodgradients/Mean_5_grad/Maximum*
T0
Z
gradients/Mean_5_grad/CastCastgradients/Mean_5_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_5_grad/truedivRealDivgradients/Mean_5_grad/Tilegradients/Mean_5_grad/Cast*
T0
X
#gradients/Mean_4_grad/Reshape/shapeConst*
valueB"      *
dtype0
~
gradients/Mean_4_grad/ReshapeReshapegradients/Neg_1_grad/Neg#gradients/Mean_4_grad/Reshape/shape*
T0*
Tshape0
S
gradients/Mean_4_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0
y
gradients/Mean_4_grad/TileTilegradients/Mean_4_grad/Reshapegradients/Mean_4_grad/Shape*

Tmultiples0*
T0
U
gradients/Mean_4_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
F
gradients/Mean_4_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_4_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_4_grad/ProdProdgradients/Mean_4_grad/Shape_1gradients/Mean_4_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_4_grad/Prod_1Prodgradients/Mean_4_grad/Shape_2gradients/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_4_grad/MaximumMaximumgradients/Mean_4_grad/Prod_1gradients/Mean_4_grad/Maximum/y*
T0
n
gradients/Mean_4_grad/floordivFloorDivgradients/Mean_4_grad/Prodgradients/Mean_4_grad/Maximum*
T0
Z
gradients/Mean_4_grad/CastCastgradients/Mean_4_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_4_grad/truedivRealDivgradients/Mean_4_grad/Tilegradients/Mean_4_grad/Cast*
T0
Q
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_3_grad/ReshapeReshape/gradients/mul_8_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Mean_3_grad/ConstConst*
valueB:*
dtype0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Const*

Tmultiples0*
T0
J
gradients/Mean_3_grad/Const_1Const*
valueB
 *  ?*
dtype0
l
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Const_1*
T0
>
gradients/zeros_like	ZerosLikeDynamicPartition_2*
T0
O
'gradients/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_2_grad/ProdProd'gradients/DynamicPartition_2_grad/Shape'gradients/DynamicPartition_2_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_2_grad/rangeRange-gradients/DynamicPartition_2_grad/range/start&gradients/DynamicPartition_2_grad/Prod-gradients/DynamicPartition_2_grad/range/delta*

Tidx0

)gradients/DynamicPartition_2_grad/ReshapeReshape'gradients/DynamicPartition_2_grad/range'gradients/DynamicPartition_2_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_2_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_2_grad/ReshapeCast*
num_partitions*
T0
ñ
/gradients/DynamicPartition_2_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_2_grad/DynamicPartition4gradients/DynamicPartition_2_grad/DynamicPartition:1gradients/zeros_likegradients/Mean_5_grad/truediv*
T0*
N
R
)gradients/DynamicPartition_2_grad/Shape_1Shapemul_5*
T0*
out_type0
©
+gradients/DynamicPartition_2_grad/Reshape_1Reshape/gradients/DynamicPartition_2_grad/DynamicStitch)gradients/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
@
gradients/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
O
'gradients/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
¦
&gradients/DynamicPartition_1_grad/ProdProd'gradients/DynamicPartition_1_grad/Shape'gradients/DynamicPartition_1_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
W
-gradients/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients/DynamicPartition_1_grad/rangeRange-gradients/DynamicPartition_1_grad/range/start&gradients/DynamicPartition_1_grad/Prod-gradients/DynamicPartition_1_grad/range/delta*

Tidx0

)gradients/DynamicPartition_1_grad/ReshapeReshape'gradients/DynamicPartition_1_grad/range'gradients/DynamicPartition_1_grad/Shape*
T0*
Tshape0

2gradients/DynamicPartition_1_grad/DynamicPartitionDynamicPartition)gradients/DynamicPartition_1_grad/ReshapeCast*
num_partitions*
T0
ó
/gradients/DynamicPartition_1_grad/DynamicStitchDynamicStitch2gradients/DynamicPartition_1_grad/DynamicPartition4gradients/DynamicPartition_1_grad/DynamicPartition:1gradients/zeros_like_1gradients/Mean_4_grad/truediv*
T0*
N
T
)gradients/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
©
+gradients/DynamicPartition_1_grad/Reshape_1Reshape/gradients/DynamicPartition_1_grad/DynamicStitch)gradients/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
l
#gradients/Mean_3/input_grad/unstackUnpackgradients/Mean_3_grad/truediv*
T0*	
num*

axis 
G
gradients/mul_5_grad/ShapeShape	ones_like*
T0*
out_type0
E
gradients/mul_5_grad/Shape_1Const*
valueB *
dtype0

*gradients/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_5_grad/Shapegradients/mul_5_grad/Shape_1*
T0
\
gradients/mul_5_grad/MulMul+gradients/DynamicPartition_2_grad/Reshape_1mul_4*
T0

gradients/mul_5_grad/SumSumgradients/mul_5_grad/Mul*gradients/mul_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_5_grad/ReshapeReshapegradients/mul_5_grad/Sumgradients/mul_5_grad/Shape*
T0*
Tshape0
b
gradients/mul_5_grad/Mul_1Mul	ones_like+gradients/DynamicPartition_2_grad/Reshape_1*
T0

gradients/mul_5_grad/Sum_1Sumgradients/mul_5_grad/Mul_1,gradients/mul_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_5_grad/Reshape_1Reshapegradients/mul_5_grad/Sum_1gradients/mul_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_5_grad/tuple/group_depsNoOp^gradients/mul_5_grad/Reshape^gradients/mul_5_grad/Reshape_1
¹
-gradients/mul_5_grad/tuple/control_dependencyIdentitygradients/mul_5_grad/Reshape&^gradients/mul_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_5_grad/Reshape
¿
/gradients/mul_5_grad/tuple/control_dependency_1Identitygradients/mul_5_grad/Reshape_1&^gradients/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_5_grad/Reshape_1
E
gradients/Minimum_grad/ShapeShapemul_6*
T0*
out_type0
G
gradients/Minimum_grad/Shape_1Shapemul_7*
T0*
out_type0
m
gradients/Minimum_grad/Shape_2Shape+gradients/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
O
"gradients/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Minimum_grad/zerosFillgradients/Minimum_grad/Shape_2"gradients/Minimum_grad/zeros/Const*
T0*

index_type0
D
 gradients/Minimum_grad/LessEqual	LessEqualmul_6mul_7*
T0

,gradients/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Minimum_grad/Shapegradients/Minimum_grad/Shape_1*
T0

gradients/Minimum_grad/SelectSelect gradients/Minimum_grad/LessEqual+gradients/DynamicPartition_1_grad/Reshape_1gradients/Minimum_grad/zeros*
T0

gradients/Minimum_grad/Select_1Select gradients/Minimum_grad/LessEqualgradients/Minimum_grad/zeros+gradients/DynamicPartition_1_grad/Reshape_1*
T0

gradients/Minimum_grad/SumSumgradients/Minimum_grad/Select,gradients/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/Minimum_grad/ReshapeReshapegradients/Minimum_grad/Sumgradients/Minimum_grad/Shape*
T0*
Tshape0

gradients/Minimum_grad/Sum_1Sumgradients/Minimum_grad/Select_1.gradients/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients/Minimum_grad/Reshape_1Reshapegradients/Minimum_grad/Sum_1gradients/Minimum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Minimum_grad/tuple/group_depsNoOp^gradients/Minimum_grad/Reshape!^gradients/Minimum_grad/Reshape_1
Á
/gradients/Minimum_grad/tuple/control_dependencyIdentitygradients/Minimum_grad/Reshape(^gradients/Minimum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Minimum_grad/Reshape
Ç
1gradients/Minimum_grad/tuple/control_dependency_1Identity gradients/Minimum_grad/Reshape_1(^gradients/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Minimum_grad/Reshape_1
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape#gradients/Mean_3/input_grad/unstack#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
Q
gradients/Mean_2_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*

Tmultiples0*
T0
S
gradients/Mean_2_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
Z
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0
L
gradients/ones_like_grad/ConstConst*
valueB: *
dtype0

gradients/ones_like_grad/SumSum-gradients/mul_5_grad/tuple/control_dependencygradients/ones_like_grad/Const*

Tidx0*
	keep_dims( *
T0
_
gradients/mul_4_grad/MulMul/gradients/mul_5_grad/tuple/control_dependency_1Mean*
T0
d
gradients/mul_4_grad/Mul_1Mul/gradients/mul_5_grad/tuple/control_dependency_1mul_4/x*
T0
e
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Mul^gradients/mul_4_grad/Mul_1
±
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Mul&^gradients/mul_4_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_4_grad/Mul
·
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Mul_1&^gradients/mul_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
C
gradients/mul_6_grad/ShapeShapeExp_1*
T0*
out_type0
J
gradients/mul_6_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

*gradients/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_6_grad/Shapegradients/mul_6_grad/Shape_1*
T0
e
gradients/mul_6_grad/MulMul/gradients/Minimum_grad/tuple/control_dependency
ExpandDims*
T0

gradients/mul_6_grad/SumSumgradients/mul_6_grad/Mul*gradients/mul_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_6_grad/ReshapeReshapegradients/mul_6_grad/Sumgradients/mul_6_grad/Shape*
T0*
Tshape0
b
gradients/mul_6_grad/Mul_1MulExp_1/gradients/Minimum_grad/tuple/control_dependency*
T0

gradients/mul_6_grad/Sum_1Sumgradients/mul_6_grad/Mul_1,gradients/mul_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_6_grad/Reshape_1Reshapegradients/mul_6_grad/Sum_1gradients/mul_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_6_grad/tuple/group_depsNoOp^gradients/mul_6_grad/Reshape^gradients/mul_6_grad/Reshape_1
¹
-gradients/mul_6_grad/tuple/control_dependencyIdentitygradients/mul_6_grad/Reshape&^gradients/mul_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape
¿
/gradients/mul_6_grad/tuple/control_dependency_1Identitygradients/mul_6_grad/Reshape_1&^gradients/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_6_grad/Reshape_1
M
gradients/mul_7_grad/ShapeShapeclip_by_value_2*
T0*
out_type0
J
gradients/mul_7_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

*gradients/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_7_grad/Shapegradients/mul_7_grad/Shape_1*
T0
g
gradients/mul_7_grad/MulMul1gradients/Minimum_grad/tuple/control_dependency_1
ExpandDims*
T0

gradients/mul_7_grad/SumSumgradients/mul_7_grad/Mul*gradients/mul_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_7_grad/ReshapeReshapegradients/mul_7_grad/Sumgradients/mul_7_grad/Shape*
T0*
Tshape0
n
gradients/mul_7_grad/Mul_1Mulclip_by_value_21gradients/Minimum_grad/tuple/control_dependency_1*
T0

gradients/mul_7_grad/Sum_1Sumgradients/mul_7_grad/Mul_1,gradients/mul_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_7_grad/Reshape_1Reshapegradients/mul_7_grad/Sum_1gradients/mul_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_7_grad/tuple/group_depsNoOp^gradients/mul_7_grad/Reshape^gradients/mul_7_grad/Reshape_1
¹
-gradients/mul_7_grad/tuple/control_dependencyIdentitygradients/mul_7_grad/Reshape&^gradients/mul_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_7_grad/Reshape
¿
/gradients/mul_7_grad/tuple/control_dependency_1Identitygradients/mul_7_grad/Reshape_1&^gradients/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_7_grad/Reshape_1
>
gradients/zeros_like_2	ZerosLikeDynamicPartition*
T0
M
%gradients/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
S
%gradients/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
 
$gradients/DynamicPartition_grad/ProdProd%gradients/DynamicPartition_grad/Shape%gradients/DynamicPartition_grad/Const*

Tidx0*
	keep_dims( *
T0
U
+gradients/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
U
+gradients/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
º
%gradients/DynamicPartition_grad/rangeRange+gradients/DynamicPartition_grad/range/start$gradients/DynamicPartition_grad/Prod+gradients/DynamicPartition_grad/range/delta*

Tidx0

'gradients/DynamicPartition_grad/ReshapeReshape%gradients/DynamicPartition_grad/range%gradients/DynamicPartition_grad/Shape*
T0*
Tshape0

0gradients/DynamicPartition_grad/DynamicPartitionDynamicPartition'gradients/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
í
-gradients/DynamicPartition_grad/DynamicStitchDynamicStitch0gradients/DynamicPartition_grad/DynamicPartition2gradients/DynamicPartition_grad/DynamicPartition:1gradients/zeros_like_2gradients/Mean_2_grad/truediv*
T0*
N
R
'gradients/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
£
)gradients/DynamicPartition_grad/Reshape_1Reshape-gradients/DynamicPartition_grad/DynamicStitch'gradients/DynamicPartition_grad/Shape_1*
T0*
Tshape0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape/gradients/mul_4_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
G
gradients/Mean_grad/ConstConst*
valueB:*
dtype0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Const*

Tmultiples0*
T0
H
gradients/Mean_grad/Const_1Const*
valueB
 *  @*
dtype0
f
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Const_1*
T0
_
$gradients/clip_by_value_2_grad/ShapeShapeclip_by_value_2/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_2_grad/Shape_1Const*
valueB *
dtype0
w
&gradients/clip_by_value_2_grad/Shape_2Shape-gradients/mul_7_grad/tuple/control_dependency*
T0*
out_type0
W
*gradients/clip_by_value_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_2_grad/zerosFill&gradients/clip_by_value_2_grad/Shape_2*gradients/clip_by_value_2_grad/zeros/Const*
T0*

index_type0
d
+gradients/clip_by_value_2_grad/GreaterEqualGreaterEqualclip_by_value_2/Minimumsub_5*
T0
¤
4gradients/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_2_grad/Shape&gradients/clip_by_value_2_grad/Shape_1*
T0
º
%gradients/clip_by_value_2_grad/SelectSelect+gradients/clip_by_value_2_grad/GreaterEqual-gradients/mul_7_grad/tuple/control_dependency$gradients/clip_by_value_2_grad/zeros*
T0
¼
'gradients/clip_by_value_2_grad/Select_1Select+gradients/clip_by_value_2_grad/GreaterEqual$gradients/clip_by_value_2_grad/zeros-gradients/mul_7_grad/tuple/control_dependency*
T0
¬
"gradients/clip_by_value_2_grad/SumSum%gradients/clip_by_value_2_grad/Select4gradients/clip_by_value_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

&gradients/clip_by_value_2_grad/ReshapeReshape"gradients/clip_by_value_2_grad/Sum$gradients/clip_by_value_2_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_2_grad/Sum_1Sum'gradients/clip_by_value_2_grad/Select_16gradients/clip_by_value_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

(gradients/clip_by_value_2_grad/Reshape_1Reshape$gradients/clip_by_value_2_grad/Sum_1&gradients/clip_by_value_2_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_2_grad/tuple/group_depsNoOp'^gradients/clip_by_value_2_grad/Reshape)^gradients/clip_by_value_2_grad/Reshape_1
á
7gradients/clip_by_value_2_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_2_grad/Reshape0^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_2_grad/Reshape
ç
9gradients/clip_by_value_2_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_2_grad/Reshape_10^gradients/clip_by_value_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_2_grad/Reshape_1
Q
gradients/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
U
gradients/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
k
gradients/Maximum_grad/Shape_2Shape)gradients/DynamicPartition_grad/Reshape_1*
T0*
out_type0
O
"gradients/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients/Maximum_grad/zerosFillgradients/Maximum_grad/Shape_2"gradients/Maximum_grad/zeros/Const*
T0*

index_type0
d
#gradients/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

,gradients/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Maximum_grad/Shapegradients/Maximum_grad/Shape_1*
T0

gradients/Maximum_grad/SelectSelect#gradients/Maximum_grad/GreaterEqual)gradients/DynamicPartition_grad/Reshape_1gradients/Maximum_grad/zeros*
T0
 
gradients/Maximum_grad/Select_1Select#gradients/Maximum_grad/GreaterEqualgradients/Maximum_grad/zeros)gradients/DynamicPartition_grad/Reshape_1*
T0

gradients/Maximum_grad/SumSumgradients/Maximum_grad/Select,gradients/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients/Maximum_grad/ReshapeReshapegradients/Maximum_grad/Sumgradients/Maximum_grad/Shape*
T0*
Tshape0

gradients/Maximum_grad/Sum_1Sumgradients/Maximum_grad/Select_1.gradients/Maximum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients/Maximum_grad/Reshape_1Reshapegradients/Maximum_grad/Sum_1gradients/Maximum_grad/Shape_1*
T0*
Tshape0
s
'gradients/Maximum_grad/tuple/group_depsNoOp^gradients/Maximum_grad/Reshape!^gradients/Maximum_grad/Reshape_1
Á
/gradients/Maximum_grad/tuple/control_dependencyIdentitygradients/Maximum_grad/Reshape(^gradients/Maximum_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Maximum_grad/Reshape
Ç
1gradients/Maximum_grad/tuple/control_dependency_1Identity gradients/Maximum_grad/Reshape_1(^gradients/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/Maximum_grad/Reshape_1
C
gradients/add_1_grad/ShapeConst*
valueB *
dtype0
J
gradients/add_1_grad/Shape_1Const*
valueB:*
dtype0

*gradients/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_1_grad/Shapegradients/add_1_grad/Shape_1*
T0

gradients/add_1_grad/SumSumgradients/Mean_grad/truediv*gradients/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_1_grad/ReshapeReshapegradients/add_1_grad/Sumgradients/add_1_grad/Shape*
T0*
Tshape0

gradients/add_1_grad/Sum_1Sumgradients/Mean_grad/truediv,gradients/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_1_grad/Reshape_1Reshapegradients/add_1_grad/Sum_1gradients/add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_1_grad/tuple/group_depsNoOp^gradients/add_1_grad/Reshape^gradients/add_1_grad/Reshape_1
¹
-gradients/add_1_grad/tuple/control_dependencyIdentitygradients/add_1_grad/Reshape&^gradients/add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_1_grad/Reshape
¿
/gradients/add_1_grad/tuple/control_dependency_1Identitygradients/add_1_grad/Reshape_1&^gradients/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1
U
,gradients/clip_by_value_2/Minimum_grad/ShapeShapeExp_1*
T0*
out_type0
W
.gradients/clip_by_value_2/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_2/Minimum_grad/Shape_2Shape7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_2/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_2/Minimum_grad/zerosFill.gradients/clip_by_value_2/Minimum_grad/Shape_22gradients/clip_by_value_2/Minimum_grad/zeros/Const*
T0*

index_type0
T
0gradients/clip_by_value_2/Minimum_grad/LessEqual	LessEqualExp_1add_3*
T0
¼
<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_2/Minimum_grad/Shape.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_2/Minimum_grad/SelectSelect0gradients/clip_by_value_2/Minimum_grad/LessEqual7gradients/clip_by_value_2_grad/tuple/control_dependency,gradients/clip_by_value_2/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_2/Minimum_grad/Select_1Select0gradients/clip_by_value_2/Minimum_grad/LessEqual,gradients/clip_by_value_2/Minimum_grad/zeros7gradients/clip_by_value_2_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_2/Minimum_grad/SumSum-gradients/clip_by_value_2/Minimum_grad/Select<gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
ª
.gradients/clip_by_value_2/Minimum_grad/ReshapeReshape*gradients/clip_by_value_2/Minimum_grad/Sum,gradients/clip_by_value_2/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_2/Minimum_grad/Sum_1Sum/gradients/clip_by_value_2/Minimum_grad/Select_1>gradients/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
°
0gradients/clip_by_value_2/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_2/Minimum_grad/Sum_1.gradients/clip_by_value_2/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_2/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_2/Minimum_grad/Reshape1^gradients/clip_by_value_2/Minimum_grad/Reshape_1

?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_2/Minimum_grad/Reshape8^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_2/Minimum_grad/Reshape

Agradients/clip_by_value_2/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_2/Minimum_grad/Reshape_18^gradients/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_2/Minimum_grad/Reshape_1
[
&gradients/SquaredDifference_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
Q
(gradients/SquaredDifference_grad/Shape_1ShapeSum_3*
T0*
out_type0
ª
6gradients/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients/SquaredDifference_grad/Shape(gradients/SquaredDifference_grad/Shape_1*
T0

'gradients/SquaredDifference_grad/scalarConst0^gradients/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

$gradients/SquaredDifference_grad/mulMul'gradients/SquaredDifference_grad/scalar/gradients/Maximum_grad/tuple/control_dependency*
T0

$gradients/SquaredDifference_grad/subSubextrinsic_returnsSum_30^gradients/Maximum_grad/tuple/control_dependency*
T0

&gradients/SquaredDifference_grad/mul_1Mul$gradients/SquaredDifference_grad/mul$gradients/SquaredDifference_grad/sub*
T0
±
$gradients/SquaredDifference_grad/SumSum&gradients/SquaredDifference_grad/mul_16gradients/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

(gradients/SquaredDifference_grad/ReshapeReshape$gradients/SquaredDifference_grad/Sum&gradients/SquaredDifference_grad/Shape*
T0*
Tshape0
µ
&gradients/SquaredDifference_grad/Sum_1Sum&gradients/SquaredDifference_grad/mul_18gradients/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

*gradients/SquaredDifference_grad/Reshape_1Reshape&gradients/SquaredDifference_grad/Sum_1(gradients/SquaredDifference_grad/Shape_1*
T0*
Tshape0
`
$gradients/SquaredDifference_grad/NegNeg*gradients/SquaredDifference_grad/Reshape_1*
T0

1gradients/SquaredDifference_grad/tuple/group_depsNoOp)^gradients/SquaredDifference_grad/Reshape%^gradients/SquaredDifference_grad/Neg
é
9gradients/SquaredDifference_grad/tuple/control_dependencyIdentity(gradients/SquaredDifference_grad/Reshape2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/SquaredDifference_grad/Reshape
ã
;gradients/SquaredDifference_grad/tuple/control_dependency_1Identity$gradients/SquaredDifference_grad/Neg2^gradients/SquaredDifference_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/SquaredDifference_grad/Neg
]
(gradients/SquaredDifference_1_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
S
*gradients/SquaredDifference_1_grad/Shape_1Shapeadd_2*
T0*
out_type0
°
8gradients/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients/SquaredDifference_1_grad/Shape*gradients/SquaredDifference_1_grad/Shape_1*
T0

)gradients/SquaredDifference_1_grad/scalarConst2^gradients/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

&gradients/SquaredDifference_1_grad/mulMul)gradients/SquaredDifference_1_grad/scalar1gradients/Maximum_grad/tuple/control_dependency_1*
T0

&gradients/SquaredDifference_1_grad/subSubextrinsic_returnsadd_22^gradients/Maximum_grad/tuple/control_dependency_1*
T0

(gradients/SquaredDifference_1_grad/mul_1Mul&gradients/SquaredDifference_1_grad/mul&gradients/SquaredDifference_1_grad/sub*
T0
·
&gradients/SquaredDifference_1_grad/SumSum(gradients/SquaredDifference_1_grad/mul_18gradients/SquaredDifference_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

*gradients/SquaredDifference_1_grad/ReshapeReshape&gradients/SquaredDifference_1_grad/Sum(gradients/SquaredDifference_1_grad/Shape*
T0*
Tshape0
»
(gradients/SquaredDifference_1_grad/Sum_1Sum(gradients/SquaredDifference_1_grad/mul_1:gradients/SquaredDifference_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¤
,gradients/SquaredDifference_1_grad/Reshape_1Reshape(gradients/SquaredDifference_1_grad/Sum_1*gradients/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
d
&gradients/SquaredDifference_1_grad/NegNeg,gradients/SquaredDifference_1_grad/Reshape_1*
T0

3gradients/SquaredDifference_1_grad/tuple/group_depsNoOp+^gradients/SquaredDifference_1_grad/Reshape'^gradients/SquaredDifference_1_grad/Neg
ñ
;gradients/SquaredDifference_1_grad/tuple/control_dependencyIdentity*gradients/SquaredDifference_1_grad/Reshape4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients/SquaredDifference_1_grad/Reshape
ë
=gradients/SquaredDifference_1_grad/tuple/control_dependency_1Identity&gradients/SquaredDifference_1_grad/Neg4^gradients/SquaredDifference_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/SquaredDifference_1_grad/Neg
É
gradients/AddNAddN-gradients/mul_6_grad/tuple/control_dependency?gradients/clip_by_value_2/Minimum_grad/tuple/control_dependency*
T0*/
_class%
#!loc:@gradients/mul_6_grad/Reshape*
N
?
gradients/Exp_1_grad/mulMulgradients/AddNExp_1*
T0
U
gradients/Sum_3_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
r
gradients/Sum_3_grad/SizeConst*
value	B :*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
dtype0

gradients/Sum_3_grad/addAddSum_3/reduction_indicesgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/modFloorModgradients/Sum_3_grad/addgradients/Sum_3_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
t
gradients/Sum_3_grad/Shape_1Const*
valueB *-
_class#
!loc:@gradients/Sum_3_grad/Shape*
dtype0
y
 gradients/Sum_3_grad/range/startConst*
value	B : *-
_class#
!loc:@gradients/Sum_3_grad/Shape*
dtype0
y
 gradients/Sum_3_grad/range/deltaConst*
value	B :*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
dtype0
½
gradients/Sum_3_grad/rangeRange gradients/Sum_3_grad/range/startgradients/Sum_3_grad/Size gradients/Sum_3_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
x
gradients/Sum_3_grad/Fill/valueConst*
value	B :*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
dtype0
ª
gradients/Sum_3_grad/FillFillgradients/Sum_3_grad/Shape_1gradients/Sum_3_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_3_grad/Shape
á
"gradients/Sum_3_grad/DynamicStitchDynamicStitchgradients/Sum_3_grad/rangegradients/Sum_3_grad/modgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
N
w
gradients/Sum_3_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@gradients/Sum_3_grad/Shape*
dtype0
£
gradients/Sum_3_grad/MaximumMaximum"gradients/Sum_3_grad/DynamicStitchgradients/Sum_3_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/floordivFloorDivgradients/Sum_3_grad/Shapegradients/Sum_3_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_3_grad/Shape

gradients/Sum_3_grad/ReshapeReshape;gradients/SquaredDifference_grad/tuple/control_dependency_1"gradients/Sum_3_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/floordiv*

Tmultiples0*
T0
V
gradients/add_2_grad/ShapeShapeextrinsic_value_estimate*
T0*
out_type0
O
gradients/add_2_grad/Shape_1Shapeclip_by_value_1*
T0*
out_type0

*gradients/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_2_grad/Shapegradients/add_2_grad/Shape_1*
T0
°
gradients/add_2_grad/SumSum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1*gradients/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/add_2_grad/ReshapeReshapegradients/add_2_grad/Sumgradients/add_2_grad/Shape*
T0*
Tshape0
´
gradients/add_2_grad/Sum_1Sum=gradients/SquaredDifference_1_grad/tuple/control_dependency_1,gradients/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/add_2_grad/Reshape_1Reshapegradients/add_2_grad/Sum_1gradients/add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/add_2_grad/tuple/group_depsNoOp^gradients/add_2_grad/Reshape^gradients/add_2_grad/Reshape_1
¹
-gradients/add_2_grad/tuple/control_dependencyIdentitygradients/add_2_grad/Reshape&^gradients/add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_2_grad/Reshape
¿
/gradients/add_2_grad/tuple/control_dependency_1Identitygradients/add_2_grad/Reshape_1&^gradients/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/add_2_grad/Reshape_1
A
gradients/sub_4_grad/ShapeShapeSum*
T0*
out_type0
E
gradients/sub_4_grad/Shape_1ShapeSum_1*
T0*
out_type0

*gradients/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_4_grad/Shapegradients/sub_4_grad/Shape_1*
T0

gradients/sub_4_grad/SumSumgradients/Exp_1_grad/mul*gradients/sub_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_4_grad/ReshapeReshapegradients/sub_4_grad/Sumgradients/sub_4_grad/Shape*
T0*
Tshape0

gradients/sub_4_grad/Sum_1Sumgradients/Exp_1_grad/mul,gradients/sub_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
D
gradients/sub_4_grad/NegNeggradients/sub_4_grad/Sum_1*
T0
x
gradients/sub_4_grad/Reshape_1Reshapegradients/sub_4_grad/Neggradients/sub_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_4_grad/tuple/group_depsNoOp^gradients/sub_4_grad/Reshape^gradients/sub_4_grad/Reshape_1
¹
-gradients/sub_4_grad/tuple/control_dependencyIdentitygradients/sub_4_grad/Reshape&^gradients/sub_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_4_grad/Reshape
¿
/gradients/sub_4_grad/tuple/control_dependency_1Identitygradients/sub_4_grad/Reshape_1&^gradients/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_4_grad/Reshape_1
_
$gradients/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
O
&gradients/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
y
&gradients/clip_by_value_1_grad/Shape_2Shape/gradients/add_2_grad/tuple/control_dependency_1*
T0*
out_type0
W
*gradients/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0

$gradients/clip_by_value_1_grad/zerosFill&gradients/clip_by_value_1_grad/Shape_2*gradients/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
b
+gradients/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumNeg*
T0
¤
4gradients/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs$gradients/clip_by_value_1_grad/Shape&gradients/clip_by_value_1_grad/Shape_1*
T0
¼
%gradients/clip_by_value_1_grad/SelectSelect+gradients/clip_by_value_1_grad/GreaterEqual/gradients/add_2_grad/tuple/control_dependency_1$gradients/clip_by_value_1_grad/zeros*
T0
¾
'gradients/clip_by_value_1_grad/Select_1Select+gradients/clip_by_value_1_grad/GreaterEqual$gradients/clip_by_value_1_grad/zeros/gradients/add_2_grad/tuple/control_dependency_1*
T0
¬
"gradients/clip_by_value_1_grad/SumSum%gradients/clip_by_value_1_grad/Select4gradients/clip_by_value_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

&gradients/clip_by_value_1_grad/ReshapeReshape"gradients/clip_by_value_1_grad/Sum$gradients/clip_by_value_1_grad/Shape*
T0*
Tshape0
²
$gradients/clip_by_value_1_grad/Sum_1Sum'gradients/clip_by_value_1_grad/Select_16gradients/clip_by_value_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

(gradients/clip_by_value_1_grad/Reshape_1Reshape$gradients/clip_by_value_1_grad/Sum_1&gradients/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

/gradients/clip_by_value_1_grad/tuple/group_depsNoOp'^gradients/clip_by_value_1_grad/Reshape)^gradients/clip_by_value_1_grad/Reshape_1
á
7gradients/clip_by_value_1_grad/tuple/control_dependencyIdentity&gradients/clip_by_value_1_grad/Reshape0^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/clip_by_value_1_grad/Reshape
ç
9gradients/clip_by_value_1_grad/tuple/control_dependency_1Identity(gradients/clip_by_value_1_grad/Reshape_10^gradients/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/clip_by_value_1_grad/Reshape_1
D
gradients/Sum_grad/ShapeShapeIdentity*
T0*
out_type0
n
gradients/Sum_grad/SizeConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0

gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*
T0*+
_class!
loc:@gradients/Sum_grad/Shape
p
gradients/Sum_grad/Shape_1Const*
valueB *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
u
gradients/Sum_grad/range/startConst*
value	B : *+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
u
gradients/Sum_grad/range/deltaConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
³
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*

Tidx0*+
_class!
loc:@gradients/Sum_grad/Shape
t
gradients/Sum_grad/Fill/valueConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0
¢
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*
T0*

index_type0*+
_class!
loc:@gradients/Sum_grad/Shape
Õ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*
T0*+
_class!
loc:@gradients/Sum_grad/Shape*
N
s
gradients/Sum_grad/Maximum/yConst*
value	B :*+
_class!
loc:@gradients/Sum_grad/Shape*
dtype0

gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*
T0*+
_class!
loc:@gradients/Sum_grad/Shape

gradients/Sum_grad/ReshapeReshape-gradients/sub_4_grad/tuple/control_dependency gradients/Sum_grad/DynamicStitch*
T0*
Tshape0
s
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0
U
,gradients/clip_by_value_1/Minimum_grad/ShapeShapesub_3*
T0*
out_type0
W
.gradients/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

.gradients/clip_by_value_1/Minimum_grad/Shape_2Shape7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
_
2gradients/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
³
,gradients/clip_by_value_1/Minimum_grad/zerosFill.gradients/clip_by_value_1/Minimum_grad/Shape_22gradients/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
`
0gradients/clip_by_value_1/Minimum_grad/LessEqual	LessEqualsub_3PolynomialDecay_1*
T0
¼
<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs,gradients/clip_by_value_1/Minimum_grad/Shape.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0
Ù
-gradients/clip_by_value_1/Minimum_grad/SelectSelect0gradients/clip_by_value_1/Minimum_grad/LessEqual7gradients/clip_by_value_1_grad/tuple/control_dependency,gradients/clip_by_value_1/Minimum_grad/zeros*
T0
Û
/gradients/clip_by_value_1/Minimum_grad/Select_1Select0gradients/clip_by_value_1/Minimum_grad/LessEqual,gradients/clip_by_value_1/Minimum_grad/zeros7gradients/clip_by_value_1_grad/tuple/control_dependency*
T0
Ä
*gradients/clip_by_value_1/Minimum_grad/SumSum-gradients/clip_by_value_1/Minimum_grad/Select<gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
ª
.gradients/clip_by_value_1/Minimum_grad/ReshapeReshape*gradients/clip_by_value_1/Minimum_grad/Sum,gradients/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ê
,gradients/clip_by_value_1/Minimum_grad/Sum_1Sum/gradients/clip_by_value_1/Minimum_grad/Select_1>gradients/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
°
0gradients/clip_by_value_1/Minimum_grad/Reshape_1Reshape,gradients/clip_by_value_1/Minimum_grad/Sum_1.gradients/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
£
7gradients/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp/^gradients/clip_by_value_1/Minimum_grad/Reshape1^gradients/clip_by_value_1/Minimum_grad/Reshape_1

?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity.gradients/clip_by_value_1/Minimum_grad/Reshape8^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/clip_by_value_1/Minimum_grad/Reshape

Agradients/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity0gradients/clip_by_value_1/Minimum_grad/Reshape_18^gradients/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/clip_by_value_1/Minimum_grad/Reshape_1
C
gradients/sub_3_grad/ShapeShapeSum_2*
T0*
out_type0
X
gradients/sub_3_grad/Shape_1Shapeextrinsic_value_estimate*
T0*
out_type0

*gradients/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_3_grad/Shapegradients/sub_3_grad/Shape_1*
T0
²
gradients/sub_3_grad/SumSum?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency*gradients/sub_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_3_grad/ReshapeReshapegradients/sub_3_grad/Sumgradients/sub_3_grad/Shape*
T0*
Tshape0
¶
gradients/sub_3_grad/Sum_1Sum?gradients/clip_by_value_1/Minimum_grad/tuple/control_dependency,gradients/sub_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
D
gradients/sub_3_grad/NegNeggradients/sub_3_grad/Sum_1*
T0
x
gradients/sub_3_grad/Reshape_1Reshapegradients/sub_3_grad/Neggradients/sub_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_3_grad/tuple/group_depsNoOp^gradients/sub_3_grad/Reshape^gradients/sub_3_grad/Reshape_1
¹
-gradients/sub_3_grad/tuple/control_dependencyIdentitygradients/sub_3_grad/Reshape&^gradients/sub_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_3_grad/Reshape
¿
/gradients/sub_3_grad/tuple/control_dependency_1Identitygradients/sub_3_grad/Reshape_1&^gradients/sub_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_3_grad/Reshape_1
U
gradients/Sum_2_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
r
gradients/Sum_2_grad/SizeConst*
value	B :*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
dtype0

gradients/Sum_2_grad/addAddSum_2/reduction_indicesgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/modFloorModgradients/Sum_2_grad/addgradients/Sum_2_grad/Size*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
t
gradients/Sum_2_grad/Shape_1Const*
valueB *-
_class#
!loc:@gradients/Sum_2_grad/Shape*
dtype0
y
 gradients/Sum_2_grad/range/startConst*
value	B : *-
_class#
!loc:@gradients/Sum_2_grad/Shape*
dtype0
y
 gradients/Sum_2_grad/range/deltaConst*
value	B :*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
dtype0
½
gradients/Sum_2_grad/rangeRange gradients/Sum_2_grad/range/startgradients/Sum_2_grad/Size gradients/Sum_2_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
x
gradients/Sum_2_grad/Fill/valueConst*
value	B :*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
dtype0
ª
gradients/Sum_2_grad/FillFillgradients/Sum_2_grad/Shape_1gradients/Sum_2_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients/Sum_2_grad/Shape
á
"gradients/Sum_2_grad/DynamicStitchDynamicStitchgradients/Sum_2_grad/rangegradients/Sum_2_grad/modgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Fill*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
N
w
gradients/Sum_2_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@gradients/Sum_2_grad/Shape*
dtype0
£
gradients/Sum_2_grad/MaximumMaximum"gradients/Sum_2_grad/DynamicStitchgradients/Sum_2_grad/Maximum/y*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/floordivFloorDivgradients/Sum_2_grad/Shapegradients/Sum_2_grad/Maximum*
T0*-
_class#
!loc:@gradients/Sum_2_grad/Shape

gradients/Sum_2_grad/ReshapeReshape-gradients/sub_3_grad/tuple/control_dependency"gradients/Sum_2_grad/DynamicStitch*
T0*
Tshape0
y
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/floordiv*

Tmultiples0*
T0
C
gradients/sub_2_grad/ShapeShapesub_1*
T0*
out_type0
J
gradients/sub_2_grad/Shape_1Const*
valueB:*
dtype0

*gradients/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_2_grad/Shapegradients/sub_2_grad/Shape_1*
T0

gradients/sub_2_grad/SumSumgradients/Sum_grad/Tile*gradients/sub_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_2_grad/ReshapeReshapegradients/sub_2_grad/Sumgradients/sub_2_grad/Shape*
T0*
Tshape0

gradients/sub_2_grad/Sum_1Sumgradients/Sum_grad/Tile,gradients/sub_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
D
gradients/sub_2_grad/NegNeggradients/sub_2_grad/Sum_1*
T0
x
gradients/sub_2_grad/Reshape_1Reshapegradients/sub_2_grad/Neggradients/sub_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_2_grad/tuple/group_depsNoOp^gradients/sub_2_grad/Reshape^gradients/sub_2_grad/Reshape_1
¹
-gradients/sub_2_grad/tuple/control_dependencyIdentitygradients/sub_2_grad/Reshape&^gradients/sub_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_2_grad/Reshape
¿
/gradients/sub_2_grad/tuple/control_dependency_1Identitygradients/sub_2_grad/Reshape_1&^gradients/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_2_grad/Reshape_1

gradients/AddN_1AddNgradients/Sum_3_grad/Tilegradients/Sum_2_grad/Tile*
T0*,
_class"
 loc:@gradients/Sum_3_grad/Tile*
N
s
2gradients/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_1*
T0*
data_formatNHWC

7gradients/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_13^gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad
Î
?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_18^gradients/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*,
_class"
 loc:@gradients/Sum_3_grad/Tile

Agradients/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1Identity2gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad8^gradients/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/extrinsic_value/BiasAdd_grad/BiasAddGrad
G
gradients/sub_1_grad/ShapeShape	truediv_1*
T0*
out_type0
E
gradients/sub_1_grad/Shape_1Const*
valueB *
dtype0

*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
 
gradients/sub_1_grad/SumSum-gradients/sub_2_grad/tuple/control_dependency*gradients/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
T0*
Tshape0
¤
gradients/sub_1_grad/Sum_1Sum-gradients/sub_2_grad/tuple/control_dependency,gradients/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
¹
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
¿
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
C
gradients/mul_3_grad/ShapeConst*
valueB *
dtype0
J
gradients/mul_3_grad/Shape_1Const*
valueB:*
dtype0

*gradients/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_3_grad/Shapegradients/mul_3_grad/Shape_1*
T0
q
gradients/mul_3_grad/MulMul/gradients/sub_2_grad/tuple/control_dependency_1log_sigma_squared/read*
T0

gradients/mul_3_grad/SumSumgradients/mul_3_grad/Mul*gradients/mul_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_3_grad/ReshapeReshapegradients/mul_3_grad/Sumgradients/mul_3_grad/Shape*
T0*
Tshape0
d
gradients/mul_3_grad/Mul_1Mulmul_3/x/gradients/sub_2_grad/tuple/control_dependency_1*
T0

gradients/mul_3_grad/Sum_1Sumgradients/mul_3_grad/Mul_1,gradients/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_3_grad/Reshape_1Reshapegradients/mul_3_grad/Sum_1gradients/mul_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Reshape^gradients/mul_3_grad/Reshape_1
¹
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Reshape&^gradients/mul_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_3_grad/Reshape
¿
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Reshape_1&^gradients/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_3_grad/Reshape_1
Ã
,gradients/extrinsic_value/MatMul_grad/MatMulMatMul?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependencyextrinsic_value/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ã
.gradients/extrinsic_value/MatMul_grad/MatMul_1MatMulmain_graph_1/hidden_1/Mul?gradients/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

6gradients/extrinsic_value/MatMul_grad/tuple/group_depsNoOp-^gradients/extrinsic_value/MatMul_grad/MatMul/^gradients/extrinsic_value/MatMul_grad/MatMul_1
û
>gradients/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity,gradients/extrinsic_value/MatMul_grad/MatMul7^gradients/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/extrinsic_value/MatMul_grad/MatMul

@gradients/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity.gradients/extrinsic_value/MatMul_grad/MatMul_17^gradients/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients/extrinsic_value/MatMul_grad/MatMul_1
G
gradients/truediv_1_grad/ShapeShapemul_1*
T0*
out_type0
N
 gradients/truediv_1_grad/Shape_1Const*
valueB:*
dtype0

.gradients/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/truediv_1_grad/Shape gradients/truediv_1_grad/Shape_1*
T0
h
 gradients/truediv_1_grad/RealDivRealDiv-gradients/sub_1_grad/tuple/control_dependencyExp*
T0

gradients/truediv_1_grad/SumSum gradients/truediv_1_grad/RealDiv.gradients/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

 gradients/truediv_1_grad/ReshapeReshapegradients/truediv_1_grad/Sumgradients/truediv_1_grad/Shape*
T0*
Tshape0
3
gradients/truediv_1_grad/NegNegmul_1*
T0
Y
"gradients/truediv_1_grad/RealDiv_1RealDivgradients/truediv_1_grad/NegExp*
T0
_
"gradients/truediv_1_grad/RealDiv_2RealDiv"gradients/truediv_1_grad/RealDiv_1Exp*
T0

gradients/truediv_1_grad/mulMul-gradients/sub_1_grad/tuple/control_dependency"gradients/truediv_1_grad/RealDiv_2*
T0

gradients/truediv_1_grad/Sum_1Sumgradients/truediv_1_grad/mul0gradients/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients/truediv_1_grad/Reshape_1Reshapegradients/truediv_1_grad/Sum_1 gradients/truediv_1_grad/Shape_1*
T0*
Tshape0
y
)gradients/truediv_1_grad/tuple/group_depsNoOp!^gradients/truediv_1_grad/Reshape#^gradients/truediv_1_grad/Reshape_1
É
1gradients/truediv_1_grad/tuple/control_dependencyIdentity gradients/truediv_1_grad/Reshape*^gradients/truediv_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/truediv_1_grad/Reshape
Ï
3gradients/truediv_1_grad/tuple/control_dependency_1Identity"gradients/truediv_1_grad/Reshape_1*^gradients/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/truediv_1_grad/Reshape_1
o
.gradients/main_graph_1/hidden_1/Mul_grad/ShapeShapemain_graph_1/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_1/hidden_1/Mul_grad/Shape_1Shapemain_graph_1/hidden_1/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_1/hidden_1/Mul_grad/Shape0gradients/main_graph_1/hidden_1/Mul_grad/Shape_1*
T0

,gradients/main_graph_1/hidden_1/Mul_grad/MulMul>gradients/extrinsic_value/MatMul_grad/tuple/control_dependencymain_graph_1/hidden_1/Sigmoid*
T0
Ç
,gradients/main_graph_1/hidden_1/Mul_grad/SumSum,gradients/main_graph_1/hidden_1/Mul_grad/Mul>gradients/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients/main_graph_1/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_1/hidden_1/Mul_grad/Sum.gradients/main_graph_1/hidden_1/Mul_grad/Shape*
T0*
Tshape0

.gradients/main_graph_1/hidden_1/Mul_grad/Mul_1Mulmain_graph_1/hidden_1/BiasAdd>gradients/extrinsic_value/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_1/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_1/hidden_1/Mul_grad/Mul_1@gradients/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_1/hidden_1/Mul_grad/Sum_10gradients/main_graph_1/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_1/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_1/hidden_1/Mul_grad/Reshape3^gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_1/hidden_1/Mul_grad/Reshape:^gradients/main_graph_1/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_1/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape_1
C
gradients/mul_1_grad/ShapeConst*
valueB *
dtype0
F
gradients/mul_1_grad/Shape_1ShapeSquare*
T0*
out_type0

*gradients/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/mul_1_grad/Shapegradients/mul_1_grad/Shape_1*
T0
c
gradients/mul_1_grad/MulMul1gradients/truediv_1_grad/tuple/control_dependencySquare*
T0

gradients/mul_1_grad/SumSumgradients/mul_1_grad/Mul*gradients/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/mul_1_grad/ReshapeReshapegradients/mul_1_grad/Sumgradients/mul_1_grad/Shape*
T0*
Tshape0
f
gradients/mul_1_grad/Mul_1Mulmul_1/x1gradients/truediv_1_grad/tuple/control_dependency*
T0

gradients/mul_1_grad/Sum_1Sumgradients/mul_1_grad/Mul_1,gradients/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/mul_1_grad/Reshape_1Reshapegradients/mul_1_grad/Sum_1gradients/mul_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Reshape^gradients/mul_1_grad/Reshape_1
¹
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Reshape&^gradients/mul_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/mul_1_grad/Reshape
¿
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Reshape_1&^gradients/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/mul_1_grad/Reshape_1
´
8gradients/main_graph_1/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_1/hidden_1/SigmoidCgradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
z
gradients/Square_grad/ConstConst0^gradients/mul_1_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0
K
gradients/Square_grad/MulMulsubgradients/Square_grad/Const*
T0
w
gradients/Square_grad/Mul_1Mul/gradients/mul_1_grad/tuple/control_dependency_1gradients/Square_grad/Mul*
T0
ì
gradients/AddN_2AddNAgradients/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_1/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape*
N
y
8gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_2*
T0*
data_formatNHWC

=gradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_29^gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad
ñ
Egradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_2>^gradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad
J
gradients/sub_grad/ShapeShapeStopGradient_1*
T0*
out_type0
K
gradients/sub_grad/Shape_1Shapedense/BiasAdd*
T0*
out_type0

(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0

gradients/sub_grad/SumSumgradients/Square_grad/Mul_1(gradients/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
T0*
Tshape0

gradients/sub_grad/Sum_1Sumgradients/Square_grad/Mul_1*gradients/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
T0*
Tshape0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
±
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
·
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
Õ
2gradients/main_graph_1/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_1/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ï
4gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_1/hidden_0/MulEgradients/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_1/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_1/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_1/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_1/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_1/hidden_0/Mul_grad/ShapeShapemain_graph_1/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_1/hidden_0/Mul_grad/Shape_1Shapemain_graph_1/hidden_0/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_1/hidden_0/Mul_grad/Shape0gradients/main_graph_1/hidden_0/Mul_grad/Shape_1*
T0
¡
,gradients/main_graph_1/hidden_0/Mul_grad/MulMulDgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_1/hidden_0/Sigmoid*
T0
Ç
,gradients/main_graph_1/hidden_0/Mul_grad/SumSum,gradients/main_graph_1/hidden_0/Mul_grad/Mul>gradients/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients/main_graph_1/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_1/hidden_0/Mul_grad/Sum.gradients/main_graph_1/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_1/hidden_0/Mul_grad/Mul_1Mulmain_graph_1/hidden_0/BiasAddDgradients/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_1/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_1/hidden_0/Mul_grad/Mul_1@gradients/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_1/hidden_0/Mul_grad/Sum_10gradients/main_graph_1/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_1/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_1/hidden_0/Mul_grad/Reshape3^gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_1/hidden_0/Mul_grad/Reshape:^gradients/main_graph_1/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_1/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape_1
´
8gradients/main_graph_1/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_1/hidden_0/SigmoidCgradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency_1*
T0

(gradients/dense/BiasAdd_grad/BiasAddGradBiasAddGrad-gradients/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC

-gradients/dense/BiasAdd_grad/tuple/group_depsNoOp.^gradients/sub_grad/tuple/control_dependency_1)^gradients/dense/BiasAdd_grad/BiasAddGrad
Ú
5gradients/dense/BiasAdd_grad/tuple/control_dependencyIdentity-gradients/sub_grad/tuple/control_dependency_1.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
ã
7gradients/dense/BiasAdd_grad/tuple/control_dependency_1Identity(gradients/dense/BiasAdd_grad/BiasAddGrad.^gradients/dense/BiasAdd_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/dense/BiasAdd_grad/BiasAddGrad
ì
gradients/AddN_3AddNAgradients/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_1/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape*
N
y
8gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
T0*
data_formatNHWC

=gradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_39^gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad
ñ
Egradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_3>^gradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_1/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad
¥
"gradients/dense/MatMul_grad/MatMulMatMul5gradients/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
¯
$gradients/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul5gradients/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

,gradients/dense/MatMul_grad/tuple/group_depsNoOp#^gradients/dense/MatMul_grad/MatMul%^gradients/dense/MatMul_grad/MatMul_1
Ó
4gradients/dense/MatMul_grad/tuple/control_dependencyIdentity"gradients/dense/MatMul_grad/MatMul-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dense/MatMul_grad/MatMul
Ù
6gradients/dense/MatMul_grad/tuple/control_dependency_1Identity$gradients/dense/MatMul_grad/MatMul_1-^gradients/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dense/MatMul_grad/MatMul_1
Õ
2gradients/main_graph_1/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_1/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
È
4gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationEgradients/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_1/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_1/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_1/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_1/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_1/hidden_0/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_1/Mul_grad/Shape0gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0

,gradients/main_graph_0/hidden_1/Mul_grad/MulMul4gradients/dense/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_1/Sigmoid*
T0
Ç
,gradients/main_graph_0/hidden_1/Mul_grad/SumSum,gradients/main_graph_0/hidden_1/Mul_grad/Mul>gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients/main_graph_0/hidden_1/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_1/Mul_grad/Sum.gradients/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0

.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAdd4gradients/dense/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_0/hidden_1/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_1/Mul_grad/Mul_1@gradients/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_1/Mul_grad/Sum_10gradients/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_1/Mul_grad/Reshape3^gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_1/Mul_grad/Reshape:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape_1
`
gradients/Exp_grad/mulMul3gradients/truediv_1_grad/tuple/control_dependency_1Exp*
T0
´
8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidCgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
×
gradients/AddN_4AddN/gradients/add_1_grad/tuple/control_dependency_1/gradients/mul_3_grad/tuple/control_dependency_1gradients/Exp_grad/mul*
T0*1
_class'
%#loc:@gradients/add_1_grad/Reshape_1*
N
ì
gradients/AddN_5AddNAgradients/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape*
N
y
8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_5*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_59^gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ñ
Egradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_5>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_1/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ï
4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulEgradients/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_1/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_1/MatMul_grad/MatMul_1
o
.gradients/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
q
0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
Â
>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients/main_graph_0/hidden_0/Mul_grad/Shape0gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
¡
,gradients/main_graph_0/hidden_0/Mul_grad/MulMulDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Ç
,gradients/main_graph_0/hidden_0/Mul_grad/SumSum,gradients/main_graph_0/hidden_0/Mul_grad/Mul>gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients/main_graph_0/hidden_0/Mul_grad/ReshapeReshape,gradients/main_graph_0/hidden_0/Mul_grad/Sum.gradients/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
£
.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddDgradients/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Í
.gradients/main_graph_0/hidden_0/Mul_grad/Sum_1Sum.gradients/main_graph_0/hidden_0/Mul_grad/Mul_1@gradients/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape.gradients/main_graph_0/hidden_0/Mul_grad/Sum_10gradients/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
©
9gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp1^gradients/main_graph_0/hidden_0/Mul_grad/Reshape3^gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1

Agradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity0gradients/main_graph_0/hidden_0/Mul_grad/Reshape:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape

Cgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity2gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1:^gradients/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape_1
´
8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidCgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
ì
gradients/AddN_6AddNAgradients/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency8gradients/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape*
N
y
8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_6*
T0*
data_formatNHWC

=gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients/AddN_69^gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ñ
Egradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_6>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/main_graph_0/hidden_0/Mul_grad/Reshape
£
Ggradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity8gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad>^gradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Õ
2gradients/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
È
4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationEgradients/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
°
<gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp3^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul5^gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Dgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity2gradients/main_graph_0/hidden_0/MatMul_grad/MatMul=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul

Fgradients/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity4gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1=^gradients/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/main_graph_0/hidden_0/MatMul_grad/MatMul_1
:
gradients_1/ShapeConst*
valueB *
dtype0
B
gradients_1/grad_ys_0Const*
valueB
 *  ?*
dtype0
]
gradients_1/FillFillgradients_1/Shapegradients_1/grad_ys_0*
T0*

index_type0
<
gradients_1/sub_6_grad/NegNeggradients_1/Fill*
T0
_
'gradients_1/sub_6_grad/tuple/group_depsNoOp^gradients_1/Fill^gradients_1/sub_6_grad/Neg
¥
/gradients_1/sub_6_grad/tuple/control_dependencyIdentitygradients_1/Fill(^gradients_1/sub_6_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
»
1gradients_1/sub_6_grad/tuple/control_dependency_1Identitygradients_1/sub_6_grad/Neg(^gradients_1/sub_6_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/sub_6_grad/Neg
a
'gradients_1/add_4_grad/tuple/group_depsNoOp0^gradients_1/sub_6_grad/tuple/control_dependency
Ä
/gradients_1/add_4_grad/tuple/control_dependencyIdentity/gradients_1/sub_6_grad/tuple/control_dependency(^gradients_1/add_4_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
Æ
1gradients_1/add_4_grad/tuple/control_dependency_1Identity/gradients_1/sub_6_grad/tuple/control_dependency(^gradients_1/add_4_grad/tuple/group_deps*
T0*#
_class
loc:@gradients_1/Fill
e
gradients_1/mul_9_grad/MulMul1gradients_1/sub_6_grad/tuple/control_dependency_1Mean_5*
T0
r
gradients_1/mul_9_grad/Mul_1Mul1gradients_1/sub_6_grad/tuple/control_dependency_1PolynomialDecay_2*
T0
k
'gradients_1/mul_9_grad/tuple/group_depsNoOp^gradients_1/mul_9_grad/Mul^gradients_1/mul_9_grad/Mul_1
¹
/gradients_1/mul_9_grad/tuple/control_dependencyIdentitygradients_1/mul_9_grad/Mul(^gradients_1/mul_9_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_9_grad/Mul
¿
1gradients_1/mul_9_grad/tuple/control_dependency_1Identitygradients_1/mul_9_grad/Mul_1(^gradients_1/mul_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_9_grad/Mul_1
[
gradients_1/Neg_1_grad/NegNeg/gradients_1/add_4_grad/tuple/control_dependency*
T0
e
gradients_1/mul_8_grad/MulMul1gradients_1/add_4_grad/tuple/control_dependency_1Mean_3*
T0
h
gradients_1/mul_8_grad/Mul_1Mul1gradients_1/add_4_grad/tuple/control_dependency_1mul_8/x*
T0
k
'gradients_1/mul_8_grad/tuple/group_depsNoOp^gradients_1/mul_8_grad/Mul^gradients_1/mul_8_grad/Mul_1
¹
/gradients_1/mul_8_grad/tuple/control_dependencyIdentitygradients_1/mul_8_grad/Mul(^gradients_1/mul_8_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_8_grad/Mul
¿
1gradients_1/mul_8_grad/tuple/control_dependency_1Identitygradients_1/mul_8_grad/Mul_1(^gradients_1/mul_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_8_grad/Mul_1
S
%gradients_1/Mean_5_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_5_grad/ReshapeReshape1gradients_1/mul_9_grad/tuple/control_dependency_1%gradients_1/Mean_5_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_5_grad/ShapeShapeDynamicPartition_2:1*
T0*
out_type0

gradients_1/Mean_5_grad/TileTilegradients_1/Mean_5_grad/Reshapegradients_1/Mean_5_grad/Shape*

Tmultiples0*
T0
W
gradients_1/Mean_5_grad/Shape_1ShapeDynamicPartition_2:1*
T0*
out_type0
H
gradients_1/Mean_5_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_5_grad/ConstConst*
valueB: *
dtype0

gradients_1/Mean_5_grad/ProdProdgradients_1/Mean_5_grad/Shape_1gradients_1/Mean_5_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_5_grad/Const_1Const*
valueB: *
dtype0

gradients_1/Mean_5_grad/Prod_1Prodgradients_1/Mean_5_grad/Shape_2gradients_1/Mean_5_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_5_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_5_grad/MaximumMaximumgradients_1/Mean_5_grad/Prod_1!gradients_1/Mean_5_grad/Maximum/y*
T0
t
 gradients_1/Mean_5_grad/floordivFloorDivgradients_1/Mean_5_grad/Prodgradients_1/Mean_5_grad/Maximum*
T0
^
gradients_1/Mean_5_grad/CastCast gradients_1/Mean_5_grad/floordiv*

SrcT0*

DstT0
o
gradients_1/Mean_5_grad/truedivRealDivgradients_1/Mean_5_grad/Tilegradients_1/Mean_5_grad/Cast*
T0
Z
%gradients_1/Mean_4_grad/Reshape/shapeConst*
valueB"      *
dtype0

gradients_1/Mean_4_grad/ReshapeReshapegradients_1/Neg_1_grad/Neg%gradients_1/Mean_4_grad/Reshape/shape*
T0*
Tshape0
U
gradients_1/Mean_4_grad/ShapeShapeDynamicPartition_1:1*
T0*
out_type0

gradients_1/Mean_4_grad/TileTilegradients_1/Mean_4_grad/Reshapegradients_1/Mean_4_grad/Shape*

Tmultiples0*
T0
W
gradients_1/Mean_4_grad/Shape_1ShapeDynamicPartition_1:1*
T0*
out_type0
H
gradients_1/Mean_4_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_4_grad/ConstConst*
valueB: *
dtype0

gradients_1/Mean_4_grad/ProdProdgradients_1/Mean_4_grad/Shape_1gradients_1/Mean_4_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_4_grad/Const_1Const*
valueB: *
dtype0

gradients_1/Mean_4_grad/Prod_1Prodgradients_1/Mean_4_grad/Shape_2gradients_1/Mean_4_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_4_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_4_grad/MaximumMaximumgradients_1/Mean_4_grad/Prod_1!gradients_1/Mean_4_grad/Maximum/y*
T0
t
 gradients_1/Mean_4_grad/floordivFloorDivgradients_1/Mean_4_grad/Prodgradients_1/Mean_4_grad/Maximum*
T0
^
gradients_1/Mean_4_grad/CastCast gradients_1/Mean_4_grad/floordiv*

SrcT0*

DstT0
o
gradients_1/Mean_4_grad/truedivRealDivgradients_1/Mean_4_grad/Tilegradients_1/Mean_4_grad/Cast*
T0
S
%gradients_1/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_3_grad/ReshapeReshape1gradients_1/mul_8_grad/tuple/control_dependency_1%gradients_1/Mean_3_grad/Reshape/shape*
T0*
Tshape0
K
gradients_1/Mean_3_grad/ConstConst*
valueB:*
dtype0

gradients_1/Mean_3_grad/TileTilegradients_1/Mean_3_grad/Reshapegradients_1/Mean_3_grad/Const*

Tmultiples0*
T0
L
gradients_1/Mean_3_grad/Const_1Const*
valueB
 *  ?*
dtype0
r
gradients_1/Mean_3_grad/truedivRealDivgradients_1/Mean_3_grad/Tilegradients_1/Mean_3_grad/Const_1*
T0
@
gradients_1/zeros_like	ZerosLikeDynamicPartition_2*
T0
Q
)gradients_1/DynamicPartition_2_grad/ShapeShapeCast*
T0*
out_type0
W
)gradients_1/DynamicPartition_2_grad/ConstConst*
valueB: *
dtype0
¬
(gradients_1/DynamicPartition_2_grad/ProdProd)gradients_1/DynamicPartition_2_grad/Shape)gradients_1/DynamicPartition_2_grad/Const*

Tidx0*
	keep_dims( *
T0
Y
/gradients_1/DynamicPartition_2_grad/range/startConst*
value	B : *
dtype0
Y
/gradients_1/DynamicPartition_2_grad/range/deltaConst*
value	B :*
dtype0
Ê
)gradients_1/DynamicPartition_2_grad/rangeRange/gradients_1/DynamicPartition_2_grad/range/start(gradients_1/DynamicPartition_2_grad/Prod/gradients_1/DynamicPartition_2_grad/range/delta*

Tidx0
£
+gradients_1/DynamicPartition_2_grad/ReshapeReshape)gradients_1/DynamicPartition_2_grad/range)gradients_1/DynamicPartition_2_grad/Shape*
T0*
Tshape0

4gradients_1/DynamicPartition_2_grad/DynamicPartitionDynamicPartition+gradients_1/DynamicPartition_2_grad/ReshapeCast*
num_partitions*
T0
û
1gradients_1/DynamicPartition_2_grad/DynamicStitchDynamicStitch4gradients_1/DynamicPartition_2_grad/DynamicPartition6gradients_1/DynamicPartition_2_grad/DynamicPartition:1gradients_1/zeros_likegradients_1/Mean_5_grad/truediv*
T0*
N
T
+gradients_1/DynamicPartition_2_grad/Shape_1Shapemul_5*
T0*
out_type0
¯
-gradients_1/DynamicPartition_2_grad/Reshape_1Reshape1gradients_1/DynamicPartition_2_grad/DynamicStitch+gradients_1/DynamicPartition_2_grad/Shape_1*
T0*
Tshape0
B
gradients_1/zeros_like_1	ZerosLikeDynamicPartition_1*
T0
Q
)gradients_1/DynamicPartition_1_grad/ShapeShapeCast*
T0*
out_type0
W
)gradients_1/DynamicPartition_1_grad/ConstConst*
valueB: *
dtype0
¬
(gradients_1/DynamicPartition_1_grad/ProdProd)gradients_1/DynamicPartition_1_grad/Shape)gradients_1/DynamicPartition_1_grad/Const*

Tidx0*
	keep_dims( *
T0
Y
/gradients_1/DynamicPartition_1_grad/range/startConst*
value	B : *
dtype0
Y
/gradients_1/DynamicPartition_1_grad/range/deltaConst*
value	B :*
dtype0
Ê
)gradients_1/DynamicPartition_1_grad/rangeRange/gradients_1/DynamicPartition_1_grad/range/start(gradients_1/DynamicPartition_1_grad/Prod/gradients_1/DynamicPartition_1_grad/range/delta*

Tidx0
£
+gradients_1/DynamicPartition_1_grad/ReshapeReshape)gradients_1/DynamicPartition_1_grad/range)gradients_1/DynamicPartition_1_grad/Shape*
T0*
Tshape0

4gradients_1/DynamicPartition_1_grad/DynamicPartitionDynamicPartition+gradients_1/DynamicPartition_1_grad/ReshapeCast*
num_partitions*
T0
ý
1gradients_1/DynamicPartition_1_grad/DynamicStitchDynamicStitch4gradients_1/DynamicPartition_1_grad/DynamicPartition6gradients_1/DynamicPartition_1_grad/DynamicPartition:1gradients_1/zeros_like_1gradients_1/Mean_4_grad/truediv*
T0*
N
V
+gradients_1/DynamicPartition_1_grad/Shape_1ShapeMinimum*
T0*
out_type0
¯
-gradients_1/DynamicPartition_1_grad/Reshape_1Reshape1gradients_1/DynamicPartition_1_grad/DynamicStitch+gradients_1/DynamicPartition_1_grad/Shape_1*
T0*
Tshape0
p
%gradients_1/Mean_3/input_grad/unstackUnpackgradients_1/Mean_3_grad/truediv*
T0*	
num*

axis 
I
gradients_1/mul_5_grad/ShapeShape	ones_like*
T0*
out_type0
G
gradients_1/mul_5_grad/Shape_1Const*
valueB *
dtype0

,gradients_1/mul_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_5_grad/Shapegradients_1/mul_5_grad/Shape_1*
T0
`
gradients_1/mul_5_grad/MulMul-gradients_1/DynamicPartition_2_grad/Reshape_1mul_4*
T0

gradients_1/mul_5_grad/SumSumgradients_1/mul_5_grad/Mul,gradients_1/mul_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_5_grad/ReshapeReshapegradients_1/mul_5_grad/Sumgradients_1/mul_5_grad/Shape*
T0*
Tshape0
f
gradients_1/mul_5_grad/Mul_1Mul	ones_like-gradients_1/DynamicPartition_2_grad/Reshape_1*
T0

gradients_1/mul_5_grad/Sum_1Sumgradients_1/mul_5_grad/Mul_1.gradients_1/mul_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_5_grad/Reshape_1Reshapegradients_1/mul_5_grad/Sum_1gradients_1/mul_5_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_5_grad/tuple/group_depsNoOp^gradients_1/mul_5_grad/Reshape!^gradients_1/mul_5_grad/Reshape_1
Á
/gradients_1/mul_5_grad/tuple/control_dependencyIdentitygradients_1/mul_5_grad/Reshape(^gradients_1/mul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_5_grad/Reshape
Ç
1gradients_1/mul_5_grad/tuple/control_dependency_1Identity gradients_1/mul_5_grad/Reshape_1(^gradients_1/mul_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_5_grad/Reshape_1
G
gradients_1/Minimum_grad/ShapeShapemul_6*
T0*
out_type0
I
 gradients_1/Minimum_grad/Shape_1Shapemul_7*
T0*
out_type0
q
 gradients_1/Minimum_grad/Shape_2Shape-gradients_1/DynamicPartition_1_grad/Reshape_1*
T0*
out_type0
Q
$gradients_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients_1/Minimum_grad/zerosFill gradients_1/Minimum_grad/Shape_2$gradients_1/Minimum_grad/zeros/Const*
T0*

index_type0
F
"gradients_1/Minimum_grad/LessEqual	LessEqualmul_6mul_7*
T0

.gradients_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Minimum_grad/Shape gradients_1/Minimum_grad/Shape_1*
T0
¥
gradients_1/Minimum_grad/SelectSelect"gradients_1/Minimum_grad/LessEqual-gradients_1/DynamicPartition_1_grad/Reshape_1gradients_1/Minimum_grad/zeros*
T0
§
!gradients_1/Minimum_grad/Select_1Select"gradients_1/Minimum_grad/LessEqualgradients_1/Minimum_grad/zeros-gradients_1/DynamicPartition_1_grad/Reshape_1*
T0

gradients_1/Minimum_grad/SumSumgradients_1/Minimum_grad/Select.gradients_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

 gradients_1/Minimum_grad/ReshapeReshapegradients_1/Minimum_grad/Sumgradients_1/Minimum_grad/Shape*
T0*
Tshape0
 
gradients_1/Minimum_grad/Sum_1Sum!gradients_1/Minimum_grad/Select_10gradients_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients_1/Minimum_grad/Reshape_1Reshapegradients_1/Minimum_grad/Sum_1 gradients_1/Minimum_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/Minimum_grad/tuple/group_depsNoOp!^gradients_1/Minimum_grad/Reshape#^gradients_1/Minimum_grad/Reshape_1
É
1gradients_1/Minimum_grad/tuple/control_dependencyIdentity gradients_1/Minimum_grad/Reshape*^gradients_1/Minimum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Minimum_grad/Reshape
Ï
3gradients_1/Minimum_grad/tuple/control_dependency_1Identity"gradients_1/Minimum_grad/Reshape_1*^gradients_1/Minimum_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/Minimum_grad/Reshape_1
S
%gradients_1/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_2_grad/ReshapeReshape%gradients_1/Mean_3/input_grad/unstack%gradients_1/Mean_2_grad/Reshape/shape*
T0*
Tshape0
S
gradients_1/Mean_2_grad/ShapeShapeDynamicPartition:1*
T0*
out_type0

gradients_1/Mean_2_grad/TileTilegradients_1/Mean_2_grad/Reshapegradients_1/Mean_2_grad/Shape*

Tmultiples0*
T0
U
gradients_1/Mean_2_grad/Shape_1ShapeDynamicPartition:1*
T0*
out_type0
H
gradients_1/Mean_2_grad/Shape_2Const*
valueB *
dtype0
K
gradients_1/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients_1/Mean_2_grad/ProdProdgradients_1/Mean_2_grad/Shape_1gradients_1/Mean_2_grad/Const*

Tidx0*
	keep_dims( *
T0
M
gradients_1/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients_1/Mean_2_grad/Prod_1Prodgradients_1/Mean_2_grad/Shape_2gradients_1/Mean_2_grad/Const_1*

Tidx0*
	keep_dims( *
T0
K
!gradients_1/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
v
gradients_1/Mean_2_grad/MaximumMaximumgradients_1/Mean_2_grad/Prod_1!gradients_1/Mean_2_grad/Maximum/y*
T0
t
 gradients_1/Mean_2_grad/floordivFloorDivgradients_1/Mean_2_grad/Prodgradients_1/Mean_2_grad/Maximum*
T0
^
gradients_1/Mean_2_grad/CastCast gradients_1/Mean_2_grad/floordiv*

SrcT0*

DstT0
o
gradients_1/Mean_2_grad/truedivRealDivgradients_1/Mean_2_grad/Tilegradients_1/Mean_2_grad/Cast*
T0
N
 gradients_1/ones_like_grad/ConstConst*
valueB: *
dtype0

gradients_1/ones_like_grad/SumSum/gradients_1/mul_5_grad/tuple/control_dependency gradients_1/ones_like_grad/Const*

Tidx0*
	keep_dims( *
T0
c
gradients_1/mul_4_grad/MulMul1gradients_1/mul_5_grad/tuple/control_dependency_1Mean*
T0
h
gradients_1/mul_4_grad/Mul_1Mul1gradients_1/mul_5_grad/tuple/control_dependency_1mul_4/x*
T0
k
'gradients_1/mul_4_grad/tuple/group_depsNoOp^gradients_1/mul_4_grad/Mul^gradients_1/mul_4_grad/Mul_1
¹
/gradients_1/mul_4_grad/tuple/control_dependencyIdentitygradients_1/mul_4_grad/Mul(^gradients_1/mul_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients_1/mul_4_grad/Mul
¿
1gradients_1/mul_4_grad/tuple/control_dependency_1Identitygradients_1/mul_4_grad/Mul_1(^gradients_1/mul_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/mul_4_grad/Mul_1
E
gradients_1/mul_6_grad/ShapeShapeExp_1*
T0*
out_type0
L
gradients_1/mul_6_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

,gradients_1/mul_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_6_grad/Shapegradients_1/mul_6_grad/Shape_1*
T0
i
gradients_1/mul_6_grad/MulMul1gradients_1/Minimum_grad/tuple/control_dependency
ExpandDims*
T0

gradients_1/mul_6_grad/SumSumgradients_1/mul_6_grad/Mul,gradients_1/mul_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_6_grad/ReshapeReshapegradients_1/mul_6_grad/Sumgradients_1/mul_6_grad/Shape*
T0*
Tshape0
f
gradients_1/mul_6_grad/Mul_1MulExp_11gradients_1/Minimum_grad/tuple/control_dependency*
T0

gradients_1/mul_6_grad/Sum_1Sumgradients_1/mul_6_grad/Mul_1.gradients_1/mul_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_6_grad/Reshape_1Reshapegradients_1/mul_6_grad/Sum_1gradients_1/mul_6_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_6_grad/tuple/group_depsNoOp^gradients_1/mul_6_grad/Reshape!^gradients_1/mul_6_grad/Reshape_1
Á
/gradients_1/mul_6_grad/tuple/control_dependencyIdentitygradients_1/mul_6_grad/Reshape(^gradients_1/mul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_6_grad/Reshape
Ç
1gradients_1/mul_6_grad/tuple/control_dependency_1Identity gradients_1/mul_6_grad/Reshape_1(^gradients_1/mul_6_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_6_grad/Reshape_1
O
gradients_1/mul_7_grad/ShapeShapeclip_by_value_2*
T0*
out_type0
L
gradients_1/mul_7_grad/Shape_1Shape
ExpandDims*
T0*
out_type0

,gradients_1/mul_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_7_grad/Shapegradients_1/mul_7_grad/Shape_1*
T0
k
gradients_1/mul_7_grad/MulMul3gradients_1/Minimum_grad/tuple/control_dependency_1
ExpandDims*
T0

gradients_1/mul_7_grad/SumSumgradients_1/mul_7_grad/Mul,gradients_1/mul_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_7_grad/ReshapeReshapegradients_1/mul_7_grad/Sumgradients_1/mul_7_grad/Shape*
T0*
Tshape0
r
gradients_1/mul_7_grad/Mul_1Mulclip_by_value_23gradients_1/Minimum_grad/tuple/control_dependency_1*
T0

gradients_1/mul_7_grad/Sum_1Sumgradients_1/mul_7_grad/Mul_1.gradients_1/mul_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_7_grad/Reshape_1Reshapegradients_1/mul_7_grad/Sum_1gradients_1/mul_7_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_7_grad/tuple/group_depsNoOp^gradients_1/mul_7_grad/Reshape!^gradients_1/mul_7_grad/Reshape_1
Á
/gradients_1/mul_7_grad/tuple/control_dependencyIdentitygradients_1/mul_7_grad/Reshape(^gradients_1/mul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_7_grad/Reshape
Ç
1gradients_1/mul_7_grad/tuple/control_dependency_1Identity gradients_1/mul_7_grad/Reshape_1(^gradients_1/mul_7_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_7_grad/Reshape_1
@
gradients_1/zeros_like_2	ZerosLikeDynamicPartition*
T0
O
'gradients_1/DynamicPartition_grad/ShapeShapeCast*
T0*
out_type0
U
'gradients_1/DynamicPartition_grad/ConstConst*
valueB: *
dtype0
¦
&gradients_1/DynamicPartition_grad/ProdProd'gradients_1/DynamicPartition_grad/Shape'gradients_1/DynamicPartition_grad/Const*

Tidx0*
	keep_dims( *
T0
W
-gradients_1/DynamicPartition_grad/range/startConst*
value	B : *
dtype0
W
-gradients_1/DynamicPartition_grad/range/deltaConst*
value	B :*
dtype0
Â
'gradients_1/DynamicPartition_grad/rangeRange-gradients_1/DynamicPartition_grad/range/start&gradients_1/DynamicPartition_grad/Prod-gradients_1/DynamicPartition_grad/range/delta*

Tidx0

)gradients_1/DynamicPartition_grad/ReshapeReshape'gradients_1/DynamicPartition_grad/range'gradients_1/DynamicPartition_grad/Shape*
T0*
Tshape0

2gradients_1/DynamicPartition_grad/DynamicPartitionDynamicPartition)gradients_1/DynamicPartition_grad/ReshapeCast*
num_partitions*
T0
÷
/gradients_1/DynamicPartition_grad/DynamicStitchDynamicStitch2gradients_1/DynamicPartition_grad/DynamicPartition4gradients_1/DynamicPartition_grad/DynamicPartition:1gradients_1/zeros_like_2gradients_1/Mean_2_grad/truediv*
T0*
N
T
)gradients_1/DynamicPartition_grad/Shape_1ShapeMaximum*
T0*
out_type0
©
+gradients_1/DynamicPartition_grad/Reshape_1Reshape/gradients_1/DynamicPartition_grad/DynamicStitch)gradients_1/DynamicPartition_grad/Shape_1*
T0*
Tshape0
Q
#gradients_1/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients_1/Mean_grad/ReshapeReshape1gradients_1/mul_4_grad/tuple/control_dependency_1#gradients_1/Mean_grad/Reshape/shape*
T0*
Tshape0
I
gradients_1/Mean_grad/ConstConst*
valueB:*
dtype0
y
gradients_1/Mean_grad/TileTilegradients_1/Mean_grad/Reshapegradients_1/Mean_grad/Const*

Tmultiples0*
T0
J
gradients_1/Mean_grad/Const_1Const*
valueB
 *  @*
dtype0
l
gradients_1/Mean_grad/truedivRealDivgradients_1/Mean_grad/Tilegradients_1/Mean_grad/Const_1*
T0
a
&gradients_1/clip_by_value_2_grad/ShapeShapeclip_by_value_2/Minimum*
T0*
out_type0
Q
(gradients_1/clip_by_value_2_grad/Shape_1Const*
valueB *
dtype0
{
(gradients_1/clip_by_value_2_grad/Shape_2Shape/gradients_1/mul_7_grad/tuple/control_dependency*
T0*
out_type0
Y
,gradients_1/clip_by_value_2_grad/zeros/ConstConst*
valueB
 *    *
dtype0
¡
&gradients_1/clip_by_value_2_grad/zerosFill(gradients_1/clip_by_value_2_grad/Shape_2,gradients_1/clip_by_value_2_grad/zeros/Const*
T0*

index_type0
f
-gradients_1/clip_by_value_2_grad/GreaterEqualGreaterEqualclip_by_value_2/Minimumsub_5*
T0
ª
6gradients_1/clip_by_value_2_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/clip_by_value_2_grad/Shape(gradients_1/clip_by_value_2_grad/Shape_1*
T0
Â
'gradients_1/clip_by_value_2_grad/SelectSelect-gradients_1/clip_by_value_2_grad/GreaterEqual/gradients_1/mul_7_grad/tuple/control_dependency&gradients_1/clip_by_value_2_grad/zeros*
T0
Ä
)gradients_1/clip_by_value_2_grad/Select_1Select-gradients_1/clip_by_value_2_grad/GreaterEqual&gradients_1/clip_by_value_2_grad/zeros/gradients_1/mul_7_grad/tuple/control_dependency*
T0
²
$gradients_1/clip_by_value_2_grad/SumSum'gradients_1/clip_by_value_2_grad/Select6gradients_1/clip_by_value_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

(gradients_1/clip_by_value_2_grad/ReshapeReshape$gradients_1/clip_by_value_2_grad/Sum&gradients_1/clip_by_value_2_grad/Shape*
T0*
Tshape0
¸
&gradients_1/clip_by_value_2_grad/Sum_1Sum)gradients_1/clip_by_value_2_grad/Select_18gradients_1/clip_by_value_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

*gradients_1/clip_by_value_2_grad/Reshape_1Reshape&gradients_1/clip_by_value_2_grad/Sum_1(gradients_1/clip_by_value_2_grad/Shape_1*
T0*
Tshape0

1gradients_1/clip_by_value_2_grad/tuple/group_depsNoOp)^gradients_1/clip_by_value_2_grad/Reshape+^gradients_1/clip_by_value_2_grad/Reshape_1
é
9gradients_1/clip_by_value_2_grad/tuple/control_dependencyIdentity(gradients_1/clip_by_value_2_grad/Reshape2^gradients_1/clip_by_value_2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_2_grad/Reshape
ï
;gradients_1/clip_by_value_2_grad/tuple/control_dependency_1Identity*gradients_1/clip_by_value_2_grad/Reshape_12^gradients_1/clip_by_value_2_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/clip_by_value_2_grad/Reshape_1
S
gradients_1/Maximum_grad/ShapeShapeSquaredDifference*
T0*
out_type0
W
 gradients_1/Maximum_grad/Shape_1ShapeSquaredDifference_1*
T0*
out_type0
o
 gradients_1/Maximum_grad/Shape_2Shape+gradients_1/DynamicPartition_grad/Reshape_1*
T0*
out_type0
Q
$gradients_1/Maximum_grad/zeros/ConstConst*
valueB
 *    *
dtype0

gradients_1/Maximum_grad/zerosFill gradients_1/Maximum_grad/Shape_2$gradients_1/Maximum_grad/zeros/Const*
T0*

index_type0
f
%gradients_1/Maximum_grad/GreaterEqualGreaterEqualSquaredDifferenceSquaredDifference_1*
T0

.gradients_1/Maximum_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/Maximum_grad/Shape gradients_1/Maximum_grad/Shape_1*
T0
¦
gradients_1/Maximum_grad/SelectSelect%gradients_1/Maximum_grad/GreaterEqual+gradients_1/DynamicPartition_grad/Reshape_1gradients_1/Maximum_grad/zeros*
T0
¨
!gradients_1/Maximum_grad/Select_1Select%gradients_1/Maximum_grad/GreaterEqualgradients_1/Maximum_grad/zeros+gradients_1/DynamicPartition_grad/Reshape_1*
T0

gradients_1/Maximum_grad/SumSumgradients_1/Maximum_grad/Select.gradients_1/Maximum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

 gradients_1/Maximum_grad/ReshapeReshapegradients_1/Maximum_grad/Sumgradients_1/Maximum_grad/Shape*
T0*
Tshape0
 
gradients_1/Maximum_grad/Sum_1Sum!gradients_1/Maximum_grad/Select_10gradients_1/Maximum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

"gradients_1/Maximum_grad/Reshape_1Reshapegradients_1/Maximum_grad/Sum_1 gradients_1/Maximum_grad/Shape_1*
T0*
Tshape0
y
)gradients_1/Maximum_grad/tuple/group_depsNoOp!^gradients_1/Maximum_grad/Reshape#^gradients_1/Maximum_grad/Reshape_1
É
1gradients_1/Maximum_grad/tuple/control_dependencyIdentity gradients_1/Maximum_grad/Reshape*^gradients_1/Maximum_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/Maximum_grad/Reshape
Ï
3gradients_1/Maximum_grad/tuple/control_dependency_1Identity"gradients_1/Maximum_grad/Reshape_1*^gradients_1/Maximum_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/Maximum_grad/Reshape_1
E
gradients_1/add_1_grad/ShapeConst*
valueB *
dtype0
L
gradients_1/add_1_grad/Shape_1Const*
valueB:*
dtype0

,gradients_1/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_1_grad/Shapegradients_1/add_1_grad/Shape_1*
T0

gradients_1/add_1_grad/SumSumgradients_1/Mean_grad/truediv,gradients_1/add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_1_grad/ReshapeReshapegradients_1/add_1_grad/Sumgradients_1/add_1_grad/Shape*
T0*
Tshape0

gradients_1/add_1_grad/Sum_1Sumgradients_1/Mean_grad/truediv.gradients_1/add_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/add_1_grad/Reshape_1Reshapegradients_1/add_1_grad/Sum_1gradients_1/add_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_1_grad/tuple/group_depsNoOp^gradients_1/add_1_grad/Reshape!^gradients_1/add_1_grad/Reshape_1
Á
/gradients_1/add_1_grad/tuple/control_dependencyIdentitygradients_1/add_1_grad/Reshape(^gradients_1/add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_1_grad/Reshape
Ç
1gradients_1/add_1_grad/tuple/control_dependency_1Identity gradients_1/add_1_grad/Reshape_1(^gradients_1/add_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_1_grad/Reshape_1
W
.gradients_1/clip_by_value_2/Minimum_grad/ShapeShapeExp_1*
T0*
out_type0
Y
0gradients_1/clip_by_value_2/Minimum_grad/Shape_1Const*
valueB *
dtype0

0gradients_1/clip_by_value_2/Minimum_grad/Shape_2Shape9gradients_1/clip_by_value_2_grad/tuple/control_dependency*
T0*
out_type0
a
4gradients_1/clip_by_value_2/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
¹
.gradients_1/clip_by_value_2/Minimum_grad/zerosFill0gradients_1/clip_by_value_2/Minimum_grad/Shape_24gradients_1/clip_by_value_2/Minimum_grad/zeros/Const*
T0*

index_type0
V
2gradients_1/clip_by_value_2/Minimum_grad/LessEqual	LessEqualExp_1add_3*
T0
Â
>gradients_1/clip_by_value_2/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients_1/clip_by_value_2/Minimum_grad/Shape0gradients_1/clip_by_value_2/Minimum_grad/Shape_1*
T0
á
/gradients_1/clip_by_value_2/Minimum_grad/SelectSelect2gradients_1/clip_by_value_2/Minimum_grad/LessEqual9gradients_1/clip_by_value_2_grad/tuple/control_dependency.gradients_1/clip_by_value_2/Minimum_grad/zeros*
T0
ã
1gradients_1/clip_by_value_2/Minimum_grad/Select_1Select2gradients_1/clip_by_value_2/Minimum_grad/LessEqual.gradients_1/clip_by_value_2/Minimum_grad/zeros9gradients_1/clip_by_value_2_grad/tuple/control_dependency*
T0
Ê
,gradients_1/clip_by_value_2/Minimum_grad/SumSum/gradients_1/clip_by_value_2/Minimum_grad/Select>gradients_1/clip_by_value_2/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients_1/clip_by_value_2/Minimum_grad/ReshapeReshape,gradients_1/clip_by_value_2/Minimum_grad/Sum.gradients_1/clip_by_value_2/Minimum_grad/Shape*
T0*
Tshape0
Ð
.gradients_1/clip_by_value_2/Minimum_grad/Sum_1Sum1gradients_1/clip_by_value_2/Minimum_grad/Select_1@gradients_1/clip_by_value_2/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/clip_by_value_2/Minimum_grad/Reshape_1Reshape.gradients_1/clip_by_value_2/Minimum_grad/Sum_10gradients_1/clip_by_value_2/Minimum_grad/Shape_1*
T0*
Tshape0
©
9gradients_1/clip_by_value_2/Minimum_grad/tuple/group_depsNoOp1^gradients_1/clip_by_value_2/Minimum_grad/Reshape3^gradients_1/clip_by_value_2/Minimum_grad/Reshape_1

Agradients_1/clip_by_value_2/Minimum_grad/tuple/control_dependencyIdentity0gradients_1/clip_by_value_2/Minimum_grad/Reshape:^gradients_1/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value_2/Minimum_grad/Reshape

Cgradients_1/clip_by_value_2/Minimum_grad/tuple/control_dependency_1Identity2gradients_1/clip_by_value_2/Minimum_grad/Reshape_1:^gradients_1/clip_by_value_2/Minimum_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/clip_by_value_2/Minimum_grad/Reshape_1
]
(gradients_1/SquaredDifference_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
S
*gradients_1/SquaredDifference_grad/Shape_1ShapeSum_3*
T0*
out_type0
°
8gradients_1/SquaredDifference_grad/BroadcastGradientArgsBroadcastGradientArgs(gradients_1/SquaredDifference_grad/Shape*gradients_1/SquaredDifference_grad/Shape_1*
T0

)gradients_1/SquaredDifference_grad/scalarConst2^gradients_1/Maximum_grad/tuple/control_dependency*
valueB
 *   @*
dtype0

&gradients_1/SquaredDifference_grad/mulMul)gradients_1/SquaredDifference_grad/scalar1gradients_1/Maximum_grad/tuple/control_dependency*
T0

&gradients_1/SquaredDifference_grad/subSubextrinsic_returnsSum_32^gradients_1/Maximum_grad/tuple/control_dependency*
T0

(gradients_1/SquaredDifference_grad/mul_1Mul&gradients_1/SquaredDifference_grad/mul&gradients_1/SquaredDifference_grad/sub*
T0
·
&gradients_1/SquaredDifference_grad/SumSum(gradients_1/SquaredDifference_grad/mul_18gradients_1/SquaredDifference_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

*gradients_1/SquaredDifference_grad/ReshapeReshape&gradients_1/SquaredDifference_grad/Sum(gradients_1/SquaredDifference_grad/Shape*
T0*
Tshape0
»
(gradients_1/SquaredDifference_grad/Sum_1Sum(gradients_1/SquaredDifference_grad/mul_1:gradients_1/SquaredDifference_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¤
,gradients_1/SquaredDifference_grad/Reshape_1Reshape(gradients_1/SquaredDifference_grad/Sum_1*gradients_1/SquaredDifference_grad/Shape_1*
T0*
Tshape0
d
&gradients_1/SquaredDifference_grad/NegNeg,gradients_1/SquaredDifference_grad/Reshape_1*
T0

3gradients_1/SquaredDifference_grad/tuple/group_depsNoOp+^gradients_1/SquaredDifference_grad/Reshape'^gradients_1/SquaredDifference_grad/Neg
ñ
;gradients_1/SquaredDifference_grad/tuple/control_dependencyIdentity*gradients_1/SquaredDifference_grad/Reshape4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/SquaredDifference_grad/Reshape
ë
=gradients_1/SquaredDifference_grad/tuple/control_dependency_1Identity&gradients_1/SquaredDifference_grad/Neg4^gradients_1/SquaredDifference_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/SquaredDifference_grad/Neg
_
*gradients_1/SquaredDifference_1_grad/ShapeShapeextrinsic_returns*
T0*
out_type0
U
,gradients_1/SquaredDifference_1_grad/Shape_1Shapeadd_2*
T0*
out_type0
¶
:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgsBroadcastGradientArgs*gradients_1/SquaredDifference_1_grad/Shape,gradients_1/SquaredDifference_1_grad/Shape_1*
T0

+gradients_1/SquaredDifference_1_grad/scalarConst4^gradients_1/Maximum_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0

(gradients_1/SquaredDifference_1_grad/mulMul+gradients_1/SquaredDifference_1_grad/scalar3gradients_1/Maximum_grad/tuple/control_dependency_1*
T0

(gradients_1/SquaredDifference_1_grad/subSubextrinsic_returnsadd_24^gradients_1/Maximum_grad/tuple/control_dependency_1*
T0

*gradients_1/SquaredDifference_1_grad/mul_1Mul(gradients_1/SquaredDifference_1_grad/mul(gradients_1/SquaredDifference_1_grad/sub*
T0
½
(gradients_1/SquaredDifference_1_grad/SumSum*gradients_1/SquaredDifference_1_grad/mul_1:gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¤
,gradients_1/SquaredDifference_1_grad/ReshapeReshape(gradients_1/SquaredDifference_1_grad/Sum*gradients_1/SquaredDifference_1_grad/Shape*
T0*
Tshape0
Á
*gradients_1/SquaredDifference_1_grad/Sum_1Sum*gradients_1/SquaredDifference_1_grad/mul_1<gradients_1/SquaredDifference_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
ª
.gradients_1/SquaredDifference_1_grad/Reshape_1Reshape*gradients_1/SquaredDifference_1_grad/Sum_1,gradients_1/SquaredDifference_1_grad/Shape_1*
T0*
Tshape0
h
(gradients_1/SquaredDifference_1_grad/NegNeg.gradients_1/SquaredDifference_1_grad/Reshape_1*
T0

5gradients_1/SquaredDifference_1_grad/tuple/group_depsNoOp-^gradients_1/SquaredDifference_1_grad/Reshape)^gradients_1/SquaredDifference_1_grad/Neg
ù
=gradients_1/SquaredDifference_1_grad/tuple/control_dependencyIdentity,gradients_1/SquaredDifference_1_grad/Reshape6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients_1/SquaredDifference_1_grad/Reshape
ó
?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1Identity(gradients_1/SquaredDifference_1_grad/Neg6^gradients_1/SquaredDifference_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/SquaredDifference_1_grad/Neg
Ñ
gradients_1/AddNAddN/gradients_1/mul_6_grad/tuple/control_dependencyAgradients_1/clip_by_value_2/Minimum_grad/tuple/control_dependency*
T0*1
_class'
%#loc:@gradients_1/mul_6_grad/Reshape*
N
C
gradients_1/Exp_1_grad/mulMulgradients_1/AddNExp_1*
T0
W
gradients_1/Sum_3_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
v
gradients_1/Sum_3_grad/SizeConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
dtype0

gradients_1/Sum_3_grad/addAddSum_3/reduction_indicesgradients_1/Sum_3_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape

gradients_1/Sum_3_grad/modFloorModgradients_1/Sum_3_grad/addgradients_1/Sum_3_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
x
gradients_1/Sum_3_grad/Shape_1Const*
valueB */
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
dtype0
}
"gradients_1/Sum_3_grad/range/startConst*
value	B : */
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
dtype0
}
"gradients_1/Sum_3_grad/range/deltaConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
dtype0
Ç
gradients_1/Sum_3_grad/rangeRange"gradients_1/Sum_3_grad/range/startgradients_1/Sum_3_grad/Size"gradients_1/Sum_3_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
|
!gradients_1/Sum_3_grad/Fill/valueConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
dtype0
²
gradients_1/Sum_3_grad/FillFillgradients_1/Sum_3_grad/Shape_1!gradients_1/Sum_3_grad/Fill/value*
T0*

index_type0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
í
$gradients_1/Sum_3_grad/DynamicStitchDynamicStitchgradients_1/Sum_3_grad/rangegradients_1/Sum_3_grad/modgradients_1/Sum_3_grad/Shapegradients_1/Sum_3_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
N
{
 gradients_1/Sum_3_grad/Maximum/yConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape*
dtype0
«
gradients_1/Sum_3_grad/MaximumMaximum$gradients_1/Sum_3_grad/DynamicStitch gradients_1/Sum_3_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
£
gradients_1/Sum_3_grad/floordivFloorDivgradients_1/Sum_3_grad/Shapegradients_1/Sum_3_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_3_grad/Shape
¥
gradients_1/Sum_3_grad/ReshapeReshape=gradients_1/SquaredDifference_grad/tuple/control_dependency_1$gradients_1/Sum_3_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_3_grad/TileTilegradients_1/Sum_3_grad/Reshapegradients_1/Sum_3_grad/floordiv*

Tmultiples0*
T0
X
gradients_1/add_2_grad/ShapeShapeextrinsic_value_estimate*
T0*
out_type0
Q
gradients_1/add_2_grad/Shape_1Shapeclip_by_value_1*
T0*
out_type0

,gradients_1/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/add_2_grad/Shapegradients_1/add_2_grad/Shape_1*
T0
¶
gradients_1/add_2_grad/SumSum?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1,gradients_1/add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/add_2_grad/ReshapeReshapegradients_1/add_2_grad/Sumgradients_1/add_2_grad/Shape*
T0*
Tshape0
º
gradients_1/add_2_grad/Sum_1Sum?gradients_1/SquaredDifference_1_grad/tuple/control_dependency_1.gradients_1/add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/add_2_grad/Reshape_1Reshapegradients_1/add_2_grad/Sum_1gradients_1/add_2_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/add_2_grad/tuple/group_depsNoOp^gradients_1/add_2_grad/Reshape!^gradients_1/add_2_grad/Reshape_1
Á
/gradients_1/add_2_grad/tuple/control_dependencyIdentitygradients_1/add_2_grad/Reshape(^gradients_1/add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/add_2_grad/Reshape
Ç
1gradients_1/add_2_grad/tuple/control_dependency_1Identity gradients_1/add_2_grad/Reshape_1(^gradients_1/add_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/add_2_grad/Reshape_1
C
gradients_1/sub_4_grad/ShapeShapeSum*
T0*
out_type0
G
gradients_1/sub_4_grad/Shape_1ShapeSum_1*
T0*
out_type0

,gradients_1/sub_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_4_grad/Shapegradients_1/sub_4_grad/Shape_1*
T0

gradients_1/sub_4_grad/SumSumgradients_1/Exp_1_grad/mul,gradients_1/sub_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/sub_4_grad/ReshapeReshapegradients_1/sub_4_grad/Sumgradients_1/sub_4_grad/Shape*
T0*
Tshape0

gradients_1/sub_4_grad/Sum_1Sumgradients_1/Exp_1_grad/mul.gradients_1/sub_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
H
gradients_1/sub_4_grad/NegNeggradients_1/sub_4_grad/Sum_1*
T0
~
 gradients_1/sub_4_grad/Reshape_1Reshapegradients_1/sub_4_grad/Neggradients_1/sub_4_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/sub_4_grad/tuple/group_depsNoOp^gradients_1/sub_4_grad/Reshape!^gradients_1/sub_4_grad/Reshape_1
Á
/gradients_1/sub_4_grad/tuple/control_dependencyIdentitygradients_1/sub_4_grad/Reshape(^gradients_1/sub_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_4_grad/Reshape
Ç
1gradients_1/sub_4_grad/tuple/control_dependency_1Identity gradients_1/sub_4_grad/Reshape_1(^gradients_1/sub_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_4_grad/Reshape_1
a
&gradients_1/clip_by_value_1_grad/ShapeShapeclip_by_value_1/Minimum*
T0*
out_type0
Q
(gradients_1/clip_by_value_1_grad/Shape_1Const*
valueB *
dtype0
}
(gradients_1/clip_by_value_1_grad/Shape_2Shape1gradients_1/add_2_grad/tuple/control_dependency_1*
T0*
out_type0
Y
,gradients_1/clip_by_value_1_grad/zeros/ConstConst*
valueB
 *    *
dtype0
¡
&gradients_1/clip_by_value_1_grad/zerosFill(gradients_1/clip_by_value_1_grad/Shape_2,gradients_1/clip_by_value_1_grad/zeros/Const*
T0*

index_type0
d
-gradients_1/clip_by_value_1_grad/GreaterEqualGreaterEqualclip_by_value_1/MinimumNeg*
T0
ª
6gradients_1/clip_by_value_1_grad/BroadcastGradientArgsBroadcastGradientArgs&gradients_1/clip_by_value_1_grad/Shape(gradients_1/clip_by_value_1_grad/Shape_1*
T0
Ä
'gradients_1/clip_by_value_1_grad/SelectSelect-gradients_1/clip_by_value_1_grad/GreaterEqual1gradients_1/add_2_grad/tuple/control_dependency_1&gradients_1/clip_by_value_1_grad/zeros*
T0
Æ
)gradients_1/clip_by_value_1_grad/Select_1Select-gradients_1/clip_by_value_1_grad/GreaterEqual&gradients_1/clip_by_value_1_grad/zeros1gradients_1/add_2_grad/tuple/control_dependency_1*
T0
²
$gradients_1/clip_by_value_1_grad/SumSum'gradients_1/clip_by_value_1_grad/Select6gradients_1/clip_by_value_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

(gradients_1/clip_by_value_1_grad/ReshapeReshape$gradients_1/clip_by_value_1_grad/Sum&gradients_1/clip_by_value_1_grad/Shape*
T0*
Tshape0
¸
&gradients_1/clip_by_value_1_grad/Sum_1Sum)gradients_1/clip_by_value_1_grad/Select_18gradients_1/clip_by_value_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

*gradients_1/clip_by_value_1_grad/Reshape_1Reshape&gradients_1/clip_by_value_1_grad/Sum_1(gradients_1/clip_by_value_1_grad/Shape_1*
T0*
Tshape0

1gradients_1/clip_by_value_1_grad/tuple/group_depsNoOp)^gradients_1/clip_by_value_1_grad/Reshape+^gradients_1/clip_by_value_1_grad/Reshape_1
é
9gradients_1/clip_by_value_1_grad/tuple/control_dependencyIdentity(gradients_1/clip_by_value_1_grad/Reshape2^gradients_1/clip_by_value_1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients_1/clip_by_value_1_grad/Reshape
ï
;gradients_1/clip_by_value_1_grad/tuple/control_dependency_1Identity*gradients_1/clip_by_value_1_grad/Reshape_12^gradients_1/clip_by_value_1_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/clip_by_value_1_grad/Reshape_1
F
gradients_1/Sum_grad/ShapeShapeIdentity*
T0*
out_type0
r
gradients_1/Sum_grad/SizeConst*
value	B :*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
dtype0

gradients_1/Sum_grad/addAddSum/reduction_indicesgradients_1/Sum_grad/Size*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape

gradients_1/Sum_grad/modFloorModgradients_1/Sum_grad/addgradients_1/Sum_grad/Size*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
t
gradients_1/Sum_grad/Shape_1Const*
valueB *-
_class#
!loc:@gradients_1/Sum_grad/Shape*
dtype0
y
 gradients_1/Sum_grad/range/startConst*
value	B : *-
_class#
!loc:@gradients_1/Sum_grad/Shape*
dtype0
y
 gradients_1/Sum_grad/range/deltaConst*
value	B :*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
dtype0
½
gradients_1/Sum_grad/rangeRange gradients_1/Sum_grad/range/startgradients_1/Sum_grad/Size gradients_1/Sum_grad/range/delta*

Tidx0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
x
gradients_1/Sum_grad/Fill/valueConst*
value	B :*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
dtype0
ª
gradients_1/Sum_grad/FillFillgradients_1/Sum_grad/Shape_1gradients_1/Sum_grad/Fill/value*
T0*

index_type0*-
_class#
!loc:@gradients_1/Sum_grad/Shape
á
"gradients_1/Sum_grad/DynamicStitchDynamicStitchgradients_1/Sum_grad/rangegradients_1/Sum_grad/modgradients_1/Sum_grad/Shapegradients_1/Sum_grad/Fill*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
N
w
gradients_1/Sum_grad/Maximum/yConst*
value	B :*-
_class#
!loc:@gradients_1/Sum_grad/Shape*
dtype0
£
gradients_1/Sum_grad/MaximumMaximum"gradients_1/Sum_grad/DynamicStitchgradients_1/Sum_grad/Maximum/y*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape

gradients_1/Sum_grad/floordivFloorDivgradients_1/Sum_grad/Shapegradients_1/Sum_grad/Maximum*
T0*-
_class#
!loc:@gradients_1/Sum_grad/Shape

gradients_1/Sum_grad/ReshapeReshape/gradients_1/sub_4_grad/tuple/control_dependency"gradients_1/Sum_grad/DynamicStitch*
T0*
Tshape0
y
gradients_1/Sum_grad/TileTilegradients_1/Sum_grad/Reshapegradients_1/Sum_grad/floordiv*

Tmultiples0*
T0
W
.gradients_1/clip_by_value_1/Minimum_grad/ShapeShapesub_3*
T0*
out_type0
Y
0gradients_1/clip_by_value_1/Minimum_grad/Shape_1Const*
valueB *
dtype0

0gradients_1/clip_by_value_1/Minimum_grad/Shape_2Shape9gradients_1/clip_by_value_1_grad/tuple/control_dependency*
T0*
out_type0
a
4gradients_1/clip_by_value_1/Minimum_grad/zeros/ConstConst*
valueB
 *    *
dtype0
¹
.gradients_1/clip_by_value_1/Minimum_grad/zerosFill0gradients_1/clip_by_value_1/Minimum_grad/Shape_24gradients_1/clip_by_value_1/Minimum_grad/zeros/Const*
T0*

index_type0
b
2gradients_1/clip_by_value_1/Minimum_grad/LessEqual	LessEqualsub_3PolynomialDecay_1*
T0
Â
>gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgs.gradients_1/clip_by_value_1/Minimum_grad/Shape0gradients_1/clip_by_value_1/Minimum_grad/Shape_1*
T0
á
/gradients_1/clip_by_value_1/Minimum_grad/SelectSelect2gradients_1/clip_by_value_1/Minimum_grad/LessEqual9gradients_1/clip_by_value_1_grad/tuple/control_dependency.gradients_1/clip_by_value_1/Minimum_grad/zeros*
T0
ã
1gradients_1/clip_by_value_1/Minimum_grad/Select_1Select2gradients_1/clip_by_value_1/Minimum_grad/LessEqual.gradients_1/clip_by_value_1/Minimum_grad/zeros9gradients_1/clip_by_value_1_grad/tuple/control_dependency*
T0
Ê
,gradients_1/clip_by_value_1/Minimum_grad/SumSum/gradients_1/clip_by_value_1/Minimum_grad/Select>gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
°
0gradients_1/clip_by_value_1/Minimum_grad/ReshapeReshape,gradients_1/clip_by_value_1/Minimum_grad/Sum.gradients_1/clip_by_value_1/Minimum_grad/Shape*
T0*
Tshape0
Ð
.gradients_1/clip_by_value_1/Minimum_grad/Sum_1Sum1gradients_1/clip_by_value_1/Minimum_grad/Select_1@gradients_1/clip_by_value_1/Minimum_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/clip_by_value_1/Minimum_grad/Reshape_1Reshape.gradients_1/clip_by_value_1/Minimum_grad/Sum_10gradients_1/clip_by_value_1/Minimum_grad/Shape_1*
T0*
Tshape0
©
9gradients_1/clip_by_value_1/Minimum_grad/tuple/group_depsNoOp1^gradients_1/clip_by_value_1/Minimum_grad/Reshape3^gradients_1/clip_by_value_1/Minimum_grad/Reshape_1

Agradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependencyIdentity0gradients_1/clip_by_value_1/Minimum_grad/Reshape:^gradients_1/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/clip_by_value_1/Minimum_grad/Reshape

Cgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency_1Identity2gradients_1/clip_by_value_1/Minimum_grad/Reshape_1:^gradients_1/clip_by_value_1/Minimum_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/clip_by_value_1/Minimum_grad/Reshape_1
E
gradients_1/sub_3_grad/ShapeShapeSum_2*
T0*
out_type0
Z
gradients_1/sub_3_grad/Shape_1Shapeextrinsic_value_estimate*
T0*
out_type0

,gradients_1/sub_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_3_grad/Shapegradients_1/sub_3_grad/Shape_1*
T0
¸
gradients_1/sub_3_grad/SumSumAgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency,gradients_1/sub_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/sub_3_grad/ReshapeReshapegradients_1/sub_3_grad/Sumgradients_1/sub_3_grad/Shape*
T0*
Tshape0
¼
gradients_1/sub_3_grad/Sum_1SumAgradients_1/clip_by_value_1/Minimum_grad/tuple/control_dependency.gradients_1/sub_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
H
gradients_1/sub_3_grad/NegNeggradients_1/sub_3_grad/Sum_1*
T0
~
 gradients_1/sub_3_grad/Reshape_1Reshapegradients_1/sub_3_grad/Neggradients_1/sub_3_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/sub_3_grad/tuple/group_depsNoOp^gradients_1/sub_3_grad/Reshape!^gradients_1/sub_3_grad/Reshape_1
Á
/gradients_1/sub_3_grad/tuple/control_dependencyIdentitygradients_1/sub_3_grad/Reshape(^gradients_1/sub_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_3_grad/Reshape
Ç
1gradients_1/sub_3_grad/tuple/control_dependency_1Identity gradients_1/sub_3_grad/Reshape_1(^gradients_1/sub_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_3_grad/Reshape_1
W
gradients_1/Sum_2_grad/ShapeShapeextrinsic_value/BiasAdd*
T0*
out_type0
v
gradients_1/Sum_2_grad/SizeConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
dtype0

gradients_1/Sum_2_grad/addAddSum_2/reduction_indicesgradients_1/Sum_2_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape

gradients_1/Sum_2_grad/modFloorModgradients_1/Sum_2_grad/addgradients_1/Sum_2_grad/Size*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
x
gradients_1/Sum_2_grad/Shape_1Const*
valueB */
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
dtype0
}
"gradients_1/Sum_2_grad/range/startConst*
value	B : */
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
dtype0
}
"gradients_1/Sum_2_grad/range/deltaConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
dtype0
Ç
gradients_1/Sum_2_grad/rangeRange"gradients_1/Sum_2_grad/range/startgradients_1/Sum_2_grad/Size"gradients_1/Sum_2_grad/range/delta*

Tidx0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
|
!gradients_1/Sum_2_grad/Fill/valueConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
dtype0
²
gradients_1/Sum_2_grad/FillFillgradients_1/Sum_2_grad/Shape_1!gradients_1/Sum_2_grad/Fill/value*
T0*

index_type0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
í
$gradients_1/Sum_2_grad/DynamicStitchDynamicStitchgradients_1/Sum_2_grad/rangegradients_1/Sum_2_grad/modgradients_1/Sum_2_grad/Shapegradients_1/Sum_2_grad/Fill*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
N
{
 gradients_1/Sum_2_grad/Maximum/yConst*
value	B :*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape*
dtype0
«
gradients_1/Sum_2_grad/MaximumMaximum$gradients_1/Sum_2_grad/DynamicStitch gradients_1/Sum_2_grad/Maximum/y*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape
£
gradients_1/Sum_2_grad/floordivFloorDivgradients_1/Sum_2_grad/Shapegradients_1/Sum_2_grad/Maximum*
T0*/
_class%
#!loc:@gradients_1/Sum_2_grad/Shape

gradients_1/Sum_2_grad/ReshapeReshape/gradients_1/sub_3_grad/tuple/control_dependency$gradients_1/Sum_2_grad/DynamicStitch*
T0*
Tshape0

gradients_1/Sum_2_grad/TileTilegradients_1/Sum_2_grad/Reshapegradients_1/Sum_2_grad/floordiv*

Tmultiples0*
T0
E
gradients_1/sub_2_grad/ShapeShapesub_1*
T0*
out_type0
L
gradients_1/sub_2_grad/Shape_1Const*
valueB:*
dtype0

,gradients_1/sub_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_2_grad/Shapegradients_1/sub_2_grad/Shape_1*
T0

gradients_1/sub_2_grad/SumSumgradients_1/Sum_grad/Tile,gradients_1/sub_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/sub_2_grad/ReshapeReshapegradients_1/sub_2_grad/Sumgradients_1/sub_2_grad/Shape*
T0*
Tshape0

gradients_1/sub_2_grad/Sum_1Sumgradients_1/Sum_grad/Tile.gradients_1/sub_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
H
gradients_1/sub_2_grad/NegNeggradients_1/sub_2_grad/Sum_1*
T0
~
 gradients_1/sub_2_grad/Reshape_1Reshapegradients_1/sub_2_grad/Neggradients_1/sub_2_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/sub_2_grad/tuple/group_depsNoOp^gradients_1/sub_2_grad/Reshape!^gradients_1/sub_2_grad/Reshape_1
Á
/gradients_1/sub_2_grad/tuple/control_dependencyIdentitygradients_1/sub_2_grad/Reshape(^gradients_1/sub_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_2_grad/Reshape
Ç
1gradients_1/sub_2_grad/tuple/control_dependency_1Identity gradients_1/sub_2_grad/Reshape_1(^gradients_1/sub_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_2_grad/Reshape_1

gradients_1/AddN_1AddNgradients_1/Sum_3_grad/Tilegradients_1/Sum_2_grad/Tile*
T0*.
_class$
" loc:@gradients_1/Sum_3_grad/Tile*
N
w
4gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_1*
T0*
data_formatNHWC

9gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_15^gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad
Ö
Agradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_1:^gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*.
_class$
" loc:@gradients_1/Sum_3_grad/Tile

Cgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1Identity4gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad:^gradients_1/extrinsic_value/BiasAdd_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/extrinsic_value/BiasAdd_grad/BiasAddGrad
I
gradients_1/sub_1_grad/ShapeShape	truediv_1*
T0*
out_type0
G
gradients_1/sub_1_grad/Shape_1Const*
valueB *
dtype0

,gradients_1/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_1_grad/Shapegradients_1/sub_1_grad/Shape_1*
T0
¦
gradients_1/sub_1_grad/SumSum/gradients_1/sub_2_grad/tuple/control_dependency,gradients_1/sub_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/sub_1_grad/ReshapeReshapegradients_1/sub_1_grad/Sumgradients_1/sub_1_grad/Shape*
T0*
Tshape0
ª
gradients_1/sub_1_grad/Sum_1Sum/gradients_1/sub_2_grad/tuple/control_dependency.gradients_1/sub_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
H
gradients_1/sub_1_grad/NegNeggradients_1/sub_1_grad/Sum_1*
T0
~
 gradients_1/sub_1_grad/Reshape_1Reshapegradients_1/sub_1_grad/Neggradients_1/sub_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/sub_1_grad/tuple/group_depsNoOp^gradients_1/sub_1_grad/Reshape!^gradients_1/sub_1_grad/Reshape_1
Á
/gradients_1/sub_1_grad/tuple/control_dependencyIdentitygradients_1/sub_1_grad/Reshape(^gradients_1/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_1_grad/Reshape
Ç
1gradients_1/sub_1_grad/tuple/control_dependency_1Identity gradients_1/sub_1_grad/Reshape_1(^gradients_1/sub_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/sub_1_grad/Reshape_1
E
gradients_1/mul_3_grad/ShapeConst*
valueB *
dtype0
L
gradients_1/mul_3_grad/Shape_1Const*
valueB:*
dtype0

,gradients_1/mul_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_3_grad/Shapegradients_1/mul_3_grad/Shape_1*
T0
u
gradients_1/mul_3_grad/MulMul1gradients_1/sub_2_grad/tuple/control_dependency_1log_sigma_squared/read*
T0

gradients_1/mul_3_grad/SumSumgradients_1/mul_3_grad/Mul,gradients_1/mul_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_3_grad/ReshapeReshapegradients_1/mul_3_grad/Sumgradients_1/mul_3_grad/Shape*
T0*
Tshape0
h
gradients_1/mul_3_grad/Mul_1Mulmul_3/x1gradients_1/sub_2_grad/tuple/control_dependency_1*
T0

gradients_1/mul_3_grad/Sum_1Sumgradients_1/mul_3_grad/Mul_1.gradients_1/mul_3_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_3_grad/Reshape_1Reshapegradients_1/mul_3_grad/Sum_1gradients_1/mul_3_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_3_grad/tuple/group_depsNoOp^gradients_1/mul_3_grad/Reshape!^gradients_1/mul_3_grad/Reshape_1
Á
/gradients_1/mul_3_grad/tuple/control_dependencyIdentitygradients_1/mul_3_grad/Reshape(^gradients_1/mul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_3_grad/Reshape
Ç
1gradients_1/mul_3_grad/tuple/control_dependency_1Identity gradients_1/mul_3_grad/Reshape_1(^gradients_1/mul_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_3_grad/Reshape_1
Ç
.gradients_1/extrinsic_value/MatMul_grad/MatMulMatMulAgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependencyextrinsic_value/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ç
0gradients_1/extrinsic_value/MatMul_grad/MatMul_1MatMulmain_graph_1/hidden_1/MulAgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
¤
8gradients_1/extrinsic_value/MatMul_grad/tuple/group_depsNoOp/^gradients_1/extrinsic_value/MatMul_grad/MatMul1^gradients_1/extrinsic_value/MatMul_grad/MatMul_1

@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependencyIdentity.gradients_1/extrinsic_value/MatMul_grad/MatMul9^gradients_1/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*A
_class7
53loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul

Bgradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency_1Identity0gradients_1/extrinsic_value/MatMul_grad/MatMul_19^gradients_1/extrinsic_value/MatMul_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients_1/extrinsic_value/MatMul_grad/MatMul_1
I
 gradients_1/truediv_1_grad/ShapeShapemul_1*
T0*
out_type0
P
"gradients_1/truediv_1_grad/Shape_1Const*
valueB:*
dtype0

0gradients_1/truediv_1_grad/BroadcastGradientArgsBroadcastGradientArgs gradients_1/truediv_1_grad/Shape"gradients_1/truediv_1_grad/Shape_1*
T0
l
"gradients_1/truediv_1_grad/RealDivRealDiv/gradients_1/sub_1_grad/tuple/control_dependencyExp*
T0
¡
gradients_1/truediv_1_grad/SumSum"gradients_1/truediv_1_grad/RealDiv0gradients_1/truediv_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0

"gradients_1/truediv_1_grad/ReshapeReshapegradients_1/truediv_1_grad/Sum gradients_1/truediv_1_grad/Shape*
T0*
Tshape0
5
gradients_1/truediv_1_grad/NegNegmul_1*
T0
]
$gradients_1/truediv_1_grad/RealDiv_1RealDivgradients_1/truediv_1_grad/NegExp*
T0
c
$gradients_1/truediv_1_grad/RealDiv_2RealDiv$gradients_1/truediv_1_grad/RealDiv_1Exp*
T0

gradients_1/truediv_1_grad/mulMul/gradients_1/sub_1_grad/tuple/control_dependency$gradients_1/truediv_1_grad/RealDiv_2*
T0
¡
 gradients_1/truediv_1_grad/Sum_1Sumgradients_1/truediv_1_grad/mul2gradients_1/truediv_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

$gradients_1/truediv_1_grad/Reshape_1Reshape gradients_1/truediv_1_grad/Sum_1"gradients_1/truediv_1_grad/Shape_1*
T0*
Tshape0

+gradients_1/truediv_1_grad/tuple/group_depsNoOp#^gradients_1/truediv_1_grad/Reshape%^gradients_1/truediv_1_grad/Reshape_1
Ñ
3gradients_1/truediv_1_grad/tuple/control_dependencyIdentity"gradients_1/truediv_1_grad/Reshape,^gradients_1/truediv_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients_1/truediv_1_grad/Reshape
×
5gradients_1/truediv_1_grad/tuple/control_dependency_1Identity$gradients_1/truediv_1_grad/Reshape_1,^gradients_1/truediv_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/truediv_1_grad/Reshape_1
q
0gradients_1/main_graph_1/hidden_1/Mul_grad/ShapeShapemain_graph_1/hidden_1/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_1/hidden_1/Mul_grad/Shape_1Shapemain_graph_1/hidden_1/Sigmoid*
T0*
out_type0
È
@gradients_1/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_1/hidden_1/Mul_grad/Shape2gradients_1/main_graph_1/hidden_1/Mul_grad/Shape_1*
T0

.gradients_1/main_graph_1/hidden_1/Mul_grad/MulMul@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependencymain_graph_1/hidden_1/Sigmoid*
T0
Í
.gradients_1/main_graph_1/hidden_1/Mul_grad/SumSum.gradients_1/main_graph_1/hidden_1/Mul_grad/Mul@gradients_1/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/main_graph_1/hidden_1/Mul_grad/ReshapeReshape.gradients_1/main_graph_1/hidden_1/Mul_grad/Sum0gradients_1/main_graph_1/hidden_1/Mul_grad/Shape*
T0*
Tshape0
¡
0gradients_1/main_graph_1/hidden_1/Mul_grad/Mul_1Mulmain_graph_1/hidden_1/BiasAdd@gradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency*
T0
Ó
0gradients_1/main_graph_1/hidden_1/Mul_grad/Sum_1Sum0gradients_1/main_graph_1/hidden_1/Mul_grad/Mul_1Bgradients_1/main_graph_1/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¼
4gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_1/hidden_1/Mul_grad/Sum_12gradients_1/main_graph_1/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
¯
;gradients_1/main_graph_1/hidden_1/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape5^gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape_1

Cgradients_1/main_graph_1/hidden_1/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape<^gradients_1/main_graph_1/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape

Egradients_1/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape_1<^gradients_1/main_graph_1/hidden_1/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape_1
E
gradients_1/mul_1_grad/ShapeConst*
valueB *
dtype0
H
gradients_1/mul_1_grad/Shape_1ShapeSquare*
T0*
out_type0

,gradients_1/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/mul_1_grad/Shapegradients_1/mul_1_grad/Shape_1*
T0
g
gradients_1/mul_1_grad/MulMul3gradients_1/truediv_1_grad/tuple/control_dependencySquare*
T0

gradients_1/mul_1_grad/SumSumgradients_1/mul_1_grad/Mul,gradients_1/mul_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
z
gradients_1/mul_1_grad/ReshapeReshapegradients_1/mul_1_grad/Sumgradients_1/mul_1_grad/Shape*
T0*
Tshape0
j
gradients_1/mul_1_grad/Mul_1Mulmul_1/x3gradients_1/truediv_1_grad/tuple/control_dependency*
T0

gradients_1/mul_1_grad/Sum_1Sumgradients_1/mul_1_grad/Mul_1.gradients_1/mul_1_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0

 gradients_1/mul_1_grad/Reshape_1Reshapegradients_1/mul_1_grad/Sum_1gradients_1/mul_1_grad/Shape_1*
T0*
Tshape0
s
'gradients_1/mul_1_grad/tuple/group_depsNoOp^gradients_1/mul_1_grad/Reshape!^gradients_1/mul_1_grad/Reshape_1
Á
/gradients_1/mul_1_grad/tuple/control_dependencyIdentitygradients_1/mul_1_grad/Reshape(^gradients_1/mul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/mul_1_grad/Reshape
Ç
1gradients_1/mul_1_grad/tuple/control_dependency_1Identity gradients_1/mul_1_grad/Reshape_1(^gradients_1/mul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients_1/mul_1_grad/Reshape_1
¸
:gradients_1/main_graph_1/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_1/hidden_1/SigmoidEgradients_1/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
~
gradients_1/Square_grad/ConstConst2^gradients_1/mul_1_grad/tuple/control_dependency_1*
valueB
 *   @*
dtype0
O
gradients_1/Square_grad/MulMulsubgradients_1/Square_grad/Const*
T0
}
gradients_1/Square_grad/Mul_1Mul1gradients_1/mul_1_grad/tuple/control_dependency_1gradients_1/Square_grad/Mul*
T0
ô
gradients_1/AddN_2AddNCgradients_1/main_graph_1/hidden_1/Mul_grad/tuple/control_dependency:gradients_1/main_graph_1/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape*
N
}
:gradients_1/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_2*
T0*
data_formatNHWC

?gradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_2;^gradients_1/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad
ù
Ggradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_2@^gradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_1/hidden_1/Mul_grad/Reshape
«
Igradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_1/hidden_1/BiasAdd_grad/BiasAddGrad
L
gradients_1/sub_grad/ShapeShapeStopGradient_1*
T0*
out_type0
M
gradients_1/sub_grad/Shape_1Shapedense/BiasAdd*
T0*
out_type0

*gradients_1/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients_1/sub_grad/Shapegradients_1/sub_grad/Shape_1*
T0

gradients_1/sub_grad/SumSumgradients_1/Square_grad/Mul_1*gradients_1/sub_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients_1/sub_grad/ReshapeReshapegradients_1/sub_grad/Sumgradients_1/sub_grad/Shape*
T0*
Tshape0

gradients_1/sub_grad/Sum_1Sumgradients_1/Square_grad/Mul_1,gradients_1/sub_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
D
gradients_1/sub_grad/NegNeggradients_1/sub_grad/Sum_1*
T0
x
gradients_1/sub_grad/Reshape_1Reshapegradients_1/sub_grad/Neggradients_1/sub_grad/Shape_1*
T0*
Tshape0
m
%gradients_1/sub_grad/tuple/group_depsNoOp^gradients_1/sub_grad/Reshape^gradients_1/sub_grad/Reshape_1
¹
-gradients_1/sub_grad/tuple/control_dependencyIdentitygradients_1/sub_grad/Reshape&^gradients_1/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients_1/sub_grad/Reshape
¿
/gradients_1/sub_grad/tuple/control_dependency_1Identitygradients_1/sub_grad/Reshape_1&^gradients_1/sub_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1
Ù
4gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMulMatMulGgradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_1/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ó
6gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_1/hidden_0/MulGgradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
¶
>gradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul7^gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul_1

Fgradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul?^gradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul
¡
Hgradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul_1?^gradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_1/hidden_1/MatMul_grad/MatMul_1
q
0gradients_1/main_graph_1/hidden_0/Mul_grad/ShapeShapemain_graph_1/hidden_0/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_1/hidden_0/Mul_grad/Shape_1Shapemain_graph_1/hidden_0/Sigmoid*
T0*
out_type0
È
@gradients_1/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_1/hidden_0/Mul_grad/Shape2gradients_1/main_graph_1/hidden_0/Mul_grad/Shape_1*
T0
¥
.gradients_1/main_graph_1/hidden_0/Mul_grad/MulMulFgradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_1/hidden_0/Sigmoid*
T0
Í
.gradients_1/main_graph_1/hidden_0/Mul_grad/SumSum.gradients_1/main_graph_1/hidden_0/Mul_grad/Mul@gradients_1/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/main_graph_1/hidden_0/Mul_grad/ReshapeReshape.gradients_1/main_graph_1/hidden_0/Mul_grad/Sum0gradients_1/main_graph_1/hidden_0/Mul_grad/Shape*
T0*
Tshape0
§
0gradients_1/main_graph_1/hidden_0/Mul_grad/Mul_1Mulmain_graph_1/hidden_0/BiasAddFgradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Ó
0gradients_1/main_graph_1/hidden_0/Mul_grad/Sum_1Sum0gradients_1/main_graph_1/hidden_0/Mul_grad/Mul_1Bgradients_1/main_graph_1/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¼
4gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_1/hidden_0/Mul_grad/Sum_12gradients_1/main_graph_1/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
¯
;gradients_1/main_graph_1/hidden_0/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape5^gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape_1

Cgradients_1/main_graph_1/hidden_0/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape<^gradients_1/main_graph_1/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape

Egradients_1/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape_1<^gradients_1/main_graph_1/hidden_0/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape_1
¸
:gradients_1/main_graph_1/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_1/hidden_0/SigmoidEgradients_1/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency_1*
T0

*gradients_1/dense/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients_1/sub_grad/tuple/control_dependency_1*
T0*
data_formatNHWC

/gradients_1/dense/BiasAdd_grad/tuple/group_depsNoOp0^gradients_1/sub_grad/tuple/control_dependency_1+^gradients_1/dense/BiasAdd_grad/BiasAddGrad
â
7gradients_1/dense/BiasAdd_grad/tuple/control_dependencyIdentity/gradients_1/sub_grad/tuple/control_dependency_10^gradients_1/dense/BiasAdd_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients_1/sub_grad/Reshape_1
ë
9gradients_1/dense/BiasAdd_grad/tuple/control_dependency_1Identity*gradients_1/dense/BiasAdd_grad/BiasAddGrad0^gradients_1/dense/BiasAdd_grad/tuple/group_deps*
T0*=
_class3
1/loc:@gradients_1/dense/BiasAdd_grad/BiasAddGrad
ô
gradients_1/AddN_3AddNCgradients_1/main_graph_1/hidden_0/Mul_grad/tuple/control_dependency:gradients_1/main_graph_1/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape*
N
}
:gradients_1/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_3*
T0*
data_formatNHWC

?gradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_3;^gradients_1/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad
ù
Ggradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_3@^gradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_1/hidden_0/Mul_grad/Reshape
«
Igradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_1/hidden_0/BiasAdd_grad/BiasAddGrad
©
$gradients_1/dense/MatMul_grad/MatMulMatMul7gradients_1/dense/BiasAdd_grad/tuple/control_dependencydense/kernel/read*
transpose_b(*
T0*
transpose_a( 
³
&gradients_1/dense/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_1/Mul7gradients_1/dense/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(

.gradients_1/dense/MatMul_grad/tuple/group_depsNoOp%^gradients_1/dense/MatMul_grad/MatMul'^gradients_1/dense/MatMul_grad/MatMul_1
Û
6gradients_1/dense/MatMul_grad/tuple/control_dependencyIdentity$gradients_1/dense/MatMul_grad/MatMul/^gradients_1/dense/MatMul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients_1/dense/MatMul_grad/MatMul
á
8gradients_1/dense/MatMul_grad/tuple/control_dependency_1Identity&gradients_1/dense/MatMul_grad/MatMul_1/^gradients_1/dense/MatMul_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients_1/dense/MatMul_grad/MatMul_1
Ù
4gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMulMatMulGgradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_1/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ì
6gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationGgradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
¶
>gradients_1/main_graph_1/hidden_0/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul7^gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul_1

Fgradients_1/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul?^gradients_1/main_graph_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul
¡
Hgradients_1/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul_1?^gradients_1/main_graph_1/hidden_0/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_1/hidden_0/MatMul_grad/MatMul_1
q
0gradients_1/main_graph_0/hidden_1/Mul_grad/ShapeShapemain_graph_0/hidden_1/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1Shapemain_graph_0/hidden_1/Sigmoid*
T0*
out_type0
È
@gradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_0/hidden_1/Mul_grad/Shape2gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0

.gradients_1/main_graph_0/hidden_1/Mul_grad/MulMul6gradients_1/dense/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_1/Sigmoid*
T0
Í
.gradients_1/main_graph_0/hidden_1/Mul_grad/SumSum.gradients_1/main_graph_0/hidden_1/Mul_grad/Mul@gradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/main_graph_0/hidden_1/Mul_grad/ReshapeReshape.gradients_1/main_graph_0/hidden_1/Mul_grad/Sum0gradients_1/main_graph_0/hidden_1/Mul_grad/Shape*
T0*
Tshape0

0gradients_1/main_graph_0/hidden_1/Mul_grad/Mul_1Mulmain_graph_0/hidden_1/BiasAdd6gradients_1/dense/MatMul_grad/tuple/control_dependency*
T0
Ó
0gradients_1/main_graph_0/hidden_1/Mul_grad/Sum_1Sum0gradients_1/main_graph_0/hidden_1/Mul_grad/Mul_1Bgradients_1/main_graph_0/hidden_1/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¼
4gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_0/hidden_1/Mul_grad/Sum_12gradients_1/main_graph_0/hidden_1/Mul_grad/Shape_1*
T0*
Tshape0
¯
;gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape5^gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1

Cgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape<^gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape

Egradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1<^gradients_1/main_graph_0/hidden_1/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape_1
d
gradients_1/Exp_grad/mulMul5gradients_1/truediv_1_grad/tuple/control_dependency_1Exp*
T0
¸
:gradients_1/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_1/SigmoidEgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency_1*
T0
á
gradients_1/AddN_4AddN1gradients_1/add_1_grad/tuple/control_dependency_11gradients_1/mul_3_grad/tuple/control_dependency_1gradients_1/Exp_grad/mul*
T0*3
_class)
'%loc:@gradients_1/add_1_grad/Reshape_1*
N
ô
gradients_1/AddN_5AddNCgradients_1/main_graph_0/hidden_1/Mul_grad/tuple/control_dependency:gradients_1/main_graph_0/hidden_1/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape*
N
}
:gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_5*
T0*
data_formatNHWC

?gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_5;^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
ù
Ggradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_5@^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_1/Mul_grad/Reshape
«
Igradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_0/hidden_1/BiasAdd_grad/BiasAddGrad
Ù
4gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMulMatMulGgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_1/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ó
6gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1MatMulmain_graph_0/hidden_0/MulGgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
¶
>gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul7^gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1

Fgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul?^gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul
¡
Hgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1?^gradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_0/hidden_1/MatMul_grad/MatMul_1
q
0gradients_1/main_graph_0/hidden_0/Mul_grad/ShapeShapemain_graph_0/hidden_0/BiasAdd*
T0*
out_type0
s
2gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1Shapemain_graph_0/hidden_0/Sigmoid*
T0*
out_type0
È
@gradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs0gradients_1/main_graph_0/hidden_0/Mul_grad/Shape2gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0
¥
.gradients_1/main_graph_0/hidden_0/Mul_grad/MulMulFgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependencymain_graph_0/hidden_0/Sigmoid*
T0
Í
.gradients_1/main_graph_0/hidden_0/Mul_grad/SumSum.gradients_1/main_graph_0/hidden_0/Mul_grad/Mul@gradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
¶
2gradients_1/main_graph_0/hidden_0/Mul_grad/ReshapeReshape.gradients_1/main_graph_0/hidden_0/Mul_grad/Sum0gradients_1/main_graph_0/hidden_0/Mul_grad/Shape*
T0*
Tshape0
§
0gradients_1/main_graph_0/hidden_0/Mul_grad/Mul_1Mulmain_graph_0/hidden_0/BiasAddFgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency*
T0
Ó
0gradients_1/main_graph_0/hidden_0/Mul_grad/Sum_1Sum0gradients_1/main_graph_0/hidden_0/Mul_grad/Mul_1Bgradients_1/main_graph_0/hidden_0/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
¼
4gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1Reshape0gradients_1/main_graph_0/hidden_0/Mul_grad/Sum_12gradients_1/main_graph_0/hidden_0/Mul_grad/Shape_1*
T0*
Tshape0
¯
;gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_depsNoOp3^gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape5^gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1

Cgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependencyIdentity2gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape<^gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape

Egradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1Identity4gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1<^gradients_1/main_graph_0/hidden_0/Mul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape_1
¸
:gradients_1/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGradSigmoidGradmain_graph_0/hidden_0/SigmoidEgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency_1*
T0
ô
gradients_1/AddN_6AddNCgradients_1/main_graph_0/hidden_0/Mul_grad/tuple/control_dependency:gradients_1/main_graph_0/hidden_0/Sigmoid_grad/SigmoidGrad*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape*
N
}
:gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGradBiasAddGradgradients_1/AddN_6*
T0*
data_formatNHWC

?gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_depsNoOp^gradients_1/AddN_6;^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
ù
Ggradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependencyIdentitygradients_1/AddN_6@^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients_1/main_graph_0/hidden_0/Mul_grad/Reshape
«
Igradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1Identity:gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad@^gradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients_1/main_graph_0/hidden_0/BiasAdd_grad/BiasAddGrad
Ù
4gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMulMatMulGgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency!main_graph_0/hidden_0/kernel/read*
transpose_b(*
T0*
transpose_a( 
Ì
6gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1MatMulvector_observationGgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
¶
>gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_depsNoOp5^gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul7^gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1

Fgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependencyIdentity4gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul?^gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul
¡
Hgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1Identity6gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1?^gradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients_1/main_graph_0/hidden_0/MatMul_grad/MatMul_1
e
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@dense/bias*
dtype0
v
beta1_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Q
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@dense/bias
e
beta2_power/initial_valueConst*
valueB
 *w¾?*
_class
loc:@dense/bias*
dtype0
v
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Q
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@dense/bias
©
Cmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

3main_graph_0/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
§
!main_graph_0/hidden_0/kernel/Adam
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
í
(main_graph_0/hidden_0/kernel/Adam/AssignAssign!main_graph_0/hidden_0/kernel/Adam3main_graph_0/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

&main_graph_0/hidden_0/kernel/Adam/readIdentity!main_graph_0/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
«
Emain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0

5main_graph_0/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel
©
#main_graph_0/hidden_0/kernel/Adam_1
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_0/hidden_0/kernel*
dtype0*
	container 
ó
*main_graph_0/hidden_0/kernel/Adam_1/AssignAssign#main_graph_0/hidden_0/kernel/Adam_15main_graph_0/hidden_0/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(

(main_graph_0/hidden_0/kernel/Adam_1/readIdentity#main_graph_0/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel

Amain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0

7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0
ÿ
1main_graph_0/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias

main_graph_0/hidden_0/bias/Adam
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
å
&main_graph_0/hidden_0/bias/Adam/AssignAssignmain_graph_0/hidden_0/bias/Adam1main_graph_0/hidden_0/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

$main_graph_0/hidden_0/bias/Adam/readIdentitymain_graph_0/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
¡
Cmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0

9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0

3main_graph_0/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_0/bias
¡
!main_graph_0/hidden_0/bias/Adam_1
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_0/bias*
dtype0*
	container 
ë
(main_graph_0/hidden_0/bias/Adam_1/AssignAssign!main_graph_0/hidden_0/bias/Adam_13main_graph_0/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(

&main_graph_0/hidden_0/bias/Adam_1/readIdentity!main_graph_0/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias
©
Cmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

3main_graph_0/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_0/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
¨
!main_graph_0/hidden_1/kernel/Adam
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
í
(main_graph_0/hidden_1/kernel/Adam/AssignAssign!main_graph_0/hidden_1/kernel/Adam3main_graph_0/hidden_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

&main_graph_0/hidden_1/kernel/Adam/readIdentity!main_graph_0/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
«
Emain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0

5main_graph_0/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel
ª
#main_graph_0/hidden_1/kernel/Adam_1
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_0/hidden_1/kernel*
dtype0*
	container 
ó
*main_graph_0/hidden_1/kernel/Adam_1/AssignAssign#main_graph_0/hidden_1/kernel/Adam_15main_graph_0/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(

(main_graph_0/hidden_1/kernel/Adam_1/readIdentity#main_graph_0/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel

Amain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0

7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0
ÿ
1main_graph_0/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_0/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_0/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias

main_graph_0/hidden_1/bias/Adam
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container 
å
&main_graph_0/hidden_1/bias/Adam/AssignAssignmain_graph_0/hidden_1/bias/Adam1main_graph_0/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

$main_graph_0/hidden_1/bias/Adam/readIdentitymain_graph_0/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
¡
Cmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0

9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0

3main_graph_0/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_0/hidden_1/bias
¡
!main_graph_0/hidden_1/bias/Adam_1
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_0/hidden_1/bias*
dtype0*
	container 
ë
(main_graph_0/hidden_1/bias/Adam_1/AssignAssign!main_graph_0/hidden_1/bias/Adam_13main_graph_0/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(

&main_graph_0/hidden_1/bias/Adam_1/readIdentity!main_graph_0/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias
©
Cmain_graph_1/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

9main_graph_1/hidden_0/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

3main_graph_1/hidden_0/kernel/Adam/Initializer/zerosFillCmain_graph_1/hidden_0/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_0/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
§
!main_graph_1/hidden_0/kernel/Adam
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
	container 
í
(main_graph_1/hidden_0/kernel/Adam/AssignAssign!main_graph_1/hidden_0/kernel/Adam3main_graph_1/hidden_0/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(

&main_graph_1/hidden_0/kernel/Adam/readIdentity!main_graph_1/hidden_0/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
«
Emain_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

;main_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0

5main_graph_1/hidden_0/kernel/Adam_1/Initializer/zerosFillEmain_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel
©
#main_graph_1/hidden_0/kernel/Adam_1
VariableV2*
shape:	*
shared_name */
_class%
#!loc:@main_graph_1/hidden_0/kernel*
dtype0*
	container 
ó
*main_graph_1/hidden_0/kernel/Adam_1/AssignAssign#main_graph_1/hidden_0/kernel/Adam_15main_graph_1/hidden_0/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(

(main_graph_1/hidden_0/kernel/Adam_1/readIdentity#main_graph_1/hidden_0/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel

Amain_graph_1/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0

7main_graph_1/hidden_0/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0
ÿ
1main_graph_1/hidden_0/bias/Adam/Initializer/zerosFillAmain_graph_1/hidden_0/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_1/hidden_0/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_1/hidden_0/bias

main_graph_1/hidden_0/bias/Adam
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0*
	container 
å
&main_graph_1/hidden_0/bias/Adam/AssignAssignmain_graph_1/hidden_0/bias/Adam1main_graph_1/hidden_0/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(

$main_graph_1/hidden_0/bias/Adam/readIdentitymain_graph_1/hidden_0/bias/Adam*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias
¡
Cmain_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0

9main_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0

3main_graph_1/hidden_0/bias/Adam_1/Initializer/zerosFillCmain_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_0/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_1/hidden_0/bias
¡
!main_graph_1/hidden_0/bias/Adam_1
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_0/bias*
dtype0*
	container 
ë
(main_graph_1/hidden_0/bias/Adam_1/AssignAssign!main_graph_1/hidden_0/bias/Adam_13main_graph_1/hidden_0/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(

&main_graph_1/hidden_0/bias/Adam_1/readIdentity!main_graph_1/hidden_0/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias
©
Cmain_graph_1/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0

9main_graph_1/hidden_1/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0

3main_graph_1/hidden_1/kernel/Adam/Initializer/zerosFillCmain_graph_1/hidden_1/kernel/Adam/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_1/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
¨
!main_graph_1/hidden_1/kernel/Adam
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
	container 
í
(main_graph_1/hidden_1/kernel/Adam/AssignAssign!main_graph_1/hidden_1/kernel/Adam3main_graph_1/hidden_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

&main_graph_1/hidden_1/kernel/Adam/readIdentity!main_graph_1/hidden_1/kernel/Adam*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
«
Emain_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0

;main_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0

5main_graph_1/hidden_1/kernel/Adam_1/Initializer/zerosFillEmain_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor;main_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel
ª
#main_graph_1/hidden_1/kernel/Adam_1
VariableV2*
shape:
*
shared_name */
_class%
#!loc:@main_graph_1/hidden_1/kernel*
dtype0*
	container 
ó
*main_graph_1/hidden_1/kernel/Adam_1/AssignAssign#main_graph_1/hidden_1/kernel/Adam_15main_graph_1/hidden_1/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

(main_graph_1/hidden_1/kernel/Adam_1/readIdentity#main_graph_1/hidden_1/kernel/Adam_1*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel

Amain_graph_1/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0

7main_graph_1/hidden_1/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0
ÿ
1main_graph_1/hidden_1/bias/Adam/Initializer/zerosFillAmain_graph_1/hidden_1/bias/Adam/Initializer/zeros/shape_as_tensor7main_graph_1/hidden_1/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_1/hidden_1/bias

main_graph_1/hidden_1/bias/Adam
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0*
	container 
å
&main_graph_1/hidden_1/bias/Adam/AssignAssignmain_graph_1/hidden_1/bias/Adam1main_graph_1/hidden_1/bias/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(

$main_graph_1/hidden_1/bias/Adam/readIdentitymain_graph_1/hidden_1/bias/Adam*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias
¡
Cmain_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0

9main_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0

3main_graph_1/hidden_1/bias/Adam_1/Initializer/zerosFillCmain_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/shape_as_tensor9main_graph_1/hidden_1/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*-
_class#
!loc:@main_graph_1/hidden_1/bias
¡
!main_graph_1/hidden_1/bias/Adam_1
VariableV2*
shape:*
shared_name *-
_class#
!loc:@main_graph_1/hidden_1/bias*
dtype0*
	container 
ë
(main_graph_1/hidden_1/bias/Adam_1/AssignAssign!main_graph_1/hidden_1/bias/Adam_13main_graph_1/hidden_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(

&main_graph_1/hidden_1/bias/Adam_1/readIdentity!main_graph_1/hidden_1/bias/Adam_1*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias

3dense/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0
w
)dense/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0
Ç
#dense/kernel/Adam/Initializer/zerosFill3dense/kernel/Adam/Initializer/zeros/shape_as_tensor)dense/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel

dense/kernel/Adam
VariableV2*
shape:	*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
­
dense/kernel/Adam/AssignAssigndense/kernel/Adam#dense/kernel/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
_
dense/kernel/Adam/readIdentitydense/kernel/Adam*
T0*
_class
loc:@dense/kernel

5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *
_class
loc:@dense/kernel*
dtype0
y
+dense/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/kernel*
dtype0
Í
%dense/kernel/Adam_1/Initializer/zerosFill5dense/kernel/Adam_1/Initializer/zeros/shape_as_tensor+dense/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/kernel

dense/kernel/Adam_1
VariableV2*
shape:	*
shared_name *
_class
loc:@dense/kernel*
dtype0*
	container 
³
dense/kernel/Adam_1/AssignAssigndense/kernel/Adam_1%dense/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(
c
dense/kernel/Adam_1/readIdentitydense/kernel/Adam_1*
T0*
_class
loc:@dense/kernel
~
1dense/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0
s
'dense/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0
¿
!dense/bias/Adam/Initializer/zerosFill1dense/bias/Adam/Initializer/zeros/shape_as_tensor'dense/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias
~
dense/bias/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
¥
dense/bias/Adam/AssignAssigndense/bias/Adam!dense/bias/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
Y
dense/bias/Adam/readIdentitydense/bias/Adam*
T0*
_class
loc:@dense/bias

3dense/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*
_class
loc:@dense/bias*
dtype0
u
)dense/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@dense/bias*
dtype0
Å
#dense/bias/Adam_1/Initializer/zerosFill3dense/bias/Adam_1/Initializer/zeros/shape_as_tensor)dense/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@dense/bias

dense/bias/Adam_1
VariableV2*
shape:*
shared_name *
_class
loc:@dense/bias*
dtype0*
	container 
«
dense/bias/Adam_1/AssignAssigndense/bias/Adam_1#dense/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(
]
dense/bias/Adam_1/readIdentitydense/bias/Adam_1*
T0*
_class
loc:@dense/bias

8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*$
_class
loc:@log_sigma_squared*
dtype0

.log_sigma_squared/Adam/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@log_sigma_squared*
dtype0
Û
(log_sigma_squared/Adam/Initializer/zerosFill8log_sigma_squared/Adam/Initializer/zeros/shape_as_tensor.log_sigma_squared/Adam/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@log_sigma_squared

log_sigma_squared/Adam
VariableV2*
shape:*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container 
Á
log_sigma_squared/Adam/AssignAssignlog_sigma_squared/Adam(log_sigma_squared/Adam/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
n
log_sigma_squared/Adam/readIdentitylog_sigma_squared/Adam*
T0*$
_class
loc:@log_sigma_squared

:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*$
_class
loc:@log_sigma_squared*
dtype0

0log_sigma_squared/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *$
_class
loc:@log_sigma_squared*
dtype0
á
*log_sigma_squared/Adam_1/Initializer/zerosFill:log_sigma_squared/Adam_1/Initializer/zeros/shape_as_tensor0log_sigma_squared/Adam_1/Initializer/zeros/Const*
T0*

index_type0*$
_class
loc:@log_sigma_squared

log_sigma_squared/Adam_1
VariableV2*
shape:*
shared_name *$
_class
loc:@log_sigma_squared*
dtype0*
	container 
Ç
log_sigma_squared/Adam_1/AssignAssignlog_sigma_squared/Adam_1*log_sigma_squared/Adam_1/Initializer/zeros*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
r
log_sigma_squared/Adam_1/readIdentitylog_sigma_squared/Adam_1*
T0*$
_class
loc:@log_sigma_squared

=extrinsic_value/kernel/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"      *)
_class
loc:@extrinsic_value/kernel*
dtype0

3extrinsic_value/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *)
_class
loc:@extrinsic_value/kernel*
dtype0
ï
-extrinsic_value/kernel/Adam/Initializer/zerosFill=extrinsic_value/kernel/Adam/Initializer/zeros/shape_as_tensor3extrinsic_value/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@extrinsic_value/kernel

extrinsic_value/kernel/Adam
VariableV2*
shape:	*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
Õ
"extrinsic_value/kernel/Adam/AssignAssignextrinsic_value/kernel/Adam-extrinsic_value/kernel/Adam/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
}
 extrinsic_value/kernel/Adam/readIdentityextrinsic_value/kernel/Adam*
T0*)
_class
loc:@extrinsic_value/kernel

?extrinsic_value/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"      *)
_class
loc:@extrinsic_value/kernel*
dtype0

5extrinsic_value/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *)
_class
loc:@extrinsic_value/kernel*
dtype0
õ
/extrinsic_value/kernel/Adam_1/Initializer/zerosFill?extrinsic_value/kernel/Adam_1/Initializer/zeros/shape_as_tensor5extrinsic_value/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*)
_class
loc:@extrinsic_value/kernel

extrinsic_value/kernel/Adam_1
VariableV2*
shape:	*
shared_name *)
_class
loc:@extrinsic_value/kernel*
dtype0*
	container 
Û
$extrinsic_value/kernel/Adam_1/AssignAssignextrinsic_value/kernel/Adam_1/extrinsic_value/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(

"extrinsic_value/kernel/Adam_1/readIdentityextrinsic_value/kernel/Adam_1*
T0*)
_class
loc:@extrinsic_value/kernel

;extrinsic_value/bias/Adam/Initializer/zeros/shape_as_tensorConst*
valueB:*'
_class
loc:@extrinsic_value/bias*
dtype0

1extrinsic_value/bias/Adam/Initializer/zeros/ConstConst*
valueB
 *    *'
_class
loc:@extrinsic_value/bias*
dtype0
ç
+extrinsic_value/bias/Adam/Initializer/zerosFill;extrinsic_value/bias/Adam/Initializer/zeros/shape_as_tensor1extrinsic_value/bias/Adam/Initializer/zeros/Const*
T0*

index_type0*'
_class
loc:@extrinsic_value/bias

extrinsic_value/bias/Adam
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
Í
 extrinsic_value/bias/Adam/AssignAssignextrinsic_value/bias/Adam+extrinsic_value/bias/Adam/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
w
extrinsic_value/bias/Adam/readIdentityextrinsic_value/bias/Adam*
T0*'
_class
loc:@extrinsic_value/bias

=extrinsic_value/bias/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB:*'
_class
loc:@extrinsic_value/bias*
dtype0

3extrinsic_value/bias/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *'
_class
loc:@extrinsic_value/bias*
dtype0
í
-extrinsic_value/bias/Adam_1/Initializer/zerosFill=extrinsic_value/bias/Adam_1/Initializer/zeros/shape_as_tensor3extrinsic_value/bias/Adam_1/Initializer/zeros/Const*
T0*

index_type0*'
_class
loc:@extrinsic_value/bias

extrinsic_value/bias/Adam_1
VariableV2*
shape:*
shared_name *'
_class
loc:@extrinsic_value/bias*
dtype0*
	container 
Ó
"extrinsic_value/bias/Adam_1/AssignAssignextrinsic_value/bias/Adam_1-extrinsic_value/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
{
 extrinsic_value/bias/Adam_1/readIdentityextrinsic_value/bias/Adam_1*
T0*'
_class
loc:@extrinsic_value/bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *w¾?*
dtype0
9
Adam/epsilonConst*
valueB
 *wÌ+2*
dtype0
«
2Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_0/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
use_nesterov( 
¢
0Adam/update_main_graph_0/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_0/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
use_nesterov( 
«
2Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_0/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
use_nesterov( 
¢
0Adam/update_main_graph_0/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_0/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
use_nesterov( 
«
2Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam	ApplyAdammain_graph_1/hidden_0/kernel!main_graph_1/hidden_0/kernel/Adam#main_graph_1/hidden_0/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_1/hidden_0/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
use_nesterov( 
¢
0Adam/update_main_graph_1/hidden_0/bias/ApplyAdam	ApplyAdammain_graph_1/hidden_0/biasmain_graph_1/hidden_0/bias/Adam!main_graph_1/hidden_0/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_1/hidden_0/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
use_nesterov( 
«
2Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam	ApplyAdammain_graph_1/hidden_1/kernel!main_graph_1/hidden_1/kernel/Adam#main_graph_1/hidden_1/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonHgradients_1/main_graph_1/hidden_1/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
use_nesterov( 
¢
0Adam/update_main_graph_1/hidden_1/bias/ApplyAdam	ApplyAdammain_graph_1/hidden_1/biasmain_graph_1/hidden_1/bias/Adam!main_graph_1/hidden_1/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonIgradients_1/main_graph_1/hidden_1/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
use_nesterov( 
Ë
"Adam/update_dense/kernel/ApplyAdam	ApplyAdamdense/kerneldense/kernel/Adamdense/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon8gradients_1/dense/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/kernel*
use_nesterov( 
Â
 Adam/update_dense/bias/ApplyAdam	ApplyAdam
dense/biasdense/bias/Adamdense/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilon9gradients_1/dense/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@dense/bias*
use_nesterov( 
¾
'Adam/update_log_sigma_squared/ApplyAdam	ApplyAdamlog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients_1/AddN_4*
use_locking( *
T0*$
_class
loc:@log_sigma_squared*
use_nesterov( 

,Adam/update_extrinsic_value/kernel/ApplyAdam	ApplyAdamextrinsic_value/kernelextrinsic_value/kernel/Adamextrinsic_value/kernel/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonBgradients_1/extrinsic_value/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*)
_class
loc:@extrinsic_value/kernel*
use_nesterov( 
þ
*Adam/update_extrinsic_value/bias/ApplyAdam	ApplyAdamextrinsic_value/biasextrinsic_value/bias/Adamextrinsic_value/bias/Adam_1beta1_power/readbeta2_power/readPolynomialDecay
Adam/beta1
Adam/beta2Adam/epsilonCgradients_1/extrinsic_value/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*'
_class
loc:@extrinsic_value/bias*
use_nesterov( 
Ã
Adam/mulMulbeta1_power/read
Adam/beta13^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam*
T0*
_class
loc:@dense/bias
}
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(
Å

Adam/mul_1Mulbeta2_power/read
Adam/beta23^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam*
T0*
_class
loc:@dense/bias

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@dense/bias*
validate_shape(

AdamNoOp3^Adam/update_main_graph_0/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_0/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_0/hidden_1/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_0/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_0/bias/ApplyAdam3^Adam/update_main_graph_1/hidden_1/kernel/ApplyAdam1^Adam/update_main_graph_1/hidden_1/bias/ApplyAdam#^Adam/update_dense/kernel/ApplyAdam!^Adam/update_dense/bias/ApplyAdam(^Adam/update_log_sigma_squared/ApplyAdam-^Adam/update_extrinsic_value/kernel/ApplyAdam+^Adam/update_extrinsic_value/bias/ApplyAdam^Adam/Assign^Adam/Assign_1
8

save/ConstConst*
valueB Bmodel*
dtype0


save/SaveV2/tensor_namesConst*ê	
valueà	BÝ	.Baction_output_shapeBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bextrinsic_value/biasBextrinsic_value/bias/AdamBextrinsic_value/bias/Adam_1Bextrinsic_value/kernelBextrinsic_value/kernel/AdamBextrinsic_value/kernel/Adam_1Bglobal_stepBis_continuous_controlBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1Bmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmain_graph_1/hidden_0/biasBmain_graph_1/hidden_0/bias/AdamB!main_graph_1/hidden_0/bias/Adam_1Bmain_graph_1/hidden_0/kernelB!main_graph_1/hidden_0/kernel/AdamB#main_graph_1/hidden_0/kernel/Adam_1Bmain_graph_1/hidden_1/biasBmain_graph_1/hidden_1/bias/AdamB!main_graph_1/hidden_1/bias/Adam_1Bmain_graph_1/hidden_1/kernelB!main_graph_1/hidden_1/kernel/AdamB#main_graph_1/hidden_1/kernel/Adam_1Bmemory_sizeBversion_number*
dtype0
£
save/SaveV2/shape_and_slicesConst*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ì

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesaction_output_shapebeta1_powerbeta2_power
dense/biasdense/bias/Adamdense/bias/Adam_1dense/kerneldense/kernel/Adamdense/kernel/Adam_1extrinsic_value/biasextrinsic_value/bias/Adamextrinsic_value/bias/Adam_1extrinsic_value/kernelextrinsic_value/kernel/Adamextrinsic_value/kernel/Adam_1global_stepis_continuous_controllog_sigma_squaredlog_sigma_squared/Adamlog_sigma_squared/Adam_1main_graph_0/hidden_0/biasmain_graph_0/hidden_0/bias/Adam!main_graph_0/hidden_0/bias/Adam_1main_graph_0/hidden_0/kernel!main_graph_0/hidden_0/kernel/Adam#main_graph_0/hidden_0/kernel/Adam_1main_graph_0/hidden_1/biasmain_graph_0/hidden_1/bias/Adam!main_graph_0/hidden_1/bias/Adam_1main_graph_0/hidden_1/kernel!main_graph_0/hidden_1/kernel/Adam#main_graph_0/hidden_1/kernel/Adam_1main_graph_1/hidden_0/biasmain_graph_1/hidden_0/bias/Adam!main_graph_1/hidden_0/bias/Adam_1main_graph_1/hidden_0/kernel!main_graph_1/hidden_0/kernel/Adam#main_graph_1/hidden_0/kernel/Adam_1main_graph_1/hidden_1/biasmain_graph_1/hidden_1/bias/Adam!main_graph_1/hidden_1/bias/Adam_1main_graph_1/hidden_1/kernel!main_graph_1/hidden_1/kernel/Adam#main_graph_1/hidden_1/kernel/Adam_1memory_sizeversion_number*<
dtypes2
02.
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
­

save/RestoreV2/tensor_namesConst"/device:CPU:0*ê	
valueà	BÝ	.Baction_output_shapeBbeta1_powerBbeta2_powerB
dense/biasBdense/bias/AdamBdense/bias/Adam_1Bdense/kernelBdense/kernel/AdamBdense/kernel/Adam_1Bextrinsic_value/biasBextrinsic_value/bias/AdamBextrinsic_value/bias/Adam_1Bextrinsic_value/kernelBextrinsic_value/kernel/AdamBextrinsic_value/kernel/Adam_1Bglobal_stepBis_continuous_controlBlog_sigma_squaredBlog_sigma_squared/AdamBlog_sigma_squared/Adam_1Bmain_graph_0/hidden_0/biasBmain_graph_0/hidden_0/bias/AdamB!main_graph_0/hidden_0/bias/Adam_1Bmain_graph_0/hidden_0/kernelB!main_graph_0/hidden_0/kernel/AdamB#main_graph_0/hidden_0/kernel/Adam_1Bmain_graph_0/hidden_1/biasBmain_graph_0/hidden_1/bias/AdamB!main_graph_0/hidden_1/bias/Adam_1Bmain_graph_0/hidden_1/kernelB!main_graph_0/hidden_1/kernel/AdamB#main_graph_0/hidden_1/kernel/Adam_1Bmain_graph_1/hidden_0/biasBmain_graph_1/hidden_0/bias/AdamB!main_graph_1/hidden_0/bias/Adam_1Bmain_graph_1/hidden_0/kernelB!main_graph_1/hidden_0/kernel/AdamB#main_graph_1/hidden_0/kernel/Adam_1Bmain_graph_1/hidden_1/biasBmain_graph_1/hidden_1/bias/AdamB!main_graph_1/hidden_1/bias/Adam_1Bmain_graph_1/hidden_1/kernelB!main_graph_1/hidden_1/kernel/AdamB#main_graph_1/hidden_1/kernel/Adam_1Bmemory_sizeBversion_number*
dtype0
µ
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*o
valuefBd.B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
²
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*<
dtypes2
02.

save/AssignAssignaction_output_shapesave/RestoreV2*
use_locking(*
T0*&
_class
loc:@action_output_shape*
validate_shape(

save/Assign_1Assignbeta1_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_2Assignbeta2_powersave/RestoreV2:2*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_3Assign
dense/biassave/RestoreV2:3*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_4Assigndense/bias/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_5Assigndense/bias/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@dense/bias*
validate_shape(

save/Assign_6Assigndense/kernelsave/RestoreV2:6*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_7Assigndense/kernel/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_8Assigndense/kernel/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@dense/kernel*
validate_shape(

save/Assign_9Assignextrinsic_value/biassave/RestoreV2:9*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
¡
save/Assign_10Assignextrinsic_value/bias/Adamsave/RestoreV2:10*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
£
save/Assign_11Assignextrinsic_value/bias/Adam_1save/RestoreV2:11*
use_locking(*
T0*'
_class
loc:@extrinsic_value/bias*
validate_shape(
 
save/Assign_12Assignextrinsic_value/kernelsave/RestoreV2:12*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
¥
save/Assign_13Assignextrinsic_value/kernel/Adamsave/RestoreV2:13*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(
§
save/Assign_14Assignextrinsic_value/kernel/Adam_1save/RestoreV2:14*
use_locking(*
T0*)
_class
loc:@extrinsic_value/kernel*
validate_shape(

save/Assign_15Assignglobal_stepsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@global_step*
validate_shape(

save/Assign_16Assignis_continuous_controlsave/RestoreV2:16*
use_locking(*
T0*(
_class
loc:@is_continuous_control*
validate_shape(

save/Assign_17Assignlog_sigma_squaredsave/RestoreV2:17*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(

save/Assign_18Assignlog_sigma_squared/Adamsave/RestoreV2:18*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(

save/Assign_19Assignlog_sigma_squared/Adam_1save/RestoreV2:19*
use_locking(*
T0*$
_class
loc:@log_sigma_squared*
validate_shape(
¨
save/Assign_20Assignmain_graph_0/hidden_0/biassave/RestoreV2:20*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
­
save/Assign_21Assignmain_graph_0/hidden_0/bias/Adamsave/RestoreV2:21*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
¯
save/Assign_22Assign!main_graph_0/hidden_0/bias/Adam_1save/RestoreV2:22*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_0/bias*
validate_shape(
¬
save/Assign_23Assignmain_graph_0/hidden_0/kernelsave/RestoreV2:23*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
±
save/Assign_24Assign!main_graph_0/hidden_0/kernel/Adamsave/RestoreV2:24*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
³
save/Assign_25Assign#main_graph_0/hidden_0/kernel/Adam_1save/RestoreV2:25*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_0/kernel*
validate_shape(
¨
save/Assign_26Assignmain_graph_0/hidden_1/biassave/RestoreV2:26*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
­
save/Assign_27Assignmain_graph_0/hidden_1/bias/Adamsave/RestoreV2:27*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
¯
save/Assign_28Assign!main_graph_0/hidden_1/bias/Adam_1save/RestoreV2:28*
use_locking(*
T0*-
_class#
!loc:@main_graph_0/hidden_1/bias*
validate_shape(
¬
save/Assign_29Assignmain_graph_0/hidden_1/kernelsave/RestoreV2:29*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
±
save/Assign_30Assign!main_graph_0/hidden_1/kernel/Adamsave/RestoreV2:30*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
³
save/Assign_31Assign#main_graph_0/hidden_1/kernel/Adam_1save/RestoreV2:31*
use_locking(*
T0*/
_class%
#!loc:@main_graph_0/hidden_1/kernel*
validate_shape(
¨
save/Assign_32Assignmain_graph_1/hidden_0/biassave/RestoreV2:32*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(
­
save/Assign_33Assignmain_graph_1/hidden_0/bias/Adamsave/RestoreV2:33*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(
¯
save/Assign_34Assign!main_graph_1/hidden_0/bias/Adam_1save/RestoreV2:34*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_0/bias*
validate_shape(
¬
save/Assign_35Assignmain_graph_1/hidden_0/kernelsave/RestoreV2:35*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(
±
save/Assign_36Assign!main_graph_1/hidden_0/kernel/Adamsave/RestoreV2:36*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(
³
save/Assign_37Assign#main_graph_1/hidden_0/kernel/Adam_1save/RestoreV2:37*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_0/kernel*
validate_shape(
¨
save/Assign_38Assignmain_graph_1/hidden_1/biassave/RestoreV2:38*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(
­
save/Assign_39Assignmain_graph_1/hidden_1/bias/Adamsave/RestoreV2:39*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(
¯
save/Assign_40Assign!main_graph_1/hidden_1/bias/Adam_1save/RestoreV2:40*
use_locking(*
T0*-
_class#
!loc:@main_graph_1/hidden_1/bias*
validate_shape(
¬
save/Assign_41Assignmain_graph_1/hidden_1/kernelsave/RestoreV2:41*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(
±
save/Assign_42Assign!main_graph_1/hidden_1/kernel/Adamsave/RestoreV2:42*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(
³
save/Assign_43Assign#main_graph_1/hidden_1/kernel/Adam_1save/RestoreV2:43*
use_locking(*
T0*/
_class%
#!loc:@main_graph_1/hidden_1/kernel*
validate_shape(

save/Assign_44Assignmemory_sizesave/RestoreV2:44*
use_locking(*
T0*
_class
loc:@memory_size*
validate_shape(

save/Assign_45Assignversion_numbersave/RestoreV2:45*
use_locking(*
T0*!
_class
loc:@version_number*
validate_shape(

save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45
Ñ
initNoOp^global_step/Assign^is_continuous_control/Assign^version_number/Assign^memory_size/Assign^action_output_shape/Assign$^main_graph_0/hidden_0/kernel/Assign"^main_graph_0/hidden_0/bias/Assign$^main_graph_0/hidden_1/kernel/Assign"^main_graph_0/hidden_1/bias/Assign$^main_graph_1/hidden_0/kernel/Assign"^main_graph_1/hidden_0/bias/Assign$^main_graph_1/hidden_1/kernel/Assign"^main_graph_1/hidden_1/bias/Assign^dense/kernel/Assign^dense/bias/Assign^log_sigma_squared/Assign^extrinsic_value/kernel/Assign^extrinsic_value/bias/Assign^beta1_power/Assign^beta2_power/Assign)^main_graph_0/hidden_0/kernel/Adam/Assign+^main_graph_0/hidden_0/kernel/Adam_1/Assign'^main_graph_0/hidden_0/bias/Adam/Assign)^main_graph_0/hidden_0/bias/Adam_1/Assign)^main_graph_0/hidden_1/kernel/Adam/Assign+^main_graph_0/hidden_1/kernel/Adam_1/Assign'^main_graph_0/hidden_1/bias/Adam/Assign)^main_graph_0/hidden_1/bias/Adam_1/Assign)^main_graph_1/hidden_0/kernel/Adam/Assign+^main_graph_1/hidden_0/kernel/Adam_1/Assign'^main_graph_1/hidden_0/bias/Adam/Assign)^main_graph_1/hidden_0/bias/Adam_1/Assign)^main_graph_1/hidden_1/kernel/Adam/Assign+^main_graph_1/hidden_1/kernel/Adam_1/Assign'^main_graph_1/hidden_1/bias/Adam/Assign)^main_graph_1/hidden_1/bias/Adam_1/Assign^dense/kernel/Adam/Assign^dense/kernel/Adam_1/Assign^dense/bias/Adam/Assign^dense/bias/Adam_1/Assign^log_sigma_squared/Adam/Assign ^log_sigma_squared/Adam_1/Assign#^extrinsic_value/kernel/Adam/Assign%^extrinsic_value/kernel/Adam_1/Assign!^extrinsic_value/bias/Adam/Assign#^extrinsic_value/bias/Adam_1/Assign"