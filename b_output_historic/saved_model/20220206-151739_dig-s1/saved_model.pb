Оь
чЛ
B
AssignVariableOp
resource
value"dtype"
dtypetype
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

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
њ
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
2"
Utype:
2"
epsilonfloat%Зб8"&
exponential_avg_factorfloat%  ?";
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

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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
О
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.42v2.4.3-115-g64918868e218ия


batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
Ђ
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0

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

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

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
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	*
dtype0
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
n
Adadelta/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdadelta/iter
g
!Adadelta/iter/Read/ReadVariableOpReadVariableOpAdadelta/iter*
_output_shapes
: *
dtype0	
p
Adadelta/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/decay
i
"Adadelta/decay/Read/ReadVariableOpReadVariableOpAdadelta/decay*
_output_shapes
: *
dtype0

Adadelta/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdadelta/learning_rate
y
*Adadelta/learning_rate/Read/ReadVariableOpReadVariableOpAdadelta/learning_rate*
_output_shapes
: *
dtype0
l
Adadelta/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/rho
e
 Adadelta/rho/Read/ReadVariableOpReadVariableOpAdadelta/rho*
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
Ж
/Adadelta/batch_normalization_1/gamma/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/Adadelta/batch_normalization_1/gamma/accum_grad
Џ
CAdadelta/batch_normalization_1/gamma/accum_grad/Read/ReadVariableOpReadVariableOp/Adadelta/batch_normalization_1/gamma/accum_grad*
_output_shapes
:*
dtype0
Д
.Adadelta/batch_normalization_1/beta/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adadelta/batch_normalization_1/beta/accum_grad
­
BAdadelta/batch_normalization_1/beta/accum_grad/Read/ReadVariableOpReadVariableOp.Adadelta/batch_normalization_1/beta/accum_grad*
_output_shapes
:*
dtype0
Њ
#Adadelta/conv2d_3/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *4
shared_name%#Adadelta/conv2d_3/kernel/accum_grad
Ѓ
7Adadelta/conv2d_3/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_3/kernel/accum_grad*&
_output_shapes
: *
dtype0

!Adadelta/conv2d_3/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: *2
shared_name#!Adadelta/conv2d_3/bias/accum_grad

5Adadelta/conv2d_3/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_3/bias/accum_grad*
_output_shapes
: *
dtype0
Њ
#Adadelta/conv2d_4/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*4
shared_name%#Adadelta/conv2d_4/kernel/accum_grad
Ѓ
7Adadelta/conv2d_4/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_4/kernel/accum_grad*&
_output_shapes
: @*
dtype0

!Adadelta/conv2d_4/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adadelta/conv2d_4/bias/accum_grad

5Adadelta/conv2d_4/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_4/bias/accum_grad*
_output_shapes
:@*
dtype0
Њ
#Adadelta/conv2d_5/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*4
shared_name%#Adadelta/conv2d_5/kernel/accum_grad
Ѓ
7Adadelta/conv2d_5/kernel/accum_grad/Read/ReadVariableOpReadVariableOp#Adadelta/conv2d_5/kernel/accum_grad*&
_output_shapes
:@@*
dtype0

!Adadelta/conv2d_5/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adadelta/conv2d_5/bias/accum_grad

5Adadelta/conv2d_5/bias/accum_grad/Read/ReadVariableOpReadVariableOp!Adadelta/conv2d_5/bias/accum_grad*
_output_shapes
:@*
dtype0
Ђ
"Adadelta/dense_2/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adadelta/dense_2/kernel/accum_grad

6Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_2/kernel/accum_grad* 
_output_shapes
:
*
dtype0

 Adadelta/dense_2/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_2/bias/accum_grad

4Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_2/bias/accum_grad*
_output_shapes	
:*
dtype0
Ё
"Adadelta/dense_3/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adadelta/dense_3/kernel/accum_grad

6Adadelta/dense_3/kernel/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_3/kernel/accum_grad*
_output_shapes
:	*
dtype0

 Adadelta/dense_3/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adadelta/dense_3/bias/accum_grad

4Adadelta/dense_3/bias/accum_grad/Read/ReadVariableOpReadVariableOp Adadelta/dense_3/bias/accum_grad*
_output_shapes
:*
dtype0
Д
.Adadelta/batch_normalization_1/gamma/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*?
shared_name0.Adadelta/batch_normalization_1/gamma/accum_var
­
BAdadelta/batch_normalization_1/gamma/accum_var/Read/ReadVariableOpReadVariableOp.Adadelta/batch_normalization_1/gamma/accum_var*
_output_shapes
:*
dtype0
В
-Adadelta/batch_normalization_1/beta/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-Adadelta/batch_normalization_1/beta/accum_var
Ћ
AAdadelta/batch_normalization_1/beta/accum_var/Read/ReadVariableOpReadVariableOp-Adadelta/batch_normalization_1/beta/accum_var*
_output_shapes
:*
dtype0
Ј
"Adadelta/conv2d_3/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adadelta/conv2d_3/kernel/accum_var
Ё
6Adadelta/conv2d_3/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_3/kernel/accum_var*&
_output_shapes
: *
dtype0

 Adadelta/conv2d_3/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adadelta/conv2d_3/bias/accum_var

4Adadelta/conv2d_3/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_3/bias/accum_var*
_output_shapes
: *
dtype0
Ј
"Adadelta/conv2d_4/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adadelta/conv2d_4/kernel/accum_var
Ё
6Adadelta/conv2d_4/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_4/kernel/accum_var*&
_output_shapes
: @*
dtype0

 Adadelta/conv2d_4/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adadelta/conv2d_4/bias/accum_var

4Adadelta/conv2d_4/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_4/bias/accum_var*
_output_shapes
:@*
dtype0
Ј
"Adadelta/conv2d_5/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@@*3
shared_name$"Adadelta/conv2d_5/kernel/accum_var
Ё
6Adadelta/conv2d_5/kernel/accum_var/Read/ReadVariableOpReadVariableOp"Adadelta/conv2d_5/kernel/accum_var*&
_output_shapes
:@@*
dtype0

 Adadelta/conv2d_5/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adadelta/conv2d_5/bias/accum_var

4Adadelta/conv2d_5/bias/accum_var/Read/ReadVariableOpReadVariableOp Adadelta/conv2d_5/bias/accum_var*
_output_shapes
:@*
dtype0
 
!Adadelta/dense_2/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adadelta/dense_2/kernel/accum_var

5Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_2/kernel/accum_var* 
_output_shapes
:
*
dtype0

Adadelta/dense_2/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adadelta/dense_2/bias/accum_var

3Adadelta/dense_2/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_2/bias/accum_var*
_output_shapes	
:*
dtype0

!Adadelta/dense_3/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adadelta/dense_3/kernel/accum_var

5Adadelta/dense_3/kernel/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_3/kernel/accum_var*
_output_shapes
:	*
dtype0

Adadelta/dense_3/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adadelta/dense_3/bias/accum_var

3Adadelta/dense_3/bias/accum_var/Read/ReadVariableOpReadVariableOpAdadelta/dense_3/bias/accum_var*
_output_shapes
:*
dtype0

NoOpNoOp
U
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*УT
valueЙTBЖT BЏT
Д
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
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
М
axis
	gamma
beta
moving_mean
moving_variance
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api


kernel
bias
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
w
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api


(kernel
)bias
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
w
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api


4kernel
5bias
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
w
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
w
#@_self_saveable_object_factories
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api


Ekernel
Fbias
#G_self_saveable_object_factories
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api


Lkernel
Mbias
#N_self_saveable_object_factories
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
э
Siter
	Tdecay
Ulearning_rate
Vrho
accum_grad
accum_grad
accum_grad
accum_grad(
accum_grad)
accum_grad4
accum_grad5
accum_grad E
accum_gradЁF
accum_gradЂL
accum_gradЃM
accum_gradЄ	accum_varЅ	accum_varІ	accum_varЇ	accum_varЈ(	accum_varЉ)	accum_varЊ4	accum_varЋ5	accum_varЌE	accum_var­F	accum_varЎL	accum_varЏM	accum_varА
 
 
f
0
1
2
3
4
5
(6
)7
48
59
E10
F11
L12
M13
V
0
1
2
3
(4
)5
46
57
E8
F9
L10
M11
 
­
	variables
