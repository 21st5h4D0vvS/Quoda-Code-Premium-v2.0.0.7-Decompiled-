.class final Lorg/joni/StackEntry;
.super Ljava/lang/Object;
.source "StackEntry.java"


# instance fields
.field private E1:I

.field private E2:I

.field private E3:I

.field private E4:I

.field type:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method decreaseRepeatCount()V
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/joni/StackEntry;->E1:I

    .line 66
    return-void
.end method

.method getCallFrameNum()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lorg/joni/StackEntry;->E2:I

    return v0
.end method

.method getCallFramePStr()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/joni/StackEntry;->E3:I

    return v0
.end method

.method getCallFrameRetAddr()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    return v0
.end method

.method getMemEnd()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/joni/StackEntry;->E4:I

    return v0
.end method

.method getMemNum()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    return v0
.end method

.method getMemPStr()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lorg/joni/StackEntry;->E2:I

    return v0
.end method

.method getMemStart()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lorg/joni/StackEntry;->E3:I

    return v0
.end method

.method getNullCheckNum()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    return v0
.end method

.method getNullCheckPStr()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lorg/joni/StackEntry;->E2:I

    return v0
.end method

.method getRepeatCount()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    return v0
.end method

.method getRepeatNum()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/joni/StackEntry;->E3:I

    return v0
.end method

.method getRepeatPCode()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/joni/StackEntry;->E2:I

    return v0
.end method

.method getSi()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    return v0
.end method

.method getStateCheck()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/joni/StackEntry;->E4:I

    return v0
.end method

.method getStatePCode()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    return v0
.end method

.method getStatePStr()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lorg/joni/StackEntry;->E2:I

    return v0
.end method

.method getStatePStrPrev()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lorg/joni/StackEntry;->E3:I

    return v0
.end method

.method increaseRepeatCount()V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/joni/StackEntry;->E1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/StackEntry;->E1:I

    .line 69
    return-void
.end method

.method setCallFrameNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 152
    iput p1, p0, Lorg/joni/StackEntry;->E2:I

    .line 153
    return-void
.end method

.method setCallFramePStr(I)V
    .locals 0
    .param p1, "pstr"    # I

    .prologue
    .line 159
    iput p1, p0, Lorg/joni/StackEntry;->E3:I

    .line 160
    return-void
.end method

.method setCallFrameRetAddr(I)V
    .locals 0
    .param p1, "addr"    # I

    .prologue
    .line 145
    iput p1, p0, Lorg/joni/StackEntry;->E1:I

    .line 146
    return-void
.end method

.method setMemEnd(I)V
    .locals 0
    .param p1, "end"    # I

    .prologue
    .line 120
    iput p1, p0, Lorg/joni/StackEntry;->E4:I

    .line 121
    return-void
.end method

.method setMemNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/joni/StackEntry;->E1:I

    .line 98
    return-void
.end method

.method setMemPstr(I)V
    .locals 0
    .param p1, "pstr"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/joni/StackEntry;->E2:I

    .line 105
    return-void
.end method

.method setMemStart(I)V
    .locals 0
    .param p1, "start"    # I

    .prologue
    .line 113
    iput p1, p0, Lorg/joni/StackEntry;->E3:I

    .line 114
    return-void
.end method

.method setNullCheckNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 129
    iput p1, p0, Lorg/joni/StackEntry;->E1:I

    .line 130
    return-void
.end method

.method setNullCheckPStr(I)V
    .locals 0
    .param p1, "pstr"    # I

    .prologue
    .line 136
    iput p1, p0, Lorg/joni/StackEntry;->E2:I

    .line 137
    return-void
.end method

.method setRepeatCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 59
    iput p1, p0, Lorg/joni/StackEntry;->E1:I

    .line 60
    return-void
.end method

.method setRepeatNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 79
    iput p1, p0, Lorg/joni/StackEntry;->E3:I

    .line 80
    return-void
.end method

.method setRepeatPCode(I)V
    .locals 0
    .param p1, "pcode"    # I

    .prologue
    .line 72
    iput p1, p0, Lorg/joni/StackEntry;->E2:I

    .line 73
    return-void
.end method

.method setSi(I)V
    .locals 0
    .param p1, "si"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/joni/StackEntry;->E1:I

    .line 89
    return-void
.end method

.method setStateCheck(I)V
    .locals 0
    .param p1, "check"    # I

    .prologue
    .line 50
    iput p1, p0, Lorg/joni/StackEntry;->E4:I

    .line 51
    return-void
.end method

.method setStatePCode(I)V
    .locals 0
    .param p1, "pcode"    # I

    .prologue
    .line 29
    iput p1, p0, Lorg/joni/StackEntry;->E1:I

    .line 30
    return-void
.end method

.method setStatePStr(I)V
    .locals 0
    .param p1, "pstr"    # I

    .prologue
    .line 36
    iput p1, p0, Lorg/joni/StackEntry;->E2:I

    .line 37
    return-void
.end method

.method setStatePStrPrev(I)V
    .locals 0
    .param p1, "pstrPrev"    # I

    .prologue
    .line 43
    iput p1, p0, Lorg/joni/StackEntry;->E3:I

    .line 44
    return-void
.end method
