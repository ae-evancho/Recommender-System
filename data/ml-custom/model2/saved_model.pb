ЎЬ
еї
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
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
0
Sigmoid
x"T
y"T"
Ttype:

2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Њ
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
executor_typestring И
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
-
Tanh
x"T
y"T"
Ttype:

2
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.6.02v2.6.0-0-g919f693420e8ўО
К
embedding_6/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
НТd*'
shared_nameembedding_6/embeddings
Г
*embedding_6/embeddings/Read/ReadVariableOpReadVariableOpembedding_6/embeddings* 
_output_shapes
:
НТd*
dtype0
Е
movie_emb/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	сF*%
shared_namemovie_emb/embeddings
~
(movie_emb/embeddings/Read/ReadVariableOpReadVariableOpmovie_emb/embeddings*
_output_shapes
:	сF*
dtype0
~
conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:dF* 
shared_nameconv1d_6/kernel
w
#conv1d_6/kernel/Read/ReadVariableOpReadVariableOpconv1d_6/kernel*"
_output_shapes
:dF*
dtype0
r
conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*
shared_nameconv1d_6/bias
k
!conv1d_6/bias/Read/ReadVariableOpReadVariableOpconv1d_6/bias*
_output_shapes
:F*
dtype0
Г
user_emb/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш/F*$
shared_nameuser_emb/embeddings
|
'user_emb/embeddings/Read/ReadVariableOpReadVariableOpuser_emb/embeddings*
_output_shapes
:	Ш/F*
dtype0
{
dense_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	П@* 
shared_namedense_21/kernel
t
#dense_21/kernel/Read/ReadVariableOpReadVariableOpdense_21/kernel*
_output_shapes
:	П@*
dtype0
r
dense_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_21/bias
k
!dense_21/bias/Read/ReadVariableOpReadVariableOpdense_21/bias*
_output_shapes
:@*
dtype0
z
dense_22/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_22/kernel
s
#dense_22/kernel/Read/ReadVariableOpReadVariableOpdense_22/kernel*
_output_shapes

:@@*
dtype0
r
dense_22/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_22/bias
k
!dense_22/bias/Read/ReadVariableOpReadVariableOpdense_22/bias*
_output_shapes
:@*
dtype0
z
dense_23/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@* 
shared_namedense_23/kernel
s
#dense_23/kernel/Read/ReadVariableOpReadVariableOpdense_23/kernel*
_output_shapes

:@@*
dtype0
r
dense_23/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_23/bias
k
!dense_23/bias/Read/ReadVariableOpReadVariableOpdense_23/bias*
_output_shapes
:@*
dtype0
v
output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_nameoutput/kernel
o
!output/kernel/Read/ReadVariableOpReadVariableOpoutput/kernel*
_output_shapes

:@*
dtype0
n
output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameoutput/bias
g
output/bias/Read/ReadVariableOpReadVariableOpoutput/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
Ш
Adam/embedding_6/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
НТd*.
shared_nameAdam/embedding_6/embeddings/m
С
1Adam/embedding_6/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_6/embeddings/m* 
_output_shapes
:
НТd*
dtype0
У
Adam/movie_emb/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	сF*,
shared_nameAdam/movie_emb/embeddings/m
М
/Adam/movie_emb/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/movie_emb/embeddings/m*
_output_shapes
:	сF*
dtype0
М
Adam/conv1d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:dF*'
shared_nameAdam/conv1d_6/kernel/m
Е
*Adam/conv1d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/kernel/m*"
_output_shapes
:dF*
dtype0
А
Adam/conv1d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*%
shared_nameAdam/conv1d_6/bias/m
y
(Adam/conv1d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/bias/m*
_output_shapes
:F*
dtype0
С
Adam/user_emb/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш/F*+
shared_nameAdam/user_emb/embeddings/m
К
.Adam/user_emb/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/user_emb/embeddings/m*
_output_shapes
:	Ш/F*
dtype0
Й
Adam/dense_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	П@*'
shared_nameAdam/dense_21/kernel/m
В
*Adam/dense_21/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/m*
_output_shapes
:	П@*
dtype0
А
Adam/dense_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_21/bias/m
y
(Adam/dense_21/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/m*
_output_shapes
:@*
dtype0
И
Adam/dense_22/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_22/kernel/m
Б
*Adam/dense_22/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/m*
_output_shapes

:@@*
dtype0
А
Adam/dense_22/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_22/bias/m
y
(Adam/dense_22/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/m*
_output_shapes
:@*
dtype0
И
Adam/dense_23/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_23/kernel/m
Б
*Adam/dense_23/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/m*
_output_shapes

:@@*
dtype0
А
Adam/dense_23/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_23/bias/m
y
(Adam/dense_23/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/m*
_output_shapes
:@*
dtype0
Д
Adam/output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/output/kernel/m
}
(Adam/output/kernel/m/Read/ReadVariableOpReadVariableOpAdam/output/kernel/m*
_output_shapes

:@*
dtype0
|
Adam/output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/m
u
&Adam/output/bias/m/Read/ReadVariableOpReadVariableOpAdam/output/bias/m*
_output_shapes
:*
dtype0
Ш
Adam/embedding_6/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
НТd*.
shared_nameAdam/embedding_6/embeddings/v
С
1Adam/embedding_6/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_6/embeddings/v* 
_output_shapes
:
НТd*
dtype0
У
Adam/movie_emb/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	сF*,
shared_nameAdam/movie_emb/embeddings/v
М
/Adam/movie_emb/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/movie_emb/embeddings/v*
_output_shapes
:	сF*
dtype0
М
Adam/conv1d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:dF*'
shared_nameAdam/conv1d_6/kernel/v
Е
*Adam/conv1d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/kernel/v*"
_output_shapes
:dF*
dtype0
А
Adam/conv1d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:F*%
shared_nameAdam/conv1d_6/bias/v
y
(Adam/conv1d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/bias/v*
_output_shapes
:F*
dtype0
С
Adam/user_emb/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ш/F*+
shared_nameAdam/user_emb/embeddings/v
К
.Adam/user_emb/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/user_emb/embeddings/v*
_output_shapes
:	Ш/F*
dtype0
Й
Adam/dense_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	П@*'
shared_nameAdam/dense_21/kernel/v
В
*Adam/dense_21/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/kernel/v*
_output_shapes
:	П@*
dtype0
А
Adam/dense_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_21/bias/v
y
(Adam/dense_21/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_21/bias/v*
_output_shapes
:@*
dtype0
И
Adam/dense_22/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_22/kernel/v
Б
*Adam/dense_22/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/kernel/v*
_output_shapes

:@@*
dtype0
А
Adam/dense_22/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_22/bias/v
y
(Adam/dense_22/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_22/bias/v*
_output_shapes
:@*
dtype0
И
Adam/dense_23/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*'
shared_nameAdam/dense_23/kernel/v
Б
*Adam/dense_23/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/kernel/v*
_output_shapes

:@@*
dtype0
А
Adam/dense_23/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/dense_23/bias/v
y
(Adam/dense_23/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_23/bias/v*
_output_shapes
:@*
dtype0
Д
Adam/output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*%
shared_nameAdam/output/kernel/v
}
(Adam/output/kernel/v/Read/ReadVariableOpReadVariableOpAdam/output/kernel/v*
_output_shapes

:@*
dtype0
|
Adam/output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/output/bias/v
u
&Adam/output/bias/v/Read/ReadVariableOpReadVariableOpAdam/output/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ЦY
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*—X
value«XBƒX BљX
Ѕ
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-4
layer-15
layer_with_weights-5
layer-16
layer_with_weights-6
layer-17
layer_with_weights-7
layer-18
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures

_init_input_shape

_init_input_shape
b

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
b
!
embeddings
"	variables
#trainable_variables
$regularization_losses
%	keras_api
h

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api

,_init_input_shape
R
-	variables
.trainable_variables
/regularization_losses
0	keras_api
R
1	variables
2trainable_variables
3regularization_losses
4	keras_api
b
5
embeddings
6	variables
7trainable_variables
8regularization_losses
9	keras_api
R
:	variables
;trainable_variables
<regularization_losses
=	keras_api
R
>	variables
?trainable_variables
@regularization_losses
A	keras_api

B_init_input_shape

C	keras_api
R
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
R
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
h

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
h

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
h

Xkernel
Ybias
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
h

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
ƒ
diter

ebeta_1

fbeta_2
	gdecay
hlearning_ratemњ!mј&mЅ'm¬5m√LmƒMm≈Rm∆Sm«Xm»Ym…^m _mЋvћ!vЌ&vќ'vѕ5v–Lv—Mv“Rv”Sv‘Xv’Yv÷^v„_vЎ
^
0
!1
&2
'3
54
L5
M6
R7
S8
X9
Y10
^11
_12
^
0
!1
&2
'3
54
L5
M6
R7
S8
X9
Y10
^11
_12
 
≠
	variables
ilayer_regularization_losses
jnon_trainable_variables

klayers
lmetrics
trainable_variables
mlayer_metrics
regularization_losses
 
 
 
fd
VARIABLE_VALUEembedding_6/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
≠
	variables
nlayer_regularization_losses
onon_trainable_variables

players
qmetrics
trainable_variables
rlayer_metrics
regularization_losses
db
VARIABLE_VALUEmovie_emb/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

!0

!0
 
≠
"	variables
slayer_regularization_losses
tnon_trainable_variables

ulayers
vmetrics
#trainable_variables
wlayer_metrics
$regularization_losses
[Y
VARIABLE_VALUEconv1d_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1

&0
'1
 
≠
(	variables
xlayer_regularization_losses
ynon_trainable_variables

zlayers
{metrics
)trainable_variables
|layer_metrics
*regularization_losses
 
 
 
 
ѓ
-	variables
}layer_regularization_losses
~non_trainable_variables

layers
Аmetrics
.trainable_variables
Бlayer_metrics
/regularization_losses
 
 
 
≤
1	variables
 Вlayer_regularization_losses
Гnon_trainable_variables
Дlayers
Еmetrics
2trainable_variables
Жlayer_metrics
3regularization_losses
ca
VARIABLE_VALUEuser_emb/embeddings:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUE

50

50
 
≤
6	variables
 Зlayer_regularization_losses
Иnon_trainable_variables
Йlayers
Кmetrics
7trainable_variables
Лlayer_metrics
8regularization_losses
 
 
 
≤
:	variables
 Мlayer_regularization_losses
Нnon_trainable_variables
Оlayers
Пmetrics
;trainable_variables
Рlayer_metrics
<regularization_losses
 
 
 
≤
>	variables
 Сlayer_regularization_losses
Тnon_trainable_variables
Уlayers
Фmetrics
?trainable_variables
Хlayer_metrics
@regularization_losses
 
 
 
 
 
≤
D	variables
 Цlayer_regularization_losses
Чnon_trainable_variables
Шlayers
Щmetrics
Etrainable_variables
Ъlayer_metrics
Fregularization_losses
 
 
 
≤
H	variables
 Ыlayer_regularization_losses
Ьnon_trainable_variables
Эlayers
Юmetrics
Itrainable_variables
Яlayer_metrics
Jregularization_losses
[Y
VARIABLE_VALUEdense_21/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_21/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

L0
M1

L0
M1
 
≤
N	variables
 †layer_regularization_losses
°non_trainable_variables
Ґlayers
£metrics
Otrainable_variables
§layer_metrics
Pregularization_losses
[Y
VARIABLE_VALUEdense_22/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_22/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE

R0
S1

R0
S1
 
≤
T	variables
 •layer_regularization_losses
¶non_trainable_variables
Іlayers
®metrics
Utrainable_variables
©layer_metrics
Vregularization_losses
[Y
VARIABLE_VALUEdense_23/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_23/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

X0
Y1

X0
Y1
 
≤
Z	variables
 ™layer_regularization_losses
Ђnon_trainable_variables
ђlayers
≠metrics
[trainable_variables
Ѓlayer_metrics
\regularization_losses
YW
VARIABLE_VALUEoutput/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEoutput/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE

^0
_1

^0
_1
 
≤
`	variables
 ѓlayer_regularization_losses
∞non_trainable_variables
±layers
≤metrics
atrainable_variables
≥layer_metrics
bregularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 
О
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
10
11
12
13
14
15
16
17
18

і0
µ1
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

ґtotal

Јcount
Є	variables
є	keras_api
I

Їtotal

їcount
Љ
_fn_kwargs
љ	variables
Њ	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

ґ0
Ј1

Є	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Ї0
ї1

љ	variables
КЗ
VARIABLE_VALUEAdam/embedding_6/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUEAdam/movie_emb/embeddings/mVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_6/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_6/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/user_emb/embeddings/mVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
КЗ
VARIABLE_VALUEAdam/embedding_6/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ИЕ
VARIABLE_VALUEAdam/movie_emb/embeddings/vVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_6/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_6/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
ЗД
VARIABLE_VALUEAdam/user_emb/embeddings/vVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_21/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_21/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_22/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_22/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_23/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_23/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/output/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/output/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{
serving_default_itemTextPlaceholder*'
_output_shapes
:€€€€€€€€€<*
dtype0*
shape:€€€€€€€€€<
z
serving_default_movieIDPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
y
serving_default_userIDPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
{
serving_default_userTextPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
ъ
StatefulPartitionedCallStatefulPartitionedCallserving_default_itemTextserving_default_movieIDserving_default_userIDserving_default_userTextembedding_6/embeddingsconv1d_6/kernelconv1d_6/biasmovie_emb/embeddingsuser_emb/embeddingsdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasoutput/kerneloutput/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_376245
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
√
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_6/embeddings/Read/ReadVariableOp(movie_emb/embeddings/Read/ReadVariableOp#conv1d_6/kernel/Read/ReadVariableOp!conv1d_6/bias/Read/ReadVariableOp'user_emb/embeddings/Read/ReadVariableOp#dense_21/kernel/Read/ReadVariableOp!dense_21/bias/Read/ReadVariableOp#dense_22/kernel/Read/ReadVariableOp!dense_22/bias/Read/ReadVariableOp#dense_23/kernel/Read/ReadVariableOp!dense_23/bias/Read/ReadVariableOp!output/kernel/Read/ReadVariableOpoutput/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_6/embeddings/m/Read/ReadVariableOp/Adam/movie_emb/embeddings/m/Read/ReadVariableOp*Adam/conv1d_6/kernel/m/Read/ReadVariableOp(Adam/conv1d_6/bias/m/Read/ReadVariableOp.Adam/user_emb/embeddings/m/Read/ReadVariableOp*Adam/dense_21/kernel/m/Read/ReadVariableOp(Adam/dense_21/bias/m/Read/ReadVariableOp*Adam/dense_22/kernel/m/Read/ReadVariableOp(Adam/dense_22/bias/m/Read/ReadVariableOp*Adam/dense_23/kernel/m/Read/ReadVariableOp(Adam/dense_23/bias/m/Read/ReadVariableOp(Adam/output/kernel/m/Read/ReadVariableOp&Adam/output/bias/m/Read/ReadVariableOp1Adam/embedding_6/embeddings/v/Read/ReadVariableOp/Adam/movie_emb/embeddings/v/Read/ReadVariableOp*Adam/conv1d_6/kernel/v/Read/ReadVariableOp(Adam/conv1d_6/bias/v/Read/ReadVariableOp.Adam/user_emb/embeddings/v/Read/ReadVariableOp*Adam/dense_21/kernel/v/Read/ReadVariableOp(Adam/dense_21/bias/v/Read/ReadVariableOp*Adam/dense_22/kernel/v/Read/ReadVariableOp(Adam/dense_22/bias/v/Read/ReadVariableOp*Adam/dense_23/kernel/v/Read/ReadVariableOp(Adam/dense_23/bias/v/Read/ReadVariableOp(Adam/output/kernel/v/Read/ReadVariableOp&Adam/output/bias/v/Read/ReadVariableOpConst*=
Tin6
422	*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_376875
ю	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_6/embeddingsmovie_emb/embeddingsconv1d_6/kernelconv1d_6/biasuser_emb/embeddingsdense_21/kerneldense_21/biasdense_22/kerneldense_22/biasdense_23/kerneldense_23/biasoutput/kerneloutput/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/embedding_6/embeddings/mAdam/movie_emb/embeddings/mAdam/conv1d_6/kernel/mAdam/conv1d_6/bias/mAdam/user_emb/embeddings/mAdam/dense_21/kernel/mAdam/dense_21/bias/mAdam/dense_22/kernel/mAdam/dense_22/bias/mAdam/dense_23/kernel/mAdam/dense_23/bias/mAdam/output/kernel/mAdam/output/bias/mAdam/embedding_6/embeddings/vAdam/movie_emb/embeddings/vAdam/conv1d_6/kernel/vAdam/conv1d_6/bias/vAdam/user_emb/embeddings/vAdam/dense_21/kernel/vAdam/dense_21/bias/vAdam/dense_22/kernel/vAdam/dense_22/bias/vAdam/dense_23/kernel/vAdam/dense_23/bias/vAdam/output/kernel/vAdam/output/bias/v*<
Tin5
321*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_377029щ≤

л

£
E__inference_movie_emb_layer_call_and_return_conditional_losses_376494

inputs*
embedding_lookup_376488:	сF
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_376488Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/376488*+
_output_shapes
:€€€€€€€€€F*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/376488*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity_1Г
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€F2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»
G
+__inference_flatten_12_layer_call_fn_376599

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_3757182
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€F:S O
+
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
≈
W
+__inference_multiply_6_layer_call_fn_376588
inputs_0
inputs_1
identity—
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_multiply_6_layer_call_and_return_conditional_losses_3757262
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€F:Q M
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/1
Сt
Џ
!__inference__wrapped_model_375596

userid
movieid
itemtext
usertext?
+model_6_embedding_6_embedding_lookup_375526:
НТdR
<model_6_conv1d_6_conv1d_expanddims_1_readvariableop_resource:dF>
0model_6_conv1d_6_biasadd_readvariableop_resource:F<
)model_6_movie_emb_embedding_lookup_375544:	сF;
(model_6_user_emb_embedding_lookup_375550:	Ш/FB
/model_6_dense_21_matmul_readvariableop_resource:	П@>
0model_6_dense_21_biasadd_readvariableop_resource:@A
/model_6_dense_22_matmul_readvariableop_resource:@@>
0model_6_dense_22_biasadd_readvariableop_resource:@A
/model_6_dense_23_matmul_readvariableop_resource:@@>
0model_6_dense_23_biasadd_readvariableop_resource:@?
-model_6_output_matmul_readvariableop_resource:@<
.model_6_output_biasadd_readvariableop_resource:
identityИҐ'model_6/conv1d_6/BiasAdd/ReadVariableOpҐ3model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOpҐ'model_6/dense_21/BiasAdd/ReadVariableOpҐ&model_6/dense_21/MatMul/ReadVariableOpҐ'model_6/dense_22/BiasAdd/ReadVariableOpҐ&model_6/dense_22/MatMul/ReadVariableOpҐ'model_6/dense_23/BiasAdd/ReadVariableOpҐ&model_6/dense_23/MatMul/ReadVariableOpҐ$model_6/embedding_6/embedding_lookupҐ"model_6/movie_emb/embedding_lookupҐ%model_6/output/BiasAdd/ReadVariableOpҐ$model_6/output/MatMul/ReadVariableOpҐ!model_6/user_emb/embedding_lookupЗ
model_6/embedding_6/CastCastitemtext*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€<2
model_6/embedding_6/Castб
$model_6/embedding_6/embedding_lookupResourceGather+model_6_embedding_6_embedding_lookup_375526model_6/embedding_6/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@model_6/embedding_6/embedding_lookup/375526*+
_output_shapes
:€€€€€€€€€<d*
dtype02&
$model_6/embedding_6/embedding_lookupљ
-model_6/embedding_6/embedding_lookup/IdentityIdentity-model_6/embedding_6/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@model_6/embedding_6/embedding_lookup/375526*+
_output_shapes
:€€€€€€€€€<d2/
-model_6/embedding_6/embedding_lookup/Identity№
/model_6/embedding_6/embedding_lookup/Identity_1Identity6model_6/embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€<d21
/model_6/embedding_6/embedding_lookup/Identity_1Ы
&model_6/conv1d_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2(
&model_6/conv1d_6/conv1d/ExpandDims/dimы
"model_6/conv1d_6/conv1d/ExpandDims
ExpandDims8model_6/embedding_6/embedding_lookup/Identity_1:output:0/model_6/conv1d_6/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€<d2$
"model_6/conv1d_6/conv1d/ExpandDimsл
3model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_6_conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:dF*
dtype025
3model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOpЦ
(model_6/conv1d_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_6/conv1d_6/conv1d/ExpandDims_1/dimы
$model_6/conv1d_6/conv1d/ExpandDims_1
ExpandDims;model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp:value:01model_6/conv1d_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:dF2&
$model_6/conv1d_6/conv1d/ExpandDims_1ы
model_6/conv1d_6/conv1dConv2D+model_6/conv1d_6/conv1d/ExpandDims:output:0-model_6/conv1d_6/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€8F*
paddingVALID*
strides
2
model_6/conv1d_6/conv1d≈
model_6/conv1d_6/conv1d/SqueezeSqueeze model_6/conv1d_6/conv1d:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F*
squeeze_dims

э€€€€€€€€2!
model_6/conv1d_6/conv1d/Squeezeњ
'model_6/conv1d_6/BiasAdd/ReadVariableOpReadVariableOp0model_6_conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02)
'model_6/conv1d_6/BiasAdd/ReadVariableOp–
model_6/conv1d_6/BiasAddBiasAdd(model_6/conv1d_6/conv1d/Squeeze:output:0/model_6/conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
model_6/conv1d_6/BiasAddП
model_6/conv1d_6/ReluRelu!model_6/conv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
model_6/conv1d_6/ReluВ
model_6/movie_emb/CastCastmovieid*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
model_6/movie_emb/Cast„
"model_6/movie_emb/embedding_lookupResourceGather)model_6_movie_emb_embedding_lookup_375544model_6/movie_emb/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*<
_class2
0.loc:@model_6/movie_emb/embedding_lookup/375544*+
_output_shapes
:€€€€€€€€€F*
dtype02$
"model_6/movie_emb/embedding_lookupµ
+model_6/movie_emb/embedding_lookup/IdentityIdentity+model_6/movie_emb/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*<
_class2
0.loc:@model_6/movie_emb/embedding_lookup/375544*+
_output_shapes
:€€€€€€€€€F2-
+model_6/movie_emb/embedding_lookup/Identity÷
-model_6/movie_emb/embedding_lookup/Identity_1Identity4model_6/movie_emb/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2/
-model_6/movie_emb/embedding_lookup/Identity_1
model_6/user_emb/CastCastuserid*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
model_6/user_emb/Cast“
!model_6/user_emb/embedding_lookupResourceGather(model_6_user_emb_embedding_lookup_375550model_6/user_emb/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*;
_class1
/-loc:@model_6/user_emb/embedding_lookup/375550*+
_output_shapes
:€€€€€€€€€F*
dtype02#
!model_6/user_emb/embedding_lookup±
*model_6/user_emb/embedding_lookup/IdentityIdentity*model_6/user_emb/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*;
_class1
/-loc:@model_6/user_emb/embedding_lookup/375550*+
_output_shapes
:€€€€€€€€€F2,
*model_6/user_emb/embedding_lookup/Identity”
,model_6/user_emb/embedding_lookup/Identity_1Identity3model_6/user_emb/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2.
,model_6/user_emb/embedding_lookup/Identity_1Е
model_6/flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
model_6/flatten_13/Const–
model_6/flatten_13/ReshapeReshape6model_6/movie_emb/embedding_lookup/Identity_1:output:0!model_6/flatten_13/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
model_6/flatten_13/ReshapeЄ
9model_6/global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2;
9model_6/global_average_pooling1d_6/Mean/reduction_indicesх
'model_6/global_average_pooling1d_6/MeanMean#model_6/conv1d_6/Relu:activations:0Bmodel_6/global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2)
'model_6/global_average_pooling1d_6/MeanЕ
model_6/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
model_6/flatten_12/Constѕ
model_6/flatten_12/ReshapeReshape5model_6/user_emb/embedding_lookup/Identity_1:output:0!model_6/flatten_12/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
model_6/flatten_12/Reshapeј
model_6/multiply_6/mulMul#model_6/flatten_13/Reshape:output:00model_6/global_average_pooling1d_6/Mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
model_6/multiply_6/mulР
model_6/tf.math.tanh_6/TanhTanhmodel_6/multiply_6/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€F2
model_6/tf.math.tanh_6/TanhК
"model_6/concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_6/concatenate_12/concat/axisб
model_6/concatenate_12/concatConcatV2#model_6/flatten_12/Reshape:output:0usertext+model_6/concatenate_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€I2
model_6/concatenate_12/concatК
"model_6/concatenate_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_6/concatenate_13/concat/axisь
model_6/concatenate_13/concatConcatV2model_6/tf.math.tanh_6/Tanh:y:0&model_6/concatenate_12/concat:output:0+model_6/concatenate_13/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€П2
model_6/concatenate_13/concatЅ
&model_6/dense_21/MatMul/ReadVariableOpReadVariableOp/model_6_dense_21_matmul_readvariableop_resource*
_output_shapes
:	П@*
dtype02(
&model_6/dense_21/MatMul/ReadVariableOp∆
model_6/dense_21/MatMulMatMul&model_6/concatenate_13/concat:output:0.model_6/dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_21/MatMulњ
'model_6/dense_21/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_6/dense_21/BiasAdd/ReadVariableOp≈
model_6/dense_21/BiasAddBiasAdd!model_6/dense_21/MatMul:product:0/model_6/dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_21/BiasAddЛ
model_6/dense_21/ReluRelu!model_6/dense_21/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_21/Reluј
&model_6/dense_22/MatMul/ReadVariableOpReadVariableOp/model_6_dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&model_6/dense_22/MatMul/ReadVariableOp√
model_6/dense_22/MatMulMatMul#model_6/dense_21/Relu:activations:0.model_6/dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_22/MatMulњ
'model_6/dense_22/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_6/dense_22/BiasAdd/ReadVariableOp≈
model_6/dense_22/BiasAddBiasAdd!model_6/dense_22/MatMul:product:0/model_6/dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_22/BiasAddЛ
model_6/dense_22/ReluRelu!model_6/dense_22/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_22/Reluј
&model_6/dense_23/MatMul/ReadVariableOpReadVariableOp/model_6_dense_23_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02(
&model_6/dense_23/MatMul/ReadVariableOp√
model_6/dense_23/MatMulMatMul#model_6/dense_22/Relu:activations:0.model_6/dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_23/MatMulњ
'model_6/dense_23/BiasAdd/ReadVariableOpReadVariableOp0model_6_dense_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_6/dense_23/BiasAdd/ReadVariableOp≈
model_6/dense_23/BiasAddBiasAdd!model_6/dense_23/MatMul:product:0/model_6/dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_23/BiasAddЛ
model_6/dense_23/ReluRelu!model_6/dense_23/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
model_6/dense_23/ReluЇ
$model_6/output/MatMul/ReadVariableOpReadVariableOp-model_6_output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02&
$model_6/output/MatMul/ReadVariableOpљ
model_6/output/MatMulMatMul#model_6/dense_23/Relu:activations:0,model_6/output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_6/output/MatMulє
%model_6/output/BiasAdd/ReadVariableOpReadVariableOp.model_6_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model_6/output/BiasAdd/ReadVariableOpљ
model_6/output/BiasAddBiasAddmodel_6/output/MatMul:product:0-model_6/output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_6/output/BiasAddО
model_6/output/SigmoidSigmoidmodel_6/output/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
model_6/output/Sigmoidu
IdentityIdentitymodel_6/output/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityж
NoOpNoOp(^model_6/conv1d_6/BiasAdd/ReadVariableOp4^model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp(^model_6/dense_21/BiasAdd/ReadVariableOp'^model_6/dense_21/MatMul/ReadVariableOp(^model_6/dense_22/BiasAdd/ReadVariableOp'^model_6/dense_22/MatMul/ReadVariableOp(^model_6/dense_23/BiasAdd/ReadVariableOp'^model_6/dense_23/MatMul/ReadVariableOp%^model_6/embedding_6/embedding_lookup#^model_6/movie_emb/embedding_lookup&^model_6/output/BiasAdd/ReadVariableOp%^model_6/output/MatMul/ReadVariableOp"^model_6/user_emb/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2R
'model_6/conv1d_6/BiasAdd/ReadVariableOp'model_6/conv1d_6/BiasAdd/ReadVariableOp2j
3model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp3model_6/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2R
'model_6/dense_21/BiasAdd/ReadVariableOp'model_6/dense_21/BiasAdd/ReadVariableOp2P
&model_6/dense_21/MatMul/ReadVariableOp&model_6/dense_21/MatMul/ReadVariableOp2R
'model_6/dense_22/BiasAdd/ReadVariableOp'model_6/dense_22/BiasAdd/ReadVariableOp2P
&model_6/dense_22/MatMul/ReadVariableOp&model_6/dense_22/MatMul/ReadVariableOp2R
'model_6/dense_23/BiasAdd/ReadVariableOp'model_6/dense_23/BiasAdd/ReadVariableOp2P
&model_6/dense_23/MatMul/ReadVariableOp&model_6/dense_23/MatMul/ReadVariableOp2L
$model_6/embedding_6/embedding_lookup$model_6/embedding_6/embedding_lookup2H
"model_6/movie_emb/embedding_lookup"model_6/movie_emb/embedding_lookup2N
%model_6/output/BiasAdd/ReadVariableOp%model_6/output/BiasAdd/ReadVariableOp2L
$model_6/output/MatMul/ReadVariableOp$model_6/output/MatMul/ReadVariableOp2F
!model_6/user_emb/embedding_lookup!model_6/user_emb/embedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameuserID:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	movieID:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
itemText:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
userText
Аe
ѓ

C__inference_model_6_layer_call_and_return_conditional_losses_376399
inputs_0
inputs_1
inputs_2
inputs_37
#embedding_6_embedding_lookup_376329:
НТdJ
4conv1d_6_conv1d_expanddims_1_readvariableop_resource:dF6
(conv1d_6_biasadd_readvariableop_resource:F4
!movie_emb_embedding_lookup_376347:	сF3
 user_emb_embedding_lookup_376353:	Ш/F:
'dense_21_matmul_readvariableop_resource:	П@6
(dense_21_biasadd_readvariableop_resource:@9
'dense_22_matmul_readvariableop_resource:@@6
(dense_22_biasadd_readvariableop_resource:@9
'dense_23_matmul_readvariableop_resource:@@6
(dense_23_biasadd_readvariableop_resource:@7
%output_matmul_readvariableop_resource:@4
&output_biasadd_readvariableop_resource:
identityИҐconv1d_6/BiasAdd/ReadVariableOpҐ+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpҐdense_21/BiasAdd/ReadVariableOpҐdense_21/MatMul/ReadVariableOpҐdense_22/BiasAdd/ReadVariableOpҐdense_22/MatMul/ReadVariableOpҐdense_23/BiasAdd/ReadVariableOpҐdense_23/MatMul/ReadVariableOpҐembedding_6/embedding_lookupҐmovie_emb/embedding_lookupҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOpҐuser_emb/embedding_lookupw
embedding_6/CastCastinputs_2*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€<2
embedding_6/Castє
embedding_6/embedding_lookupResourceGather#embedding_6_embedding_lookup_376329embedding_6/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_6/embedding_lookup/376329*+
_output_shapes
:€€€€€€€€€<d*
dtype02
embedding_6/embedding_lookupЭ
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_6/embedding_lookup/376329*+
_output_shapes
:€€€€€€€€€<d2'
%embedding_6/embedding_lookup/Identityƒ
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€<d2)
'embedding_6/embedding_lookup/Identity_1Л
conv1d_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_6/conv1d/ExpandDims/dimџ
conv1d_6/conv1d/ExpandDims
ExpandDims0embedding_6/embedding_lookup/Identity_1:output:0'conv1d_6/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€<d2
conv1d_6/conv1d/ExpandDims”
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:dF*
dtype02-
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_6/conv1d/ExpandDims_1/dimџ
conv1d_6/conv1d/ExpandDims_1
ExpandDims3conv1d_6/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:dF2
conv1d_6/conv1d/ExpandDims_1џ
conv1d_6/conv1dConv2D#conv1d_6/conv1d/ExpandDims:output:0%conv1d_6/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€8F*
paddingVALID*
strides
2
conv1d_6/conv1d≠
conv1d_6/conv1d/SqueezeSqueezeconv1d_6/conv1d:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F*
squeeze_dims

э€€€€€€€€2
conv1d_6/conv1d/SqueezeІ
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02!
conv1d_6/BiasAdd/ReadVariableOp∞
conv1d_6/BiasAddBiasAdd conv1d_6/conv1d/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
conv1d_6/BiasAddw
conv1d_6/ReluReluconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
conv1d_6/Relus
movie_emb/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
movie_emb/Castѓ
movie_emb/embedding_lookupResourceGather!movie_emb_embedding_lookup_376347movie_emb/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@movie_emb/embedding_lookup/376347*+
_output_shapes
:€€€€€€€€€F*
dtype02
movie_emb/embedding_lookupХ
#movie_emb/embedding_lookup/IdentityIdentity#movie_emb/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@movie_emb/embedding_lookup/376347*+
_output_shapes
:€€€€€€€€€F2%
#movie_emb/embedding_lookup/IdentityЊ
%movie_emb/embedding_lookup/Identity_1Identity,movie_emb/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2'
%movie_emb/embedding_lookup/Identity_1q
user_emb/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
user_emb/Cast™
user_emb/embedding_lookupResourceGather user_emb_embedding_lookup_376353user_emb/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@user_emb/embedding_lookup/376353*+
_output_shapes
:€€€€€€€€€F*
dtype02
user_emb/embedding_lookupС
"user_emb/embedding_lookup/IdentityIdentity"user_emb/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@user_emb/embedding_lookup/376353*+
_output_shapes
:€€€€€€€€€F2$
"user_emb/embedding_lookup/Identityї
$user_emb/embedding_lookup/Identity_1Identity+user_emb/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2&
$user_emb/embedding_lookup/Identity_1u
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
flatten_13/Const∞
flatten_13/ReshapeReshape.movie_emb/embedding_lookup/Identity_1:output:0flatten_13/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
flatten_13/Reshape®
1global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_6/Mean/reduction_indices’
global_average_pooling1d_6/MeanMeanconv1d_6/Relu:activations:0:global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2!
global_average_pooling1d_6/Meanu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
flatten_12/Constѓ
flatten_12/ReshapeReshape-user_emb/embedding_lookup/Identity_1:output:0flatten_12/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
flatten_12/Reshape†
multiply_6/mulMulflatten_13/Reshape:output:0(global_average_pooling1d_6/Mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
multiply_6/mulx
tf.math.tanh_6/TanhTanhmultiply_6/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€F2
tf.math.tanh_6/Tanhz
concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_12/concat/axisЅ
concatenate_12/concatConcatV2flatten_12/Reshape:output:0inputs_3#concatenate_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€I2
concatenate_12/concatz
concatenate_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_13/concat/axis‘
concatenate_13/concatConcatV2tf.math.tanh_6/Tanh:y:0concatenate_12/concat:output:0#concatenate_13/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€П2
concatenate_13/concat©
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	П@*
dtype02 
dense_21/MatMul/ReadVariableOp¶
dense_21/MatMulMatMulconcatenate_13/concat:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_21/MatMulІ
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_21/BiasAdd/ReadVariableOp•
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_21/BiasAdds
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_21/Relu®
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_22/MatMul/ReadVariableOp£
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_22/MatMulІ
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_22/BiasAdd/ReadVariableOp•
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_22/Relu®
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_23/MatMul/ReadVariableOp£
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_23/MatMulІ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_23/BiasAdd/ReadVariableOp•
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_23/ReluҐ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
output/MatMul/ReadVariableOpЭ
output/MatMulMatMuldense_23/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/MatMul°
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOpЭ
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/BiasAddv
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/Sigmoidm
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityю
NoOpNoOp ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/conv1d/ExpandDims_1/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp^embedding_6/embedding_lookup^movie_emb/embedding_lookup^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp^user_emb/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2<
embedding_6/embedding_lookupembedding_6/embedding_lookup28
movie_emb/embedding_lookupmovie_emb/embedding_lookup2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp26
user_emb/embedding_lookupuser_emb/embedding_lookup:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/3
ѕ
[
/__inference_concatenate_13_layer_call_fn_376625
inputs_0
inputs_1
identity÷
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€П* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_13_layer_call_and_return_conditional_losses_3757452
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€П2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€I:Q M
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€I
"
_user_specified_name
inputs/1
эA
в
C__inference_model_6_layer_call_and_return_conditional_losses_375816

inputs
inputs_1
inputs_2
inputs_3&
embedding_6_375644:
НТd%
conv1d_6_375664:dF
conv1d_6_375666:F#
movie_emb_375680:	сF"
user_emb_375694:	Ш/F"
dense_21_375759:	П@
dense_21_375761:@!
dense_22_375776:@@
dense_22_375778:@!
dense_23_375793:@@
dense_23_375795:@
output_375810:@
output_375812:
identityИҐ conv1d_6/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐ dense_22/StatefulPartitionedCallҐ dense_23/StatefulPartitionedCallҐ#embedding_6/StatefulPartitionedCallҐ!movie_emb/StatefulPartitionedCallҐoutput/StatefulPartitionedCallҐ user_emb/StatefulPartitionedCallУ
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_6_375644*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€<d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_3756432%
#embedding_6/StatefulPartitionedCallЊ
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0conv1d_6_375664conv1d_6_375666*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€8F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_3756632"
 conv1d_6/StatefulPartitionedCallЛ
!movie_emb/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_emb_375680*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_movie_emb_layer_call_and_return_conditional_losses_3756792#
!movie_emb/StatefulPartitionedCallЕ
 user_emb/StatefulPartitionedCallStatefulPartitionedCallinputsuser_emb_375694*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_user_emb_layer_call_and_return_conditional_losses_3756932"
 user_emb/StatefulPartitionedCallю
flatten_13/PartitionedCallPartitionedCall*movie_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_3757032
flatten_13/PartitionedCall≠
*global_average_pooling1d_6/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_3757102,
*global_average_pooling1d_6/PartitionedCallэ
flatten_12/PartitionedCallPartitionedCall)user_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_3757182
flatten_12/PartitionedCall≠
multiply_6/PartitionedCallPartitionedCall#flatten_13/PartitionedCall:output:03global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_multiply_6_layer_call_and_return_conditional_losses_3757262
multiply_6/PartitionedCallЙ
tf.math.tanh_6/TanhTanh#multiply_6/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
tf.math.tanh_6/TanhО
concatenate_12/PartitionedCallPartitionedCall#flatten_12/PartitionedCall:output:0inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€I* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_12_layer_call_and_return_conditional_losses_3757362 
concatenate_12/PartitionedCallҐ
concatenate_13/PartitionedCallPartitionedCalltf.math.tanh_6/Tanh:y:0'concatenate_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€П* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_13_layer_call_and_return_conditional_losses_3757452 
concatenate_13/PartitionedCallµ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0dense_21_375759dense_21_375761*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_3757582"
 dense_21/StatefulPartitionedCallЈ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_375776dense_22_375778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_3757752"
 dense_22/StatefulPartitionedCallЈ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_375793dense_23_375795*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_3757922"
 dense_23/StatefulPartitionedCall≠
output/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0output_375810output_375812*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_3758092 
output/StatefulPartitionedCallВ
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityи
NoOpNoOp!^conv1d_6/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall"^movie_emb/StatefulPartitionedCall^output/StatefulPartitionedCall!^user_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2F
!movie_emb/StatefulPartitionedCall!movie_emb/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2D
 user_emb/StatefulPartitionedCall user_emb/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ж
ц
D__inference_dense_21_layer_call_and_return_conditional_losses_376636

inputs1
matmul_readvariableop_resource:	П@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	П@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€П: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€П
 
_user_specified_nameinputs
ђ
У
D__inference_conv1d_6_layer_call_and_return_conditional_losses_375663

inputsA
+conv1d_expanddims_1_readvariableop_resource:dF-
biasadd_readvariableop_resource:F
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЦ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€<d2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:dF*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:dF2
conv1d/ExpandDims_1Ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€8F*
paddingVALID*
strides
2
conv1dТ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype02
BiasAdd/ReadVariableOpМ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€8F2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€8F2

IdentityМ
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€<d
 
_user_specified_nameinputs
—
~
)__inference_user_emb_layer_call_fn_376576

inputs
unknown:	Ш/F
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_user_emb_layer_call_and_return_conditional_losses_3756932
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ё
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_375703

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€F:S O
+
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
В
х
D__inference_dense_22_layer_call_and_return_conditional_losses_375775

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
дc
ф
__inference__traced_save_376875
file_prefix5
1savev2_embedding_6_embeddings_read_readvariableop3
/savev2_movie_emb_embeddings_read_readvariableop.
*savev2_conv1d_6_kernel_read_readvariableop,
(savev2_conv1d_6_bias_read_readvariableop2
.savev2_user_emb_embeddings_read_readvariableop.
*savev2_dense_21_kernel_read_readvariableop,
(savev2_dense_21_bias_read_readvariableop.
*savev2_dense_22_kernel_read_readvariableop,
(savev2_dense_22_bias_read_readvariableop.
*savev2_dense_23_kernel_read_readvariableop,
(savev2_dense_23_bias_read_readvariableop,
(savev2_output_kernel_read_readvariableop*
&savev2_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_6_embeddings_m_read_readvariableop:
6savev2_adam_movie_emb_embeddings_m_read_readvariableop5
1savev2_adam_conv1d_6_kernel_m_read_readvariableop3
/savev2_adam_conv1d_6_bias_m_read_readvariableop9
5savev2_adam_user_emb_embeddings_m_read_readvariableop5
1savev2_adam_dense_21_kernel_m_read_readvariableop3
/savev2_adam_dense_21_bias_m_read_readvariableop5
1savev2_adam_dense_22_kernel_m_read_readvariableop3
/savev2_adam_dense_22_bias_m_read_readvariableop5
1savev2_adam_dense_23_kernel_m_read_readvariableop3
/savev2_adam_dense_23_bias_m_read_readvariableop3
/savev2_adam_output_kernel_m_read_readvariableop1
-savev2_adam_output_bias_m_read_readvariableop<
8savev2_adam_embedding_6_embeddings_v_read_readvariableop:
6savev2_adam_movie_emb_embeddings_v_read_readvariableop5
1savev2_adam_conv1d_6_kernel_v_read_readvariableop3
/savev2_adam_conv1d_6_bias_v_read_readvariableop9
5savev2_adam_user_emb_embeddings_v_read_readvariableop5
1savev2_adam_dense_21_kernel_v_read_readvariableop3
/savev2_adam_dense_21_bias_v_read_readvariableop5
1savev2_adam_dense_22_kernel_v_read_readvariableop3
/savev2_adam_dense_22_bias_v_read_readvariableop5
1savev2_adam_dense_23_kernel_v_read_readvariableop3
/savev2_adam_dense_23_bias_v_read_readvariableop3
/savev2_adam_output_kernel_v_read_readvariableop1
-savev2_adam_output_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shard¶
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameƒ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*÷
valueћB…1B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesк
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices≤
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_6_embeddings_read_readvariableop/savev2_movie_emb_embeddings_read_readvariableop*savev2_conv1d_6_kernel_read_readvariableop(savev2_conv1d_6_bias_read_readvariableop.savev2_user_emb_embeddings_read_readvariableop*savev2_dense_21_kernel_read_readvariableop(savev2_dense_21_bias_read_readvariableop*savev2_dense_22_kernel_read_readvariableop(savev2_dense_22_bias_read_readvariableop*savev2_dense_23_kernel_read_readvariableop(savev2_dense_23_bias_read_readvariableop(savev2_output_kernel_read_readvariableop&savev2_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_6_embeddings_m_read_readvariableop6savev2_adam_movie_emb_embeddings_m_read_readvariableop1savev2_adam_conv1d_6_kernel_m_read_readvariableop/savev2_adam_conv1d_6_bias_m_read_readvariableop5savev2_adam_user_emb_embeddings_m_read_readvariableop1savev2_adam_dense_21_kernel_m_read_readvariableop/savev2_adam_dense_21_bias_m_read_readvariableop1savev2_adam_dense_22_kernel_m_read_readvariableop/savev2_adam_dense_22_bias_m_read_readvariableop1savev2_adam_dense_23_kernel_m_read_readvariableop/savev2_adam_dense_23_bias_m_read_readvariableop/savev2_adam_output_kernel_m_read_readvariableop-savev2_adam_output_bias_m_read_readvariableop8savev2_adam_embedding_6_embeddings_v_read_readvariableop6savev2_adam_movie_emb_embeddings_v_read_readvariableop1savev2_adam_conv1d_6_kernel_v_read_readvariableop/savev2_adam_conv1d_6_bias_v_read_readvariableop5savev2_adam_user_emb_embeddings_v_read_readvariableop1savev2_adam_dense_21_kernel_v_read_readvariableop/savev2_adam_dense_21_bias_v_read_readvariableop1savev2_adam_dense_22_kernel_v_read_readvariableop/savev2_adam_dense_22_bias_v_read_readvariableop1savev2_adam_dense_23_kernel_v_read_readvariableop/savev2_adam_dense_23_bias_v_read_readvariableop/savev2_adam_output_kernel_v_read_readvariableop-savev2_adam_output_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *?
dtypes5
321	2
SaveV2Ї
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes°
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*Р
_input_shapesю
ы: :
НТd:	сF:dF:F:	Ш/F:	П@:@:@@:@:@@:@:@:: : : : : : : : : :
НТd:	сF:dF:F:	Ш/F:	П@:@:@@:@:@@:@:@::
НТd:	сF:dF:F:	Ш/F:	П@:@:@@:@:@@:@:@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
НТd:%!

_output_shapes
:	сF:($
"
_output_shapes
:dF: 

_output_shapes
:F:%!

_output_shapes
:	Ш/F:%!

_output_shapes
:	П@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 	

_output_shapes
:@:$
 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@: 

_output_shapes
::

_output_shapes
: :
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
: :&"
 
_output_shapes
:
НТd:%!

_output_shapes
:	сF:($
"
_output_shapes
:dF: 

_output_shapes
:F:%!

_output_shapes
:	Ш/F:%!

_output_shapes
:	П@: 

_output_shapes
:@:$ 

_output_shapes

:@@: 

_output_shapes
:@:$  

_output_shapes

:@@: !

_output_shapes
:@:$" 

_output_shapes

:@: #

_output_shapes
::&$"
 
_output_shapes
:
НТd:%%!

_output_shapes
:	сF:(&$
"
_output_shapes
:dF: '

_output_shapes
:F:%(!

_output_shapes
:	Ш/F:%)!

_output_shapes
:	П@: *

_output_shapes
:@:$+ 

_output_shapes

:@@: ,

_output_shapes
:@:$- 

_output_shapes

:@@: .

_output_shapes
:@:$/ 

_output_shapes

:@: 0

_output_shapes
::1

_output_shapes
: 
Хѕ
ј
"__inference__traced_restore_377029
file_prefix;
'assignvariableop_embedding_6_embeddings:
НТd:
'assignvariableop_1_movie_emb_embeddings:	сF8
"assignvariableop_2_conv1d_6_kernel:dF.
 assignvariableop_3_conv1d_6_bias:F9
&assignvariableop_4_user_emb_embeddings:	Ш/F5
"assignvariableop_5_dense_21_kernel:	П@.
 assignvariableop_6_dense_21_bias:@4
"assignvariableop_7_dense_22_kernel:@@.
 assignvariableop_8_dense_22_bias:@4
"assignvariableop_9_dense_23_kernel:@@/
!assignvariableop_10_dense_23_bias:@3
!assignvariableop_11_output_kernel:@-
assignvariableop_12_output_bias:'
assignvariableop_13_adam_iter:	 )
assignvariableop_14_adam_beta_1: )
assignvariableop_15_adam_beta_2: (
assignvariableop_16_adam_decay: 0
&assignvariableop_17_adam_learning_rate: #
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: E
1assignvariableop_22_adam_embedding_6_embeddings_m:
НТdB
/assignvariableop_23_adam_movie_emb_embeddings_m:	сF@
*assignvariableop_24_adam_conv1d_6_kernel_m:dF6
(assignvariableop_25_adam_conv1d_6_bias_m:FA
.assignvariableop_26_adam_user_emb_embeddings_m:	Ш/F=
*assignvariableop_27_adam_dense_21_kernel_m:	П@6
(assignvariableop_28_adam_dense_21_bias_m:@<
*assignvariableop_29_adam_dense_22_kernel_m:@@6
(assignvariableop_30_adam_dense_22_bias_m:@<
*assignvariableop_31_adam_dense_23_kernel_m:@@6
(assignvariableop_32_adam_dense_23_bias_m:@:
(assignvariableop_33_adam_output_kernel_m:@4
&assignvariableop_34_adam_output_bias_m:E
1assignvariableop_35_adam_embedding_6_embeddings_v:
НТdB
/assignvariableop_36_adam_movie_emb_embeddings_v:	сF@
*assignvariableop_37_adam_conv1d_6_kernel_v:dF6
(assignvariableop_38_adam_conv1d_6_bias_v:FA
.assignvariableop_39_adam_user_emb_embeddings_v:	Ш/F=
*assignvariableop_40_adam_dense_21_kernel_v:	П@6
(assignvariableop_41_adam_dense_21_bias_v:@<
*assignvariableop_42_adam_dense_22_kernel_v:@@6
(assignvariableop_43_adam_dense_22_bias_v:@<
*assignvariableop_44_adam_dense_23_kernel_v:@@6
(assignvariableop_45_adam_dense_23_bias_v:@:
(assignvariableop_46_adam_output_kernel_v:@4
&assignvariableop_47_adam_output_bias_v:
identity_49ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9 
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*÷
valueћB…1B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-1/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-3/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesр
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:1*
dtype0*u
valuelBj1B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices£
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Џ
_output_shapes«
ƒ:::::::::::::::::::::::::::::::::::::::::::::::::*?
dtypes5
321	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¶
AssignVariableOpAssignVariableOp'assignvariableop_embedding_6_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1ђ
AssignVariableOp_1AssignVariableOp'assignvariableop_1_movie_emb_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2І
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_6_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3•
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_6_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4Ђ
AssignVariableOp_4AssignVariableOp&assignvariableop_4_user_emb_embeddingsIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5І
AssignVariableOp_5AssignVariableOp"assignvariableop_5_dense_21_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6•
AssignVariableOp_6AssignVariableOp assignvariableop_6_dense_21_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7І
AssignVariableOp_7AssignVariableOp"assignvariableop_7_dense_22_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8•
AssignVariableOp_8AssignVariableOp assignvariableop_8_dense_22_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9І
AssignVariableOp_9AssignVariableOp"assignvariableop_9_dense_23_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10©
AssignVariableOp_10AssignVariableOp!assignvariableop_10_dense_23_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11©
AssignVariableOp_11AssignVariableOp!assignvariableop_11_output_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12І
AssignVariableOp_12AssignVariableOpassignvariableop_12_output_biasIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_13•
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_iterIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14І
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15І
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_2Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16¶
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_decayIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17Ѓ
AssignVariableOp_17AssignVariableOp&assignvariableop_17_adam_learning_rateIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18°
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19°
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20£
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21£
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22є
AssignVariableOp_22AssignVariableOp1assignvariableop_22_adam_embedding_6_embeddings_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23Ј
AssignVariableOp_23AssignVariableOp/assignvariableop_23_adam_movie_emb_embeddings_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24≤
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv1d_6_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25∞
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_conv1d_6_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26ґ
AssignVariableOp_26AssignVariableOp.assignvariableop_26_adam_user_emb_embeddings_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27≤
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_dense_21_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28∞
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_dense_21_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29≤
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_dense_22_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30∞
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_dense_22_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31≤
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_dense_23_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32∞
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_dense_23_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33∞
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_output_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34Ѓ
AssignVariableOp_34AssignVariableOp&assignvariableop_34_adam_output_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35є
AssignVariableOp_35AssignVariableOp1assignvariableop_35_adam_embedding_6_embeddings_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36Ј
AssignVariableOp_36AssignVariableOp/assignvariableop_36_adam_movie_emb_embeddings_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37≤
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_conv1d_6_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38∞
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_conv1d_6_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39ґ
AssignVariableOp_39AssignVariableOp.assignvariableop_39_adam_user_emb_embeddings_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40≤
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_dense_21_kernel_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41∞
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense_21_bias_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42≤
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dense_22_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43∞
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_dense_22_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44≤
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_dense_23_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45∞
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_dense_23_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46∞
AssignVariableOp_46AssignVariableOp(assignvariableop_46_adam_output_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47Ѓ
AssignVariableOp_47AssignVariableOp&assignvariableop_47_adam_output_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_479
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpю
Identity_48Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_48f
Identity_49IdentityIdentity_48:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_49ж
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_49Identity_49:output:0*u
_input_shapesd
b: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472(
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
л

£
E__inference_movie_emb_layer_call_and_return_conditional_losses_375679

inputs*
embedding_lookup_375673:	сF
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_375673Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/375673*+
_output_shapes
:€€€€€€€€€F*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/375673*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity_1Г
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€F2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Љ
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_375606

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
 
ш
(__inference_model_6_layer_call_fn_375845

userid
movieid
itemtext
usertext
unknown:
НТd
	unknown_0:dF
	unknown_1:F
	unknown_2:	сF
	unknown_3:	Ш/F
	unknown_4:	П@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCalluseridmovieiditemtextusertextunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_3758162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameuserID:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	movieID:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
itemText:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
userText
ћ
p
F__inference_multiply_6_layer_call_and_return_conditional_losses_375726

inputs
inputs_1
identityU
mulMulinputsinputs_1*
T0*'
_output_shapes
:€€€€€€€€€F2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€F:O K
'
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
й
v
J__inference_concatenate_12_layer_call_and_return_conditional_losses_376606
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisБ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€I2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€I2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
В
х
D__inference_dense_23_layer_call_and_return_conditional_losses_375792

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ж
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_375710

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€8F:S O
+
_output_shapes
:€€€€€€€€€8F
 
_user_specified_nameinputs
Аe
ѓ

C__inference_model_6_layer_call_and_return_conditional_losses_376322
inputs_0
inputs_1
inputs_2
inputs_37
#embedding_6_embedding_lookup_376252:
НТdJ
4conv1d_6_conv1d_expanddims_1_readvariableop_resource:dF6
(conv1d_6_biasadd_readvariableop_resource:F4
!movie_emb_embedding_lookup_376270:	сF3
 user_emb_embedding_lookup_376276:	Ш/F:
'dense_21_matmul_readvariableop_resource:	П@6
(dense_21_biasadd_readvariableop_resource:@9
'dense_22_matmul_readvariableop_resource:@@6
(dense_22_biasadd_readvariableop_resource:@9
'dense_23_matmul_readvariableop_resource:@@6
(dense_23_biasadd_readvariableop_resource:@7
%output_matmul_readvariableop_resource:@4
&output_biasadd_readvariableop_resource:
identityИҐconv1d_6/BiasAdd/ReadVariableOpҐ+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpҐdense_21/BiasAdd/ReadVariableOpҐdense_21/MatMul/ReadVariableOpҐdense_22/BiasAdd/ReadVariableOpҐdense_22/MatMul/ReadVariableOpҐdense_23/BiasAdd/ReadVariableOpҐdense_23/MatMul/ReadVariableOpҐembedding_6/embedding_lookupҐmovie_emb/embedding_lookupҐoutput/BiasAdd/ReadVariableOpҐoutput/MatMul/ReadVariableOpҐuser_emb/embedding_lookupw
embedding_6/CastCastinputs_2*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€<2
embedding_6/Castє
embedding_6/embedding_lookupResourceGather#embedding_6_embedding_lookup_376252embedding_6/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_6/embedding_lookup/376252*+
_output_shapes
:€€€€€€€€€<d*
dtype02
embedding_6/embedding_lookupЭ
%embedding_6/embedding_lookup/IdentityIdentity%embedding_6/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_6/embedding_lookup/376252*+
_output_shapes
:€€€€€€€€€<d2'
%embedding_6/embedding_lookup/Identityƒ
'embedding_6/embedding_lookup/Identity_1Identity.embedding_6/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€<d2)
'embedding_6/embedding_lookup/Identity_1Л
conv1d_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2 
conv1d_6/conv1d/ExpandDims/dimџ
conv1d_6/conv1d/ExpandDims
ExpandDims0embedding_6/embedding_lookup/Identity_1:output:0'conv1d_6/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€<d2
conv1d_6/conv1d/ExpandDims”
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:dF*
dtype02-
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpЖ
 conv1d_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_6/conv1d/ExpandDims_1/dimџ
conv1d_6/conv1d/ExpandDims_1
ExpandDims3conv1d_6/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:dF2
conv1d_6/conv1d/ExpandDims_1џ
conv1d_6/conv1dConv2D#conv1d_6/conv1d/ExpandDims:output:0%conv1d_6/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€8F*
paddingVALID*
strides
2
conv1d_6/conv1d≠
conv1d_6/conv1d/SqueezeSqueezeconv1d_6/conv1d:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F*
squeeze_dims

э€€€€€€€€2
conv1d_6/conv1d/SqueezeІ
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
:F*
dtype02!
conv1d_6/BiasAdd/ReadVariableOp∞
conv1d_6/BiasAddBiasAdd conv1d_6/conv1d/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
conv1d_6/BiasAddw
conv1d_6/ReluReluconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
conv1d_6/Relus
movie_emb/CastCastinputs_1*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
movie_emb/Castѓ
movie_emb/embedding_lookupResourceGather!movie_emb_embedding_lookup_376270movie_emb/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*4
_class*
(&loc:@movie_emb/embedding_lookup/376270*+
_output_shapes
:€€€€€€€€€F*
dtype02
movie_emb/embedding_lookupХ
#movie_emb/embedding_lookup/IdentityIdentity#movie_emb/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*4
_class*
(&loc:@movie_emb/embedding_lookup/376270*+
_output_shapes
:€€€€€€€€€F2%
#movie_emb/embedding_lookup/IdentityЊ
%movie_emb/embedding_lookup/Identity_1Identity,movie_emb/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2'
%movie_emb/embedding_lookup/Identity_1q
user_emb/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
user_emb/Cast™
user_emb/embedding_lookupResourceGather user_emb_embedding_lookup_376276user_emb/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*3
_class)
'%loc:@user_emb/embedding_lookup/376276*+
_output_shapes
:€€€€€€€€€F*
dtype02
user_emb/embedding_lookupС
"user_emb/embedding_lookup/IdentityIdentity"user_emb/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*3
_class)
'%loc:@user_emb/embedding_lookup/376276*+
_output_shapes
:€€€€€€€€€F2$
"user_emb/embedding_lookup/Identityї
$user_emb/embedding_lookup/Identity_1Identity+user_emb/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2&
$user_emb/embedding_lookup/Identity_1u
flatten_13/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
flatten_13/Const∞
flatten_13/ReshapeReshape.movie_emb/embedding_lookup/Identity_1:output:0flatten_13/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
flatten_13/Reshape®
1global_average_pooling1d_6/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :23
1global_average_pooling1d_6/Mean/reduction_indices’
global_average_pooling1d_6/MeanMeanconv1d_6/Relu:activations:0:global_average_pooling1d_6/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2!
global_average_pooling1d_6/Meanu
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
flatten_12/Constѓ
flatten_12/ReshapeReshape-user_emb/embedding_lookup/Identity_1:output:0flatten_12/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
flatten_12/Reshape†
multiply_6/mulMulflatten_13/Reshape:output:0(global_average_pooling1d_6/Mean:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
multiply_6/mulx
tf.math.tanh_6/TanhTanhmultiply_6/mul:z:0*
T0*'
_output_shapes
:€€€€€€€€€F2
tf.math.tanh_6/Tanhz
concatenate_12/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_12/concat/axisЅ
concatenate_12/concatConcatV2flatten_12/Reshape:output:0inputs_3#concatenate_12/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€I2
concatenate_12/concatz
concatenate_13/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate_13/concat/axis‘
concatenate_13/concatConcatV2tf.math.tanh_6/Tanh:y:0concatenate_12/concat:output:0#concatenate_13/concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€П2
concatenate_13/concat©
dense_21/MatMul/ReadVariableOpReadVariableOp'dense_21_matmul_readvariableop_resource*
_output_shapes
:	П@*
dtype02 
dense_21/MatMul/ReadVariableOp¶
dense_21/MatMulMatMulconcatenate_13/concat:output:0&dense_21/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_21/MatMulІ
dense_21/BiasAdd/ReadVariableOpReadVariableOp(dense_21_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_21/BiasAdd/ReadVariableOp•
dense_21/BiasAddBiasAdddense_21/MatMul:product:0'dense_21/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_21/BiasAdds
dense_21/ReluReludense_21/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_21/Relu®
dense_22/MatMul/ReadVariableOpReadVariableOp'dense_22_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_22/MatMul/ReadVariableOp£
dense_22/MatMulMatMuldense_21/Relu:activations:0&dense_22/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_22/MatMulІ
dense_22/BiasAdd/ReadVariableOpReadVariableOp(dense_22_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_22/BiasAdd/ReadVariableOp•
dense_22/BiasAddBiasAdddense_22/MatMul:product:0'dense_22/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_22/BiasAdds
dense_22/ReluReludense_22/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_22/Relu®
dense_23/MatMul/ReadVariableOpReadVariableOp'dense_23_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype02 
dense_23/MatMul/ReadVariableOp£
dense_23/MatMulMatMuldense_22/Relu:activations:0&dense_23/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_23/MatMulІ
dense_23/BiasAdd/ReadVariableOpReadVariableOp(dense_23_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
dense_23/BiasAdd/ReadVariableOp•
dense_23/BiasAddBiasAdddense_23/MatMul:product:0'dense_23/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_23/BiasAdds
dense_23/ReluReludense_23/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
dense_23/ReluҐ
output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:@*
dtype02
output/MatMul/ReadVariableOpЭ
output/MatMulMatMuldense_23/Relu:activations:0$output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/MatMul°
output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
output/BiasAdd/ReadVariableOpЭ
output/BiasAddBiasAddoutput/MatMul:product:0%output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/BiasAddv
output/SigmoidSigmoidoutput/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2
output/Sigmoidm
IdentityIdentityoutput/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityю
NoOpNoOp ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/conv1d/ExpandDims_1/ReadVariableOp ^dense_21/BiasAdd/ReadVariableOp^dense_21/MatMul/ReadVariableOp ^dense_22/BiasAdd/ReadVariableOp^dense_22/MatMul/ReadVariableOp ^dense_23/BiasAdd/ReadVariableOp^dense_23/MatMul/ReadVariableOp^embedding_6/embedding_lookup^movie_emb/embedding_lookup^output/BiasAdd/ReadVariableOp^output/MatMul/ReadVariableOp^user_emb/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2B
dense_21/BiasAdd/ReadVariableOpdense_21/BiasAdd/ReadVariableOp2@
dense_21/MatMul/ReadVariableOpdense_21/MatMul/ReadVariableOp2B
dense_22/BiasAdd/ReadVariableOpdense_22/BiasAdd/ReadVariableOp2@
dense_22/MatMul/ReadVariableOpdense_22/MatMul/ReadVariableOp2B
dense_23/BiasAdd/ReadVariableOpdense_23/BiasAdd/ReadVariableOp2@
dense_23/MatMul/ReadVariableOpdense_23/MatMul/ReadVariableOp2<
embedding_6/embedding_lookupembedding_6/embedding_lookup28
movie_emb/embedding_lookupmovie_emb/embedding_lookup2>
output/BiasAdd/ReadVariableOpoutput/BiasAdd/ReadVariableOp2<
output/MatMul/ReadVariableOpoutput/MatMul/ReadVariableOp26
user_emb/embedding_lookupuser_emb/embedding_lookup:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/3
л
v
J__inference_concatenate_13_layer_call_and_return_conditional_losses_376619
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisВ
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€П2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€П2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€I:Q M
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€I
"
_user_specified_name
inputs/1
В
у
B__inference_output_layer_call_and_return_conditional_losses_375809

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
н
Ф
'__inference_output_layer_call_fn_376705

inputs
unknown:@
	unknown_0:
identityИҐStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_3758092
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
”

*__inference_movie_emb_layer_call_fn_376501

inputs
unknown:	сF
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_movie_emb_layer_call_and_return_conditional_losses_3756792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
о

¶
G__inference_embedding_6_layer_call_and_return_conditional_losses_376477

inputs+
embedding_lookup_376471:
НТd
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€<2
Castэ
embedding_lookupResourceGatherembedding_lookup_376471Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/376471*+
_output_shapes
:€€€€€€€€€<d*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/376471*+
_output_shapes
:€€€€€€€€€<d2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€<d2
embedding_lookup/Identity_1Г
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€<d2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€<: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
Љ
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_376543

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indicesx
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2
Meanj
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ф
Ч
)__inference_dense_21_layer_call_fn_376645

inputs
unknown:	П@
	unknown_0:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_3757582
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€П: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€П
 
_user_specified_nameinputs
ђ
У
D__inference_conv1d_6_layer_call_and_return_conditional_losses_376517

inputsA
+conv1d_expanddims_1_readvariableop_resource:dF-
biasadd_readvariableop_resource:F
identityИҐBiasAdd/ReadVariableOpҐ"conv1d/ExpandDims_1/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€2
conv1d/ExpandDims/dimЦ
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€<d2
conv1d/ExpandDimsЄ
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:dF*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dimЈ
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:dF2
conv1d/ExpandDims_1Ј
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€8F*
paddingVALID*
strides
2
conv1dТ
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F*
squeeze_dims

э€€€€€€€€2
conv1d/SqueezeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:F*
dtype02
BiasAdd/ReadVariableOpМ
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€8F2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€8F2
Reluq
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€8F2

IdentityМ
NoOpNoOp^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€<d
 
_user_specified_nameinputs
Ж
ц
D__inference_dense_21_layer_call_and_return_conditional_losses_375758

inputs1
matmul_readvariableop_resource:	П@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	П@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€П: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€П
 
_user_specified_nameinputs
АB
б
C__inference_model_6_layer_call_and_return_conditional_losses_376155

userid
movieid
itemtext
usertext&
embedding_6_376113:
НТd%
conv1d_6_376116:dF
conv1d_6_376118:F#
movie_emb_376121:	сF"
user_emb_376124:	Ш/F"
dense_21_376134:	П@
dense_21_376136:@!
dense_22_376139:@@
dense_22_376141:@!
dense_23_376144:@@
dense_23_376146:@
output_376149:@
output_376151:
identityИҐ conv1d_6/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐ dense_22/StatefulPartitionedCallҐ dense_23/StatefulPartitionedCallҐ#embedding_6/StatefulPartitionedCallҐ!movie_emb/StatefulPartitionedCallҐoutput/StatefulPartitionedCallҐ user_emb/StatefulPartitionedCallУ
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallitemtextembedding_6_376113*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€<d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_3756432%
#embedding_6/StatefulPartitionedCallЊ
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0conv1d_6_376116conv1d_6_376118*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€8F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_3756632"
 conv1d_6/StatefulPartitionedCallК
!movie_emb/StatefulPartitionedCallStatefulPartitionedCallmovieidmovie_emb_376121*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_movie_emb_layer_call_and_return_conditional_losses_3756792#
!movie_emb/StatefulPartitionedCallЕ
 user_emb/StatefulPartitionedCallStatefulPartitionedCalluseriduser_emb_376124*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_user_emb_layer_call_and_return_conditional_losses_3756932"
 user_emb/StatefulPartitionedCallю
flatten_13/PartitionedCallPartitionedCall*movie_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_3757032
flatten_13/PartitionedCall≠
*global_average_pooling1d_6/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_3757102,
*global_average_pooling1d_6/PartitionedCallэ
flatten_12/PartitionedCallPartitionedCall)user_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_3757182
flatten_12/PartitionedCall≠
multiply_6/PartitionedCallPartitionedCall#flatten_13/PartitionedCall:output:03global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_multiply_6_layer_call_and_return_conditional_losses_3757262
multiply_6/PartitionedCallЙ
tf.math.tanh_6/TanhTanh#multiply_6/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
tf.math.tanh_6/TanhО
concatenate_12/PartitionedCallPartitionedCall#flatten_12/PartitionedCall:output:0usertext*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€I* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_12_layer_call_and_return_conditional_losses_3757362 
concatenate_12/PartitionedCallҐ
concatenate_13/PartitionedCallPartitionedCalltf.math.tanh_6/Tanh:y:0'concatenate_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€П* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_13_layer_call_and_return_conditional_losses_3757452 
concatenate_13/PartitionedCallµ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0dense_21_376134dense_21_376136*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_3757582"
 dense_21/StatefulPartitionedCallЈ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_376139dense_22_376141*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_3757752"
 dense_22/StatefulPartitionedCallЈ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_376144dense_23_376146*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_3757922"
 dense_23/StatefulPartitionedCall≠
output/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0output_376149output_376151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_3758092 
output/StatefulPartitionedCallВ
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityи
NoOpNoOp!^conv1d_6/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall"^movie_emb/StatefulPartitionedCall^output/StatefulPartitionedCall!^user_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2F
!movie_emb/StatefulPartitionedCall!movie_emb/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2D
 user_emb/StatefulPartitionedCall user_emb/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameuserID:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	movieID:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
itemText:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
userText
”
ы
(__inference_model_6_layer_call_fn_376467
inputs_0
inputs_1
inputs_2
inputs_3
unknown:
НТd
	unknown_0:dF
	unknown_1:F
	unknown_2:	сF
	unknown_3:	Ш/F
	unknown_4:	П@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_3760442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/3
В
х
D__inference_dense_22_layer_call_and_return_conditional_losses_376656

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
ё
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_376594

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€F:S O
+
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
Ю
W
;__inference_global_average_pooling1d_6_layer_call_fn_376554

inputs
identityЁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_3756062
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€:e a
=
_output_shapes+
):'€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
G
+__inference_flatten_13_layer_call_fn_376537

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_3757032
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€F:S O
+
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
ё
b
F__inference_flatten_12_layer_call_and_return_conditional_losses_375718

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€F:S O
+
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
 
ш
(__inference_model_6_layer_call_fn_376107

userid
movieid
itemtext
usertext
unknown:
НТd
	unknown_0:dF
	unknown_1:F
	unknown_2:	сF
	unknown_3:	Ш/F
	unknown_4:	П@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCalluseridmovieiditemtextusertextunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_3760442
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameuserID:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	movieID:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
itemText:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
userText
Е
Ъ
)__inference_conv1d_6_layer_call_fn_376526

inputs
unknown:dF
	unknown_0:F
identityИҐStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€8F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_3756632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€8F2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€<d: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€<d
 
_user_specified_nameinputs
и
W
;__inference_global_average_pooling1d_6_layer_call_fn_376559

inputs
identity‘
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_3757102
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€8F:S O
+
_output_shapes
:€€€€€€€€€8F
 
_user_specified_nameinputs
ё
b
F__inference_flatten_13_layer_call_and_return_conditional_losses_376532

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€F   2
Constg
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2	
Reshaped
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€F:S O
+
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs
эA
в
C__inference_model_6_layer_call_and_return_conditional_losses_376044

inputs
inputs_1
inputs_2
inputs_3&
embedding_6_376002:
НТd%
conv1d_6_376005:dF
conv1d_6_376007:F#
movie_emb_376010:	сF"
user_emb_376013:	Ш/F"
dense_21_376023:	П@
dense_21_376025:@!
dense_22_376028:@@
dense_22_376030:@!
dense_23_376033:@@
dense_23_376035:@
output_376038:@
output_376040:
identityИҐ conv1d_6/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐ dense_22/StatefulPartitionedCallҐ dense_23/StatefulPartitionedCallҐ#embedding_6/StatefulPartitionedCallҐ!movie_emb/StatefulPartitionedCallҐoutput/StatefulPartitionedCallҐ user_emb/StatefulPartitionedCallУ
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_6_376002*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€<d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_3756432%
#embedding_6/StatefulPartitionedCallЊ
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0conv1d_6_376005conv1d_6_376007*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€8F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_3756632"
 conv1d_6/StatefulPartitionedCallЛ
!movie_emb/StatefulPartitionedCallStatefulPartitionedCallinputs_1movie_emb_376010*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_movie_emb_layer_call_and_return_conditional_losses_3756792#
!movie_emb/StatefulPartitionedCallЕ
 user_emb/StatefulPartitionedCallStatefulPartitionedCallinputsuser_emb_376013*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_user_emb_layer_call_and_return_conditional_losses_3756932"
 user_emb/StatefulPartitionedCallю
flatten_13/PartitionedCallPartitionedCall*movie_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_3757032
flatten_13/PartitionedCall≠
*global_average_pooling1d_6/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_3757102,
*global_average_pooling1d_6/PartitionedCallэ
flatten_12/PartitionedCallPartitionedCall)user_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_3757182
flatten_12/PartitionedCall≠
multiply_6/PartitionedCallPartitionedCall#flatten_13/PartitionedCall:output:03global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_multiply_6_layer_call_and_return_conditional_losses_3757262
multiply_6/PartitionedCallЙ
tf.math.tanh_6/TanhTanh#multiply_6/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
tf.math.tanh_6/TanhО
concatenate_12/PartitionedCallPartitionedCall#flatten_12/PartitionedCall:output:0inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€I* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_12_layer_call_and_return_conditional_losses_3757362 
concatenate_12/PartitionedCallҐ
concatenate_13/PartitionedCallPartitionedCalltf.math.tanh_6/Tanh:y:0'concatenate_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€П* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_13_layer_call_and_return_conditional_losses_3757452 
concatenate_13/PartitionedCallµ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0dense_21_376023dense_21_376025*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_3757582"
 dense_21/StatefulPartitionedCallЈ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_376028dense_22_376030*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_3757752"
 dense_22/StatefulPartitionedCallЈ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_376033dense_23_376035*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_3757922"
 dense_23/StatefulPartitionedCall≠
output/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0output_376038output_376040*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_3758092 
output/StatefulPartitionedCallВ
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityи
NoOpNoOp!^conv1d_6/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall"^movie_emb/StatefulPartitionedCall^output/StatefulPartitionedCall!^user_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2F
!movie_emb/StatefulPartitionedCall!movie_emb/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2D
 user_emb/StatefulPartitionedCall user_emb/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
к

Ґ
D__inference_user_emb_layer_call_and_return_conditional_losses_376569

inputs*
embedding_lookup_376563:	Ш/F
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_376563Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/376563*+
_output_shapes
:€€€€€€€€€F*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/376563*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity_1Г
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€F2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
с
Ц
)__inference_dense_22_layer_call_fn_376665

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_3757752
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
г
t
J__inference_concatenate_13_layer_call_and_return_conditional_losses_375745

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axisА
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:€€€€€€€€€П2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:€€€€€€€€€П2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€I:O K
'
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€I
 
_user_specified_nameinputs
§
ф
$__inference_signature_wrapper_376245
itemtext
movieid

userid
usertext
unknown:
НТd
	unknown_0:dF
	unknown_1:F
	unknown_2:	сF
	unknown_3:	Ш/F
	unknown_4:	П@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCallВ
StatefulPartitionedCallStatefulPartitionedCalluseridmovieiditemtextusertextunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_3755962
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€<:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
itemText:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	movieID:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameuserID:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
userText
ў
В
,__inference_embedding_6_layer_call_fn_376484

inputs
unknown:
НТd
identityИҐStatefulPartitionedCallо
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€<d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_3756432
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€<d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€<: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
В
х
D__inference_dense_23_layer_call_and_return_conditional_losses_376676

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€@2
Relum
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ќ
[
/__inference_concatenate_12_layer_call_fn_376612
inputs_0
inputs_1
identity’
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€I* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_12_layer_call_and_return_conditional_losses_3757362
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€I2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1
о

¶
G__inference_embedding_6_layer_call_and_return_conditional_losses_375643

inputs+
embedding_lookup_375637:
НТd
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€<2
Castэ
embedding_lookupResourceGatherembedding_lookup_375637Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/375637*+
_output_shapes
:€€€€€€€€€<d*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/375637*+
_output_shapes
:€€€€€€€€€<d2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€<d2
embedding_lookup/Identity_1Г
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€<d2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€<: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€<
 
_user_specified_nameinputs
Ж
r
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_376549

inputs
identityr
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Mean/reduction_indiceso
MeanMeaninputsMean/reduction_indices:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
Meana
IdentityIdentityMean:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€8F:S O
+
_output_shapes
:€€€€€€€€€8F
 
_user_specified_nameinputs
АB
б
C__inference_model_6_layer_call_and_return_conditional_losses_376203

userid
movieid
itemtext
usertext&
embedding_6_376161:
НТd%
conv1d_6_376164:dF
conv1d_6_376166:F#
movie_emb_376169:	сF"
user_emb_376172:	Ш/F"
dense_21_376182:	П@
dense_21_376184:@!
dense_22_376187:@@
dense_22_376189:@!
dense_23_376192:@@
dense_23_376194:@
output_376197:@
output_376199:
identityИҐ conv1d_6/StatefulPartitionedCallҐ dense_21/StatefulPartitionedCallҐ dense_22/StatefulPartitionedCallҐ dense_23/StatefulPartitionedCallҐ#embedding_6/StatefulPartitionedCallҐ!movie_emb/StatefulPartitionedCallҐoutput/StatefulPartitionedCallҐ user_emb/StatefulPartitionedCallУ
#embedding_6/StatefulPartitionedCallStatefulPartitionedCallitemtextembedding_6_376161*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€<d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_embedding_6_layer_call_and_return_conditional_losses_3756432%
#embedding_6/StatefulPartitionedCallЊ
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCall,embedding_6/StatefulPartitionedCall:output:0conv1d_6_376164conv1d_6_376166*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€8F*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_conv1d_6_layer_call_and_return_conditional_losses_3756632"
 conv1d_6/StatefulPartitionedCallК
!movie_emb/StatefulPartitionedCallStatefulPartitionedCallmovieidmovie_emb_376169*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_movie_emb_layer_call_and_return_conditional_losses_3756792#
!movie_emb/StatefulPartitionedCallЕ
 user_emb/StatefulPartitionedCallStatefulPartitionedCalluseriduser_emb_376172*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€F*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_user_emb_layer_call_and_return_conditional_losses_3756932"
 user_emb/StatefulPartitionedCallю
flatten_13/PartitionedCallPartitionedCall*movie_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_13_layer_call_and_return_conditional_losses_3757032
flatten_13/PartitionedCall≠
*global_average_pooling1d_6/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *_
fZRX
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_3757102,
*global_average_pooling1d_6/PartitionedCallэ
flatten_12/PartitionedCallPartitionedCall)user_emb/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_flatten_12_layer_call_and_return_conditional_losses_3757182
flatten_12/PartitionedCall≠
multiply_6/PartitionedCallPartitionedCall#flatten_13/PartitionedCall:output:03global_average_pooling1d_6/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€F* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_multiply_6_layer_call_and_return_conditional_losses_3757262
multiply_6/PartitionedCallЙ
tf.math.tanh_6/TanhTanh#multiply_6/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€F2
tf.math.tanh_6/TanhО
concatenate_12/PartitionedCallPartitionedCall#flatten_12/PartitionedCall:output:0usertext*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€I* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_12_layer_call_and_return_conditional_losses_3757362 
concatenate_12/PartitionedCallҐ
concatenate_13/PartitionedCallPartitionedCalltf.math.tanh_6/Tanh:y:0'concatenate_12/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€П* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_concatenate_13_layer_call_and_return_conditional_losses_3757452 
concatenate_13/PartitionedCallµ
 dense_21/StatefulPartitionedCallStatefulPartitionedCall'concatenate_13/PartitionedCall:output:0dense_21_376182dense_21_376184*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_21_layer_call_and_return_conditional_losses_3757582"
 dense_21/StatefulPartitionedCallЈ
 dense_22/StatefulPartitionedCallStatefulPartitionedCall)dense_21/StatefulPartitionedCall:output:0dense_22_376187dense_22_376189*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_22_layer_call_and_return_conditional_losses_3757752"
 dense_22/StatefulPartitionedCallЈ
 dense_23/StatefulPartitionedCallStatefulPartitionedCall)dense_22/StatefulPartitionedCall:output:0dense_23_376192dense_23_376194*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_3757922"
 dense_23/StatefulPartitionedCall≠
output/StatefulPartitionedCallStatefulPartitionedCall)dense_23/StatefulPartitionedCall:output:0output_376197output_376199*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_output_layer_call_and_return_conditional_losses_3758092 
output/StatefulPartitionedCallВ
IdentityIdentity'output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityи
NoOpNoOp!^conv1d_6/StatefulPartitionedCall!^dense_21/StatefulPartitionedCall!^dense_22/StatefulPartitionedCall!^dense_23/StatefulPartitionedCall$^embedding_6/StatefulPartitionedCall"^movie_emb/StatefulPartitionedCall^output/StatefulPartitionedCall!^user_emb/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2D
 dense_21/StatefulPartitionedCall dense_21/StatefulPartitionedCall2D
 dense_22/StatefulPartitionedCall dense_22/StatefulPartitionedCall2D
 dense_23/StatefulPartitionedCall dense_23/StatefulPartitionedCall2J
#embedding_6/StatefulPartitionedCall#embedding_6/StatefulPartitionedCall2F
!movie_emb/StatefulPartitionedCall!movie_emb/StatefulPartitionedCall2@
output/StatefulPartitionedCalloutput/StatefulPartitionedCall2D
 user_emb/StatefulPartitionedCall user_emb/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameuserID:PL
'
_output_shapes
:€€€€€€€€€
!
_user_specified_name	movieID:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
itemText:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
userText
а
t
J__inference_concatenate_12_layer_call_and_return_conditional_losses_375736

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€I2
concatc
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€I2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€F
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
к

Ґ
D__inference_user_emb_layer_call_and_return_conditional_losses_375693

inputs*
embedding_lookup_375687:	Ш/F
identityИҐembedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:€€€€€€€€€2
Castэ
embedding_lookupResourceGatherembedding_lookup_375687Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/375687*+
_output_shapes
:€€€€€€€€€F*
dtype02
embedding_lookupн
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/375687*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity†
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€F2
embedding_lookup/Identity_1Г
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€F2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
с
Ц
)__inference_dense_23_layer_call_fn_376685

inputs
unknown:@@
	unknown_0:@
identityИҐStatefulPartitionedCallф
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_23_layer_call_and_return_conditional_losses_3757922
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
‘
r
F__inference_multiply_6_layer_call_and_return_conditional_losses_376582
inputs_0
inputs_1
identityW
mulMulinputs_0inputs_1*
T0*'
_output_shapes
:€€€€€€€€€F2
mul[
IdentityIdentitymul:z:0*
T0*'
_output_shapes
:€€€€€€€€€F2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€F:€€€€€€€€€F:Q M
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€F
"
_user_specified_name
inputs/1
В
у
B__inference_output_layer_call_and_return_conditional_losses_376696

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpН
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2
MatMulМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpБ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€2	
Sigmoidf
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
”
ы
(__inference_model_6_layer_call_fn_376433
inputs_0
inputs_1
inputs_2
inputs_3
unknown:
НТd
	unknown_0:dF
	unknown_1:F
	unknown_2:	сF
	unknown_3:	Ш/F
	unknown_4:	П@
	unknown_5:@
	unknown_6:@@
	unknown_7:@
	unknown_8:@@
	unknown_9:@

unknown_10:@

unknown_11:
identityИҐStatefulPartitionedCallІ
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*/
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_model_6_layer_call_and_return_conditional_losses_3758162
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€<:€€€€€€€€€: : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:€€€€€€€€€<
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs/3"®L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*в
serving_defaultќ
=
itemText1
serving_default_itemText:0€€€€€€€€€<
;
movieID0
serving_default_movieID:0€€€€€€€€€
9
userID/
serving_default_userID:0€€€€€€€€€
=
userText1
serving_default_userText:0€€€€€€€€€:
output0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ыт
ґ
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-4
layer-15
layer_with_weights-5
layer-16
layer_with_weights-6
layer-17
layer_with_weights-7
layer-18
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api

signatures
+ў&call_and_return_all_conditional_losses
Џ_default_save_signature
џ__call__"
_tf_keras_network
6
_init_input_shape"
_tf_keras_input_layer
6
_init_input_shape"
_tf_keras_input_layer
Ј

embeddings
	variables
trainable_variables
regularization_losses
 	keras_api
+№&call_and_return_all_conditional_losses
Ё__call__"
_tf_keras_layer
Ј
!
embeddings
"	variables
#trainable_variables
$regularization_losses
%	keras_api
+ё&call_and_return_all_conditional_losses
я__call__"
_tf_keras_layer
љ

&kernel
'bias
(	variables
)trainable_variables
*regularization_losses
+	keras_api
+а&call_and_return_all_conditional_losses
б__call__"
_tf_keras_layer
6
,_init_input_shape"
_tf_keras_input_layer
І
-	variables
.trainable_variables
/regularization_losses
0	keras_api
+в&call_and_return_all_conditional_losses
г__call__"
_tf_keras_layer
І
1	variables
2trainable_variables
3regularization_losses
4	keras_api
+д&call_and_return_all_conditional_losses
е__call__"
_tf_keras_layer
Ј
5
embeddings
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+ж&call_and_return_all_conditional_losses
з__call__"
_tf_keras_layer
І
:	variables
;trainable_variables
<regularization_losses
=	keras_api
+и&call_and_return_all_conditional_losses
й__call__"
_tf_keras_layer
І
>	variables
?trainable_variables
@regularization_losses
A	keras_api
+к&call_and_return_all_conditional_losses
л__call__"
_tf_keras_layer
6
B_init_input_shape"
_tf_keras_input_layer
(
C	keras_api"
_tf_keras_layer
І
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
+м&call_and_return_all_conditional_losses
н__call__"
_tf_keras_layer
І
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
+о&call_and_return_all_conditional_losses
п__call__"
_tf_keras_layer
љ

Lkernel
Mbias
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
+р&call_and_return_all_conditional_losses
с__call__"
_tf_keras_layer
љ

Rkernel
Sbias
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
+т&call_and_return_all_conditional_losses
у__call__"
_tf_keras_layer
љ

Xkernel
Ybias
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
+ф&call_and_return_all_conditional_losses
х__call__"
_tf_keras_layer
љ

^kernel
_bias
`	variables
atrainable_variables
bregularization_losses
c	keras_api
+ц&call_and_return_all_conditional_losses
ч__call__"
_tf_keras_layer
„
diter

ebeta_1

fbeta_2
	gdecay
hlearning_ratemњ!mј&mЅ'm¬5m√LmƒMm≈Rm∆Sm«Xm»Ym…^m _mЋvћ!vЌ&vќ'vѕ5v–Lv—Mv“Rv”Sv‘Xv’Yv÷^v„_vЎ"
	optimizer
~
0
!1
&2
'3
54
L5
M6
R7
S8
X9
Y10
^11
_12"
trackable_list_wrapper
~
0
!1
&2
'3
54
L5
M6
R7
S8
X9
Y10
^11
_12"
trackable_list_wrapper
 "
trackable_list_wrapper
ќ
	variables
ilayer_regularization_losses
jnon_trainable_variables

klayers
lmetrics
trainable_variables
mlayer_metrics
regularization_losses
џ__call__
Џ_default_save_signature
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
-
шserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
*:(
НТd2embedding_6/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
	variables
nlayer_regularization_losses
onon_trainable_variables

players
qmetrics
trainable_variables
rlayer_metrics
regularization_losses
Ё__call__
+№&call_and_return_all_conditional_losses
'№"call_and_return_conditional_losses"
_generic_user_object
':%	сF2movie_emb/embeddings
'
!0"
trackable_list_wrapper
'
!0"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
"	variables
slayer_regularization_losses
tnon_trainable_variables

ulayers
vmetrics
#trainable_variables
wlayer_metrics
$regularization_losses
я__call__
+ё&call_and_return_all_conditional_losses
'ё"call_and_return_conditional_losses"
_generic_user_object
%:#dF2conv1d_6/kernel
:F2conv1d_6/bias
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
∞
(	variables
xlayer_regularization_losses
ynon_trainable_variables

zlayers
{metrics
)trainable_variables
|layer_metrics
*regularization_losses
б__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
-	variables
}layer_regularization_losses
~non_trainable_variables

layers
Аmetrics
.trainable_variables
Бlayer_metrics
/regularization_losses
г__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
1	variables
 Вlayer_regularization_losses
Гnon_trainable_variables
Дlayers
Еmetrics
2trainable_variables
Жlayer_metrics
3regularization_losses
е__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
&:$	Ш/F2user_emb/embeddings
'
50"
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
6	variables
 Зlayer_regularization_losses
Иnon_trainable_variables
Йlayers
Кmetrics
7trainable_variables
Лlayer_metrics
8regularization_losses
з__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
:	variables
 Мlayer_regularization_losses
Нnon_trainable_variables
Оlayers
Пmetrics
;trainable_variables
Рlayer_metrics
<regularization_losses
й__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
>	variables
 Сlayer_regularization_losses
Тnon_trainable_variables
Уlayers
Фmetrics
?trainable_variables
Хlayer_metrics
@regularization_losses
л__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
D	variables
 Цlayer_regularization_losses
Чnon_trainable_variables
Шlayers
Щmetrics
Etrainable_variables
Ъlayer_metrics
Fregularization_losses
н__call__
+м&call_and_return_all_conditional_losses
'м"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
H	variables
 Ыlayer_regularization_losses
Ьnon_trainable_variables
Эlayers
Юmetrics
Itrainable_variables
Яlayer_metrics
Jregularization_losses
п__call__
+о&call_and_return_all_conditional_losses
'о"call_and_return_conditional_losses"
_generic_user_object
": 	П@2dense_21/kernel
:@2dense_21/bias
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
µ
N	variables
 †layer_regularization_losses
°non_trainable_variables
Ґlayers
£metrics
Otrainable_variables
§layer_metrics
Pregularization_losses
с__call__
+р&call_and_return_all_conditional_losses
'р"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_22/kernel
:@2dense_22/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
T	variables
 •layer_regularization_losses
¶non_trainable_variables
Іlayers
®metrics
Utrainable_variables
©layer_metrics
Vregularization_losses
у__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
!:@@2dense_23/kernel
:@2dense_23/bias
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
Z	variables
 ™layer_regularization_losses
Ђnon_trainable_variables
ђlayers
≠metrics
[trainable_variables
Ѓlayer_metrics
\regularization_losses
х__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
:@2output/kernel
:2output/bias
.
^0
_1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
`	variables
 ѓlayer_regularization_losses
∞non_trainable_variables
±layers
≤metrics
atrainable_variables
≥layer_metrics
bregularization_losses
ч__call__
+ц&call_and_return_all_conditional_losses
'ц"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ѓ
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
10
11
12
13
14
15
16
17
18"
trackable_list_wrapper
0
і0
µ1"
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
R

ґtotal

Јcount
Є	variables
є	keras_api"
_tf_keras_metric
c

Їtotal

їcount
Љ
_fn_kwargs
љ	variables
Њ	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
ґ0
Ј1"
trackable_list_wrapper
.
Є	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ї0
ї1"
trackable_list_wrapper
.
љ	variables"
_generic_user_object
/:-
НТd2Adam/embedding_6/embeddings/m
,:*	сF2Adam/movie_emb/embeddings/m
*:(dF2Adam/conv1d_6/kernel/m
 :F2Adam/conv1d_6/bias/m
+:)	Ш/F2Adam/user_emb/embeddings/m
':%	П@2Adam/dense_21/kernel/m
 :@2Adam/dense_21/bias/m
&:$@@2Adam/dense_22/kernel/m
 :@2Adam/dense_22/bias/m
&:$@@2Adam/dense_23/kernel/m
 :@2Adam/dense_23/bias/m
$:"@2Adam/output/kernel/m
:2Adam/output/bias/m
/:-
НТd2Adam/embedding_6/embeddings/v
,:*	сF2Adam/movie_emb/embeddings/v
*:(dF2Adam/conv1d_6/kernel/v
 :F2Adam/conv1d_6/bias/v
+:)	Ш/F2Adam/user_emb/embeddings/v
':%	П@2Adam/dense_21/kernel/v
 :@2Adam/dense_21/bias/v
&:$@@2Adam/dense_22/kernel/v
 :@2Adam/dense_22/bias/v
&:$@@2Adam/dense_23/kernel/v
 :@2Adam/dense_23/bias/v
$:"@2Adam/output/kernel/v
:2Adam/output/bias/v
Џ2„
C__inference_model_6_layer_call_and_return_conditional_losses_376322
C__inference_model_6_layer_call_and_return_conditional_losses_376399
C__inference_model_6_layer_call_and_return_conditional_losses_376155
C__inference_model_6_layer_call_and_return_conditional_losses_376203ј
Ј≤≥
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

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
иBе
!__inference__wrapped_model_375596userIDmovieIDitemTextuserText"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
(__inference_model_6_layer_call_fn_375845
(__inference_model_6_layer_call_fn_376433
(__inference_model_6_layer_call_fn_376467
(__inference_model_6_layer_call_fn_376107ј
Ј≤≥
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

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
с2о
G__inference_embedding_6_layer_call_and_return_conditional_losses_376477Ґ
Щ≤Х
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
annotations™ *
 
÷2”
,__inference_embedding_6_layer_call_fn_376484Ґ
Щ≤Х
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
annotations™ *
 
п2м
E__inference_movie_emb_layer_call_and_return_conditional_losses_376494Ґ
Щ≤Х
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
annotations™ *
 
‘2—
*__inference_movie_emb_layer_call_fn_376501Ґ
Щ≤Х
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
annotations™ *
 
о2л
D__inference_conv1d_6_layer_call_and_return_conditional_losses_376517Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_conv1d_6_layer_call_fn_376526Ґ
Щ≤Х
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
annotations™ *
 
р2н
F__inference_flatten_13_layer_call_and_return_conditional_losses_376532Ґ
Щ≤Х
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
annotations™ *
 
’2“
+__inference_flatten_13_layer_call_fn_376537Ґ
Щ≤Х
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
annotations™ *
 
е2в
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_376543
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_376549ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ѓ2ђ
;__inference_global_average_pooling1d_6_layer_call_fn_376554
;__inference_global_average_pooling1d_6_layer_call_fn_376559ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_user_emb_layer_call_and_return_conditional_losses_376569Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_user_emb_layer_call_fn_376576Ґ
Щ≤Х
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
annotations™ *
 
р2н
F__inference_multiply_6_layer_call_and_return_conditional_losses_376582Ґ
Щ≤Х
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
annotations™ *
 
’2“
+__inference_multiply_6_layer_call_fn_376588Ґ
Щ≤Х
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
annotations™ *
 
р2н
F__inference_flatten_12_layer_call_and_return_conditional_losses_376594Ґ
Щ≤Х
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
annotations™ *
 
’2“
+__inference_flatten_12_layer_call_fn_376599Ґ
Щ≤Х
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
annotations™ *
 
ф2с
J__inference_concatenate_12_layer_call_and_return_conditional_losses_376606Ґ
Щ≤Х
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
annotations™ *
 
ў2÷
/__inference_concatenate_12_layer_call_fn_376612Ґ
Щ≤Х
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
annotations™ *
 
ф2с
J__inference_concatenate_13_layer_call_and_return_conditional_losses_376619Ґ
Щ≤Х
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
annotations™ *
 
ў2÷
/__inference_concatenate_13_layer_call_fn_376625Ґ
Щ≤Х
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
annotations™ *
 
о2л
D__inference_dense_21_layer_call_and_return_conditional_losses_376636Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_dense_21_layer_call_fn_376645Ґ
Щ≤Х
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
annotations™ *
 
о2л
D__inference_dense_22_layer_call_and_return_conditional_losses_376656Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_dense_22_layer_call_fn_376665Ґ
Щ≤Х
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
annotations™ *
 
о2л
D__inference_dense_23_layer_call_and_return_conditional_losses_376676Ґ
Щ≤Х
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
annotations™ *
 
”2–
)__inference_dense_23_layer_call_fn_376685Ґ
Щ≤Х
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
annotations™ *
 
м2й
B__inference_output_layer_call_and_return_conditional_losses_376696Ґ
Щ≤Х
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
annotations™ *
 
—2ќ
'__inference_output_layer_call_fn_376705Ґ
Щ≤Х
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
annotations™ *
 
еBв
$__inference_signature_wrapper_376245itemTextmovieIDuserIDuserText"Ф
Н≤Й
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
annotations™ *
 Н
!__inference__wrapped_model_375596з&'!5LMRSXY^_§Ґ†
ШҐФ
СЪН
 К
userID€€€€€€€€€
!К
movieID€€€€€€€€€
"К
itemText€€€€€€€€€<
"К
userText€€€€€€€€€
™ "/™,
*
output К
output€€€€€€€€€“
J__inference_concatenate_12_layer_call_and_return_conditional_losses_376606ГZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€F
"К
inputs/1€€€€€€€€€
™ "%Ґ"
К
0€€€€€€€€€I
Ъ ©
/__inference_concatenate_12_layer_call_fn_376612vZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€F
"К
inputs/1€€€€€€€€€
™ "К€€€€€€€€€I”
J__inference_concatenate_13_layer_call_and_return_conditional_losses_376619ДZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€F
"К
inputs/1€€€€€€€€€I
™ "&Ґ#
К
0€€€€€€€€€П
Ъ ™
/__inference_concatenate_13_layer_call_fn_376625wZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€F
"К
inputs/1€€€€€€€€€I
™ "К€€€€€€€€€Пђ
D__inference_conv1d_6_layer_call_and_return_conditional_losses_376517d&'3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€<d
™ ")Ґ&
К
0€€€€€€€€€8F
Ъ Д
)__inference_conv1d_6_layer_call_fn_376526W&'3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€<d
™ "К€€€€€€€€€8F•
D__inference_dense_21_layer_call_and_return_conditional_losses_376636]LM0Ґ-
&Ґ#
!К
inputs€€€€€€€€€П
™ "%Ґ"
К
0€€€€€€€€€@
Ъ }
)__inference_dense_21_layer_call_fn_376645PLM0Ґ-
&Ґ#
!К
inputs€€€€€€€€€П
™ "К€€€€€€€€€@§
D__inference_dense_22_layer_call_and_return_conditional_losses_376656\RS/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ |
)__inference_dense_22_layer_call_fn_376665ORS/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@§
D__inference_dense_23_layer_call_and_return_conditional_losses_376676\XY/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€@
Ъ |
)__inference_dense_23_layer_call_fn_376685OXY/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€@™
G__inference_embedding_6_layer_call_and_return_conditional_losses_376477_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€<
™ ")Ґ&
К
0€€€€€€€€€<d
Ъ В
,__inference_embedding_6_layer_call_fn_376484R/Ґ,
%Ґ"
 К
inputs€€€€€€€€€<
™ "К€€€€€€€€€<d¶
F__inference_flatten_12_layer_call_and_return_conditional_losses_376594\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€F
™ "%Ґ"
К
0€€€€€€€€€F
Ъ ~
+__inference_flatten_12_layer_call_fn_376599O3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€F
™ "К€€€€€€€€€F¶
F__inference_flatten_13_layer_call_and_return_conditional_losses_376532\3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€F
™ "%Ґ"
К
0€€€€€€€€€F
Ъ ~
+__inference_flatten_13_layer_call_fn_376537O3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€F
™ "К€€€€€€€€€F’
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_376543{IҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ ".Ґ+
$К!
0€€€€€€€€€€€€€€€€€€
Ъ Ї
V__inference_global_average_pooling1d_6_layer_call_and_return_conditional_losses_376549`7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€8F

 
™ "%Ґ"
К
0€€€€€€€€€F
Ъ ≠
;__inference_global_average_pooling1d_6_layer_call_fn_376554nIҐF
?Ґ<
6К3
inputs'€€€€€€€€€€€€€€€€€€€€€€€€€€€

 
™ "!К€€€€€€€€€€€€€€€€€€Т
;__inference_global_average_pooling1d_6_layer_call_fn_376559S7Ґ4
-Ґ*
$К!
inputs€€€€€€€€€8F

 
™ "К€€€€€€€€€F≠
C__inference_model_6_layer_call_and_return_conditional_losses_376155е&'!5LMRSXY^_ђҐ®
†ҐЬ
СЪН
 К
userID€€€€€€€€€
!К
movieID€€€€€€€€€
"К
itemText€€€€€€€€€<
"К
userText€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ≠
C__inference_model_6_layer_call_and_return_conditional_losses_376203е&'!5LMRSXY^_ђҐ®
†ҐЬ
СЪН
 К
userID€€€€€€€€€
!К
movieID€€€€€€€€€
"К
itemText€€€€€€€€€<
"К
userText€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∞
C__inference_model_6_layer_call_and_return_conditional_losses_376322и&'!5LMRSXY^_ѓҐЂ
£ҐЯ
ФЪР
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
"К
inputs/2€€€€€€€€€<
"К
inputs/3€€€€€€€€€
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ∞
C__inference_model_6_layer_call_and_return_conditional_losses_376399и&'!5LMRSXY^_ѓҐЂ
£ҐЯ
ФЪР
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
"К
inputs/2€€€€€€€€€<
"К
inputs/3€€€€€€€€€
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Е
(__inference_model_6_layer_call_fn_375845Ў&'!5LMRSXY^_ђҐ®
†ҐЬ
СЪН
 К
userID€€€€€€€€€
!К
movieID€€€€€€€€€
"К
itemText€€€€€€€€€<
"К
userText€€€€€€€€€
p 

 
™ "К€€€€€€€€€Е
(__inference_model_6_layer_call_fn_376107Ў&'!5LMRSXY^_ђҐ®
†ҐЬ
СЪН
 К
userID€€€€€€€€€
!К
movieID€€€€€€€€€
"К
itemText€€€€€€€€€<
"К
userText€€€€€€€€€
p

 
™ "К€€€€€€€€€И
(__inference_model_6_layer_call_fn_376433џ&'!5LMRSXY^_ѓҐЂ
£ҐЯ
ФЪР
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
"К
inputs/2€€€€€€€€€<
"К
inputs/3€€€€€€€€€
p 

 
™ "К€€€€€€€€€И
(__inference_model_6_layer_call_fn_376467џ&'!5LMRSXY^_ѓҐЂ
£ҐЯ
ФЪР
"К
inputs/0€€€€€€€€€
"К
inputs/1€€€€€€€€€
"К
inputs/2€€€€€€€€€<
"К
inputs/3€€€€€€€€€
p

 
™ "К€€€€€€€€€®
E__inference_movie_emb_layer_call_and_return_conditional_losses_376494_!/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€F
Ъ А
*__inference_movie_emb_layer_call_fn_376501R!/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€Fќ
F__inference_multiply_6_layer_call_and_return_conditional_losses_376582ГZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€F
"К
inputs/1€€€€€€€€€F
™ "%Ґ"
К
0€€€€€€€€€F
Ъ •
+__inference_multiply_6_layer_call_fn_376588vZҐW
PҐM
KЪH
"К
inputs/0€€€€€€€€€F
"К
inputs/1€€€€€€€€€F
™ "К€€€€€€€€€FҐ
B__inference_output_layer_call_and_return_conditional_losses_376696\^_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "%Ґ"
К
0€€€€€€€€€
Ъ z
'__inference_output_layer_call_fn_376705O^_/Ґ,
%Ґ"
 К
inputs€€€€€€€€€@
™ "К€€€€€€€€€ґ
$__inference_signature_wrapper_376245Н&'!5LMRSXY^_ Ґ∆
Ґ 
Њ™Ї
.
itemText"К
itemText€€€€€€€€€<
,
movieID!К
movieID€€€€€€€€€
*
userID К
userID€€€€€€€€€
.
userText"К
userText€€€€€€€€€"/™,
*
output К
output€€€€€€€€€І
D__inference_user_emb_layer_call_and_return_conditional_losses_376569_5/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ")Ґ&
К
0€€€€€€€€€F
Ъ 
)__inference_user_emb_layer_call_fn_376576R5/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "К€€€€€€€€€F