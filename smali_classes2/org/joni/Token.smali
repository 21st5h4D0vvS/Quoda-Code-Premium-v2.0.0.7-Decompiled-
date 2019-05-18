.class final Lorg/joni/Token;
.super Ljava/lang/Object;
.source "Token.java"


# instance fields
.field private INT1:I

.field private INT2:I

.field private INT3:I

.field private INT4:I

.field private INT5:I

.field private INTA1:[I

.field backP:I

.field base:I

.field escaped:Z

.field type:Lorg/joni/constants/TokenType;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAnchor()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getBackrefByName()Z
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/joni/Token;->INT3:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBackrefExistLevel()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lorg/joni/Token;->INT4:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getBackrefLevel()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/joni/Token;->INT5:I

    return v0
.end method

.method getBackrefNum()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getBackrefRef1()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/joni/Token;->INT2:I

    return v0
.end method

.method getBackrefRefs()[I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/joni/Token;->INTA1:[I

    return-object v0
.end method

.method getC()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getCallGNum()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/joni/Token;->INT3:I

    return v0
.end method

.method getCallNameEnd()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/joni/Token;->INT2:I

    return v0
.end method

.method getCallNameP()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getPropCType()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getPropNot()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/joni/Token;->INT2:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRepeatGreedy()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/joni/Token;->INT3:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRepeatLower()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method getRepeatPossessive()Z
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/joni/Token;->INT4:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRepeatUpper()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/joni/Token;->INT2:I

    return v0
.end method

.method getSubtype()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/joni/Token;->INT1:I

    return v0
.end method

.method setAnchor(I)V
    .locals 0
    .param p1, "anchor"    # I

    .prologue
    .line 53
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 54
    return-void
.end method

.method setBackrefByName(Z)V
    .locals 1
    .param p1, "byName"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/joni/Token;->INT3:I

    .line 119
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBackrefExistLevel(Z)V
    .locals 1
    .param p1, "existLevel"    # Z

    .prologue
    .line 126
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/joni/Token;->INT4:I

    .line 127
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBackrefLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 133
    iput p1, p0, Lorg/joni/Token;->INT5:I

    .line 134
    return-void
.end method

.method setBackrefNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 97
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 98
    return-void
.end method

.method setBackrefRef1(I)V
    .locals 0
    .param p1, "ref1"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/joni/Token;->INT2:I

    .line 105
    return-void
.end method

.method setBackrefRefs([I)V
    .locals 0
    .param p1, "refs"    # [I

    .prologue
    .line 111
    iput-object p1, p0, Lorg/joni/Token;->INTA1:[I

    .line 112
    return-void
.end method

.method setC(I)V
    .locals 0
    .param p1, "c"    # I

    .prologue
    .line 39
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 40
    return-void
.end method

.method setCallGNum(I)V
    .locals 0
    .param p1, "gnum"    # I

    .prologue
    .line 155
    iput p1, p0, Lorg/joni/Token;->INT3:I

    .line 156
    return-void
.end method

.method setCallNameEnd(I)V
    .locals 0
    .param p1, "nameEnd"    # I

    .prologue
    .line 148
    iput p1, p0, Lorg/joni/Token;->INT2:I

    .line 149
    return-void
.end method

.method setCallNameP(I)V
    .locals 0
    .param p1, "nameP"    # I

    .prologue
    .line 141
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 142
    return-void
.end method

.method setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 46
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 47
    return-void
.end method

.method setPropCType(I)V
    .locals 0
    .param p1, "ctype"    # I

    .prologue
    .line 163
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 164
    return-void
.end method

.method setPropNot(Z)V
    .locals 1
    .param p1, "not"    # Z

    .prologue
    .line 170
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/joni/Token;->INT2:I

    .line 171
    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRepeatGreedy(Z)V
    .locals 1
    .param p1, "greedy"    # Z

    .prologue
    .line 82
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/joni/Token;->INT3:I

    .line 83
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRepeatLower(I)V
    .locals 0
    .param p1, "lower"    # I

    .prologue
    .line 68
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 69
    return-void
.end method

.method setRepeatPossessive(Z)V
    .locals 1
    .param p1, "possessive"    # Z

    .prologue
    .line 89
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lorg/joni/Token;->INT4:I

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setRepeatUpper(I)V
    .locals 0
    .param p1, "upper"    # I

    .prologue
    .line 75
    iput p1, p0, Lorg/joni/Token;->INT2:I

    .line 76
    return-void
.end method

.method setSubtype(I)V
    .locals 0
    .param p1, "subtype"    # I

    .prologue
    .line 60
    iput p1, p0, Lorg/joni/Token;->INT1:I

    .line 61
    return-void
.end method