Wmetrics
Xlayer_regularization_losses

Ylayers
trainable_variables
Zlayer_metrics
regularization_losses
[non_trainable_variables
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
2
3

0
1
 
­
	variables
\metrics
]layer_regularization_losses

^layers
trainable_variables
_layer_metrics
regularization_losses
`non_trainable_variables
[Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
 
­
	variables
ametrics
blayer_regularization_losses

clayers
 trainable_variables
dlayer_metrics
!regularization_losses
enon_trainable_variables
 
 
 
 
­
$	variables
fmetrics
glayer_regularization_losses

hlayers
%trainable_variables
ilayer_metrics
&regularization_losses
jnon_trainable_variables
[Y
VARIABLE_VALUEconv2d_4/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_4/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

(0
)1

(0
)1
 
­
+	variables
kmetrics
llayer_regularization_losses

mlayers
,trainable_variables
nlayer_metrics
-regularization_losses
onon_trainable_variables
 
 
 
 
­
0	variables
pmetrics
qlayer_regularization_losses

rlayers
1trainable_variables
slayer_metrics
2regularization_losses
tnon_trainable_variables
[Y
VARIABLE_VALUEconv2d_5/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_5/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

40
51

40
51
 
­
7	variables
umetrics
vlayer_regularization_losses

wlayers
8trainable_variables
xlayer_metrics
9regularization_losses
ynon_trainable_variables
 
 
 
 
­
<	variables
zmetrics
{layer_regularization_losses

|layers
=trainable_variables
}layer_metrics
>regularization_losses
~non_trainable_variables
 
 
 
 
Б
A	variables
metrics
 layer_regularization_losses
layers
Btrainable_variables
layer_metrics
Cregularization_losses
non_trainable_variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

E0
F1

E0
F1
 
В
H	variables
metrics
 layer_regularization_losses
layers
Itrainable_variables
layer_metrics
Jregularization_losses
non_trainable_variables
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

L0
M1

L0
M1
 
В
O	variables
metrics
 layer_regularization_losses
layers
Ptrainable_variables
layer_metrics
Qregularization_losses
non_trainable_variables
LJ
VARIABLE_VALUEAdadelta/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdadelta/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEAdadelta/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEAdadelta/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE

0
1
 
F
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
9
 

0
1
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

total

count
	variables
	keras_api
I

total

count

_fn_kwargs
	variables
	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

0
1

	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

	variables
 
VARIABLE_VALUE/Adadelta/batch_normalization_1/gamma/accum_gradZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adadelta/batch_normalization_1/beta/accum_gradYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/conv2d_3/kernel/accum_grad[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/conv2d_3/bias/accum_gradYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/conv2d_4/kernel/accum_grad[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/conv2d_4/bias/accum_gradYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/conv2d_5/kernel/accum_grad[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/conv2d_5/bias/accum_gradYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_2/kernel/accum_grad[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/dense_2/bias/accum_gradYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_3/kernel/accum_grad[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/dense_3/bias/accum_gradYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE.Adadelta/batch_normalization_1/gamma/accum_varYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE-Adadelta/batch_normalization_1/beta/accum_varXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/conv2d_3/kernel/accum_varZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/conv2d_3/bias/accum_varXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/conv2d_4/kernel/accum_varZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/conv2d_4/bias/accum_varXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/conv2d_5/kernel/accum_varZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adadelta/conv2d_5/bias/accum_varXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_2/kernel/accum_varZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdadelta/dense_2/bias/accum_varXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_3/kernel/accum_varZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdadelta/dense_3/bias/accum_varXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

+serving_default_batch_normalization_1_inputPlaceholder*/
_output_shapes
:џџџџџџџџџ *
dtype0*$
shape:џџџџџџџџџ 

StatefulPartitionedCallStatefulPartitionedCall+serving_default_batch_normalization_1_inputbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_195223
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
у
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#conv2d_4/kernel/Read/ReadVariableOp!conv2d_4/bias/Read/ReadVariableOp#conv2d_5/kernel/Read/ReadVariableOp!conv2d_5/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp!Adadelta/iter/Read/ReadVariableOp"Adadelta/decay/Read/ReadVariableOp*Adadelta/learning_rate/Read/ReadVariableOp Adadelta/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpCAdadelta/batch_normalization_1/gamma/accum_grad/Read/ReadVariableOpBAdadelta/batch_normalization_1/beta/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_3/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_3/bias/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_4/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_4/bias/accum_grad/Read/ReadVariableOp7Adadelta/conv2d_5/kernel/accum_grad/Read/ReadVariableOp5Adadelta/conv2d_5/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_2/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_2/bias/accum_grad/Read/ReadVariableOp6Adadelta/dense_3/kernel/accum_grad/Read/ReadVariableOp4Adadelta/dense_3/bias/accum_grad/Read/ReadVariableOpBAdadelta/batch_normalization_1/gamma/accum_var/Read/ReadVariableOpAAdadelta/batch_normalization_1/beta/accum_var/Read/ReadVariableOp6Adadelta/conv2d_3/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_3/bias/accum_var/Read/ReadVariableOp6Adadelta/conv2d_4/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_4/bias/accum_var/Read/ReadVariableOp6Adadelta/conv2d_5/kernel/accum_var/Read/ReadVariableOp4Adadelta/conv2d_5/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_2/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_2/bias/accum_var/Read/ReadVariableOp5Adadelta/dense_3/kernel/accum_var/Read/ReadVariableOp3Adadelta/dense_3/bias/accum_var/Read/ReadVariableOpConst*;
Tin4
220	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_195807
Ц
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_varianceconv2d_3/kernelconv2d_3/biasconv2d_4/kernelconv2d_4/biasconv2d_5/kernelconv2d_5/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasAdadelta/iterAdadelta/decayAdadelta/learning_rateAdadelta/rhototalcounttotal_1count_1/Adadelta/batch_normalization_1/gamma/accum_grad.Adadelta/batch_normalization_1/beta/accum_grad#Adadelta/conv2d_3/kernel/accum_grad!Adadelta/conv2d_3/bias/accum_grad#Adadelta/conv2d_4/kernel/accum_grad!Adadelta/conv2d_4/bias/accum_grad#Adadelta/conv2d_5/kernel/accum_grad!Adadelta/conv2d_5/bias/accum_grad"Adadelta/dense_2/kernel/accum_grad Adadelta/dense_2/bias/accum_grad"Adadelta/dense_3/kernel/accum_grad Adadelta/dense_3/bias/accum_grad.Adadelta/batch_normalization_1/gamma/accum_var-Adadelta/batch_normalization_1/beta/accum_var"Adadelta/conv2d_3/kernel/accum_var Adadelta/conv2d_3/bias/accum_var"Adadelta/conv2d_4/kernel/accum_var Adadelta/conv2d_4/bias/accum_var"Adadelta/conv2d_5/kernel/accum_var Adadelta/conv2d_5/bias/accum_var!Adadelta/dense_2/kernel/accum_varAdadelta/dense_2/bias/accum_var!Adadelta/dense_3/kernel/accum_varAdadelta/dense_3/bias/accum_var*:
Tin3
12/*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_195955Х	
Ю

н
D__inference_conv2d_3_layer_call_and_return_conditional_losses_194847

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ј	
м
C__inference_dense_3_layer_call_and_return_conditional_losses_194972

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
С
є
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_194712

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_194753

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
К

Ю
-__inference_sequential_1_layer_call_fn_195182
batch_normalization_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityЂStatefulPartitionedCallЌ
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
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1951512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
С
є
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195509

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1м
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
И

Ю
-__inference_sequential_1_layer_call_fn_195107
batch_normalization_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityЂStatefulPartitionedCallЊ
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
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1950762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
љ
є
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195445

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_194782

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_5_layer_call_and_return_conditional_losses_194903

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_4_layer_call_and_return_conditional_losses_194875

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ
 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
 
_user_specified_nameinputs


Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195427

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1и
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1ў
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195491

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ	
Й
-__inference_sequential_1_layer_call_fn_195374

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityЂStatefulPartitionedCall
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
:џџџџџџџџџ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1950762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
м
}
(__inference_dense_3_layer_call_fn_195646

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallѓ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1949722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
­
L
0__inference_max_pooling2d_3_layer_call_fn_194735

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1947292
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї/

H__inference_sequential_1_layer_call_and_return_conditional_losses_195076

inputs 
batch_normalization_1_195037 
batch_normalization_1_195039 
batch_normalization_1_195041 
batch_normalization_1_195043
conv2d_3_195046
conv2d_3_195048
conv2d_4_195052
conv2d_4_195054
conv2d_5_195058
conv2d_5_195060
dense_2_195065
dense_2_195067
dense_3_195070
dense_3_195072
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCall
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_195037batch_normalization_1_195039batch_normalization_1_195041batch_normalization_1_195043*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1947822/
-batch_normalization_1/StatefulPartitionedCallЬ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_195046conv2d_3_195048*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1948472"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1947292!
max_pooling2d_3/PartitionedCallО
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_195052conv2d_4_195054*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1948752"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1947412!
max_pooling2d_4/PartitionedCallО
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_195058conv2d_5_195060*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1949032"
 conv2d_5/StatefulPartitionedCall
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1947532!
max_pooling2d_5/PartitionedCallњ
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1949262
flatten_1/PartitionedCallЌ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_195065dense_2_195067*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1949452!
dense_2/StatefulPartitionedCallБ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_195070dense_3_195072*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1949722!
dense_3/StatefulPartitionedCallй
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ћ	
Й
-__inference_sequential_1_layer_call_fn_195407

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityЂStatefulPartitionedCall
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
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_1951512
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_194729

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

g
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_194741

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
љ
є
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_194800

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3к
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ќ
~
)__inference_conv2d_3_layer_call_fn_195555

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1948472
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Н
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_194926

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
ц/
Џ
H__inference_sequential_1_layer_call_and_return_conditional_losses_194989
batch_normalization_1_input 
batch_normalization_1_194827 
batch_normalization_1_194829 
batch_normalization_1_194831 
batch_normalization_1_194833
conv2d_3_194858
conv2d_3_194860
conv2d_4_194886
conv2d_4_194888
conv2d_5_194914
conv2d_5_194916
dense_2_194956
dense_2_194958
dense_3_194983
dense_3_194985
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallА
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputbatch_normalization_1_194827batch_normalization_1_194829batch_normalization_1_194831batch_normalization_1_194833*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1947822/
-batch_normalization_1/StatefulPartitionedCallЬ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_194858conv2d_3_194860*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1948472"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1947292!
max_pooling2d_3/PartitionedCallО
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_194886conv2d_4_194888*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1948752"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1947412!
max_pooling2d_4/PartitionedCallО
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_194914conv2d_5_194916*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1949032"
 conv2d_5/StatefulPartitionedCall
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1947532!
max_pooling2d_5/PartitionedCallњ
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1949262
flatten_1/PartitionedCallЌ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_194956dense_2_194958*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1949452!
dense_2/StatefulPartitionedCallБ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_194983dense_3_194985*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1949722!
dense_3/StatefulPartitionedCallй
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
ќ
~
)__inference_conv2d_5_layer_call_fn_195595

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1949032
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
иT
љ

H__inference_sequential_1_layer_call_and_return_conditional_losses_195283

inputs1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identityЂ$batch_normalization_1/AssignNewValueЂ&batch_normalization_1/AssignNewValue_1Ђ5batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_1/ReadVariableOpЂ&batch_normalization_1/ReadVariableOp_1Ђconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЖ
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_1/ReadVariableOpМ
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_1/ReadVariableOp_1щ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1м
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
exponential_avg_factor%
з#<2(
&batch_normalization_1/FusedBatchNormV3Б
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*Q
_classG
ECloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValueП
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1А
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_3/Conv2D/ReadVariableOpт
conv2d_3/Conv2DConv2D*batch_normalization_1/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_3/ReluЧ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolА
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_4/Conv2D/ReadVariableOpи
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
2
conv2d_4/Conv2DЇ
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpЌ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
conv2d_4/ReluЧ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolА
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_5/Conv2D/ReadVariableOpи
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_5/Conv2DЇ
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpЌ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
conv2d_5/ReluЧ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_1/Const 
flatten_1/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
flatten_1/ReshapeЇ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЅ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЂ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_2/ReluІ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/MatMulЄ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpЁ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/SoftmaxЪ
IdentityIdentitydense_3/Softmax:softmax:0%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2L
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
:џџџџџџџџџ 
 
_user_specified_nameinputs
з
Љ
6__inference_batch_normalization_1_layer_call_fn_195471

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЃ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1948002
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
о
}
(__inference_dense_2_layer_call_fn_195626

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1949452
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
K
Љ

H__inference_sequential_1_layer_call_and_return_conditional_losses_195341

inputs1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource+
'conv2d_3_conv2d_readvariableop_resource,
(conv2d_3_biasadd_readvariableop_resource+
'conv2d_4_conv2d_readvariableop_resource,
(conv2d_4_biasadd_readvariableop_resource+
'conv2d_5_conv2d_readvariableop_resource,
(conv2d_5_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource*
&dense_3_matmul_readvariableop_resource+
'dense_3_biasadd_readvariableop_resource
identityЂ5batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂ7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ$batch_normalization_1/ReadVariableOpЂ&batch_normalization_1/ReadVariableOp_1Ђconv2d_3/BiasAdd/ReadVariableOpЂconv2d_3/Conv2D/ReadVariableOpЂconv2d_4/BiasAdd/ReadVariableOpЂconv2d_4/Conv2D/ReadVariableOpЂconv2d_5/BiasAdd/ReadVariableOpЂconv2d_5/Conv2D/ReadVariableOpЂdense_2/BiasAdd/ReadVariableOpЂdense_2/MatMul/ReadVariableOpЂdense_3/BiasAdd/ReadVariableOpЂdense_3/MatMul/ReadVariableOpЖ
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_1/ReadVariableOpМ
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_1/ReadVariableOp_1щ
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpя
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ю
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3inputs,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3А
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02 
conv2d_3/Conv2D/ReadVariableOpт
conv2d_3/Conv2DConv2D*batch_normalization_1/FusedBatchNormV3:y:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
conv2d_3/Conv2DЇ
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv2d_3/BiasAdd/ReadVariableOpЌ
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_3/BiasAdd{
conv2d_3/ReluReluconv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
conv2d_3/ReluЧ
max_pooling2d_3/MaxPoolMaxPoolconv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolА
conv2d_4/Conv2D/ReadVariableOpReadVariableOp'conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02 
conv2d_4/Conv2D/ReadVariableOpи
conv2d_4/Conv2DConv2D max_pooling2d_3/MaxPool:output:0&conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
2
conv2d_4/Conv2DЇ
conv2d_4/BiasAdd/ReadVariableOpReadVariableOp(conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_4/BiasAdd/ReadVariableOpЌ
conv2d_4/BiasAddBiasAddconv2d_4/Conv2D:output:0'conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
conv2d_4/BiasAdd{
conv2d_4/ReluReluconv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
conv2d_4/ReluЧ
max_pooling2d_4/MaxPoolMaxPoolconv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_4/MaxPoolА
conv2d_5/Conv2D/ReadVariableOpReadVariableOp'conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02 
conv2d_5/Conv2D/ReadVariableOpи
conv2d_5/Conv2DConv2D max_pooling2d_4/MaxPool:output:0&conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
conv2d_5/Conv2DЇ
conv2d_5/BiasAdd/ReadVariableOpReadVariableOp(conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv2d_5/BiasAdd/ReadVariableOpЌ
conv2d_5/BiasAddBiasAddconv2d_5/Conv2D:output:0'conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
conv2d_5/BiasAdd{
conv2d_5/ReluReluconv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
conv2d_5/ReluЧ
max_pooling2d_5/MaxPoolMaxPoolconv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
2
max_pooling2d_5/MaxPools
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
flatten_1/Const 
flatten_1/ReshapeReshape max_pooling2d_5/MaxPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
flatten_1/ReshapeЇ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense_2/MatMul/ReadVariableOp 
dense_2/MatMulMatMulflatten_1/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_2/MatMulЅ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02 
dense_2/BiasAdd/ReadVariableOpЂ
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_2/BiasAddq
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
dense_2/ReluІ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense_3/MatMul/ReadVariableOp
dense_3/MatMulMatMuldense_2/Relu:activations:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/MatMulЄ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOpЁ
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/BiasAddy
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
dense_3/Softmaxњ
IdentityIdentitydense_3/Softmax:softmax:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1 ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp ^conv2d_4/BiasAdd/ReadVariableOp^conv2d_4/Conv2D/ReadVariableOp ^conv2d_5/BiasAdd/ReadVariableOp^conv2d_5/Conv2D/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2n
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
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_4_layer_call_and_return_conditional_losses_195566

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ
 ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ
 
 
_user_specified_nameinputs
і	
м
C__inference_dense_2_layer_call_and_return_conditional_losses_194945

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
е
Љ
6__inference_batch_normalization_1_layer_call_fn_195458

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЁ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1947822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ 2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:џџџџџџџџџ ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Э^

!__inference__wrapped_model_194619
batch_normalization_1_input>
:sequential_1_batch_normalization_1_readvariableop_resource@
<sequential_1_batch_normalization_1_readvariableop_1_resourceO
Ksequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceQ
Msequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource8
4sequential_1_conv2d_3_conv2d_readvariableop_resource9
5sequential_1_conv2d_3_biasadd_readvariableop_resource8
4sequential_1_conv2d_4_conv2d_readvariableop_resource9
5sequential_1_conv2d_4_biasadd_readvariableop_resource8
4sequential_1_conv2d_5_conv2d_readvariableop_resource9
5sequential_1_conv2d_5_biasadd_readvariableop_resource7
3sequential_1_dense_2_matmul_readvariableop_resource8
4sequential_1_dense_2_biasadd_readvariableop_resource7
3sequential_1_dense_3_matmul_readvariableop_resource8
4sequential_1_dense_3_biasadd_readvariableop_resource
identityЂBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpЂDsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Ђ1sequential_1/batch_normalization_1/ReadVariableOpЂ3sequential_1/batch_normalization_1/ReadVariableOp_1Ђ,sequential_1/conv2d_3/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_3/Conv2D/ReadVariableOpЂ,sequential_1/conv2d_4/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_4/Conv2D/ReadVariableOpЂ,sequential_1/conv2d_5/BiasAdd/ReadVariableOpЂ+sequential_1/conv2d_5/Conv2D/ReadVariableOpЂ+sequential_1/dense_2/BiasAdd/ReadVariableOpЂ*sequential_1/dense_2/MatMul/ReadVariableOpЂ+sequential_1/dense_3/BiasAdd/ReadVariableOpЂ*sequential_1/dense_3/MatMul/ReadVariableOpн
1sequential_1/batch_normalization_1/ReadVariableOpReadVariableOp:sequential_1_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype023
1sequential_1/batch_normalization_1/ReadVariableOpу
3sequential_1/batch_normalization_1/ReadVariableOp_1ReadVariableOp<sequential_1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype025
3sequential_1/batch_normalization_1/ReadVariableOp_1
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpKsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02D
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpMsequential_1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02F
Dsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Б
3sequential_1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3batch_normalization_1_input9sequential_1/batch_normalization_1/ReadVariableOp:value:0;sequential_1/batch_normalization_1/ReadVariableOp_1:value:0Jsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Lsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:џџџџџџџџџ :::::*
epsilon%o:*
is_training( 25
3sequential_1/batch_normalization_1/FusedBatchNormV3з
+sequential_1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_3_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02-
+sequential_1/conv2d_3/Conv2D/ReadVariableOp
sequential_1/conv2d_3/Conv2DConv2D7sequential_1/batch_normalization_1/FusedBatchNormV3:y:03sequential_1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
sequential_1/conv2d_3/Conv2DЮ
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02.
,sequential_1/conv2d_3/BiasAdd/ReadVariableOpр
sequential_1/conv2d_3/BiasAddBiasAdd%sequential_1/conv2d_3/Conv2D:output:04sequential_1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
sequential_1/conv2d_3/BiasAddЂ
sequential_1/conv2d_3/ReluRelu&sequential_1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
sequential_1/conv2d_3/Reluю
$sequential_1/max_pooling2d_3/MaxPoolMaxPool(sequential_1/conv2d_3/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ
 *
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_3/MaxPoolз
+sequential_1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02-
+sequential_1/conv2d_4/Conv2D/ReadVariableOp
sequential_1/conv2d_4/Conv2DConv2D-sequential_1/max_pooling2d_3/MaxPool:output:03sequential_1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@*
paddingSAME*
strides
2
sequential_1/conv2d_4/Conv2DЮ
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_4/BiasAdd/ReadVariableOpр
sequential_1/conv2d_4/BiasAddBiasAdd%sequential_1/conv2d_4/Conv2D:output:04sequential_1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
sequential_1/conv2d_4/BiasAddЂ
sequential_1/conv2d_4/ReluRelu&sequential_1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
@2
sequential_1/conv2d_4/Reluю
$sequential_1/max_pooling2d_4/MaxPoolMaxPool(sequential_1/conv2d_4/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_4/MaxPoolз
+sequential_1/conv2d_5/Conv2D/ReadVariableOpReadVariableOp4sequential_1_conv2d_5_conv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02-
+sequential_1/conv2d_5/Conv2D/ReadVariableOp
sequential_1/conv2d_5/Conv2DConv2D-sequential_1/max_pooling2d_4/MaxPool:output:03sequential_1/conv2d_5/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
sequential_1/conv2d_5/Conv2DЮ
,sequential_1/conv2d_5/BiasAdd/ReadVariableOpReadVariableOp5sequential_1_conv2d_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02.
,sequential_1/conv2d_5/BiasAdd/ReadVariableOpр
sequential_1/conv2d_5/BiasAddBiasAdd%sequential_1/conv2d_5/Conv2D:output:04sequential_1/conv2d_5/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
sequential_1/conv2d_5/BiasAddЂ
sequential_1/conv2d_5/ReluRelu&sequential_1/conv2d_5/BiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
sequential_1/conv2d_5/Reluю
$sequential_1/max_pooling2d_5/MaxPoolMaxPool(sequential_1/conv2d_5/Relu:activations:0*/
_output_shapes
:џџџџџџџџџ@*
ksize
*
paddingVALID*
strides
2&
$sequential_1/max_pooling2d_5/MaxPool
sequential_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
sequential_1/flatten_1/Constд
sequential_1/flatten_1/ReshapeReshape-sequential_1/max_pooling2d_5/MaxPool:output:0%sequential_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2 
sequential_1/flatten_1/ReshapeЮ
*sequential_1/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02,
*sequential_1/dense_2/MatMul/ReadVariableOpд
sequential_1/dense_2/MatMulMatMul'sequential_1/flatten_1/Reshape:output:02sequential_1/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_2/MatMulЬ
+sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+sequential_1/dense_2/BiasAdd/ReadVariableOpж
sequential_1/dense_2/BiasAddBiasAdd%sequential_1/dense_2/MatMul:product:03sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_2/BiasAdd
sequential_1/dense_2/ReluRelu%sequential_1/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_2/ReluЭ
*sequential_1/dense_3/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02,
*sequential_1/dense_3/MatMul/ReadVariableOpг
sequential_1/dense_3/MatMulMatMul'sequential_1/dense_2/Relu:activations:02sequential_1/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_3/MatMulЫ
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_1/dense_3/BiasAdd/ReadVariableOpе
sequential_1/dense_3/BiasAddBiasAdd%sequential_1/dense_3/MatMul:product:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_3/BiasAdd 
sequential_1/dense_3/SoftmaxSoftmax%sequential_1/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2
sequential_1/dense_3/SoftmaxН
IdentityIdentity&sequential_1/dense_3/Softmax:softmax:0C^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpE^sequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12^sequential_1/batch_normalization_1/ReadVariableOp4^sequential_1/batch_normalization_1/ReadVariableOp_1-^sequential_1/conv2d_3/BiasAdd/ReadVariableOp,^sequential_1/conv2d_3/Conv2D/ReadVariableOp-^sequential_1/conv2d_4/BiasAdd/ReadVariableOp,^sequential_1/conv2d_4/Conv2D/ReadVariableOp-^sequential_1/conv2d_5/BiasAdd/ReadVariableOp,^sequential_1/conv2d_5/Conv2D/ReadVariableOp,^sequential_1/dense_2/BiasAdd/ReadVariableOp+^sequential_1/dense_2/MatMul/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp+^sequential_1/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2
Bsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpBsequential_1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2
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
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
Љ/

H__inference_sequential_1_layer_call_and_return_conditional_losses_195151

inputs 
batch_normalization_1_195112 
batch_normalization_1_195114 
batch_normalization_1_195116 
batch_normalization_1_195118
conv2d_3_195121
conv2d_3_195123
conv2d_4_195127
conv2d_4_195129
conv2d_5_195133
conv2d_5_195135
dense_2_195140
dense_2_195142
dense_3_195145
dense_3_195147
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCall
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_1_195112batch_normalization_1_195114batch_normalization_1_195116batch_normalization_1_195118*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1948002/
-batch_normalization_1/StatefulPartitionedCallЬ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_195121conv2d_3_195123*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1948472"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1947292!
max_pooling2d_3/PartitionedCallО
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_195127conv2d_4_195129*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1948752"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1947412!
max_pooling2d_4/PartitionedCallО
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_195133conv2d_5_195135*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1949032"
 conv2d_5/StatefulPartitionedCall
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1947532!
max_pooling2d_5/PartitionedCallњ
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1949262
flatten_1/PartitionedCallЌ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_195140dense_2_195142*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1949452!
dense_2/StatefulPartitionedCallБ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_195145dense_3_195147*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1949722!
dense_3/StatefulPartitionedCallй
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

Љ
6__inference_batch_normalization_1_layer_call_fn_195522

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1946812
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

Љ
6__inference_batch_normalization_1_layer_call_fn_195535

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityЂStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1947122
StatefulPartitionedCallЈ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ш/
Џ
H__inference_sequential_1_layer_call_and_return_conditional_losses_195031
batch_normalization_1_input 
batch_normalization_1_194992 
batch_normalization_1_194994 
batch_normalization_1_194996 
batch_normalization_1_194998
conv2d_3_195001
conv2d_3_195003
conv2d_4_195007
conv2d_4_195009
conv2d_5_195013
conv2d_5_195015
dense_2_195020
dense_2_195022
dense_3_195025
dense_3_195027
identityЂ-batch_normalization_1/StatefulPartitionedCallЂ conv2d_3/StatefulPartitionedCallЂ conv2d_4/StatefulPartitionedCallЂ conv2d_5/StatefulPartitionedCallЂdense_2/StatefulPartitionedCallЂdense_3/StatefulPartitionedCallВ
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_1_inputbatch_normalization_1_194992batch_normalization_1_194994batch_normalization_1_194996batch_normalization_1_194998*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1948002/
-batch_normalization_1/StatefulPartitionedCallЬ
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0conv2d_3_195001conv2d_3_195003*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_3_layer_call_and_return_conditional_losses_1948472"
 conv2d_3/StatefulPartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_1947292!
max_pooling2d_3/PartitionedCallО
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_3/PartitionedCall:output:0conv2d_4_195007conv2d_4_195009*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1948752"
 conv2d_4/StatefulPartitionedCall
max_pooling2d_4/PartitionedCallPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1947412!
max_pooling2d_4/PartitionedCallО
 conv2d_5/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_4/PartitionedCall:output:0conv2d_5_195013conv2d_5_195015*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_5_layer_call_and_return_conditional_losses_1949032"
 conv2d_5/StatefulPartitionedCall
max_pooling2d_5/PartitionedCallPartitionedCall)conv2d_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1947532!
max_pooling2d_5/PartitionedCallњ
flatten_1/PartitionedCallPartitionedCall(max_pooling2d_5/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1949262
flatten_1/PartitionedCallЌ
dense_2/StatefulPartitionedCallStatefulPartitionedCall"flatten_1/PartitionedCall:output:0dense_2_195020dense_2_195022*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_1949452!
dense_2/StatefulPartitionedCallБ
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_195025dense_3_195027*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_1949722!
dense_3/StatefulPartitionedCallй
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0.^batch_normalization_1/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall!^conv2d_5/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2D
 conv2d_5/StatefulPartitionedCall conv2d_5/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
­
L
0__inference_max_pooling2d_4_layer_call_fn_194747

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_1947412
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ю

н
D__inference_conv2d_5_layer_call_and_return_conditional_losses_195586

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@@*
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@*
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
Э

Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_194681

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityЂAssignNewValueЂAssignNewValue_1ЂFusedBatchNormV3/ReadVariableOpЂ!FusedBatchNormV3/ReadVariableOp_1ЂReadVariableOpЂReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1Ї
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ:::::*
epsilon%o:*
exponential_avg_factor%
з#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValueЛ
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
і	
м
C__inference_dense_2_layer_call_and_return_conditional_losses_195617

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Н
a
E__inference_flatten_1_layer_call_and_return_conditional_losses_195601

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
І
F
*__inference_flatten_1_layer_call_fn_195606

inputs
identityФ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_flatten_1_layer_call_and_return_conditional_losses_1949262
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*.
_input_shapes
:џџџџџџџџџ@:W S
/
_output_shapes
:џџџџџџџџџ@
 
_user_specified_nameinputs
­
L
0__inference_max_pooling2d_5_layer_call_fn_194759

inputs
identityь
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_1947532
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ:r n
J
_output_shapes8
6:4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ј	
м
C__inference_dense_3_layer_call_and_return_conditional_losses_195637

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*/
_input_shapes
:џџџџџџџџџ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


Х
$__inference_signature_wrapper_195223
batch_normalization_1_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identityЂStatefulPartitionedCall
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
:џџџџџџџџџ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_1946192
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:џџџџџџџџџ2

Identity"
identityIdentity:output:0*f
_input_shapesU
S:џџџџџџџџџ ::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:l h
/
_output_shapes
:џџџџџџџџџ 
5
_user_specified_namebatch_normalization_1_input
Ю

н
D__inference_conv2d_3_layer_call_and_return_conditional_losses_195546

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identityЂBiasAdd/ReadVariableOpЂConv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOpЃ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  *
paddingSAME*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:џџџџџџџџџ  2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:џџџџџџџџџ  2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:џџџџџџџџџ  2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ќ
~
)__inference_conv2d_4_layer_call_fn_195575

inputs
unknown
	unknown_0
identityЂStatefulPartitionedCallќ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:џџџџџџџџџ
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_conv2d_4_layer_call_and_return_conditional_losses_1948752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:џџџџџџџџџ
@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:џџџџџџџџџ
 ::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:џџџџџџџџџ
 
 
_user_specified_nameinputs
g

__inference__traced_save_195807
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
'savev2_dense_3_bias_read_readvariableop,
(savev2_adadelta_iter_read_readvariableop	-
)savev2_adadelta_decay_read_readvariableop5
1savev2_adadelta_learning_rate_read_readvariableop+
'savev2_adadelta_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopN
Jsavev2_adadelta_batch_normalization_1_gamma_accum_grad_read_readvariableopM
Isavev2_adadelta_batch_normalization_1_beta_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_3_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_3_bias_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_4_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_4_bias_accum_grad_read_readvariableopB
>savev2_adadelta_conv2d_5_kernel_accum_grad_read_readvariableop@
<savev2_adadelta_conv2d_5_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_2_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_2_bias_accum_grad_read_readvariableopA
=savev2_adadelta_dense_3_kernel_accum_grad_read_readvariableop?
;savev2_adadelta_dense_3_bias_accum_grad_read_readvariableopM
Isavev2_adadelta_batch_normalization_1_gamma_accum_var_read_readvariableopL
Hsavev2_adadelta_batch_normalization_1_beta_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_3_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_3_bias_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_4_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_4_bias_accum_var_read_readvariableopA
=savev2_adadelta_conv2d_5_kernel_accum_var_read_readvariableop?
;savev2_adadelta_conv2d_5_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_2_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_2_bias_accum_var_read_readvariableop@
<savev2_adadelta_dense_3_kernel_accum_var_read_readvariableop>
:savev2_adadelta_dense_3_bias_accum_var_read_readvariableop
savev2_const

identity_1ЂMergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shardІ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameб
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*у
valueйBж/B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesц
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesФ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:06savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_conv2d_4_kernel_read_readvariableop(savev2_conv2d_4_bias_read_readvariableop*savev2_conv2d_5_kernel_read_readvariableop(savev2_conv2d_5_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop(savev2_adadelta_iter_read_readvariableop)savev2_adadelta_decay_read_readvariableop1savev2_adadelta_learning_rate_read_readvariableop'savev2_adadelta_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopJsavev2_adadelta_batch_normalization_1_gamma_accum_grad_read_readvariableopIsavev2_adadelta_batch_normalization_1_beta_accum_grad_read_readvariableop>savev2_adadelta_conv2d_3_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_3_bias_accum_grad_read_readvariableop>savev2_adadelta_conv2d_4_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_4_bias_accum_grad_read_readvariableop>savev2_adadelta_conv2d_5_kernel_accum_grad_read_readvariableop<savev2_adadelta_conv2d_5_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_2_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_2_bias_accum_grad_read_readvariableop=savev2_adadelta_dense_3_kernel_accum_grad_read_readvariableop;savev2_adadelta_dense_3_bias_accum_grad_read_readvariableopIsavev2_adadelta_batch_normalization_1_gamma_accum_var_read_readvariableopHsavev2_adadelta_batch_normalization_1_beta_accum_var_read_readvariableop=savev2_adadelta_conv2d_3_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_3_bias_accum_var_read_readvariableop=savev2_adadelta_conv2d_4_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_4_bias_accum_var_read_readvariableop=savev2_adadelta_conv2d_5_kernel_accum_var_read_readvariableop;savev2_adadelta_conv2d_5_bias_accum_var_read_readvariableop<savev2_adadelta_dense_2_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_2_bias_accum_var_read_readvariableop<savev2_adadelta_dense_3_kernel_accum_var_read_readvariableop:savev2_adadelta_dense_3_bias_accum_var_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	2
SaveV2К
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesЁ
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*
_input_shapes
: ::::: : : @:@:@@:@:
::	:: : : : : : : : ::: : : @:@:@@:@:
::	:::: : : @:@:@@:@:
::	:: 2(
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
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:,(
&
_output_shapes
:@@: 

_output_shapes
:@:&"
 
_output_shapes
:
:! 

_output_shapes	
::%!!

_output_shapes
:	: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
: : &

_output_shapes
: :,'(
&
_output_shapes
: @: (

_output_shapes
:@:,)(
&
_output_shapes
:@@: *

_output_shapes
:@:&+"
 
_output_shapes
:
:!,

_output_shapes	
::%-!

_output_shapes
:	: .

_output_shapes
::/

_output_shapes
: 
ЩЩ
ї
"__inference__traced_restore_195955
file_prefix0
,assignvariableop_batch_normalization_1_gamma1
-assignvariableop_1_batch_normalization_1_beta8
4assignvariableop_2_batch_normalization_1_moving_mean<
8assignvariableop_3_batch_normalization_1_moving_variance&
"assignvariableop_4_conv2d_3_kernel$
 assignvariableop_5_conv2d_3_bias&
"assignvariableop_6_conv2d_4_kernel$
 assignvariableop_7_conv2d_4_bias&
"assignvariableop_8_conv2d_5_kernel$
 assignvariableop_9_conv2d_5_bias&
"assignvariableop_10_dense_2_kernel$
 assignvariableop_11_dense_2_bias&
"assignvariableop_12_dense_3_kernel$
 assignvariableop_13_dense_3_bias%
!assignvariableop_14_adadelta_iter&
"assignvariableop_15_adadelta_decay.
*assignvariableop_16_adadelta_learning_rate$
 assignvariableop_17_adadelta_rho
assignvariableop_18_total
assignvariableop_19_count
assignvariableop_20_total_1
assignvariableop_21_count_1G
Cassignvariableop_22_adadelta_batch_normalization_1_gamma_accum_gradF
Bassignvariableop_23_adadelta_batch_normalization_1_beta_accum_grad;
7assignvariableop_24_adadelta_conv2d_3_kernel_accum_grad9
5assignvariableop_25_adadelta_conv2d_3_bias_accum_grad;
7assignvariableop_26_adadelta_conv2d_4_kernel_accum_grad9
5assignvariableop_27_adadelta_conv2d_4_bias_accum_grad;
7assignvariableop_28_adadelta_conv2d_5_kernel_accum_grad9
5assignvariableop_29_adadelta_conv2d_5_bias_accum_grad:
6assignvariableop_30_adadelta_dense_2_kernel_accum_grad8
4assignvariableop_31_adadelta_dense_2_bias_accum_grad:
6assignvariableop_32_adadelta_dense_3_kernel_accum_grad8
4assignvariableop_33_adadelta_dense_3_bias_accum_gradF
Bassignvariableop_34_adadelta_batch_normalization_1_gamma_accum_varE
Aassignvariableop_35_adadelta_batch_normalization_1_beta_accum_var:
6assignvariableop_36_adadelta_conv2d_3_kernel_accum_var8
4assignvariableop_37_adadelta_conv2d_3_bias_accum_var:
6assignvariableop_38_adadelta_conv2d_4_kernel_accum_var8
4assignvariableop_39_adadelta_conv2d_4_bias_accum_var:
6assignvariableop_40_adadelta_conv2d_5_kernel_accum_var8
4assignvariableop_41_adadelta_conv2d_5_bias_accum_var9
5assignvariableop_42_adadelta_dense_2_kernel_accum_var7
3assignvariableop_43_adadelta_dense_2_bias_accum_var9
5assignvariableop_44_adadelta_dense_3_kernel_accum_var7
3assignvariableop_45_adadelta_dense_3_bias_accum_var
identity_47ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_28ЂAssignVariableOp_29ЂAssignVariableOp_3ЂAssignVariableOp_30ЂAssignVariableOp_31ЂAssignVariableOp_32ЂAssignVariableOp_33ЂAssignVariableOp_34ЂAssignVariableOp_35ЂAssignVariableOp_36ЂAssignVariableOp_37ЂAssignVariableOp_38ЂAssignVariableOp_39ЂAssignVariableOp_4ЂAssignVariableOp_40ЂAssignVariableOp_41ЂAssignVariableOp_42ЂAssignVariableOp_43ЂAssignVariableOp_44ЂAssignVariableOp_45ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9з
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*у
valueйBж/B5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesь
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*в
_output_shapesП
М:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЋ
AssignVariableOpAssignVariableOp,assignvariableop_batch_normalization_1_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1В
AssignVariableOp_1AssignVariableOp-assignvariableop_1_batch_normalization_1_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2Й
AssignVariableOp_2AssignVariableOp4assignvariableop_2_batch_normalization_1_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3Н
AssignVariableOp_3AssignVariableOp8assignvariableop_3_batch_normalization_1_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ї
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5Ѕ
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6Ї
AssignVariableOp_6AssignVariableOp"assignvariableop_6_conv2d_4_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7Ѕ
AssignVariableOp_7AssignVariableOp assignvariableop_7_conv2d_4_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8Ї
AssignVariableOp_8AssignVariableOp"assignvariableop_8_conv2d_5_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9Ѕ
AssignVariableOp_9AssignVariableOp assignvariableop_9_conv2d_5_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10Њ
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Ј
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12Њ
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13Ј
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14Љ
AssignVariableOp_14AssignVariableOp!assignvariableop_14_adadelta_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15Њ
AssignVariableOp_15AssignVariableOp"assignvariableop_15_adadelta_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16В
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adadelta_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ј
AssignVariableOp_17AssignVariableOp assignvariableop_17_adadelta_rhoIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18Ё
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Ё
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20Ѓ
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21Ѓ
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22Ы
AssignVariableOp_22AssignVariableOpCassignvariableop_22_adadelta_batch_normalization_1_gamma_accum_gradIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ъ
AssignVariableOp_23AssignVariableOpBassignvariableop_23_adadelta_batch_normalization_1_beta_accum_gradIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24П
AssignVariableOp_24AssignVariableOp7assignvariableop_24_adadelta_conv2d_3_kernel_accum_gradIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Н
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adadelta_conv2d_3_bias_accum_gradIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26П
AssignVariableOp_26AssignVariableOp7assignvariableop_26_adadelta_conv2d_4_kernel_accum_gradIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27Н
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adadelta_conv2d_4_bias_accum_gradIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28П
AssignVariableOp_28AssignVariableOp7assignvariableop_28_adadelta_conv2d_5_kernel_accum_gradIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29Н
AssignVariableOp_29AssignVariableOp5assignvariableop_29_adadelta_conv2d_5_bias_accum_gradIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30О
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adadelta_dense_2_kernel_accum_gradIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31М
AssignVariableOp_31AssignVariableOp4assignvariableop_31_adadelta_dense_2_bias_accum_gradIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32О
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adadelta_dense_3_kernel_accum_gradIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33М
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adadelta_dense_3_bias_accum_gradIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ъ
AssignVariableOp_34AssignVariableOpBassignvariableop_34_adadelta_batch_normalization_1_gamma_accum_varIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35Щ
AssignVariableOp_35AssignVariableOpAassignvariableop_35_adadelta_batch_normalization_1_beta_accum_varIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36О
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adadelta_conv2d_3_kernel_accum_varIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37М
AssignVariableOp_37AssignVariableOp4assignvariableop_37_adadelta_conv2d_3_bias_accum_varIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38О
AssignVariableOp_38AssignVariableOp6assignvariableop_38_adadelta_conv2d_4_kernel_accum_varIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39М
AssignVariableOp_39AssignVariableOp4assignvariableop_39_adadelta_conv2d_4_bias_accum_varIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40О
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adadelta_conv2d_5_kernel_accum_varIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41М
AssignVariableOp_41AssignVariableOp4assignvariableop_41_adadelta_conv2d_5_bias_accum_varIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42Н
AssignVariableOp_42AssignVariableOp5assignvariableop_42_adadelta_dense_2_kernel_accum_varIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43Л
AssignVariableOp_43AssignVariableOp3assignvariableop_43_adadelta_dense_2_bias_accum_varIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44Н
AssignVariableOp_44AssignVariableOp5assignvariableop_44_adadelta_dense_3_kernel_accum_varIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45Л
AssignVariableOp_45AssignVariableOp3assignvariableop_45_adadelta_dense_3_bias_accum_varIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpв
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46Х
Identity_47IdentityIdentity_46:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_47"#
identity_47Identity_47:output:0*Я
_input_shapesН
К: ::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"БL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*к
serving_defaultЦ
k
batch_normalization_1_inputL
-serving_default_batch_normalization_1_input:0џџџџџџџџџ ;
dense_30
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:шу
гU
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
	optimizer

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Б__call__
В_default_save_signature
+Г&call_and_return_all_conditional_losses"ТQ
_tf_keras_sequentialЃQ{"class_name": "Sequential", "name": "sequential_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "batch_normalization_1_input"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 20, 3]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "batch_normalization_1_input"}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Conv2D", "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adadelta", "config": {"name": "Adadelta", "learning_rate": 1.0, "decay": 0.0, "rho": 0.949999988079071, "epsilon": 1e-07}}}}
р

axis
	gamma
beta
moving_mean
moving_variance
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses"х
_tf_keras_layerЫ{"class_name": "BatchNormalization", "name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 20, 3]}, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 20, 3]}}



kernel
bias
#_self_saveable_object_factories
	variables
 trainable_variables
!regularization_losses
"	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses"Ы
_tf_keras_layerБ{"class_name": "Conv2D", "name": "conv2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_3", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 20, 3]}}
І
##_self_saveable_object_factories
$	variables
%trainable_variables
&regularization_losses
'	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}



(kernel
)bias
#*_self_saveable_object_factories
+	variables
,trainable_variables
-regularization_losses
.	keras_api
К__call__
+Л&call_and_return_all_conditional_losses"Э
_tf_keras_layerГ{"class_name": "Conv2D", "name": "conv2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_4", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 10, 32]}}
І
#/_self_saveable_object_factories
0	variables
1trainable_variables
2regularization_losses
3	keras_api
М__call__
+Н&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_4", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}



4kernel
5bias
#6_self_saveable_object_factories
7	variables
8trainable_variables
9regularization_losses
:	keras_api
О__call__
+П&call_and_return_all_conditional_losses"Ы
_tf_keras_layerБ{"class_name": "Conv2D", "name": "conv2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_5", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 5, 64]}}
І
#;_self_saveable_object_factories
<	variables
=trainable_variables
>regularization_losses
?	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"№
_tf_keras_layerж{"class_name": "MaxPooling2D", "name": "max_pooling2d_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_5", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}

#@_self_saveable_object_factories
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
Т__call__
+У&call_and_return_all_conditional_losses"з
_tf_keras_layerН{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}


Ekernel
Fbias
#G_self_saveable_object_factories
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses"Ю
_tf_keras_layerД{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 512}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 512]}}


Lkernel
Mbias
#N_self_saveable_object_factories
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
Ц__call__
+Ч&call_and_return_all_conditional_losses"а
_tf_keras_layerЖ{"class_name": "Dense", "name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 11, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 256]}}

Siter
	Tdecay
Ulearning_rate
Vrho
accum_grad
accum_grad
accum_grad
accum_grad(
accum_grad)
accum_grad4
accum_grad5
accum_grad E
accum_gradЁF
accum_gradЂL
accum_gradЃM
accum_gradЄ	accum_varЅ	accum_varІ	accum_varЇ	accum_varЈ(	accum_varЉ)	accum_varЊ4	accum_varЋ5	accum_varЌE	accum_var­F	accum_varЎL	accum_varЏM	accum_varА"
	optimizer
-
Шserving_default"
signature_map
 "
trackable_dict_wrapper

0
1
2
3
4
5
(6
)7
48
59
E10
F11
L12
M13"
trackable_list_wrapper
v
0
1
2
3
(4
)5
46
57
E8
F9
L10
M11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ю
	variables
Wmetrics
Xlayer_regularization_losses

Ylayers
trainable_variables
Zlayer_metrics
regularization_losses
[non_trainable_variables
Б__call__
В_default_save_signature
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
	variables
\metrics
]layer_regularization_losses

^layers
trainable_variables
_layer_metrics
regularization_losses
`non_trainable_variables
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
):' 2conv2d_3/kernel
: 2conv2d_3/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
	variables
