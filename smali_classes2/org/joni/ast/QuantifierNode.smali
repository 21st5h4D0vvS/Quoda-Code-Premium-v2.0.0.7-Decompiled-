.class public final Lorg/joni/ast/QuantifierNode;
.super Lorg/joni/ast/StateNode;
.source "QuantifierNode.java"


# static fields
.field public static final REPEAT_INFINITE:I = -0x1


# instance fields
.field public combExpCheckNum:I

.field public greedy:Z

.field public headExact:Lorg/joni/ast/Node;

.field public isRefered:Z

.field public lower:I

.field public nextHeadExact:Lorg/joni/ast/Node;

.field public target:Lorg/joni/ast/Node;

.field public targetEmptyInfo:I

.field public upper:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 1
    .param p1, "lower"    # I
    .param p2, "upper"    # I
    .param p3, "byNumber"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/joni/ast/StateNode;-><init>()V

    .line 44
    iput p1, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 45
    iput p2, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 49
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/joni/ast/QuantifierNode;->setByNumber()V

    .line 50
    :cond_0
    return-void
.end method

.method public static isRepeatInfinite(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 274
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertToString(I)Lorg/joni/ast/StringNode;
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 73
    new-instance v0, Lorg/joni/ast/StringNode;

    invoke-direct {v0}, Lorg/joni/ast/StringNode;-><init>()V

    .line 74
    .local v0, "sn":Lorg/joni/ast/StringNode;
    iput p1, v0, Lorg/joni/ast/StringNode;->flag:I

    .line 75
    invoke-virtual {v0, p0}, Lorg/joni/ast/StringNode;->swap(Lorg/joni/ast/Node;)V

    .line 76
    return-object v0
.end method

.method protected getChild()Lorg/joni/ast/Node;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "Quantifier"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x5

    return v0
.end method

.method public isAnyCharStar()Z
    .locals 2

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v0}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v0}, Lorg/joni/ast/Node;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected popularNum()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-boolean v1, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v1, :cond_4

    .line 107
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v1, :cond_3

    .line 108
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    .line 121
    :cond_0
    :goto_0
    return v0

    .line 109
    :cond_1
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v1}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 110
    :cond_3
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v1, v0, :cond_2

    .line 111
    iget v0, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v0}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 114
    :cond_4
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v1, :cond_6

    .line 115
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v1, v0, :cond_5

    const/4 v0, 0x3

    goto :goto_0

    .line 116
    :cond_5
    iget v0, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v0}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 117
    :cond_6
    iget v1, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v1, v0, :cond_2

    .line 118
    iget v0, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v0}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0
.end method

