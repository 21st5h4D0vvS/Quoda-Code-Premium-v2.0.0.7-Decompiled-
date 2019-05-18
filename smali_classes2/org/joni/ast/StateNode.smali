.class public abstract Lorg/joni/ast/StateNode;
.super Lorg/joni/ast/Node;
.source "StateNode.java"

# interfaces
.implements Lorg/joni/constants/NodeStatus;


# instance fields
.field protected state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/joni/ast/Node;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddrFixed()V
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 170
    return-void
.end method

.method public clearByNumber()V
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 230
    return-void
.end method

.method public clearCAlled()V
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 158
    return-void
.end method

.method public clearCLenFixed()V
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 86
    return-void
.end method

.method public clearInRepeat()V
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 206
    return-void
.end method

.method public clearMark1()V
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 98
    return-void
.end method

.method public clearMark2()V
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 110
    return-void
.end method

.method public clearMaxFixed()V
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 74
    return-void
.end method

.method public clearMemBackrefed()V
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 122
    return-void
.end method

.method public clearMinFixed()V
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 62
    return-void
.end method

.method public clearNameRef()V
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 194
    return-void
.end method

.method public clearNamedGroup()V
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 182
    return-void
.end method

.method public clearNestLevel()V
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 218
    return-void
.end method

.method public clearRecursion()V
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 146
    return-void
.end method

.method public clearStopBtSimpleRepeat()V
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 134
    return-void
.end method

.method public isAddrFixed()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isByNumber()Z
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCLenFixed()Z
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCalled()Z
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInRepeat()Z
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMark1()Z
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMark2()Z
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaxFixed()Z
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemBackrefed()Z
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMinFixed()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNameRef()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNamedGroup()Z
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNestLevel()Z
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecursion()Z
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStopBtSimpleRepeat()Z
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAddrFixed()V
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 166
    return-void
.end method

.method public setByNumber()V
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 226
    return-void
.end method

.method public setCLenFixed()V
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 82
    return-void
.end method

.method public setCalled()V
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 154
    return-void
.end method

.method public setInRepeat()V
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 202
    return-void
.end method

.method public setMark1()V
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 94
    return-void
.end method

.method public setMark2()V
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 106
    return-void
.end method

.method public setMaxFixed()V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 70
    return-void
.end method

.method public setMemBackrefed()V
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 118
    return-void
.end method

.method public setMinFixed()V
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 58
    return-void
.end method

.method public setNameRef()V
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 190
    return-void
.end method

.method public setNamedGroup()V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 178
    return-void
.end method

.method public setNestLevel()V
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 214
    return-void
.end method

.method public setRecursion()V
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 142
    return-void
.end method

.method public setStopBtSimpleRepeat()V
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lorg/joni/ast/StateNode;->state:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/joni/ast/StateNode;->state:I

    .line 130
    return-void
.end method

.method public stateToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "states":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isMinFixed()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MIN_FIXED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    :cond_0
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isMaxFixed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MAX_FIXED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_1
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isMark1()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MARK1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_2
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isMark2()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "MARK2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :cond_3
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isMemBackrefed()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "MEM_BACKREFED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_4
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isStopBtSimpleRepeat()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "STOP_BT_SIMPLE_REPEAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_5
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isRecursion()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "RECURSION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_6
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isCalled()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "CALLED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :cond_7
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isAddrFixed()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ADDR_FIXED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_8
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isNamedGroup()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "NAMED_GROUP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    :cond_9
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isNameRef()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "NAME_REF "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    :cond_a
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isInRepeat()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "IN_REPEAT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    :cond_b
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isNestLevel()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "NEST_LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_c
    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->isByNumber()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "BY_NUMBER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n  state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/joni/ast/StateNode;->stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