ametrics
blayer_regularization_losses

clayers
 trainable_variables
dlayer_metrics
!regularization_losses
enon_trainable_variables
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
$	variables
fmetrics
glayer_regularization_losses

hlayers
%trainable_variables
ilayer_metrics
&regularization_losses
jnon_trainable_variables
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
):' @2conv2d_4/kernel
:@2conv2d_4/bias
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
А
+	variables
kmetrics
llayer_regularization_losses

mlayers
,trainable_variables
nlayer_metrics
-regularization_losses
onon_trainable_variables
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
0	variables
pmetrics
qlayer_regularization_losses

rlayers
1trainable_variables
slayer_metrics
2regularization_losses
tnon_trainable_variables
М__call__
+Н&call_and_return_all_conditional_losses
'Н"call_and_return_conditional_losses"
_generic_user_object
):'@@2conv2d_5/kernel
:@2conv2d_5/bias
 "
trackable_dict_wrapper
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
А
7	variables
umetrics
vlayer_regularization_losses

wlayers
8trainable_variables
xlayer_metrics
9regularization_losses
ynon_trainable_variables
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
А
<	variables
zmetrics
{layer_regularization_losses

|layers
=trainable_variables
}layer_metrics
>regularization_losses
~non_trainable_variables
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Д
A	variables
metrics
 layer_regularization_losses