.method public reduceNestedQuantifier(Lorg/joni/ast/QuantifierNode;)V
    .locals 7
    .param p1, "other"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Lorg/joni/ast/QuantifierNode;->popularNum()I

    move-result v1

    .line 142
    .local v1, "pnum":I
    invoke-virtual {p1}, Lorg/joni/ast/QuantifierNode;->popularNum()I

    move-result v0

    .line 144
    .local v0, "cnum":I
    if-ltz v1, :cond_0

    if-gez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    sget-object v2, Lorg/joni/ast/QuantifierNode$1;->$SwitchMap$org$joni$constants$Reduce$ReduceType:[I

    sget-object v3, Lorg/joni/constants/Reduce;->REDUCE_TABLE:[[Lorg/joni/constants/Reduce$ReduceType;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/joni/constants/Reduce$ReduceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/joni/ast/QuantifierNode;->set(Lorg/joni/ast/QuantifierNode;)V

    goto :goto_1

    .line 154
    :pswitch_1
    iget-object v2, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 155
    iput v4, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 156
    iput v6, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 157
    iput-boolean v5, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    goto :goto_1

    .line 161
    :pswitch_2
    iget-object v2, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 162
    iput v4, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 163
    iput v6, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 164
    iput-boolean v4, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    goto :goto_1

    .line 168
    :pswitch_3
    iget-object v2, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 169
    iput v4, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 170
    iput v5, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 171
    iput-boolean v4, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    goto :goto_1

    .line 175
    :pswitch_4
    invoke-virtual {p0, p1}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 176
    iput v4, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 177
    iput v5, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 178
    iput-boolean v4, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    .line 179
    iput v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 180
    iput v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 181
    iput-boolean v5, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    goto :goto_0

    .line 185
    :pswitch_5
    invoke-virtual {p0, p1}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 186
    iput v4, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 187
    iput v5, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 188
    iput-boolean v5, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    .line 189
    iput v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 190
    iput v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 191
    iput-boolean v4, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    goto :goto_0

    .line 195
    :pswitch_6
    invoke-virtual {p0, p1}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected set(Lorg/joni/ast/QuantifierNode;)V
    .locals 1
    .param p1, "other"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    .line 125
    iget-object v0, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v0}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    .line 127
    iget v0, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    iput v0, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    .line 128
    iget v0, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    iput v0, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    .line 129
    iget-boolean v0, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    iput-boolean v0, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    .line 130
    iget v0, p1, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    iput v0, p0, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 134
    iget-object v0, p1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    iput-object v0, p0, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    .line 135
    iget-object v0, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    iput-object v0, p0, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    .line 136
    iget-boolean v0, p1, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    iput-boolean v0, p0, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    .line 137
    iget v0, p1, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    iput v0, p0, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    .line 138
    return-void
.end method

.method protected setChild(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "newChild"    # Lorg/joni/ast/Node;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    .line 60
    return-void
.end method

.method public setQuantifier(Lorg/joni/ast/Node;ZLorg/joni/ScanEnvironment;[BII)I
    .locals 9
    .param p1, "tgt"    # Lorg/joni/ast/Node;
    .param p2, "group"    # Z
    .param p3, "env"    # Lorg/joni/ScanEnvironment;
    .param p4, "bytes"    # [B
    .param p5, "p"    # I
    .param p6, "end"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 203
    iget v8, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v8, v5, :cond_1

    iget v8, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v8, v5, :cond_1

    .line 204
    iget-object v6, p3, Lorg/joni/ScanEnvironment;->syntax:Lorg/joni/Syntax;

    invoke-virtual {v6}, Lorg/joni/Syntax;->op2OptionECMAScript()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    .line 269
    :cond_0
    :goto_0
    return v5

    .line 210
    :cond_1
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 268
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    move v5, v7

    .line 269
    goto :goto_0

    .line 213
    :sswitch_0
    if-nez p2, :cond_2

    move-object v3, p1

    .line 214
    check-cast v3, Lorg/joni/ast/StringNode;

    .line 215
    .local v3, "sn":Lorg/joni/ast/StringNode;
    iget-object v5, p3, Lorg/joni/ScanEnvironment;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v5}, Lorg/joni/ast/StringNode;->canBeSplit(Lorg/jcodings/Encoding;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    iget-object v5, p3, Lorg/joni/ScanEnvironment;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v3, v5}, Lorg/joni/ast/StringNode;->splitLastChar(Lorg/jcodings/Encoding;)Lorg/joni/ast/StringNode;

    move-result-object v0

    .line 217
    .local v0, "n":Lorg/joni/ast/StringNode;
    if-eqz v0, :cond_2

    .line 218
    invoke-virtual {p0, v0}, Lorg/joni/ast/QuantifierNode;->setTarget(Lorg/joni/ast/Node;)V

    move v5, v6

    .line 219
    goto :goto_0

    .end local v0    # "n":Lorg/joni/ast/StringNode;
    .end local v3    # "sn":Lorg/joni/ast/StringNode;
    :sswitch_1
    move-object v2, p1

    .line 228
    check-cast v2, Lorg/joni/ast/QuantifierNode;

    .line 229
    .local v2, "qnt":Lorg/joni/ast/QuantifierNode;
    invoke-virtual {p0}, Lorg/joni/ast/QuantifierNode;->popularNum()I

    move-result v1

    .line 230
    .local v1, "nestQNum":I
    invoke-virtual {v2}, Lorg/joni/ast/QuantifierNode;->popularNum()I

    move-result v4

    .line 252
    .local v4, "targetQNum":I
    if-ltz v4, :cond_2

    .line 253
    if-ltz v1, :cond_3

    .line 254
    invoke-virtual {p0, v2}, Lorg/joni/ast/QuantifierNode;->reduceNestedQuantifier(Lorg/joni/ast/QuantifierNode;)V

    move v5, v7

    .line 255
    goto :goto_0

    .line 256
    :cond_3
    if-eq v4, v5, :cond_4

    if-ne v4, v6, :cond_2

    .line 258
    :cond_4
    iget v6, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v6}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    if-le v6, v5, :cond_2

    iget-boolean v6, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v6, :cond_2

    .line 259
    iget v6, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v6, :cond_5

    :goto_2
    iput v5, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    goto :goto_1

    :cond_5
    iget v5, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    goto :goto_2

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public setTarget(Lorg/joni/ast/Node;)V
    .locals 0
    .param p1, "tgt"    # Lorg/joni/ast/Node;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    .line 69
    iput-object p0, p1, Lorg/joni/ast/Node;->parent:Lorg/joni/ast/Node;

    .line 70
    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0, p1}, Lorg/joni/ast/StateNode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "value":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/QuantifierNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  lower: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  upper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  greedy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/joni/ast/QuantifierNode;->greedy:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  targetEmptyInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  headExact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/QuantifierNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  nextHeadExact: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Lorg/joni/ast/QuantifierNode;->pad(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  isRefered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n  combExpCheckNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
