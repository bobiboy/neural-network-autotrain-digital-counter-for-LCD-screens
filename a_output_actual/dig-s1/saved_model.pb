ы╨
о¤
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58че

^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
о
+Adadelta/accumulated_delta_var/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adadelta/accumulated_delta_var/dense_3/bias
з
?Adadelta/accumulated_delta_var/dense_3/bias/Read/ReadVariableOpReadVariableOp+Adadelta/accumulated_delta_var/dense_3/bias*
_output_shapes
:*
dtype0
д
&Adadelta/accumulated_grad/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&Adadelta/accumulated_grad/dense_3/bias
Э
:Adadelta/accumulated_grad/dense_3/bias/Read/ReadVariableOpReadVariableOp&Adadelta/accumulated_grad/dense_3/bias*
_output_shapes
:*
dtype0
╖
-Adadelta/accumulated_delta_var/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*>
shared_name/-Adadelta/accumulated_delta_var/dense_3/kernel
░
AAdadelta/accumulated_delta_var/dense_3/kernel/Read/ReadVariableOpReadVariableOp-Adadelta/accumulated_delta_var/dense_3/kernel*
_output_shapes
:	А*
dtype0
н
(Adadelta/accumulated_grad/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*9
shared_name*(Adadelta/accumulated_grad/dense_3/kernel
ж
<Adadelta/accumulated_grad/dense_3/kernel/Read/ReadVariableOpReadVariableOp(Adadelta/accumulated_grad/dense_3/kernel*
_output_shapes
:	А*
dtype0
п
+Adadelta/accumulated_delta_var/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*<
shared_name-+Adadelta/accumulated_delta_var/dense_2/bias
и
?Adadelta/accumulated_delta_var/dense_2/bias/Read/ReadVariableOpReadVariableOp+Adadelta/accumulated_delta_var/dense_2/bias*
_output_shapes	
:А*
dtype0
е
&Adadelta/accumulated_grad/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&Adadelta/accumulated_grad/dense_2/bias
Ю
:Adadelta/accumulated_grad/dense_2/bias/Read/ReadVariableOpReadVariableOp&Adadelta/accumulated_grad/dense_2/bias*
_output_shapes	
:А*
dtype0
╕
-Adadelta/accumulated_delta_var/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*>
shared_name/-Adadelta/accumulated_delta_var/dense_2/kernel
▒
AAdadelta/accumulated_delta_var/dense_2/kernel/Read/ReadVariableOpReadVariableOp-Adadelta/accumulated_delta_var/dense_2/kernel* 
_output_shapes
:
АА*
dtype0
о
(Adadelta/accumulated_grad/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*9
shared_name*(Adadelta/accumulated_grad/dense_2/kernel
з
<Adadelta/accumulated_grad/dense_2/kernel/Read/ReadVariableOpReadVariableOp(Adadelta/accumulated_grad/dense_2/kernel* 
_output_shapes
:
АА*
dtype0
░
,Adadelta/accumulated_delta_var/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adadelta/accumulated_delta_var/conv2d_5/bias
й
@Adadelta/accumulated_delta_var/conv2d_5/bias/Read/ReadVariableOpReadVariableOp,Adadelta/accumulated_delta_var/conv2d_5/bias*
_output_shapes
:@*
dtype0
ж
'Adadelta/accumulated_grad/conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adadelta/accumulated_grad/conv2d_5/bias
Я
;Adadelta/accumulated_grad/conv2d_5/bias/Read/ReadVariableOpReadVariableOp'Adadelta/accumulated_grad/conv2d_5/bias*
_output_shapes
:@*
dtype0
└
.Adadelta/accumulated_delta_var/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*?
shared_name0.Adadelta/accumulated_delta_var/conv2d_5/kernel
╣
BAdadelta/accumulated_delta_var/conv2d_5/kernel/Read/ReadVariableOpReadVariableOp.Adadelta/accumulated_delta_var/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0
╢
)Adadelta/accumulated_grad/conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*:
shared_name+)Adadelta/accumulated_grad/conv2d_5/kernel
п
=Adadelta/accumulated_grad/conv2d_5/kernel/Read/ReadVariableOpReadVariableOp)Adadelta/accumulated_grad/conv2d_5/kernel*&
_output_shapes
:@@*
dtype0
░
,Adadelta/accumulated_delta_var/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,Adadelta/accumulated_delta_var/conv2d_4/bias
й
@Adadelta/accumulated_delta_var/conv2d_4/bias/Read/ReadVariableOpReadVariableOp,Adadelta/accumulated_delta_var/conv2d_4/bias*
_output_shapes
:@*
dtype0
ж
'Adadelta/accumulated_grad/conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'Adadelta/accumulated_grad/conv2d_4/bias
Я
;Adadelta/accumulated_grad/conv2d_4/bias/Read/ReadVariableOpReadVariableOp'Adadelta/accumulated_grad/conv2d_4/bias*
_output_shapes
:@*
dtype0
└
.Adadelta/accumulated_delta_var/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*?
shared_name0.Adadelta/accumulated_delta_var/conv2d_4/kernel
╣
BAdadelta/accumulated_delta_var/conv2d_4/kernel/Read/ReadVariableOpReadVariableOp.Adadelta/accumulated_delta_var/conv2d_4/kernel*&
_output_shapes
: @*
dtype0
╢
)Adadelta/accumulated_grad/conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*:
shared_name+)Adadelta/accumulated_grad/conv2d_4/kernel
п
=Adadelta/accumulated_grad/conv2d_4/kernel/Read/ReadVariableOpReadVariableOp)Adadelta/accumulated_grad/conv2d_4/kernel*&
_output_shapes
: @*
dtype0
░
,Adadelta/accumulated_delta_var/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adadelta/accumulated_delta_var/conv2d_3/bias
й
@Adadelta/accumulated_delta_var/conv2d_3/bias/Read/ReadVariableOpReadVariableOp,Adadelta/accumulated_delta_var/conv2d_3/bias*
_output_shapes
: *
dtype0
ж
'Adadelta/accumulated_grad/conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'Adadelta/accumulated_grad/conv2d_3/bias
Я
;Adadelta/accumulated_grad/conv2d_3/bias/Read/ReadVariableOpReadVariableOp'Adadelta/accumulated_grad/conv2d_3/bias*
_output_shapes
: *
dtype0
└
.Adadelta/accumulated_delta_var/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adadelta/accumulated_delta_var/conv2d_3/kernel
╣
BAdadelta/accumulated_delta_var/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp.Adadelta/accumulated_delta_var/conv2d_3/kernel*&
_output_shapes
: *
dtype0
╢
)Adadelta/accumulated_grad/conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)Adadelta/accumulated_grad/conv2d_3/kernel
п
=Adadelta/accumulated_grad/conv2d_3/kernel/Read/ReadVariableOpReadVariableOp)Adadelta/accumulated_grad/conv2d_3/kernel*&
_output_shapes
: *
dtype0
╩
9Adadelta/accumulated_delta_var/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adadelta/accumulated_delta_var/batch_normalization_1/beta
├
MAdadelta/accumulated_delta_var/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp9Adadelta/accumulated_delta_var/batch_normalization_1/beta*
_output_shapes
:*
dtype0
└
4Adadelta/accumulated_grad/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adadelta/accumulated_grad/batch_normalization_1/beta
╣
HAdadelta/accumulated_grad/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp4Adadelta/accumulated_grad/batch_normalization_1/beta*
_output_shapes
:*
dtype0
╠
:Adadelta/accumulated_delta_var/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adadelta/accumulated_delta_var/batch_normalization_1/gamma
┼
NAdadelta/accumulated_delta_var/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp:Adadelta/accumulated_delta_var/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
┬
5Adadelta/accumulated_grad/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75Adadelta/accumulated_grad/batch_normalization_1/gamma
╗
IAdadelta/accumulated_grad/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp5Adadelta/accumulated_grad/batch_normalization_1/gamma*
_output_shapes
:*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	А*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:А*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
АА*
dtype0
r
conv2d_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_5/bias
k
!conv2d_5/bias/Read/ReadVariableOpReadVariableOpconv2d_5/bias*
_output_shapes
:@*
dtype0
В
conv2d_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@* 
shared_nameconv2d_5/kernel
{
#conv2d_5/kernel/Read/ReadVariableOpReadVariableOpconv2d_5/kernel*&
_output_shapes
:@@*
dtype0
r
conv2d_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_4/bias
k
!conv2d_4/bias/Read/ReadVariableOpReadVariableOpconv2d_4/bias*
_output_shapes
:@*
dtype0
В
conv2d_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv2d_4/kernel
{
#conv2d_4/kernel/Read/ReadVariableOpReadVariableOpconv2d_4/kernel*&
_output_shapes
: @*
dtype0
r
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_3/bias
k
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes
: *
dtype0
В
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_3/kernel
{
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*&
_output_shapes
: *
dtype0
в
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance
Ы
9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
Ъ
!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean
У
5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
М
batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta
Е
.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0
О
batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma
З
/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0
Ю
+serving_default_batch_normalization_1_inputPlaceholder*/
_output_shapes
:          *
dtype0*$
shape:          
А
StatefulPartitionedCallStatefulPartitionedCall+serving_default_batch_normalization_1_inputbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_64044

NoOpNoOp
╟f
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Вf
value°eBїe Bюe
П
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories*
·
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
axis
	gamma
beta
moving_mean
moving_variance
# _self_saveable_object_factories*
э
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories
 *_jit_compiled_convolution_op*
│
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
#1_self_saveable_object_factories* 
э
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
#:_self_saveable_object_factories
 ;_jit_compiled_convolution_op*
│
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
#B_self_saveable_object_factories* 
э
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
#K_self_saveable_object_factories
 L_jit_compiled_convolution_op*
│
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
#S_self_saveable_object_factories* 
│
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
#Z_self_saveable_object_factories* 
╦
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
#c_self_saveable_object_factories*
╦
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
#l_self_saveable_object_factories*
j
0
1
2
3
'4
(5
86
97
I8
J9
a10
b11
j12
k13*
Z
0
1
'2
(3
84
95
I6
J7
a8
b9
j10
k11*
* 
░
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
rtrace_0
strace_1
ttrace_2
utrace_3* 
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
* 
Ц
z
_variables
{_iterations
|_learning_rate
}_index_dict
~_accumulated_grads
_accumulated_delta_vars
А_update_step_xla*

Бserving_default* 
* 
 
0
1
2
3*

0
1*
* 
Ш
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Зtrace_0
Иtrace_1* 

Йtrace_0
Кtrace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0
(1*

'0
(1*
* 
Ш
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

Рtrace_0* 

Сtrace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
Ц
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses* 

Чtrace_0* 

Шtrace_0* 
* 

80
91*

80
91*
* 
Ш
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

Юtrace_0* 

Яtrace_0* 
_Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
Ц
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses* 

еtrace_0* 

жtrace_0* 
* 

I0
J1*

I0
J1*
* 
Ш
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

мtrace_0* 

нtrace_0* 
_Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
Ц
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses* 

│trace_0* 

┤trace_0* 
* 
* 
* 
* 
Ц
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

║trace_0* 

╗trace_0* 
* 

a0
b1*

a0
b1*
* 
Ш
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

┴trace_0* 

┬trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

j0
k1*

j0
k1*
* 
Ш
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses*

╚trace_0* 

╔trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*
J
0
1
2
3
4
5
6
7
	8

9*

╩0
╦1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
┌
{0
╠1
═2
╬3
╧4
╨5
╤6
╥7
╙8
╘9
╒10
╓11
╫12
╪13
┘14
┌15
█16
▄17
▌18
▐19
▀20
р21
с22
т23
у24*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
f
╠0
╬1
╨2
╥3
╘4
╓5
╪6
┌7
▄8
▐9
р10
т11*
f
═0
╧1
╤2
╙3
╒4
╫5
┘6
█7
▌8
▀9
с10
у11*
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
ф	variables
х	keras_api

цtotal

чcount*
M
ш	variables
щ	keras_api

ъtotal

ыcount
ь
_fn_kwargs*
Аz
VARIABLE_VALUE5Adadelta/accumulated_grad/batch_normalization_1/gamma1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUE:Adadelta/accumulated_delta_var/batch_normalization_1/gamma1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE4Adadelta/accumulated_grad/batch_normalization_1/beta1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE9Adadelta/accumulated_delta_var/batch_normalization_1/beta1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adadelta/accumulated_grad/conv2d_3/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.Adadelta/accumulated_delta_var/conv2d_3/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE'Adadelta/accumulated_grad/conv2d_3/bias1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE,Adadelta/accumulated_delta_var/conv2d_3/bias1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adadelta/accumulated_grad/conv2d_4/kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adadelta/accumulated_delta_var/conv2d_4/kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'Adadelta/accumulated_grad/conv2d_4/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adadelta/accumulated_delta_var/conv2d_4/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE)Adadelta/accumulated_grad/conv2d_5/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE.Adadelta/accumulated_delta_var/conv2d_5/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE'Adadelta/accumulated_grad/conv2d_5/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE,Adadelta/accumulated_delta_var/conv2d_5/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adadelta/accumulated_grad/dense_2/kernel2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE-Adadelta/accumulated_delta_var/dense_2/kernel2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adadelta/accumulated_grad/dense_2/bias2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adadelta/accumulated_delta_var/dense_2/bias2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adadelta/accumulated_grad/dense_3/kernel2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE-Adadelta/accumulated_delta_var/dense_3/kernel2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adadelta/accumulated_grad/dense_3/bias2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE+Adadelta/accumulated_delta_var/dense_3/bias2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*

ц0
ч1*

ф	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

ъ0
ы1*

ш	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
х
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOpIAdadelta/accumulated_grad/batch_normalization_1/gamma/Read/ReadVariableOpNAdadelta/accumulated_delta_var/batch_normalization_1/gamma/Read/ReadVariableOpHAdadelta/accumulated_grad/batch_normalization_1/beta/Read/ReadVariableOpMAdadelta/accumulated_delta_var/batch_normalization_1/beta/Read/ReadVariableOp=Adadelta/accumulated_grad/conv2d_3/kernel/Read/ReadVariableOpBAdadelta/accumulated_delta_var/conv2d_3/kernel/Read/ReadVariableOp;Adadelta/accumulated_grad/conv2d_3/bias/Read/ReadVariableOp@Adadelta/accumulated_delta_var/conv2d_3/bias/Read/ReadVariableOp=Adadelta/accumulated_grad/conv2d_4/kernel/Read/ReadVariableOpBAdadelta/accumulated_delta_var/conv2d_4/kernel/Read/ReadVariableOp;Adadelta/accumulated_grad/conv2d_4/bias/Read/ReadVariableOp@Adadelta/accumulated_delta_var/conv2d_4/bias/Read/ReadVariableOp=Adadelta/accumulated_grad/conv2d_5/kernel/Read/ReadVariableOpBAdadelta/accumulated_delta_var/conv2d_5/kernel/Read/ReadVariableOp;Adadelta/accumulated_grad/conv2d_5/bias/Read/ReadVariableOp@Adadelta/accumulated_delta_var/conv2d_5/bias/Read/ReadVariableOp<Adadelta/accumulated_grad/dense_2/kernel/Read/ReadVariableOpAAdadelta/accumulated_delta_var/dense_2/kernel/Read/ReadVariableOp:Adadelta/accumulated_grad/dense_2/bias/Read/ReadVariableOp?Adadelta/accumulated_delta_var/dense_2/bias/Read/ReadVariableOp<Adadelta/accumulated_grad/dense_3/kernel/Read/ReadVariableOpAAdadelta/accumulated_delta_var/dense_3/kernel/Read/ReadVariableOp:Adadelta/accumulated_grad/dense_3/bias/Read/ReadVariableOp?Adadelta/accumulated_delta_var/dense_3/bias/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*9
Tin2
02.	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *'
f"R 
__inference__traced_save_64584
Ё
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rate5Adadelta/accumulated_grad/batch_normalization_1/gamma:Adadelta/accumulated_delta_var/batch_normalization_1/gamma4Adadelta/accumulated_grad/batch_normalization_1/beta9Adadelta/accumulated_delta_var/batch_normalization_1/beta)Adadelta/accumulated_grad/conv2d_3/kernel.Adadelta/accumulated_delta_var/conv2d_3/kernel'Adadelta/accumulated_grad/conv2d_3/bias,Adadelta/accumulated_delta_var/conv2d_3/bias)Adadelta/accumulated_grad/conv2d_4/kernel.Adadelta/accumulated_delta_var/conv2d_4/kernel'Adadelta/accumulated_grad/conv2d_4/bias,Adadelta/accumulated_delta_var/conv2d_4/bias)Adadelta/accumulated_grad/conv2d_5/kernel.Adadelta/accumulated_delta_var/conv2d_5/kernel'Adadelta/accumulated_grad/conv2d_5/bias,Adadelta/accumulated_delta_var/conv2d_5/bias(Adadelta/accumulated_grad/dense_2/kernel-Adadelta/accumulated_delta_var/dense_2/kernel&Adadelta/accumulated_grad/dense_2/bias+Adadelta/accumulated_delta_var/dense_2/bias(Adadelta/accumulated_grad/dense_3/kernel-Adadelta/accumulated_delta_var/dense_3/kernel&Adadelta/accumulated_grad/dense_3/bias+Adadelta/accumulated_delta_var/dense_3/biastotal_1count_1totalcount*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_restore_64726ём
ш
Э
(__inference_conv2d_4_layer_call_fn_64327

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63627w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         
@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         
 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         
 
 
_user_specified_nameinputs
╢
K
/__inference_max_pooling2d_3_layer_call_fn_64313

inputs
identity╪
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63555Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╞
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_64389

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
┴
Х
'__inference_dense_3_layer_call_fn_64418

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall╫
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_63688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
В
№
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64308

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:           i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
┼
Ч
'__inference_dense_2_layer_call_fn_64398

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_63671p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╢
K
/__inference_max_pooling2d_4_layer_call_fn_64343

inputs
identity╪
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_63567Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╢
K
/__inference_max_pooling2d_5_layer_call_fn_64373

inputs
identity╪
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_63579Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
▓┬
ў
!__inference__traced_restore_64726
file_prefix:
,assignvariableop_batch_normalization_1_gamma:;
-assignvariableop_1_batch_normalization_1_beta:B
4assignvariableop_2_batch_normalization_1_moving_mean:F
8assignvariableop_3_batch_normalization_1_moving_variance:<
"assignvariableop_4_conv2d_3_kernel: .
 assignvariableop_5_conv2d_3_bias: <
"assignvariableop_6_conv2d_4_kernel: @.
 assignvariableop_7_conv2d_4_bias:@<
"assignvariableop_8_conv2d_5_kernel:@@.
 assignvariableop_9_conv2d_5_bias:@6
"assignvariableop_10_dense_2_kernel:
АА/
 assignvariableop_11_dense_2_bias:	А5
"assignvariableop_12_dense_3_kernel:	А.
 assignvariableop_13_dense_3_bias:'
assignvariableop_14_iteration:	 +
!assignvariableop_15_learning_rate: W
Iassignvariableop_16_adadelta_accumulated_grad_batch_normalization_1_gamma:\
Nassignvariableop_17_adadelta_accumulated_delta_var_batch_normalization_1_gamma:V
Hassignvariableop_18_adadelta_accumulated_grad_batch_normalization_1_beta:[
Massignvariableop_19_adadelta_accumulated_delta_var_batch_normalization_1_beta:W
=assignvariableop_20_adadelta_accumulated_grad_conv2d_3_kernel: \
Bassignvariableop_21_adadelta_accumulated_delta_var_conv2d_3_kernel: I
;assignvariableop_22_adadelta_accumulated_grad_conv2d_3_bias: N
@assignvariableop_23_adadelta_accumulated_delta_var_conv2d_3_bias: W
=assignvariableop_24_adadelta_accumulated_grad_conv2d_4_kernel: @\
Bassignvariableop_25_adadelta_accumulated_delta_var_conv2d_4_kernel: @I
;assignvariableop_26_adadelta_accumulated_grad_conv2d_4_bias:@N
@assignvariableop_27_adadelta_accumulated_delta_var_conv2d_4_bias:@W
=assignvariableop_28_adadelta_accumulated_grad_conv2d_5_kernel:@@\
Bassignvariableop_29_adadelta_accumulated_delta_var_conv2d_5_kernel:@@I
;assignvariableop_30_adadelta_accumulated_grad_conv2d_5_bias:@N
@assignvariableop_31_adadelta_accumulated_delta_var_conv2d_5_bias:@P
<assignvariableop_32_adadelta_accumulated_grad_dense_2_kernel:
ААU
Aassignvariableop_33_adadelta_accumulated_delta_var_dense_2_kernel:
ААI
:assignvariableop_34_adadelta_accumulated_grad_dense_2_bias:	АN
?assignvariableop_35_adadelta_accumulated_delta_var_dense_2_bias:	АO
<assignvariableop_36_adadelta_accumulated_grad_dense_3_kernel:	АT
Aassignvariableop_37_adadelta_accumulated_delta_var_dense_3_kernel:	АH
:assignvariableop_38_adadelta_accumulated_grad_dense_3_bias:M
?assignvariableop_39_adadelta_accumulated_delta_var_dense_3_bias:%
assignvariableop_40_total_1: %
assignvariableop_41_count_1: #
assignvariableop_42_total: #
assignvariableop_43_count: 
identity_45ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9┤
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*┌
value╨B═-B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╩
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B В
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*╩
_output_shapes╖
┤:::::::::::::::::::::::::::::::::::::::::::::*;
dtypes1
/2-	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:┐
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_1_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_1_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╦
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_1_moving_meanIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_1_moving_varianceIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_4_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_4_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_5_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╖
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_5_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╗
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:╣
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:╢
AssignVariableOp_14AssignVariableOpassignvariableop_14_iterationIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:║
AssignVariableOp_15AssignVariableOp!assignvariableop_15_learning_rateIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:т
AssignVariableOp_16AssignVariableOpIassignvariableop_16_adadelta_accumulated_grad_batch_normalization_1_gammaIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ч
AssignVariableOp_17AssignVariableOpNassignvariableop_17_adadelta_accumulated_delta_var_batch_normalization_1_gammaIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:с
AssignVariableOp_18AssignVariableOpHassignvariableop_18_adadelta_accumulated_grad_batch_normalization_1_betaIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:ц
AssignVariableOp_19AssignVariableOpMassignvariableop_19_adadelta_accumulated_delta_var_batch_normalization_1_betaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╓
AssignVariableOp_20AssignVariableOp=assignvariableop_20_adadelta_accumulated_grad_conv2d_3_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:█
AssignVariableOp_21AssignVariableOpBassignvariableop_21_adadelta_accumulated_delta_var_conv2d_3_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:╘
AssignVariableOp_22AssignVariableOp;assignvariableop_22_adadelta_accumulated_grad_conv2d_3_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_23AssignVariableOp@assignvariableop_23_adadelta_accumulated_delta_var_conv2d_3_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╓
AssignVariableOp_24AssignVariableOp=assignvariableop_24_adadelta_accumulated_grad_conv2d_4_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:█
AssignVariableOp_25AssignVariableOpBassignvariableop_25_adadelta_accumulated_delta_var_conv2d_4_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╘
AssignVariableOp_26AssignVariableOp;assignvariableop_26_adadelta_accumulated_grad_conv2d_4_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_27AssignVariableOp@assignvariableop_27_adadelta_accumulated_delta_var_conv2d_4_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:╓
AssignVariableOp_28AssignVariableOp=assignvariableop_28_adadelta_accumulated_grad_conv2d_5_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:█
AssignVariableOp_29AssignVariableOpBassignvariableop_29_adadelta_accumulated_delta_var_conv2d_5_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:╘
AssignVariableOp_30AssignVariableOp;assignvariableop_30_adadelta_accumulated_grad_conv2d_5_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_31AssignVariableOp@assignvariableop_31_adadelta_accumulated_delta_var_conv2d_5_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╒
AssignVariableOp_32AssignVariableOp<assignvariableop_32_adadelta_accumulated_grad_dense_2_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:┌
AssignVariableOp_33AssignVariableOpAassignvariableop_33_adadelta_accumulated_delta_var_dense_2_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_34AssignVariableOp:assignvariableop_34_adadelta_accumulated_grad_dense_2_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:╪
AssignVariableOp_35AssignVariableOp?assignvariableop_35_adadelta_accumulated_delta_var_dense_2_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:╒
AssignVariableOp_36AssignVariableOp<assignvariableop_36_adadelta_accumulated_grad_dense_3_kernelIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:┌
AssignVariableOp_37AssignVariableOpAassignvariableop_37_adadelta_accumulated_delta_var_dense_3_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_38AssignVariableOp:assignvariableop_38_adadelta_accumulated_grad_dense_3_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:╪
AssignVariableOp_39AssignVariableOp?assignvariableop_39_adadelta_accumulated_delta_var_dense_3_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_40AssignVariableOpassignvariableop_40_total_1Identity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:┤
AssignVariableOp_41AssignVariableOpassignvariableop_41_count_1Identity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_42AssignVariableOpassignvariableop_42_totalIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:▓
AssignVariableOp_43AssignVariableOpassignvariableop_43_countIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ч
Identity_44Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_45IdentityIdentity_44:output:0^NoOp_1*
T0*
_output_shapes
: Д
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_45Identity_45:output:0*m
_input_shapes\
Z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
В
№
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64368

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
п
E
)__inference_flatten_1_layer_call_fn_64383

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_63658a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Е
┐
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64288

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
в

Ї
B__inference_dense_3_layer_call_and_return_conditional_losses_64429

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ш
Э
(__inference_conv2d_5_layer_call_fn_64357

inputs!
unknown:@@
	unknown_0:@
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63645w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
чL
┤
G__inference_sequential_1_layer_call_and_return_conditional_losses_64226

inputs;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_3_conv2d_readvariableop_resource: 6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
АА6
'dense_2_biasadd_readvariableop_resource:	А9
&dense_3_matmul_readvariableop_resource:	А5
'dense_3_biasadd_readvariableop_resource:
identityИв$batch_normalization_1/AssignNewValueв&batch_normalization_1/AssignNewValue_1в5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1вconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpО
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0Т
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0▓
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<Ю
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(и
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(О
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╧
conv2d_3/Conv2DConv2D*batch_normalization_1/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
Д
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:           м
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
О
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0┼
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
Д
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         
@м
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
О
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0┼
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Д
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         @м
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Л
flatten_1/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         АЖ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0О
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Н
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Е
┐
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63535

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ╘
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
═E
ф
G__inference_sequential_1_layer_call_and_return_conditional_losses_64168

inputs;
-batch_normalization_1_readvariableop_resource:=
/batch_normalization_1_readvariableop_1_resource:L
>batch_normalization_1_fusedbatchnormv3_readvariableop_resource:N
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:A
'conv2d_3_conv2d_readvariableop_resource: 6
(conv2d_3_biasadd_readvariableop_resource: A
'conv2d_4_conv2d_readvariableop_resource: @6
(conv2d_4_biasadd_readvariableop_resource:@A
'conv2d_5_conv2d_readvariableop_resource:@@6
(conv2d_5_biasadd_readvariableop_resource:@:
&dense_2_matmul_readvariableop_resource:
АА6
'dense_2_biasadd_readvariableop_resource:	А9
&dense_3_matmul_readvariableop_resource:	А5
'dense_3_biasadd_readvariableop_resource:
identityИв5batch_normalization_1/FusedBatchNormV3/ReadVariableOpв7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в$batch_normalization_1/ReadVariableOpв&batch_normalization_1/ReadVariableOp_1вconv2d_3/BiasAdd/ReadVariableOpвconv2d_3/Conv2D/ReadVariableOpвconv2d_4/BiasAdd/ReadVariableOpвconv2d_4/Conv2D/ReadVariableOpвconv2d_5/BiasAdd/ReadVariableOpвconv2d_5/Conv2D/ReadVariableOpвdense_2/BiasAdd/ReadVariableOpвdense_2/MatMul/ReadVariableOpвdense_3/BiasAdd/ReadVariableOpвdense_3/MatMul/ReadVariableOpО
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0Т
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0░
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0┤
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0д
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          :::::*
epsilon%oГ:*
is_training( О
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0╧
conv2d_3/Conv2DConv2D*batch_normalization_1/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
Д
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ш
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           j
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:           м
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
О
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0┼
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
Д
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@j
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         
@м
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
О
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0┼
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Д
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ш
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @j
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         @м
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Л
flatten_1/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:         АЖ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0О
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АЕ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0Н
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         В
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         f
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         h
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ╙
NoOpNoOp6^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2B
conv2d_4/BiasAdd/ReadVariableOpconv2d_4/BiasAdd/ReadVariableOp2@
conv2d_4/Conv2D/ReadVariableOpconv2d_4/Conv2D/ReadVariableOp2B
conv2d_5/BiasAdd/ReadVariableOpconv2d_5/BiasAdd/ReadVariableOp2@
conv2d_5/Conv2D/ReadVariableOpconv2d_5/Conv2D/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Н	
╨
5__inference_batch_normalization_1_layer_call_fn_64252

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63535Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
з
Й
,__inference_sequential_1_layer_call_fn_63923
batch_normalization_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_63859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:          
5
_user_specified_namebatch_normalization_1_input
у.
▄
G__inference_sequential_1_layer_call_and_return_conditional_losses_64007
batch_normalization_1_input)
batch_normalization_1_63968:)
batch_normalization_1_63970:)
batch_normalization_1_63972:)
batch_normalization_1_63974:(
conv2d_3_63977: 
conv2d_3_63979: (
conv2d_4_63983: @
conv2d_4_63985:@(
conv2d_5_63989:@@
conv2d_5_63991:@!
dense_2_63996:
АА
dense_2_63998:	А 
dense_3_64001:	А
dense_3_64003:
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCall·
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputbatch_normalization_1_63968batch_normalization_1_63970batch_normalization_1_63972batch_normalization_1_63974*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63535е
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_63977conv2d_3_63979*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63609Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63555Ч
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_63983conv2d_4_63985*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63627Ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_63567Ч
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_63989conv2d_5_63991*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63645Ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_63579▄
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_63658Ж
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_63996dense_2_63998*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_63671Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_64001dense_3_64003*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_63688w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:l h
/
_output_shapes
:          
5
_user_specified_namebatch_normalization_1_input
╞
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_63658

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:         @:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
й
Й
,__inference_sequential_1_layer_call_fn_63726
batch_normalization_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_63695o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:          
5
_user_specified_namebatch_normalization_1_input
ъ
Ї
,__inference_sequential_1_layer_call_fn_64077

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_63695o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
д.
╟
G__inference_sequential_1_layer_call_and_return_conditional_losses_63859

inputs)
batch_normalization_1_63820:)
batch_normalization_1_63822:)
batch_normalization_1_63824:)
batch_normalization_1_63826:(
conv2d_3_63829: 
conv2d_3_63831: (
conv2d_4_63835: @
conv2d_4_63837:@(
conv2d_5_63841:@@
conv2d_5_63843:@!
dense_2_63848:
АА
dense_2_63850:	А 
dense_3_63853:	А
dense_3_63855:
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallх
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_63820batch_normalization_1_63822batch_normalization_1_63824batch_normalization_1_63826*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63535е
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_63829conv2d_3_63831*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63609Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63555Ч
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_63835conv2d_4_63837*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63627Ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_63567Ч
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_63841conv2d_5_63843*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63645Ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_63579▄
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_63658Ж
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_63848dense_2_63850*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_63671Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_63853dense_3_63855*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_63688w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
ж.
╟
G__inference_sequential_1_layer_call_and_return_conditional_losses_63695

inputs)
batch_normalization_1_63589:)
batch_normalization_1_63591:)
batch_normalization_1_63593:)
batch_normalization_1_63595:(
conv2d_3_63610: 
conv2d_3_63612: (
conv2d_4_63628: @
conv2d_4_63630:@(
conv2d_5_63646:@@
conv2d_5_63648:@!
dense_2_63672:
АА
dense_2_63674:	А 
dense_3_63689:	А
dense_3_63691:
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCallч
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_63589batch_normalization_1_63591batch_normalization_1_63593batch_normalization_1_63595*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63504е
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_63610conv2d_3_63612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63609Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63555Ч
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_63628conv2d_4_63630*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63627Ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_63567Ч
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_63646conv2d_5_63648*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63645Ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_63579▄
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_63658Ж
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_63672dense_2_63674*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_63671Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_63689dense_3_63691*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_63688w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
П	
╨
5__inference_batch_normalization_1_layer_call_fn_64239

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63504Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63555

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╜U
╛
 __inference__wrapped_model_63482
batch_normalization_1_inputH
:sequential_1_batch_normalization_1_readvariableop_resource:J
<sequential_1_batch_normalization_1_readvariableop_1_resource:Y
Ksequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:[
Msequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:N
4sequential_1_conv2d_3_conv2d_readvariableop_resource: C
5sequential_1_conv2d_3_biasadd_readvariableop_resource: N
4sequential_1_conv2d_4_conv2d_readvariableop_resource: @C
5sequential_1_conv2d_4_biasadd_readvariableop_resource:@N
4sequential_1_conv2d_5_conv2d_readvariableop_resource:@@C
5sequential_1_conv2d_5_biasadd_readvariableop_resource:@G
3sequential_1_dense_2_matmul_readvariableop_resource:
ААC
4sequential_1_dense_2_biasadd_readvariableop_resource:	АF
3sequential_1_dense_3_matmul_readvariableop_resource:	АB
4sequential_1_dense_3_biasadd_readvariableop_resource:
identityИвBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвDsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в1sequential_1/batch_normalization_1/ReadVariableOpв3sequential_1/batch_normalization_1/ReadVariableOp_1в,sequential_1/conv2d_3/BiasAdd/ReadVariableOpв+sequential_1/conv2d_3/Conv2D/ReadVariableOpв,sequential_1/conv2d_4/BiasAdd/ReadVariableOpв+sequential_1/conv2d_4/Conv2D/ReadVariableOpв,sequential_1/conv2d_5/BiasAdd/ReadVariableOpв+sequential_1/conv2d_5/Conv2D/ReadVariableOpв+sequential_1/dense_2/BiasAdd/ReadVariableOpв*sequential_1/dense_2/MatMul/ReadVariableOpв+sequential_1/dense_3/BiasAdd/ReadVariableOpв*sequential_1/dense_3/MatMul/ReadVariableOpи
1sequential_1/batch_normalization_1/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype0м
3sequential_1/batch_normalization_1/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype0╩
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0╬
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0·
3sequential_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3batch_normalization_1_input9sequential_1/batch_normalization_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          :::::*
epsilon%oГ:*
is_training( и
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ў
sequential_1/conv2d_3/Conv2DConv2D7sequential_1/batch_normalization_1/FusedBatchNormV3:y:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
Ю
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0┐
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           Д
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:           ╞
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*/
_output_shapes
:         
 *
ksize
*
paddingVALID*
strides
и
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ь
sequential_1/conv2d_4/Conv2DConv2D-sequential_1/max_pooling2d_3/MaxPool:output:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
Ю
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@Д
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:         
@╞
$sequential_1/max_pooling2d_4/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
и
+sequential_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0ь
sequential_1/conv2d_5/Conv2DConv2D-sequential_1/max_pooling2d_4/MaxPool:output:03sequential_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ю
,sequential_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┐
sequential_1/conv2d_5/BiasAddBiasAdd%sequential_1/conv2d_5/Conv2D:output:04sequential_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @Д
sequential_1/conv2d_5/ReluRelu&sequential_1/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:         @╞
$sequential_1/max_pooling2d_5/MaxPoolMaxPool(sequential_1/conv2d_5/Relu:activations:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
m
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ▓
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling2d_5/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:         Аа
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0╡
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЭ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0╢
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А{
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АЯ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0┤
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:         u
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         Й
NoOpNoOpC^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_1/ReadVariableOp4^sequential_1/batch_normalization_1/ReadVariableOp_1-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp-^sequential_1/conv2d_5/BiasAdd/ReadVariableOp,^sequential_1/conv2d_5/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2И
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2М
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12f
1sequential_1/batch_normalization_1/ReadVariableOp1sequential_1/batch_normalization_1/ReadVariableOp2j
3sequential_1/batch_normalization_1/ReadVariableOp_13sequential_1/batch_normalization_1/ReadVariableOp_12\
,sequential_1/conv2d_3/BiasAdd/ReadVariableOp,sequential_1/conv2d_3/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_3/Conv2D/ReadVariableOp+sequential_1/conv2d_3/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_4/BiasAdd/ReadVariableOp,sequential_1/conv2d_4/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_4/Conv2D/ReadVariableOp+sequential_1/conv2d_4/Conv2D/ReadVariableOp2\
,sequential_1/conv2d_5/BiasAdd/ReadVariableOp,sequential_1/conv2d_5/BiasAdd/ReadVariableOp2Z
+sequential_1/conv2d_5/Conv2D/ReadVariableOp+sequential_1/conv2d_5/Conv2D/ReadVariableOp2Z
+sequential_1/dense_2/BiasAdd/ReadVariableOp+sequential_1/dense_2/BiasAdd/ReadVariableOp2X
*sequential_1/dense_2/MatMul/ReadVariableOp*sequential_1/dense_2/MatMul/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2X
*sequential_1/dense_3/MatMul/ReadVariableOp*sequential_1/dense_3/MatMul/ReadVariableOp:l h
/
_output_shapes
:          
5
_user_specified_namebatch_normalization_1_input
Т
f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64318

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_64348

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
№
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63627

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         
@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         
@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         
 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
 
_user_specified_nameinputs
х.
▄
G__inference_sequential_1_layer_call_and_return_conditional_losses_63965
batch_normalization_1_input)
batch_normalization_1_63926:)
batch_normalization_1_63928:)
batch_normalization_1_63930:)
batch_normalization_1_63932:(
conv2d_3_63935: 
conv2d_3_63937: (
conv2d_4_63941: @
conv2d_4_63943:@(
conv2d_5_63947:@@
conv2d_5_63949:@!
dense_2_63954:
АА
dense_2_63956:	А 
dense_3_63959:	А
dense_3_63961:
identityИв-batch_normalization_1/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallв conv2d_5/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdense_3/StatefulPartitionedCall№
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputbatch_normalization_1_63926batch_normalization_1_63928batch_normalization_1_63930batch_normalization_1_63932*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63504е
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_63935conv2d_3_63937*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63609Ё
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_63555Ч
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_63941conv2d_4_63943*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_4_layer_call_and_return_conditional_losses_63627Ё
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_63567Ч
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_63947conv2d_5_63949*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63645Ё
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_63579▄
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_63658Ж
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_63954dense_2_63956*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_63671Л
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_63959dense_3_63961*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_63688w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:l h
/
_output_shapes
:          
5
_user_specified_namebatch_normalization_1_input
в

Ї
B__inference_dense_3_layer_call_and_return_conditional_losses_63688

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
В
№
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64338

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         
@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         
@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         
@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         
 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         
 
 
_user_specified_nameinputs
∙
А
#__inference_signature_wrapper_64044
batch_normalization_1_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_63482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:          
5
_user_specified_namebatch_normalization_1_input
ш
Ї
,__inference_sequential_1_layer_call_fn_64110

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:#
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@#
	unknown_7:@@
	unknown_8:@
	unknown_9:
АА

unknown_10:	А

unknown_11:	А

unknown_12:
identityИвStatefulPartitionedCall∙
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_63859o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:          : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_63567

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╢_
ю
__inference__traced_save_64584
file_prefix:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_conv2d_4_kernel_read_readvariableop,
(savev2_conv2d_4_bias_read_readvariableop.
*savev2_conv2d_5_kernel_read_readvariableop,
(savev2_conv2d_5_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableopT
Psavev2_adadelta_accumulated_grad_batch_normalization_1_gamma_read_readvariableopY
Usavev2_adadelta_accumulated_delta_var_batch_normalization_1_gamma_read_readvariableopS
Osavev2_adadelta_accumulated_grad_batch_normalization_1_beta_read_readvariableopX
Tsavev2_adadelta_accumulated_delta_var_batch_normalization_1_beta_read_readvariableopH
Dsavev2_adadelta_accumulated_grad_conv2d_3_kernel_read_readvariableopM
Isavev2_adadelta_accumulated_delta_var_conv2d_3_kernel_read_readvariableopF
Bsavev2_adadelta_accumulated_grad_conv2d_3_bias_read_readvariableopK
Gsavev2_adadelta_accumulated_delta_var_conv2d_3_bias_read_readvariableopH
Dsavev2_adadelta_accumulated_grad_conv2d_4_kernel_read_readvariableopM
Isavev2_adadelta_accumulated_delta_var_conv2d_4_kernel_read_readvariableopF
Bsavev2_adadelta_accumulated_grad_conv2d_4_bias_read_readvariableopK
Gsavev2_adadelta_accumulated_delta_var_conv2d_4_bias_read_readvariableopH
Dsavev2_adadelta_accumulated_grad_conv2d_5_kernel_read_readvariableopM
Isavev2_adadelta_accumulated_delta_var_conv2d_5_kernel_read_readvariableopF
Bsavev2_adadelta_accumulated_grad_conv2d_5_bias_read_readvariableopK
Gsavev2_adadelta_accumulated_delta_var_conv2d_5_bias_read_readvariableopG
Csavev2_adadelta_accumulated_grad_dense_2_kernel_read_readvariableopL
Hsavev2_adadelta_accumulated_delta_var_dense_2_kernel_read_readvariableopE
Asavev2_adadelta_accumulated_grad_dense_2_bias_read_readvariableopJ
Fsavev2_adadelta_accumulated_delta_var_dense_2_bias_read_readvariableopG
Csavev2_adadelta_accumulated_grad_dense_3_kernel_read_readvariableopL
Hsavev2_adadelta_accumulated_delta_var_dense_3_kernel_read_readvariableopE
Asavev2_adadelta_accumulated_grad_dense_3_bias_read_readvariableopJ
Fsavev2_adadelta_accumulated_delta_var_dense_3_bias_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ▒
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*┌
value╨B═-B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╟
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:-*
dtype0*m
valuedBb-B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╫
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableopPsavev2_adadelta_accumulated_grad_batch_normalization_1_gamma_read_readvariableopUsavev2_adadelta_accumulated_delta_var_batch_normalization_1_gamma_read_readvariableopOsavev2_adadelta_accumulated_grad_batch_normalization_1_beta_read_readvariableopTsavev2_adadelta_accumulated_delta_var_batch_normalization_1_beta_read_readvariableopDsavev2_adadelta_accumulated_grad_conv2d_3_kernel_read_readvariableopIsavev2_adadelta_accumulated_delta_var_conv2d_3_kernel_read_readvariableopBsavev2_adadelta_accumulated_grad_conv2d_3_bias_read_readvariableopGsavev2_adadelta_accumulated_delta_var_conv2d_3_bias_read_readvariableopDsavev2_adadelta_accumulated_grad_conv2d_4_kernel_read_readvariableopIsavev2_adadelta_accumulated_delta_var_conv2d_4_kernel_read_readvariableopBsavev2_adadelta_accumulated_grad_conv2d_4_bias_read_readvariableopGsavev2_adadelta_accumulated_delta_var_conv2d_4_bias_read_readvariableopDsavev2_adadelta_accumulated_grad_conv2d_5_kernel_read_readvariableopIsavev2_adadelta_accumulated_delta_var_conv2d_5_kernel_read_readvariableopBsavev2_adadelta_accumulated_grad_conv2d_5_bias_read_readvariableopGsavev2_adadelta_accumulated_delta_var_conv2d_5_bias_read_readvariableopCsavev2_adadelta_accumulated_grad_dense_2_kernel_read_readvariableopHsavev2_adadelta_accumulated_delta_var_dense_2_kernel_read_readvariableopAsavev2_adadelta_accumulated_grad_dense_2_bias_read_readvariableopFsavev2_adadelta_accumulated_delta_var_dense_2_bias_read_readvariableopCsavev2_adadelta_accumulated_grad_dense_3_kernel_read_readvariableopHsavev2_adadelta_accumulated_delta_var_dense_3_kernel_read_readvariableopAsavev2_adadelta_accumulated_grad_dense_3_bias_read_readvariableopFsavev2_adadelta_accumulated_delta_var_dense_3_bias_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *;
dtypes1
/2-	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Щ
_input_shapesЗ
Д: ::::: : : @:@:@@:@:
АА:А:	А:: : ::::: : : : : @: @:@:@:@@:@@:@:@:
АА:
АА:А:А:	А:	А::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,	(
&
_output_shapes
:@@: 


_output_shapes
:@:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @:,(
&
_output_shapes
: @: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
:@@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:  

_output_shapes
:@:&!"
 
_output_shapes
:
АА:&""
 
_output_shapes
:
АА:!#

_output_shapes	
:А:!$

_output_shapes	
:А:%%!

_output_shapes
:	А:%&!

_output_shapes
:	А: '

_output_shapes
:: (

_output_shapes
::)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: 
Т
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_64378

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
В
№
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63609

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:           i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:           w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╦
Ы
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_63504

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_63579

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╦
Ы
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64270

inputs%
readvariableop_resource:'
readvariableop_1_resource:6
(fusedbatchnormv3_readvariableop_resource:8
*fusedbatchnormv3_readvariableop_1_resource:
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           :::::*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           ░
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           
 
_user_specified_nameinputs
е

Ў
B__inference_dense_2_layer_call_and_return_conditional_losses_64409

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
В
№
C__inference_conv2d_5_layer_call_and_return_conditional_losses_63645

inputs8
conv2d_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
ш
Э
(__inference_conv2d_3_layer_call_fn_64297

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallр
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_3_layer_call_and_return_conditional_losses_63609w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:           `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:          : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:          
 
_user_specified_nameinputs
е

Ў
B__inference_dense_2_layer_call_and_return_conditional_losses_63671

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*┌
serving_default╞
k
batch_normalization_1_inputL
-serving_default_batch_normalization_1_input:0          ;
dense_30
StatefulPartitionedCall:0         tensorflow/serving/predict:┐С
й
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures
#_self_saveable_object_factories"
_tf_keras_sequential
П
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
axis
	gamma
beta
moving_mean
moving_variance
# _self_saveable_object_factories"
_tf_keras_layer
В
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias
#)_self_saveable_object_factories
 *_jit_compiled_convolution_op"
_tf_keras_layer
╩
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
#1_self_saveable_object_factories"
_tf_keras_layer
В
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
#:_self_saveable_object_factories
 ;_jit_compiled_convolution_op"
_tf_keras_layer
╩
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses
#B_self_saveable_object_factories"
_tf_keras_layer
В
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias
#K_self_saveable_object_factories
 L_jit_compiled_convolution_op"
_tf_keras_layer
╩
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses
#S_self_saveable_object_factories"
_tf_keras_layer
╩
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses
#Z_self_saveable_object_factories"
_tf_keras_layer
р
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias
#c_self_saveable_object_factories"
_tf_keras_layer
р
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses

jkernel
kbias
#l_self_saveable_object_factories"
_tf_keras_layer
Ж
0
1
2
3
'4
(5
86
97
I8
J9
a10
b11
j12
k13"
trackable_list_wrapper
v
0
1
'2
(3
84
95
I6
J7
a8
b9
j10
k11"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
х
rtrace_0
strace_1
ttrace_2
utrace_32·
,__inference_sequential_1_layer_call_fn_63726
,__inference_sequential_1_layer_call_fn_64077
,__inference_sequential_1_layer_call_fn_64110
,__inference_sequential_1_layer_call_fn_63923┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zrtrace_0zstrace_1zttrace_2zutrace_3
╤
vtrace_0
wtrace_1
xtrace_2
ytrace_32ц
G__inference_sequential_1_layer_call_and_return_conditional_losses_64168
G__inference_sequential_1_layer_call_and_return_conditional_losses_64226
G__inference_sequential_1_layer_call_and_return_conditional_losses_63965
G__inference_sequential_1_layer_call_and_return_conditional_losses_64007┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
▀B▄
 __inference__wrapped_model_63482batch_normalization_1_input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▒
z
_variables
{_iterations
|_learning_rate
}_index_dict
~_accumulated_grads
_accumulated_delta_vars
А_update_step_xla"
experimentalOptimizer
-
Бserving_default"
signature_map
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
▀
Зtrace_0
Иtrace_12д
5__inference_batch_normalization_1_layer_call_fn_64239
5__inference_batch_normalization_1_layer_call_fn_64252│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЗtrace_0zИtrace_1
Х
Йtrace_0
Кtrace_12┌
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64270
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64288│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЙtrace_0zКtrace_1
 "
trackable_list_wrapper
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
ю
Рtrace_02╧
(__inference_conv2d_3_layer_call_fn_64297в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
Й
Сtrace_02ъ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64308в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zСtrace_0
):' 2conv2d_3/kernel
: 2conv2d_3/bias
 "
trackable_dict_wrapper
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Тnon_trainable_variables
Уlayers
Фmetrics
 Хlayer_regularization_losses
Цlayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
ї
Чtrace_02╓
/__inference_max_pooling2d_3_layer_call_fn_64313в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0
Р
Шtrace_02ё
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64318в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zШtrace_0
 "
trackable_dict_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Щnon_trainable_variables
Ъlayers
Ыmetrics
 Ьlayer_regularization_losses
Эlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
ю
Юtrace_02╧
(__inference_conv2d_4_layer_call_fn_64327в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЮtrace_0
Й
Яtrace_02ъ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64338в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЯtrace_0
):' @2conv2d_4/kernel
:@2conv2d_4/bias
 "
trackable_dict_wrapper
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
ї
еtrace_02╓
/__inference_max_pooling2d_4_layer_call_fn_64343в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zеtrace_0
Р
жtrace_02ё
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_64348в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zжtrace_0
 "
trackable_dict_wrapper
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
зnon_trainable_variables
иlayers
йmetrics
 кlayer_regularization_losses
лlayer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ю
мtrace_02╧
(__inference_conv2d_5_layer_call_fn_64357в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zмtrace_0
Й
нtrace_02ъ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64368в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
 "
trackable_dict_wrapper
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
ї
│trace_02╓
/__inference_max_pooling2d_5_layer_call_fn_64373в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z│trace_0
Р
┤trace_02ё
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_64378в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┤trace_0
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╡non_trainable_variables
╢layers
╖metrics
 ╕layer_regularization_losses
╣layer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
я
║trace_02╨
)__inference_flatten_1_layer_call_fn_64383в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z║trace_0
К
╗trace_02ы
D__inference_flatten_1_layer_call_and_return_conditional_losses_64389в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╗trace_0
 "
trackable_dict_wrapper
.
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╝non_trainable_variables
╜layers
╛metrics
 ┐layer_regularization_losses
└layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
э
┴trace_02╬
'__inference_dense_2_layer_call_fn_64398в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┴trace_0
И
┬trace_02щ
B__inference_dense_2_layer_call_and_return_conditional_losses_64409в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┬trace_0
": 
АА2dense_2/kernel
:А2dense_2/bias
 "
trackable_dict_wrapper
.
j0
k1"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
├non_trainable_variables
─layers
┼metrics
 ╞layer_regularization_losses
╟layer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
э
╚trace_02╬
'__inference_dense_3_layer_call_fn_64418в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0
И
╔trace_02щ
B__inference_dense_3_layer_call_and_return_conditional_losses_64429в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╔trace_0
!:	А2dense_3/kernel
:2dense_3/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
╩0
╦1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ТBП
,__inference_sequential_1_layer_call_fn_63726batch_normalization_1_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
,__inference_sequential_1_layer_call_fn_64077inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
¤B·
,__inference_sequential_1_layer_call_fn_64110inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ТBП
,__inference_sequential_1_layer_call_fn_63923batch_normalization_1_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
G__inference_sequential_1_layer_call_and_return_conditional_losses_64168inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ШBХ
G__inference_sequential_1_layer_call_and_return_conditional_losses_64226inputs"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
нBк
G__inference_sequential_1_layer_call_and_return_conditional_losses_63965batch_normalization_1_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
нBк
G__inference_sequential_1_layer_call_and_return_conditional_losses_64007batch_normalization_1_input"┐
╢▓▓
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ў
{0
╠1
═2
╬3
╧4
╨5
╤6
╥7
╙8
╘9
╒10
╓11
╫12
╪13
┘14
┌15
█16
▄17
▌18
▐19
▀20
р21
с22
т23
у24"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
В
╠0
╬1
╨2
╥3
╘4
╓5
╪6
┌7
▄8
▐9
р10
т11"
trackable_list_wrapper
В
═0
╧1
╤2
╙3
╒4
╫5
┘6
█7
▌8
▀9
с10
у11"
trackable_list_wrapper
┐2╝╣
о▓к
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
▐B█
#__inference_signature_wrapper_64044batch_normalization_1_input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
5__inference_batch_normalization_1_layer_call_fn_64239inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
5__inference_batch_normalization_1_layer_call_fn_64252inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64270inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ХBТ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64288inputs"│
к▓ж
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_conv2d_3_layer_call_fn_64297inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64308inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_3_layer_call_fn_64313inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64318inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_conv2d_4_layer_call_fn_64327inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64338inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_4_layer_call_fn_64343inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_64348inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▄B┘
(__inference_conv2d_5_layer_call_fn_64357inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ўBЇ
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64368inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
/__inference_max_pooling2d_5_layer_call_fn_64373inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_64378inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
▌B┌
)__inference_flatten_1_layer_call_fn_64383inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_flatten_1_layer_call_and_return_conditional_losses_64389inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
█B╪
'__inference_dense_2_layer_call_fn_64398inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_dense_2_layer_call_and_return_conditional_losses_64409inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
█B╪
'__inference_dense_3_layer_call_fn_64418inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_dense_3_layer_call_and_return_conditional_losses_64429inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
R
ф	variables
х	keras_api

цtotal

чcount"
_tf_keras_metric
c
ш	variables
щ	keras_api

ъtotal

ыcount
ь
_fn_kwargs"
_tf_keras_metric
A:?25Adadelta/accumulated_grad/batch_normalization_1/gamma
F:D2:Adadelta/accumulated_delta_var/batch_normalization_1/gamma
@:>24Adadelta/accumulated_grad/batch_normalization_1/beta
E:C29Adadelta/accumulated_delta_var/batch_normalization_1/beta
A:? 2)Adadelta/accumulated_grad/conv2d_3/kernel
F:D 2.Adadelta/accumulated_delta_var/conv2d_3/kernel
3:1 2'Adadelta/accumulated_grad/conv2d_3/bias
8:6 2,Adadelta/accumulated_delta_var/conv2d_3/bias
A:? @2)Adadelta/accumulated_grad/conv2d_4/kernel
F:D @2.Adadelta/accumulated_delta_var/conv2d_4/kernel
3:1@2'Adadelta/accumulated_grad/conv2d_4/bias
8:6@2,Adadelta/accumulated_delta_var/conv2d_4/bias
A:?@@2)Adadelta/accumulated_grad/conv2d_5/kernel
F:D@@2.Adadelta/accumulated_delta_var/conv2d_5/kernel
3:1@2'Adadelta/accumulated_grad/conv2d_5/bias
8:6@2,Adadelta/accumulated_delta_var/conv2d_5/bias
::8
АА2(Adadelta/accumulated_grad/dense_2/kernel
?:=
АА2-Adadelta/accumulated_delta_var/dense_2/kernel
3:1А2&Adadelta/accumulated_grad/dense_2/bias
8:6А2+Adadelta/accumulated_delta_var/dense_2/bias
9:7	А2(Adadelta/accumulated_grad/dense_3/kernel
>:<	А2-Adadelta/accumulated_delta_var/dense_3/kernel
2:02&Adadelta/accumulated_grad/dense_3/bias
7:52+Adadelta/accumulated_delta_var/dense_3/bias
0
ц0
ч1"
trackable_list_wrapper
.
ф	variables"
_generic_user_object
:  (2total
:  (2count
0
ъ0
ы1"
trackable_list_wrapper
.
ш	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper╢
 __inference__wrapped_model_63482С'(89IJabjkLвI
Bв?
=К:
batch_normalization_1_input          
к "1к.
,
dense_3!К
dense_3         Є
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64270ЭMвJ
Cв@
:К7
inputs+                           
p 
к "FвC
<К9
tensor_0+                           
Ъ Є
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_64288ЭMвJ
Cв@
:К7
inputs+                           
p
к "FвC
<К9
tensor_0+                           
Ъ ╠
5__inference_batch_normalization_1_layer_call_fn_64239ТMвJ
Cв@
:К7
inputs+                           
p 
к ";К8
unknown+                           ╠
5__inference_batch_normalization_1_layer_call_fn_64252ТMвJ
Cв@
:К7
inputs+                           
p
к ";К8
unknown+                           ║
C__inference_conv2d_3_layer_call_and_return_conditional_losses_64308s'(7в4
-в*
(К%
inputs          
к "4в1
*К'
tensor_0           
Ъ Ф
(__inference_conv2d_3_layer_call_fn_64297h'(7в4
-в*
(К%
inputs          
к ")К&
unknown           ║
C__inference_conv2d_4_layer_call_and_return_conditional_losses_64338s897в4
-в*
(К%
inputs         
 
к "4в1
*К'
tensor_0         
@
Ъ Ф
(__inference_conv2d_4_layer_call_fn_64327h897в4
-в*
(К%
inputs         
 
к ")К&
unknown         
@║
C__inference_conv2d_5_layer_call_and_return_conditional_losses_64368sIJ7в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0         @
Ъ Ф
(__inference_conv2d_5_layer_call_fn_64357hIJ7в4
-в*
(К%
inputs         @
к ")К&
unknown         @л
B__inference_dense_2_layer_call_and_return_conditional_losses_64409eab0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ Е
'__inference_dense_2_layer_call_fn_64398Zab0в-
&в#
!К
inputs         А
к ""К
unknown         Ак
B__inference_dense_3_layer_call_and_return_conditional_losses_64429djk0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ Д
'__inference_dense_3_layer_call_fn_64418Yjk0в-
&в#
!К
inputs         А
к "!К
unknown         ░
D__inference_flatten_1_layer_call_and_return_conditional_losses_64389h7в4
-в*
(К%
inputs         @
к "-в*
#К 
tensor_0         А
Ъ К
)__inference_flatten_1_layer_call_fn_64383]7в4
-в*
(К%
inputs         @
к ""К
unknown         АЇ
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_64318еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_max_pooling2d_3_layer_call_fn_64313ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ї
J__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_64348еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_max_pooling2d_4_layer_call_fn_64343ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    Ї
J__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_64378еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_max_pooling2d_5_layer_call_fn_64373ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    р
G__inference_sequential_1_layer_call_and_return_conditional_losses_63965Ф'(89IJabjkTвQ
JвG
=К:
batch_normalization_1_input          
p 

 
к ",в)
"К
tensor_0         
Ъ р
G__inference_sequential_1_layer_call_and_return_conditional_losses_64007Ф'(89IJabjkTвQ
JвG
=К:
batch_normalization_1_input          
p

 
к ",в)
"К
tensor_0         
Ъ ╩
G__inference_sequential_1_layer_call_and_return_conditional_losses_64168'(89IJabjk?в<
5в2
(К%
inputs          
p 

 
к ",в)
"К
tensor_0         
Ъ ╩
G__inference_sequential_1_layer_call_and_return_conditional_losses_64226'(89IJabjk?в<
5в2
(К%
inputs          
p

 
к ",в)
"К
tensor_0         
Ъ ║
,__inference_sequential_1_layer_call_fn_63726Й'(89IJabjkTвQ
JвG
=К:
batch_normalization_1_input          
p 

 
к "!К
unknown         ║
,__inference_sequential_1_layer_call_fn_63923Й'(89IJabjkTвQ
JвG
=К:
batch_normalization_1_input          
p

 
к "!К
unknown         д
,__inference_sequential_1_layer_call_fn_64077t'(89IJabjk?в<
5в2
(К%
inputs          
p 

 
к "!К
unknown         д
,__inference_sequential_1_layer_call_fn_64110t'(89IJabjk?в<
5в2
(К%
inputs          
p

 
к "!К
unknown         ╪
#__inference_signature_wrapper_64044░'(89IJabjkkвh
в 
aк^
\
batch_normalization_1_input=К:
batch_normalization_1_input          "1к.
,
dense_3!К
dense_3         