layers
Btrainable_variables
layer_metrics
Cregularization_losses
non_trainable_variables
Т__call__
+У&call_and_return_all_conditional_losses
'У"call_and_return_conditional_losses"
_generic_user_object
": 
2dense_2/kernel
:2dense_2/bias
 "
trackable_dict_wrapper
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
H	variables
metrics
 layer_regularization_losses
layers
Itrainable_variables
layer_metrics
Jregularization_losses
non_trainable_variables
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
!:	2dense_3/kernel
:2dense_3/bias
 "
trackable_dict_wrapper
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
Е
O	variables
metrics
 layer_regularization_losses
layers
Ptrainable_variables
layer_metrics
Qregularization_losses
non_trainable_variables
Ц__call__
+Ч&call_and_return_all_conditional_losses
'Ч"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adadelta/iter
: (2Adadelta/decay
 : (2Adadelta/learning_rate
: (2Adadelta/rho
0
0
1"
trackable_list_wrapper
 "
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
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
 "
trackable_list_wrapper
П

total

count
	variables
	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


total

count

_fn_kwargs
	variables
	keras_api"И
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
;:92/Adadelta/batch_normalization_1/gamma/accum_grad
::82.Adadelta/batch_normalization_1/beta/accum_grad
;:9 2#Adadelta/conv2d_3/kernel/accum_grad
-:+ 2!Adadelta/conv2d_3/bias/accum_grad
;:9 @2#Adadelta/conv2d_4/kernel/accum_grad
-:+@2!Adadelta/conv2d_4/bias/accum_grad
;:9@@2#Adadelta/conv2d_5/kernel/accum_grad
-:+@2!Adadelta/conv2d_5/bias/accum_grad
4:2
2"Adadelta/dense_2/kernel/accum_grad
-:+2 Adadelta/dense_2/bias/accum_grad
3:1	2"Adadelta/dense_3/kernel/accum_grad
,:*2 Adadelta/dense_3/bias/accum_grad
::82.Adadelta/batch_normalization_1/gamma/accum_var
9:72-Adadelta/batch_normalization_1/beta/accum_var
::8 2"Adadelta/conv2d_3/kernel/accum_var
,:* 2 Adadelta/conv2d_3/bias/accum_var
::8 @2"Adadelta/conv2d_4/kernel/accum_var
,:*@2 Adadelta/conv2d_4/bias/accum_var
::8@@2"Adadelta/conv2d_5/kernel/accum_var
,:*@2 Adadelta/conv2d_5/bias/accum_var
3:1
2!Adadelta/dense_2/kernel/accum_var
,:*2Adadelta/dense_2/bias/accum_var
2:0	2!Adadelta/dense_3/kernel/accum_var
+:)2Adadelta/dense_3/bias/accum_var
2џ
-__inference_sequential_1_layer_call_fn_195107
-__inference_sequential_1_layer_call_fn_195407
-__inference_sequential_1_layer_call_fn_195182
-__inference_sequential_1_layer_call_fn_195374Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
ћ2ј
!__inference__wrapped_model_194619в
В
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *BЂ?
=:
batch_normalization_1_inputџџџџџџџџџ 
ю2ы
H__inference_sequential_1_layer_call_and_return_conditional_losses_195283
H__inference_sequential_1_layer_call_and_return_conditional_losses_195341
H__inference_sequential_1_layer_call_and_return_conditional_losses_194989
H__inference_sequential_1_layer_call_and_return_conditional_losses_195031Р
ЗВГ
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
6__inference_batch_normalization_1_layer_call_fn_195522
6__inference_batch_normalization_1_layer_call_fn_195535
6__inference_batch_normalization_1_layer_call_fn_195471
6__inference_batch_normalization_1_layer_call_fn_195458Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
2
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195427
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195509
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195491
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195445Д
ЋВЇ
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsЊ 
annotationsЊ *
 
г2а
)__inference_conv2d_3_layer_call_fn_195555Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_3_layer_call_and_return_conditional_losses_195546Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_3_layer_call_fn_194735р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Г2А
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_194729р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
г2а
)__inference_conv2d_4_layer_call_fn_195575Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_4_layer_call_and_return_conditional_losses_195566Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_4_layer_call_fn_194747р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Г2А
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_194741р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
г2а
)__inference_conv2d_5_layer_call_fn_195595Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ю2ы
D__inference_conv2d_5_layer_call_and_return_conditional_losses_195586Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
2
0__inference_max_pooling2d_5_layer_call_fn_194759р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Г2А
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_194753р
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *@Ђ=
;84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
д2б
*__inference_flatten_1_layer_call_fn_195606Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
я2ь
E__inference_flatten_1_layer_call_and_return_conditional_losses_195601Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_2_layer_call_fn_195626Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_2_layer_call_and_return_conditional_losses_195617Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
в2Я
(__inference_dense_3_layer_call_fn_195646Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
э2ъ
C__inference_dense_3_layer_call_and_return_conditional_losses_195637Ђ
В
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
пBм
$__inference_signature_wrapper_195223batch_normalization_1_input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 З
!__inference__wrapped_model_194619()45EFLMLЂI
BЂ?
=:
batch_normalization_1_inputџџџџџџџџџ 
Њ "1Њ.
,
dense_3!
dense_3џџџџџџџџџЧ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195427r;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p
Њ "-Ђ*
# 
0џџџџџџџџџ 
 Ч
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195445r;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p 
Њ "-Ђ*
# 
0џџџџџџџџџ 
 ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195491MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 ь
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_195509MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "?Ђ<
52
0+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
6__inference_batch_normalization_1_layer_call_fn_195458e;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p
Њ " џџџџџџџџџ 
6__inference_batch_normalization_1_layer_call_fn_195471e;Ђ8
1Ђ.
(%
inputsџџџџџџџџџ 
p 
Њ " џџџџџџџџџ Ф
6__inference_batch_normalization_1_layer_call_fn_195522MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџФ
6__inference_batch_normalization_1_layer_call_fn_195535MЂJ
CЂ@
:7
inputs+џџџџџџџџџџџџџџџџџџџџџџџџџџџ
p 
Њ "2/+џџџџџџџџџџџџџџџџџџџџџџџџџџџД
D__inference_conv2d_3_layer_call_and_return_conditional_losses_195546l7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ "-Ђ*
# 
0џџџџџџџџџ  
 
)__inference_conv2d_3_layer_call_fn_195555_7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ 
Њ " џџџџџџџџџ  Д
D__inference_conv2d_4_layer_call_and_return_conditional_losses_195566l()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
 
Њ "-Ђ*
# 
0џџџџџџџџџ
@
 
)__inference_conv2d_4_layer_call_fn_195575_()7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ
 
Њ " џџџџџџџџџ
@Д
D__inference_conv2d_5_layer_call_and_return_conditional_losses_195586l457Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "-Ђ*
# 
0џџџџџџџџџ@
 
)__inference_conv2d_5_layer_call_fn_195595_457Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ " џџџџџџџџџ@Ѕ
C__inference_dense_2_layer_call_and_return_conditional_losses_195617^EF0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "&Ђ#

0џџџџџџџџџ
 }
(__inference_dense_2_layer_call_fn_195626QEF0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЄ
C__inference_dense_3_layer_call_and_return_conditional_losses_195637]LM0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "%Ђ"

0џџџџџџџџџ
 |
(__inference_dense_3_layer_call_fn_195646PLM0Ђ-
&Ђ#
!
inputsџџџџџџџџџ
Њ "џџџџџџџџџЊ
E__inference_flatten_1_layer_call_and_return_conditional_losses_195601a7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "&Ђ#

0џџџџџџџџџ
 
*__inference_flatten_1_layer_call_fn_195606T7Ђ4
-Ђ*
(%
inputsџџџџџџџџџ@
Њ "џџџџџџџџџю
K__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_194729RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_3_layer_call_fn_194735RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_max_pooling2d_4_layer_call_and_return_conditional_losses_194741RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_4_layer_call_fn_194747RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџю
K__inference_max_pooling2d_5_layer_call_and_return_conditional_losses_194753RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ "HЂE
>;
04џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
 Ц
0__inference_max_pooling2d_5_layer_call_fn_194759RЂO
HЂE
C@
inputs4џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџ
Њ ";84џџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџџк
H__inference_sequential_1_layer_call_and_return_conditional_losses_194989()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 к
H__inference_sequential_1_layer_call_and_return_conditional_losses_195031()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_195283x()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p

 
Њ "%Ђ"

0џџџџџџџџџ
 Ф
H__inference_sequential_1_layer_call_and_return_conditional_losses_195341x()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p 

 
Њ "%Ђ"

0џџџџџџџџџ
 В
-__inference_sequential_1_layer_call_fn_195107()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p

 
Њ "џџџџџџџџџВ
-__inference_sequential_1_layer_call_fn_195182()45EFLMTЂQ
JЂG
=:
batch_normalization_1_inputџџџџџџџџџ 
p 

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_195374k()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p

 
Њ "џџџџџџџџџ
-__inference_sequential_1_layer_call_fn_195407k()45EFLM?Ђ<
5Ђ2
(%
inputsџџџџџџџџџ 
p 

 
Њ "џџџџџџџџџй
$__inference_signature_wrapper_195223А()45EFLMkЂh
Ђ 
aЊ^
\
batch_normalization_1_input=:
batch_normalization_1_inputџџџџџџџџџ "1Њ.
,
dense_3!
dense_3џџџџџџџџџ