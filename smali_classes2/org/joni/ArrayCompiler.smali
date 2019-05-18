.class final Lorg/joni/ArrayCompiler;
.super Lorg/joni/Compiler;
.source "ArrayCompiler.java"


# static fields
.field private static final QUANTIFIER_EXPAND_LIMIT_SIZE:I = 0x32

.field private static final REPEAT_RANGE_ALLOC:I = 0x8


# instance fields
.field private code:[I

.field private codeLength:I

.field private templateNum:I

.field private templates:[[B


# direct methods
.method constructor <init>(Lorg/joni/Analyser;)V
    .locals 0
    .param p1, "analyser"    # Lorg/joni/Analyser;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/joni/Compiler;-><init>(Lorg/joni/Analyser;)V

    .line 55
    return-void
.end method

.method private addAbsAddr(I)V
    .locals 0
    .param p1, "addr"    # I

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1235
    return-void
.end method

.method private addBytes([BII)V
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "length"    # I

    .prologue
    .line 1171
    iget v2, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/2addr v2, p3

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->ensure(I)V

    .line 1172
    add-int v0, p2, p3

    .local v0, "end":I
    move v1, p2

    .line 1174
    .end local p2    # "p":I
    .local v1, "p":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->code:[I

    iget v3, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/lit8 p2, v1, 0x1

    .end local v1    # "p":I
    .restart local p2    # "p":I
    aget-byte v4, p1, v1

    aput v4, v2, v3

    move v1, p2

    .end local p2    # "p":I
    .restart local v1    # "p":I
    goto :goto_0

    .line 1175
    :cond_0
    return-void
.end method

.method private addCompileStringlength([BIIIZ)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "mbLength"    # I
    .param p4, "strLength"    # I
    .param p5, "ignoreCase"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p3, p4, p5}, Lorg/joni/ArrayCompiler;->selectStrOpcode(IIZ)I

    move-result v1

    .line 190
    .local v1, "op":I
    const/4 v0, 0x1

    .line 192
    .local v0, "len":I
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->opTemplated(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    add-int/lit8 v0, v0, 0x3

    .line 199
    :goto_0
    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 200
    :cond_0
    return v0

    .line 196
    :cond_1
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->isNeedStrLenOpExact(I)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 197
    :cond_2
    mul-int v2, p3, p4

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private addInt(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 1145
    iget v1, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->code:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1146
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 1147
    .local v0, "tmp":[I
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->code:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    iput-object v0, p0, Lorg/joni/ArrayCompiler;->code:[I

    .line 1150
    .end local v0    # "tmp":[I
    :cond_0
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    iget v2, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    aput p1, v1, v2

    .line 1151
    return-void
.end method

.method private addInts([II)V
    .locals 3
    .param p1, "ints"    # [I
    .param p2, "length"    # I

    .prologue
    .line 1178
    iget v0, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->ensure(I)V

    .line 1179
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    iget v2, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1180
    iget v0, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    .line 1181
    return-void
.end method

.method private addLength(I)V
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 1238
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1239
    return-void
.end method

.method private addMemNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1242
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1243
    return-void
.end method

.method private addMultiByteCClass(Lorg/joni/CodeRangeBuffer;)V
    .locals 2
    .param p1, "mbuf"    # Lorg/joni/CodeRangeBuffer;

    .prologue
    .line 266
    iget v0, p1, Lorg/joni/CodeRangeBuffer;->used:I

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 267
    iget-object v0, p1, Lorg/joni/CodeRangeBuffer;->p:[I

    iget v1, p1, Lorg/joni/CodeRangeBuffer;->used:I

    invoke-direct {p0, v0, v1}, Lorg/joni/ArrayCompiler;->addInts([II)V

    .line 268
    return-void
.end method

.method private addObject(Ljava/lang/Object;)V
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1159
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 1160
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    .line 1166
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->operandLength:I

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1167
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v3, v2, Lorg/joni/Regex;->operandLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lorg/joni/Regex;->operandLength:I

    aput-object p1, v1, v3

    .line 1168
    return-void

    .line 1161
    :cond_1
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->operandLength:I

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 1162
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    .line 1163
    .local v0, "tmp":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iput-object v0, v1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    goto :goto_0
.end method

.method private addOpcode(I)V
    .locals 2
    .param p1, "opcode"    # I

    .prologue
    .line 1184
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1186
    packed-switch p1, :pswitch_data_0

    .line 1223
    :goto_0
    :pswitch_0
    return-void

    .line 1221
    :pswitch_1
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/joni/Regex;->stackNeeded:Z

    goto :goto_0

    .line 1186
    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private addOpcodeOption(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "option"    # I

    .prologue
    .line 1259
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 1260
    invoke-direct {p0, p2}, Lorg/joni/ArrayCompiler;->addOption(I)V

    .line 1261
    return-void
.end method

.method private addOpcodeRelAddr(II)V
    .locals 0
    .param p1, "opcode"    # I
    .param p2, "addr"    # I

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 1255
    invoke-direct {p0, p2}, Lorg/joni/ArrayCompiler;->addRelAddr(I)V

    .line 1256
    return-void
.end method

.method private addOption(I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    .line 1250
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1251
    return-void
.end method

.method private addPointer(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1246
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addObject(Ljava/lang/Object;)V

    .line 1247
    return-void
.end method

.method private addRelAddr(I)V
    .locals 0
    .param p1, "addr"    # I

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1231
    return-void
.end method

.method private addStateCheckNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 1226
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 1227
    return-void
.end method

.method private addTemplate([B)V
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1264
    iget v1, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    if-nez v1, :cond_1

    .line 1265
    const/4 v1, 0x2

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/joni/ArrayCompiler;->templates:[[B

    .line 1271
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->templates:[[B

    iget v2, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    aput-object p1, v1, v2

    .line 1272
    return-void

    .line 1266
    :cond_1
    iget v1, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->templates:[[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 1267
    iget v1, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [[B

    .line 1268
    .local v0, "tmp":[[B
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->templates:[[B

    iget v2, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1269
    iput-object v0, p0, Lorg/joni/ArrayCompiler;->templates:[[B

    goto :goto_0
.end method

.method private static cknOn(I)Z
    .locals 1
    .param p0, "ckn"    # I

    .prologue
    .line 444
    if-lez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private compileCECLengthQuantifierNode(Lorg/joni/ast/QuantifierNode;)I
    .locals 10
    .param p1, "qn"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 448
    iget v9, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v9}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v3

    .line 449
    .local v3, "infinite":Z
    iget v2, p1, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 451
    .local v2, "emptyInfo":I
    iget-object v9, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v9}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v6

    .line 452
    .local v6, "tlen":I
    iget-object v9, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v9, v9, Lorg/joni/Regex;->numCombExpCheck:I

    if-lez v9, :cond_1

    iget v1, p1, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    .line 453
    .local v1, "ckn":I
    :goto_0
    invoke-static {v1}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v9

    if-eqz v9, :cond_2

    move v0, v8

    .line 456
    .local v0, "cklen":I
    :goto_1
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v7}, Lorg/joni/ast/Node;->getType()I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    .line 457
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v7, :cond_4

    if-eqz v3, :cond_4

    .line 458
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v7, :cond_3

    invoke-static {v1}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 459
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x2

    add-int v4, v7, v0

    .line 515
    :cond_0
    :goto_2
    return v4

    .end local v0    # "cklen":I
    .end local v1    # "ckn":I
    :cond_1
    move v1, v7

    .line 452
    goto :goto_0

    .restart local v1    # "ckn":I
    :cond_2
    move v0, v7

    .line 453
    goto :goto_1

    .line 461
    .restart local v0    # "cklen":I
    :cond_3
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v7, v6

    add-int/lit8 v7, v7, 0x1

    add-int v4, v7, v0

    goto :goto_2

    .line 467
    :cond_4
    if-eqz v2, :cond_5

    .line 468
    add-int/lit8 v5, v6, 0x4

    .line 474
    .local v5, "modTLen":I
    :goto_3
    if-eqz v3, :cond_9

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-gt v7, v8, :cond_9

    .line 475
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v7, :cond_7

    .line 476
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v7, v8, :cond_6

    .line 477
    const/4 v4, 0x2

    .line 481
    .local v4, "len":I
    :goto_4
    add-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v5

    add-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    goto :goto_2

    .line 470
    .end local v4    # "len":I
    .end local v5    # "modTLen":I
    :cond_5
    move v5, v6

    .restart local v5    # "modTLen":I
    goto :goto_3

    .line 479
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "len":I
    goto :goto_4

    .line 483
    .end local v4    # "len":I
    :cond_7
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v7, :cond_8

    .line 484
    const/4 v4, 0x2

    .line 488
    .restart local v4    # "len":I
    :goto_5
    add-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v0

    add-int/2addr v4, v7

    goto :goto_2

    .line 486
    .end local v4    # "len":I
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "len":I
    goto :goto_5

    .line 490
    .end local v4    # "len":I
    :cond_9
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-nez v7, :cond_b

    .line 491
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    if-eqz v7, :cond_a

    .line 492
    add-int/lit8 v4, v6, 0x2

    .restart local v4    # "len":I
    goto :goto_2

    .line 494
    .end local v4    # "len":I
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "len":I
    goto :goto_2

    .line 496
    .end local v4    # "len":I
    :cond_b
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v7, v8, :cond_e

    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v7, :cond_e

    .line 497
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v7, :cond_d

    .line 498
    invoke-static {v1}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 499
    add-int/lit8 v4, v6, 0x3

    .restart local v4    # "len":I
    goto :goto_2

    .line 501
    .end local v4    # "len":I
    :cond_c
    add-int/lit8 v4, v6, 0x2

    .restart local v4    # "len":I
    goto :goto_2

    .line 504
    .end local v4    # "len":I
    :cond_d
    move v4, v6

    .restart local v4    # "len":I
    goto :goto_2

    .line 506
    .end local v4    # "len":I
    :cond_e
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-nez v7, :cond_f

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v7, v8, :cond_f

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v7, :cond_f

    .line 507
    add-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x2

    add-int v4, v7, v6

    .restart local v4    # "len":I
    goto :goto_2

    .line 509
    .end local v4    # "len":I
    :cond_f
    add-int/lit8 v7, v5, 0x2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v7, 0x1

    .line 511
    .restart local v4    # "len":I
    invoke-static {v1}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 512
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_2
.end method

.method private compileLengthAnchorNode(Lorg/joni/ast/AnchorNode;)I
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/AnchorNode;

    .prologue
    .line 943
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v1

    .line 950
    .local v1, "tlen":I
    :goto_0
    iget v2, p1, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 968
    const/4 v0, 0x1

    .line 971
    .local v0, "len":I
    :goto_1
    return v0

    .line 946
    .end local v0    # "len":I
    .end local v1    # "tlen":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "tlen":I
    goto :goto_0

    .line 952
    :sswitch_0
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, v2, 0x1

    .line 953
    .restart local v0    # "len":I
    goto :goto_1

    .line 956
    .end local v0    # "len":I
    :sswitch_1
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v0, v2, 0x1

    .line 957
    .restart local v0    # "len":I
    goto :goto_1

    .line 960
    .end local v0    # "len":I
    :sswitch_2
    add-int/lit8 v0, v1, 0x2

    .line 961
    .restart local v0    # "len":I
    goto :goto_1

    .line 964
    .end local v0    # "len":I
    :sswitch_3
    add-int/lit8 v2, v1, 0x3

    add-int/lit8 v0, v2, 0x1

    .line 965
    .restart local v0    # "len":I
    goto :goto_1

    .line 950
    nop

    :sswitch_data_0
    .sparse-switch
        0x400 -> :sswitch_0
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch
.end method

.method private compileLengthCClassNode(Lorg/joni/ast/CClassNode;)I
    .locals 3
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;

    .prologue
    .line 271
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isShare()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    .line 285
    :goto_0
    return v0

    .line 274
    :cond_0
    iget-object v1, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    if-nez v1, :cond_1

    .line 275
    const/16 v0, 0x9

    .local v0, "len":I
    goto :goto_0

    .line 277
    .end local v0    # "len":I
    :cond_1
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1}, Lorg/jcodings/Encoding;->minLength()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    iget-object v1, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v1}, Lorg/joni/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 278
    :cond_2
    const/4 v0, 0x1

    .line 283
    .restart local v0    # "len":I
    :goto_1
    iget-object v1, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    iget v1, v1, Lorg/joni/CodeRangeBuffer;->used:I

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    .line 280
    .end local v0    # "len":I
    :cond_3
    const/16 v0, 0x9

    .restart local v0    # "len":I
    goto :goto_1
.end method

.method private compileLengthEncloseNode(Lorg/joni/ast/EncloseNode;)I
    .locals 5
    .param p1, "node"    # Lorg/joni/ast/EncloseNode;

    .prologue
    .line 820
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isOption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 821
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->compileLengthOptionNode(Lorg/joni/ast/EncloseNode;)I

    move-result v0

    .line 865
    :goto_0
    return v0

    .line 825
    :cond_0
    iget-object v3, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    if-eqz v3, :cond_1

    .line 826
    iget-object v3, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v3}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v2

    .line 832
    .local v2, "tlen":I
    :goto_1
    iget v3, p1, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v3, :pswitch_data_0

    .line 862
    :pswitch_0
    const-string v3, "internal parser error (bug)"

    invoke-virtual {p0, v3}, Lorg/joni/ArrayCompiler;->newInternalException(Ljava/lang/String;)V

    .line 863
    const/4 v0, 0x0

    goto :goto_0

    .line 828
    .end local v2    # "tlen":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "tlen":I
    goto :goto_1

    .line 834
    :pswitch_1
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isCalled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 835
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 836
    .local v0, "len":I
    iget-object v3, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->btMemEnd:I

    iget v4, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v3, v4}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 837
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 842
    .end local v0    # "len":I
    :cond_5
    iget-object v3, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->btMemStart:I

    iget v4, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v3, v4}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 843
    const/4 v0, 0x2

    .line 847
    .restart local v0    # "len":I
    :goto_2
    iget-object v3, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v3, v3, Lorg/joni/Regex;->btMemEnd:I

    iget v4, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v3, v4}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_6
    add-int/lit8 v3, v2, 0x2

    add-int/lit8 v0, v3, 0x2

    .line 849
    goto :goto_0

    .line 845
    .end local v0    # "len":I
    :cond_7
    const/4 v0, 0x2

    .restart local v0    # "len":I
    goto :goto_2

    .line 852
    .end local v0    # "len":I
    :pswitch_2
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isStopBtSimpleRepeat()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 853
    iget-object v1, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    check-cast v1, Lorg/joni/ast/QuantifierNode;

    .line 854
    .local v1, "qn":Lorg/joni/ast/QuantifierNode;
    iget-object v3, v1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v3}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v2

    .line 855
    iget v3, v1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v3, 0x2

    .line 856
    .restart local v0    # "len":I
    goto :goto_0

    .line 857
    .end local v0    # "len":I
    .end local v1    # "qn":Lorg/joni/ast/QuantifierNode;
    :cond_8
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 859
    .restart local v0    # "len":I
    goto/16 :goto_0

    .line 832
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private compileLengthOptionNode(Lorg/joni/ast/EncloseNode;)I
    .locals 4
    .param p1, "node"    # Lorg/joni/ast/EncloseNode;

    .prologue
    .line 788
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v0, v2, Lorg/joni/Regex;->options:I

    .line 789
    .local v0, "prev":I
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v3, p1, Lorg/joni/ast/EncloseNode;->option:I

    iput v3, v2, Lorg/joni/Regex;->options:I

    .line 790
    iget-object v2, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v1

    .line 791
    .local v1, "tlen":I
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iput v0, v2, Lorg/joni/Regex;->options:I

    .line 793
    iget v2, p1, Lorg/joni/ast/EncloseNode;->option:I

    xor-int/2addr v2, v0

    invoke-static {v2}, Lorg/joni/Option;->isDynamic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 794
    add-int/lit8 v2, v1, 0x5

    add-int/lit8 v1, v2, 0x2

    .line 796
    .end local v1    # "tlen":I
    :cond_0
    return v1
.end method

.method private compileLengthStringNode(Lorg/joni/ast/Node;)I
    .locals 12
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    .line 228
    move-object v11, p1

    check-cast v11, Lorg/joni/ast/StringNode;

    .line 229
    .local v11, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual {v11}, Lorg/joni/ast/StringNode;->length()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v10, 0x0

    .line 257
    :goto_0
    return v10

    .line 230
    :cond_0
    invoke-virtual {v11}, Lorg/joni/ast/StringNode;->isAmbig()Z

    move-result v5

    .line 233
    .local v5, "ambig":Z
    iget v2, v11, Lorg/joni/ast/StringNode;->p:I

    .local v2, "prev":I
    move v8, v2

    .line 234
    .local v8, "p":I
    iget v6, v11, Lorg/joni/ast/StringNode;->end:I

    .line 235
    .local v6, "end":I
    iget-object v1, v11, Lorg/joni/ast/StringNode;->bytes:[B

    .line 236
    .local v1, "bytes":[B
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, v1, v8, v6}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    .line 237
    .local v3, "prevLen":I
    add-int/2addr v8, v3

    .line 239
    const/4 v4, 0x1

    .line 240
    .local v4, "slen":I
    const/4 v10, 0x0

    .line 242
    .local v10, "rlen":I
    :goto_1
    if-ge v8, v6, :cond_2

    .line 243
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, v1, v8, v6}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v7

    .line 244
    .local v7, "len":I
    if-ne v7, v3, :cond_1

    .line 245
    add-int/lit8 v4, v4, 0x1

    .line 253
    :goto_2
    add-int/2addr v8, v7

    .line 254
    goto :goto_1

    :cond_1
    move-object v0, p0

    .line 247
    invoke-direct/range {v0 .. v5}, Lorg/joni/ArrayCompiler;->addCompileStringlength([BIIIZ)I

    move-result v9

    .line 248
    .local v9, "r":I
    add-int/2addr v10, v9

    .line 249
    move v2, v8

    .line 250
    const/4 v4, 0x1

    .line 251
    move v3, v7

    goto :goto_2

    .end local v7    # "len":I
    .end local v9    # "r":I
    :cond_2
    move-object v0, p0

    .line 255
    invoke-direct/range {v0 .. v5}, Lorg/joni/ArrayCompiler;->addCompileStringlength([BIIIZ)I

    move-result v9

    .line 256
    .restart local v9    # "r":I
    add-int/2addr v10, v9

    .line 257
    goto :goto_0
.end method

.method private compileLengthStringRawNode(Lorg/joni/ast/StringNode;)I
    .locals 6
    .param p1, "sn"    # Lorg/joni/ast/StringNode;

    .prologue
    const/4 v5, 0x0

    .line 261
    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 262
    :goto_0
    return v5

    :cond_0
    iget-object v1, p1, Lorg/joni/ast/StringNode;->bytes:[B

    iget v2, p1, Lorg/joni/ast/StringNode;->p:I

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/joni/ast/StringNode;->length()I

    move-result v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/joni/ArrayCompiler;->addCompileStringlength([BIIIZ)I

    move-result v5

    goto :goto_0
.end method

.method private compileLengthTree(Lorg/joni/ast/Node;)I
    .locals 10
    .param p1, "node"    # Lorg/joni/ast/Node;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1050
    const/4 v2, 0x0

    .line 1052
    .local v2, "len":I
    invoke-virtual {p1}, Lorg/joni/ast/Node;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1128
    const-string v6, "internal parser error (bug)"

    invoke-virtual {p0, v6}, Lorg/joni/ArrayCompiler;->newInternalException(Ljava/lang/String;)V

    .line 1131
    .end local p1    # "node":Lorg/joni/ast/Node;
    :goto_0
    return v2

    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_0
    move-object v3, p1

    .line 1054
    check-cast v3, Lorg/joni/ast/ConsAltNode;

    .line 1056
    .local v3, "lin":Lorg/joni/ast/ConsAltNode;
    :cond_0
    iget-object v6, v3, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v6

    add-int/2addr v2, v6

    .line 1057
    iget-object v3, v3, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v3, :cond_0

    goto :goto_0

    .end local v3    # "lin":Lorg/joni/ast/ConsAltNode;
    :pswitch_1
    move-object v0, p1

    .line 1061
    check-cast v0, Lorg/joni/ast/ConsAltNode;

    .line 1062
    .local v0, "aln":Lorg/joni/ast/ConsAltNode;
    const/4 v4, 0x0

    .line 1064
    .local v4, "n":I
    :cond_1
    iget-object v6, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v6

    add-int/2addr v2, v6

    .line 1065
    add-int/lit8 v4, v4, 0x1

    .line 1066
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_1

    .line 1067
    add-int/lit8 v6, v4, -0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v2, v6

    .line 1068
    goto :goto_0

    .end local v0    # "aln":Lorg/joni/ast/ConsAltNode;
    .end local v4    # "n":I
    :pswitch_2
    move-object v5, p1

    .line 1071
    check-cast v5, Lorg/joni/ast/StringNode;

    .line 1072
    .local v5, "sn":Lorg/joni/ast/StringNode;
    invoke-virtual {v5}, Lorg/joni/ast/StringNode;->isRaw()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1073
    invoke-direct {p0, v5}, Lorg/joni/ArrayCompiler;->compileLengthStringRawNode(Lorg/joni/ast/StringNode;)I

    move-result v2

    goto :goto_0

    .line 1075
    :cond_2
    invoke-direct {p0, v5}, Lorg/joni/ArrayCompiler;->compileLengthStringNode(Lorg/joni/ast/Node;)I

    move-result v2

    .line 1077
    goto :goto_0

    .line 1080
    .end local v5    # "sn":Lorg/joni/ast/StringNode;
    :pswitch_3
    check-cast p1, Lorg/joni/ast/CClassNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->compileLengthCClassNode(Lorg/joni/ast/CClassNode;)I

    move-result v2

    .line 1081
    goto :goto_0

    .line 1085
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_4
    const/4 v2, 0x1

    .line 1086
    goto :goto_0

    :pswitch_5
    move-object v1, p1

    .line 1089
    check-cast v1, Lorg/joni/ast/BackRefNode;

    .line 1091
    .local v1, "br":Lorg/joni/ast/BackRefNode;
    invoke-virtual {v1}, Lorg/joni/ast/BackRefNode;->isNestLevel()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1092
    iget v6, v1, Lorg/joni/ast/BackRefNode;->backNum:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x4

    goto :goto_0

    .line 1095
    :cond_3
    iget v8, v1, Lorg/joni/ast/BackRefNode;->backNum:I

    if-ne v8, v6, :cond_5

    .line 1096
    iget-object v8, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v8, v8, Lorg/joni/Regex;->options:I

    invoke-static {v8}, Lorg/joni/Option;->isIgnoreCase(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v1, Lorg/joni/ast/BackRefNode;->back:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    if-gt v8, v7, :cond_4

    move v2, v6

    :goto_1
    goto :goto_0

    :cond_4
    move v2, v7

    goto :goto_1

    .line 1099
    :cond_5
    iget v6, v1, Lorg/joni/ast/BackRefNode;->backNum:I

    mul-int/lit8 v6, v6, 0x1

    add-int/lit8 v2, v6, 0x2

    .line 1102
    goto :goto_0

    .line 1106
    .end local v1    # "br":Lorg/joni/ast/BackRefNode;
    :pswitch_6
    const/4 v2, 0x2

    .line 1107
    goto :goto_0

    .line 1115
    :pswitch_7
    check-cast p1, Lorg/joni/ast/QuantifierNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->compileNonCECLengthQuantifierNode(Lorg/joni/ast/QuantifierNode;)I

    move-result v2

    .line 1117
    goto :goto_0

    .line 1120
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_8
    check-cast p1, Lorg/joni/ast/EncloseNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->compileLengthEncloseNode(Lorg/joni/ast/EncloseNode;)I

    move-result v2

    .line 1121
    goto/16 :goto_0

    .line 1124
    .restart local p1    # "node":Lorg/joni/ast/Node;
    :pswitch_9
    check-cast p1, Lorg/joni/ast/AnchorNode;

    .end local p1    # "node":Lorg/joni/ast/Node;
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->compileLengthAnchorNode(Lorg/joni/ast/AnchorNode;)I

    move-result v2

    .line 1125
    goto/16 :goto_0

    .line 1052
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method private compileNonCECLengthQuantifierNode(Lorg/joni/ast/QuantifierNode;)I
    .locals 9
    .param p1, "qn"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    const/16 v8, 0x32

    const/4 v7, 0x1

    .line 635
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v5}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v1

    .line 636
    .local v1, "infinite":Z
    iget v0, p1, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 638
    .local v0, "emptyInfo":I
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v5}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v4

    .line 641
    .local v4, "tlen":I
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v5}, Lorg/joni/ast/Node;->getType()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    .line 642
    iget-boolean v5, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v5, :cond_1

    if-eqz v1, :cond_1

    .line 643
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v5, :cond_0

    .line 644
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v5, v4

    add-int/lit8 v2, v5, 0x2

    .line 689
    :goto_0
    return v2

    .line 646
    :cond_0
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v5, v4

    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    .line 651
    :cond_1
    const/4 v3, 0x0

    .line 652
    .local v3, "modTLen":I
    if-eqz v0, :cond_3

    .line 653
    add-int/lit8 v3, v4, 0x4

    .line 659
    :goto_1
    if-eqz v1, :cond_8

    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-le v5, v7, :cond_2

    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v5, v4

    if-gt v5, v8, :cond_8

    .line 660
    :cond_2
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v5, v7, :cond_4

    if-le v4, v8, :cond_4

    .line 661
    const/4 v2, 0x2

    .line 666
    .local v2, "len":I
    :goto_2
    iget-boolean v5, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v5, :cond_7

    .line 667
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    if-eqz v5, :cond_5

    .line 668
    add-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_0

    .line 655
    .end local v2    # "len":I
    :cond_3
    move v3, v4

    goto :goto_1

    .line 663
    :cond_4
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int v2, v4, v5

    .restart local v2    # "len":I
    goto :goto_2

    .line 669
    :cond_5
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v5, :cond_6

    .line 670
    add-int/lit8 v5, v3, 0x3

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_0

    .line 672
    :cond_6
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_0

    .line 675
    :cond_7
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_0

    .line 678
    .end local v2    # "len":I
    :cond_8
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-nez v5, :cond_9

    iget-boolean v5, p1, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    if-eqz v5, :cond_9

    .line 679
    add-int/lit8 v2, v4, 0x2

    .restart local v2    # "len":I
    goto :goto_0

    .line 680
    .end local v2    # "len":I
    :cond_9
    if-nez v1, :cond_b

    iget-boolean v5, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v5, :cond_b

    iget v5, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-eq v5, v7, :cond_a

    add-int/lit8 v5, v4, 0x2

    iget v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    mul-int/2addr v5, v6

    if-gt v5, v8, :cond_b

    .line 682
    :cond_a
    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int v2, v4, v5

    .line 683
    .restart local v2    # "len":I
    add-int/lit8 v5, v4, 0x2

    iget v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    goto :goto_0

    .line 684
    .end local v2    # "len":I
    :cond_b
    iget-boolean v5, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-nez v5, :cond_c

    iget v5, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v5, v7, :cond_c

    iget v5, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v5, :cond_c

    .line 685
    add-int/lit8 v2, v4, 0x4

    .restart local v2    # "len":I
    goto/16 :goto_0

    .line 687
    .end local v2    # "len":I
    :cond_c
    add-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v5, 0x1

    .restart local v2    # "len":I
    goto/16 :goto_0
.end method

.method private compileRangeRepeatNode(Lorg/joni/ast/QuantifierNode;II)V
    .locals 3
    .param p1, "qn"    # Lorg/joni/ast/QuantifierNode;
    .param p2, "targetLen"    # I
    .param p3, "emptyInfo"    # I

    .prologue
    .line 422
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v0, v1, Lorg/joni/Regex;->numRepeat:I

    .line 423
    .local v0, "numRepeat":I
    iget-boolean v1, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x3c

    :goto_0
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 424
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 425
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v2, v1, Lorg/joni/Regex;->numRepeat:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/joni/Regex;->numRepeat:I

    .line 426
    add-int/lit8 v1, p2, 0x2

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addRelAddr(I)V

    .line 428
    iget v1, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    iget v2, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-direct {p0, v0, v1, v2}, Lorg/joni/ArrayCompiler;->entryRepeatRange(III)V

    .line 430
    iget-object v1, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v1, p3}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 432
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->numCall:I

    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lorg/joni/ast/QuantifierNode;->isInRepeat()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 433
    :cond_0
    iget-boolean v1, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x40

    :goto_1
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 438
    :goto_2
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 439
    return-void

    .line 423
    :cond_1
    const/16 v1, 0x3d

    goto :goto_0

    .line 433
    :cond_2
    const/16 v1, 0x41

    goto :goto_1

    .line 435
    :cond_3
    iget-boolean v1, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v1, :cond_4

    const/16 v1, 0x3e

    :goto_3
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    :cond_4
    const/16 v1, 0x3f

    goto :goto_3
.end method

.method private compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/Node;
    .param p2, "emptyInfo"    # I

    .prologue
    .line 161
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v0, v1, Lorg/joni/Regex;->numNullCheck:I

    .line 163
    .local v0, "savedNumNullCheck":I
    if-eqz p2, :cond_0

    .line 164
    const/16 v1, 0x42

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 165
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v1, v1, Lorg/joni/Regex;->numNullCheck:I

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 166
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v2, v1, Lorg/joni/Regex;->numNullCheck:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/joni/Regex;->numNullCheck:I

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 171
    if-eqz p2, :cond_1

    .line 172
    packed-switch p2, :pswitch_data_0

    .line 184
    :goto_0
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 186
    :cond_1
    return-void

    .line 174
    :pswitch_0
    const/16 v1, 0x43

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 177
    :pswitch_1
    const/16 v1, 0x44

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 180
    :pswitch_2
    const/16 v1, 0x45

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private ensure(I)V
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 1135
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->code:[I

    array-length v2, v2

    if-lt p1, v2, :cond_1

    .line 1136
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->code:[I

    array-length v2, v2

    shl-int/lit8 v0, v2, 0x1

    .line 1137
    .local v0, "length":I
    :goto_0
    if-gt v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_0
    new-array v1, v0, [I

    .line 1139
    .local v1, "tmp":[I
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->code:[I

    iget-object v3, p0, Lorg/joni/ArrayCompiler;->code:[I

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    iput-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    .line 1142
    .end local v0    # "length":I
    .end local v1    # "tmp":[I
    :cond_1
    return-void
.end method

.method private entryRepeatRange(III)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 405
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    if-nez v1, :cond_2

    .line 406
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    new-array v2, v4, [I

    iput-object v2, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    .line 407
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    new-array v2, v4, [I

    iput-object v2, v1, Lorg/joni/Regex;->repeatRangeHi:[I

    .line 417
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    aput p2, v1, p1

    .line 418
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeHi:[I

    invoke-static {p3}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const p3, 0x7fffffff

    .end local p3    # "upper":I
    :cond_1
    aput p3, v1, p1

    .line 419
    return-void

    .line 408
    .restart local p3    # "upper":I
    :cond_2
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    array-length v1, v1

    if-lt p1, v1, :cond_0

    .line 409
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [I

    .line 410
    .local v0, "tmp":[I
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->repeatRangeLo:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iput-object v0, v1, Lorg/joni/Regex;->repeatRangeLo:[I

    .line 412
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeHi:[I

    array-length v1, v1

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [I

    .line 413
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, v1, Lorg/joni/Regex;->repeatRangeHi:[I

    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v2, v2, Lorg/joni/Regex;->repeatRangeHi:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iput-object v0, v1, Lorg/joni/Regex;->repeatRangeHi:[I

    goto :goto_0
.end method

.method private isNeedStrLenOpExact(I)Z
    .locals 1
    .param p1, "op"    # I

    .prologue
    .line 110
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xf

    if-eq p1, v0, :cond_0

    const/16 v0, 0x6a

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private opTemplated(I)Z
    .locals 1
    .param p1, "op"    # I

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->isNeedStrLenOpExact(I)Z

    move-result v0

    return v0
.end method

.method private selectStrOpcode(IIZ)I
    .locals 2
    .param p1, "mbLength"    # I
    .param p2, "strLength"    # I
    .param p3, "ignoreCase"    # Z

    .prologue
    .line 125
    if-eqz p3, :cond_2

    .line 126
    packed-switch p2, :pswitch_data_0

    .line 128
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v0, 0x6a

    .line 157
    .local v0, "op":I
    :goto_0
    return v0

    .line 127
    .end local v0    # "op":I
    :pswitch_0
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v0, 0x69

    .restart local v0    # "op":I
    :goto_1
    goto :goto_0

    .end local v0    # "op":I
    :cond_0
    const/16 v0, 0xe

    goto :goto_1

    .line 128
    :cond_1
    const/16 v0, 0xf

    goto :goto_0

    .line 131
    :cond_2
    packed-switch p1, :pswitch_data_1

    .line 154
    const/16 v0, 0xd

    .restart local v0    # "op":I
    goto :goto_0

    .line 133
    .end local v0    # "op":I
    :pswitch_1
    packed-switch p2, :pswitch_data_2

    .line 139
    const/4 v0, 0x7

    .restart local v0    # "op":I
    goto :goto_0

    .line 134
    .end local v0    # "op":I
    :pswitch_2
    const/4 v0, 0x2

    .restart local v0    # "op":I
    goto :goto_0

    .line 135
    .end local v0    # "op":I
    :pswitch_3
    const/4 v0, 0x3

    .restart local v0    # "op":I
    goto :goto_0

    .line 136
    .end local v0    # "op":I
    :pswitch_4
    const/4 v0, 0x4

    .restart local v0    # "op":I
    goto :goto_0

    .line 137
    .end local v0    # "op":I
    :pswitch_5
    const/4 v0, 0x5

    .restart local v0    # "op":I
    goto :goto_0

    .line 138
    .end local v0    # "op":I
    :pswitch_6
    const/4 v0, 0x6

    .restart local v0    # "op":I
    goto :goto_0

    .line 143
    .end local v0    # "op":I
    :pswitch_7
    packed-switch p2, :pswitch_data_3

    .line 147
    const/16 v0, 0xb

    .restart local v0    # "op":I
    goto :goto_0

    .line 144
    .end local v0    # "op":I
    :pswitch_8
    const/16 v0, 0x8

    .restart local v0    # "op":I
    goto :goto_0

    .line 145
    .end local v0    # "op":I
    :pswitch_9
    const/16 v0, 0x9

    .restart local v0    # "op":I
    goto :goto_0

    .line 146
    .end local v0    # "op":I
    :pswitch_a
    const/16 v0, 0xa

    .restart local v0    # "op":I
    goto :goto_0

    .line 151
    .end local v0    # "op":I
    :pswitch_b
    const/16 v0, 0xc

    .line 152
    .restart local v0    # "op":I
    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_b
    .end packed-switch

    .line 133
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 143
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method protected final addCompileString([BIIIZ)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "mbLength"    # I
    .param p4, "strLength"    # I
    .param p5, "ignoreCase"    # Z

    .prologue
    .line 205
    invoke-direct {p0, p3, p4, p5}, Lorg/joni/ArrayCompiler;->selectStrOpcode(IIZ)I

    move-result v0

    .line 206
    .local v0, "op":I
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 208
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p3}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 210
    :cond_0
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->isNeedStrLenOpExact(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0x6a

    if-ne v0, v1, :cond_3

    .line 212
    :cond_1
    mul-int v1, p3, p4

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 218
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->opTemplated(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 219
    iget v1, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 220
    invoke-direct {p0, p2}, Lorg/joni/ArrayCompiler;->addInt(I)V

    .line 221
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addTemplate([B)V

    .line 225
    :goto_1
    return-void

    .line 214
    :cond_3
    invoke-direct {p0, p4}, Lorg/joni/ArrayCompiler;->addLength(I)V

    goto :goto_0

    .line 223
    :cond_4
    mul-int v1, p3, p4

    invoke-direct {p0, p1, p2, v1}, Lorg/joni/ArrayCompiler;->addBytes([BII)V

    goto :goto_1
.end method

.method protected compileAltNode(Lorg/joni/ast/ConsAltNode;)V
    .locals 5
    .param p1, "node"    # Lorg/joni/ast/ConsAltNode;

    .prologue
    .line 83
    move-object v0, p1

    .line 84
    .local v0, "aln":Lorg/joni/ast/ConsAltNode;
    const/4 v1, 0x0

    .line 87
    .local v1, "len":I
    :cond_0
    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v3}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v3

    add-int/2addr v1, v3

    .line 88
    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v3, :cond_1

    .line 89
    add-int/lit8 v1, v1, 0x4

    .line 91
    :cond_1
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_0

    .line 93
    iget v3, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int v2, v3, v1

    .line 95
    .local v2, "pos":I
    move-object v0, p1

    .line 97
    :cond_2
    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-direct {p0, v3}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v1

    .line 98
    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v3, :cond_3

    .line 99
    const/16 v3, 0x38

    add-int/lit8 v4, v1, 0x2

    invoke-direct {p0, v3, v4}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 101
    :cond_3
    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->car:Lorg/joni/ast/Node;

    invoke-virtual {p0, v3}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 102
    iget-object v3, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-eqz v3, :cond_4

    .line 103
    iget v3, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 104
    const/16 v3, 0x37

    invoke-direct {p0, v3, v1}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 106
    :cond_4
    iget-object v0, v0, Lorg/joni/ast/ConsAltNode;->cdr:Lorg/joni/ast/ConsAltNode;

    if-nez v0, :cond_2

    .line 107
    return-void
.end method

.method protected compileAnchorNode(Lorg/joni/ast/AnchorNode;)V
    .locals 4
    .param p1, "node"    # Lorg/joni/ast/AnchorNode;

    .prologue
    .line 979
    iget v2, p1, Lorg/joni/ast/AnchorNode;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 1045
    const-string v2, "internal parser error (bug)"

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->newInternalException(Ljava/lang/String;)V

    .line 1047
    :goto_0
    return-void

    .line 980
    :sswitch_0
    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 981
    :sswitch_1
    const/16 v2, 0x24

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 982
    :sswitch_2
    const/16 v2, 0x25

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 983
    :sswitch_3
    const/16 v2, 0x26

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 984
    :sswitch_4
    const/16 v2, 0x27

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 985
    :sswitch_5
    const/16 v2, 0x28

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 988
    :sswitch_6
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x64

    :goto_1
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1f

    goto :goto_1

    .line 992
    :sswitch_7
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x65

    :goto_2
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x20

    goto :goto_2

    .line 997
    :sswitch_8
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x66

    :goto_3
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x21

    goto :goto_3

    .line 1002
    :sswitch_9
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x67

    :goto_4
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x22

    goto :goto_4

    .line 1006
    :sswitch_a
    const/16 v2, 0x46

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 1007
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 1008
    const/16 v2, 0x47

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 1012
    :sswitch_b
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v0

    .line 1013
    .local v0, "len":I
    const/16 v2, 0x48

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v2, v3}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 1014
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 1015
    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto/16 :goto_0

    .line 1019
    .end local v0    # "len":I
    :sswitch_c
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x68

    :goto_5
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 1020
    iget v2, p1, Lorg/joni/ast/AnchorNode;->charLength:I

    if-gez v2, :cond_6

    .line 1021
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget-object v3, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v2, v3}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;)I

    move-result v1

    .line 1022
    .local v1, "n":I
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget v2, v2, Lorg/joni/Analyser;->returnCode:I

    if-eqz v2, :cond_4

    const-string v2, "invalid pattern in look-behind"

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->newSyntaxException(Ljava/lang/String;)V

    .line 1026
    :cond_4
    :goto_6
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 1027
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    goto/16 :goto_0

    .line 1019
    .end local v1    # "n":I
    :cond_5
    const/16 v2, 0x4c

    goto :goto_5

    .line 1024
    :cond_6
    iget v1, p1, Lorg/joni/ast/AnchorNode;->charLength:I

    .restart local v1    # "n":I
    goto :goto_6

    .line 1031
    .end local v1    # "n":I
    :sswitch_d
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v0

    .line 1032
    .restart local v0    # "len":I
    const/16 v2, 0x4d

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v2, v3}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 1033
    iget v2, p1, Lorg/joni/ast/AnchorNode;->charLength:I

    if-gez v2, :cond_8

    .line 1034
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget-object v3, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v2, v3}, Lorg/joni/Analyser;->getCharLengthTree(Lorg/joni/ast/Node;)I

    move-result v1

    .line 1035
    .restart local v1    # "n":I
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget v2, v2, Lorg/joni/Analyser;->returnCode:I

    if-eqz v2, :cond_7

    const-string v2, "invalid pattern in look-behind"

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->newSyntaxException(Ljava/lang/String;)V

    .line 1039
    :cond_7
    :goto_7
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 1040
    iget-object v2, p1, Lorg/joni/ast/AnchorNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 1041
    const/16 v2, 0x4e

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto/16 :goto_0

    .line 1037
    .end local v1    # "n":I
    :cond_8
    iget v1, p1, Lorg/joni/ast/AnchorNode;->charLength:I

    .restart local v1    # "n":I
    goto :goto_7

    .line 979
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x4 -> :sswitch_5
        0x8 -> :sswitch_1
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
    .end sparse-switch
.end method

.method protected compileAnyCharNode()V
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v0, v0, Lorg/joni/Regex;->options:I

    invoke-static {v0}, Lorg/joni/Option;->isMultiline(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    :goto_0
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 351
    :goto_1
    return-void

    .line 347
    :cond_0
    const/16 v0, 0x18

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x58

    :goto_2
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x17

    goto :goto_2
.end method

.method protected compileBackrefNode(Lorg/joni/ast/BackRefNode;)V
    .locals 5
    .param p1, "node"    # Lorg/joni/ast/BackRefNode;

    .prologue
    const/4 v4, 0x0

    .line 362
    move-object v0, p1

    .line 363
    .local v0, "br":Lorg/joni/ast/BackRefNode;
    invoke-virtual {v0}, Lorg/joni/ast/BackRefNode;->isNestLevel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/16 v2, 0x2f

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 365
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->options:I

    and-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOption(I)V

    .line 366
    iget v2, v0, Lorg/joni/ast/BackRefNode;->nestLevel:I

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 368
    iget v2, v0, Lorg/joni/ast/BackRefNode;->backNum:I

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 369
    iget v2, v0, Lorg/joni/ast/BackRefNode;->backNum:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 372
    .end local v1    # "i":I
    :cond_0
    iget v2, v0, Lorg/joni/ast/BackRefNode;->backNum:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 373
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->options:I

    invoke-static {v2}, Lorg/joni/Option;->isIgnoreCase(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 375
    iget-object v2, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 401
    :cond_1
    :goto_1
    return-void

    .line 377
    :cond_2
    iget-object v2, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 385
    const/16 v2, 0x2b

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 386
    iget-object v2, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v2, v2, v4

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_1

    .line 379
    :pswitch_0
    const/16 v2, 0x29

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_1

    .line 382
    :pswitch_1
    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_1

    .line 391
    :cond_3
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v2, v2, Lorg/joni/Regex;->options:I

    invoke-static {v2}, Lorg/joni/Option;->isIgnoreCase(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 392
    const/16 v2, 0x2e

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 397
    :goto_2
    iget v2, v0, Lorg/joni/ast/BackRefNode;->backNum:I

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addLength(I)V

    .line 398
    iget v2, v0, Lorg/joni/ast/BackRefNode;->backNum:I

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "i":I
    :goto_3
    if-ltz v1, :cond_1

    iget-object v2, v0, Lorg/joni/ast/BackRefNode;->back:[I

    aget v2, v2, v1

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 394
    .end local v1    # "i":I
    :cond_4
    const/16 v2, 0x2d

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected compileCClassNode(Lorg/joni/ast/CClassNode;)V
    .locals 3
    .param p1, "cc"    # Lorg/joni/ast/CClassNode;

    .prologue
    const/16 v2, 0x8

    .line 290
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isShare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 292
    invoke-direct {p0, p1}, Lorg/joni/ArrayCompiler;->addPointer(Ljava/lang/Object;)V

    .line 322
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    if-nez v0, :cond_4

    .line 297
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x61

    :goto_1
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 302
    :goto_2
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget-object v0, v0, Lorg/joni/BitSet;->bits:[I

    invoke-direct {p0, v0, v2}, Lorg/joni/ArrayCompiler;->addInts([II)V

    goto :goto_0

    .line 298
    :cond_1
    const/16 v0, 0x13

    goto :goto_1

    .line 300
    :cond_2
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x60

    :goto_3
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    goto :goto_3

    .line 304
    :cond_4
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0}, Lorg/jcodings/Encoding;->minLength()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_5

    iget-object v0, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v0}, Lorg/joni/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 305
    :cond_5
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 306
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 310
    :goto_4
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addMultiByteCClass(Lorg/joni/CodeRangeBuffer;)V

    goto :goto_0

    .line 308
    :cond_6
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_4

    .line 312
    :cond_7
    invoke-virtual {p1}, Lorg/joni/ast/CClassNode;->isNot()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 313
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 318
    :goto_5
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    iget-object v0, v0, Lorg/joni/BitSet;->bits:[I

    invoke-direct {p0, v0, v2}, Lorg/joni/ArrayCompiler;->addInts([II)V

    .line 319
    iget-object v0, p1, Lorg/joni/ast/CClassNode;->mbuf:Lorg/joni/CodeRangeBuffer;

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addMultiByteCClass(Lorg/joni/CodeRangeBuffer;)V

    goto :goto_0

    .line 315
    :cond_8
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_5
.end method

.method protected compileCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V
    .locals 12
    .param p1, "qn"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    const/16 v11, 0x51

    const/16 v10, 0x38

    const/4 v7, 0x2

    const/16 v9, 0x37

    const/4 v8, 0x1

    .line 520
    iget v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v6}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v2

    .line 521
    .local v2, "infinite":Z
    iget v1, p1, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 523
    .local v1, "emptyInfo":I
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v5

    .line 525
    .local v5, "tlen":I
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->numCombExpCheck:I

    if-lez v6, :cond_2

    iget v0, p1, Lorg/joni/ast/QuantifierNode;->combExpCheckNum:I

    .line 527
    .local v0, "ckn":I
    :goto_0
    invoke-virtual {p1}, Lorg/joni/ast/QuantifierNode;->isAnyCharStar()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 528
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-virtual {p0, v6, v7}, Lorg/joni/ArrayCompiler;->compileTreeNTimes(Lorg/joni/ast/Node;I)V

    .line 529
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v6, :cond_6

    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-nez v6, :cond_6

    .line 530
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->options:I

    invoke-static {v6}, Lorg/joni/Option;->isMultiline(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 531
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v6

    if-eqz v6, :cond_3

    const/16 v6, 0x5d

    :goto_1
    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 535
    :goto_2
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 536
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    .line 538
    :cond_0
    iget-object v4, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    check-cast v4, Lorg/joni/ast/StringNode;

    .line 539
    .local v4, "sn":Lorg/joni/ast/StringNode;
    iget-object v6, v4, Lorg/joni/ast/StringNode;->bytes:[B

    iget v7, v4, Lorg/joni/ast/StringNode;->p:I

    invoke-direct {p0, v6, v7, v8}, Lorg/joni/ArrayCompiler;->addBytes([BII)V

    .line 632
    .end local v4    # "sn":Lorg/joni/ast/StringNode;
    :cond_1
    :goto_3
    return-void

    .line 525
    .end local v0    # "ckn":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    .restart local v0    # "ckn":I
    :cond_3
    const/16 v6, 0x1c

    goto :goto_1

    .line 533
    :cond_4
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x5c

    :goto_4
    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    :cond_5
    const/16 v6, 0x1b

    goto :goto_4

    .line 542
    :cond_6
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v6, v6, Lorg/joni/Regex;->options:I

    invoke-static {v6}, Lorg/joni/Option;->isMultiline(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 543
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 544
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x5f

    :goto_5
    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 555
    :goto_6
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 556
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    goto :goto_3

    .line 544
    :cond_7
    const/16 v6, 0x55

    goto :goto_5

    .line 546
    :cond_8
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v6

    if-eqz v6, :cond_9

    const/16 v6, 0x5b

    :goto_7
    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_6

    :cond_9
    const/16 v6, 0x1a

    goto :goto_7

    .line 549
    :cond_a
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 550
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0x5e

    :goto_8
    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_6

    :cond_b
    const/16 v6, 0x54

    goto :goto_8

    .line 552
    :cond_c
    iget-object v6, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v6}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x5a

    :goto_9
    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_6

    :cond_d
    const/16 v6, 0x19

    goto :goto_9

    .line 563
    :cond_e
    if-eqz v1, :cond_11

    .line 564
    add-int/lit8 v3, v5, 0x4

    .line 568
    .local v3, "modTLen":I
    :goto_a
    if-eqz v2, :cond_17

    iget v6, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-gt v6, v8, :cond_17

    .line 569
    iget-boolean v6, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v6, :cond_14

    .line 570
    iget v6, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v6, v8, :cond_f

    .line 571
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x3

    :goto_b
    invoke-direct {p0, v9, v6}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 574
    :cond_f
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 575
    invoke-direct {p0, v11}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 576
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    .line 577
    add-int/lit8 v6, v3, 0x2

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addRelAddr(I)V

    .line 581
    :goto_c
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, v1}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 582
    add-int/lit8 v6, v3, 0x2

    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v7, 0x3

    :cond_10
    add-int/2addr v6, v7

    neg-int v6, v6

    invoke-direct {p0, v9, v6}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_3

    .line 566
    .end local v3    # "modTLen":I
    :cond_11
    move v3, v5

    .restart local v3    # "modTLen":I
    goto :goto_a

    :cond_12
    move v6, v7

    .line 571
    goto :goto_b

    .line 579
    :cond_13
    add-int/lit8 v6, v3, 0x2

    invoke-direct {p0, v10, v6}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto :goto_c

    .line 586
    :cond_14
    iget v6, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v6, :cond_15

    .line 587
    invoke-direct {p0, v9, v3}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 589
    :cond_15
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v6, v1}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 590
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 591
    const/16 v6, 0x52

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 592
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    .line 593
    add-int/lit8 v6, v3, 0x3

    neg-int v6, v6

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addRelAddr(I)V

    goto/16 :goto_3

    .line 595
    :cond_16
    add-int/lit8 v6, v3, 0x2

    neg-int v6, v6

    invoke-direct {p0, v10, v6}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_3

    .line 598
    :cond_17
    iget v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-nez v6, :cond_18

    .line 599
    iget-boolean v6, p1, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    if-eqz v6, :cond_1

    .line 600
    invoke-direct {p0, v9, v5}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 601
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    goto/16 :goto_3

    .line 603
    :cond_18
    iget v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v6, v8, :cond_1b

    iget-boolean v6, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v6, :cond_1b

    .line 604
    iget v6, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v6, :cond_19

    .line 605
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 606
    invoke-direct {p0, v11}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 607
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    .line 608
    invoke-direct {p0, v5}, Lorg/joni/ArrayCompiler;->addRelAddr(I)V

    .line 613
    :cond_19
    :goto_d
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    goto/16 :goto_3

    .line 610
    :cond_1a
    invoke-direct {p0, v10, v5}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto :goto_d

    .line 614
    :cond_1b
    iget-boolean v6, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-nez v6, :cond_1d

    iget v6, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v6, v8, :cond_1d

    iget v6, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v6, :cond_1d

    .line 615
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 616
    invoke-direct {p0, v11}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 617
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    .line 618
    invoke-direct {p0, v7}, Lorg/joni/ArrayCompiler;->addRelAddr(I)V

    .line 623
    :goto_e
    invoke-direct {p0, v9, v5}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 624
    iget-object v6, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v6}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    goto/16 :goto_3

    .line 620
    :cond_1c
    invoke-direct {p0, v10, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto :goto_e

    .line 626
    :cond_1d
    invoke-direct {p0, p1, v3, v1}, Lorg/joni/ArrayCompiler;->compileRangeRepeatNode(Lorg/joni/ast/QuantifierNode;II)V

    .line 627
    invoke-static {v0}, Lorg/joni/ArrayCompiler;->cknOn(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 628
    const/16 v6, 0x53

    invoke-direct {p0, v6}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 629
    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addStateCheckNum(I)V

    goto/16 :goto_3
.end method

.method protected compileCTypeNode(Lorg/joni/ast/CTypeNode;)V
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/CTypeNode;

    .prologue
    .line 326
    move-object v0, p1

    .line 328
    .local v0, "cn":Lorg/joni/ast/CTypeNode;
    iget v2, v0, Lorg/joni/ast/CTypeNode;->ctype:I

    packed-switch v2, :pswitch_data_0

    .line 338
    const-string v2, "internal parser error (bug)"

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->newInternalException(Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-boolean v2, v0, Lorg/joni/ast/CTypeNode;->not:Z

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x63

    .line 341
    .local v1, "op":I
    :goto_1
    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 331
    .end local v1    # "op":I
    :cond_0
    const/16 v1, 0x1e

    goto :goto_1

    .line 333
    :cond_1
    iget-object v2, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v2}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x62

    .line 335
    .restart local v1    # "op":I
    :goto_2
    goto :goto_1

    .line 333
    .end local v1    # "op":I
    :cond_2
    const/16 v1, 0x1d

    goto :goto_2

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected compileCallNode(Lorg/joni/ast/CallNode;)V
    .locals 3
    .param p1, "node"    # Lorg/joni/ast/CallNode;

    .prologue
    .line 355
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 356
    iget-object v0, p1, Lorg/joni/ast/CallNode;->unsetAddrList:Lorg/joni/UnsetAddrList;

    iget v1, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    iget-object v2, p1, Lorg/joni/ast/CallNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {v0, v1, v2}, Lorg/joni/UnsetAddrList;->add(ILorg/joni/ast/Node;)V

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addAbsAddr(I)V

    .line 358
    return-void
.end method

.method protected compileEncloseNode(Lorg/joni/ast/EncloseNode;)V
    .locals 7
    .param p1, "node"    # Lorg/joni/ast/EncloseNode;

    .prologue
    const/16 v6, 0x37

    const/16 v3, 0x34

    const/16 v2, 0x32

    .line 871
    iget v4, p1, Lorg/joni/ast/EncloseNode;->type:I

    packed-switch v4, :pswitch_data_0

    .line 936
    :pswitch_0
    const-string v2, "internal parser error (bug)"

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->newInternalException(Ljava/lang/String;)V

    .line 939
    :goto_0
    return-void

    .line 874
    :pswitch_1
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isCalled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 875
    const/16 v4, 0x4f

    invoke-direct {p0, v4}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 876
    iget v4, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    iput v4, p1, Lorg/joni/ast/EncloseNode;->callAddr:I

    .line 877
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->setAddrFixed()V

    .line 878
    iget v4, p1, Lorg/joni/ast/EncloseNode;->callAddr:I

    invoke-direct {p0, v4}, Lorg/joni/ArrayCompiler;->addAbsAddr(I)V

    .line 879
    iget-object v4, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v4}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v0

    .line 880
    .local v0, "len":I
    add-int/lit8 v0, v0, 0x3

    .line 881
    iget-object v4, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v4, v4, Lorg/joni/Regex;->btMemEnd:I

    iget v5, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v4, v5}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 882
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 886
    :goto_1
    invoke-direct {p0, v6, v0}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 890
    .end local v0    # "len":I
    :cond_1
    iget-object v4, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v4, v4, Lorg/joni/Regex;->btMemStart:I

    iget v5, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v4, v5}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 891
    const/16 v4, 0x31

    invoke-direct {p0, v4}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 896
    :goto_2
    iget v4, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-direct {p0, v4}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 897
    iget-object v4, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v4}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 899
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isCalled()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 900
    iget-object v4, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v4, v4, Lorg/joni/Regex;->btMemEnd:I

    iget v5, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v4, v5}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 901
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x33

    :cond_2
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 905
    :goto_3
    iget v2, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    .line 906
    const/16 v2, 0x50

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_0

    .line 884
    .restart local v0    # "len":I
    :cond_3
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 893
    .end local v0    # "len":I
    :cond_5
    const/16 v4, 0x30

    invoke-direct {p0, v4}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    .line 903
    :cond_6
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isRecursion()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v2, 0x35

    :goto_4
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4

    .line 908
    :cond_8
    iget-object v4, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v4, v4, Lorg/joni/Regex;->btMemEnd:I

    iget v5, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-static {v4, v5}, Lorg/joni/BitStatus;->bsAt(II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 909
    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 913
    :goto_5
    iget v2, p1, Lorg/joni/ast/EncloseNode;->regNum:I

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addMemNum(I)V

    goto/16 :goto_0

    .line 911
    :cond_9
    invoke-direct {p0, v3}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_5

    .line 918
    :pswitch_2
    invoke-virtual {p1}, Lorg/joni/ast/EncloseNode;->isStopBtSimpleRepeat()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 919
    iget-object v1, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    check-cast v1, Lorg/joni/ast/QuantifierNode;

    .line 921
    .local v1, "qn":Lorg/joni/ast/QuantifierNode;
    iget-object v2, v1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    iget v3, v1, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-virtual {p0, v2, v3}, Lorg/joni/ArrayCompiler;->compileTreeNTimes(Lorg/joni/ast/Node;I)V

    .line 923
    iget-object v2, v1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v0

    .line 924
    .restart local v0    # "len":I
    const/16 v2, 0x38

    add-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 925
    iget-object v2, v1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 926
    const/16 v2, 0x39

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 927
    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x2

    neg-int v2, v2

    invoke-direct {p0, v6, v2}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_0

    .line 929
    .end local v0    # "len":I
    .end local v1    # "qn":Lorg/joni/ast/QuantifierNode;
    :cond_a
    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 930
    iget-object v2, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v2}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 931
    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto/16 :goto_0

    .line 871
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected compileNonCECQuantifierNode(Lorg/joni/ast/QuantifierNode;)V
    .locals 14
    .param p1, "qn"    # Lorg/joni/ast/QuantifierNode;

    .prologue
    const/16 v13, 0x32

    const/4 v12, 0x2

    const/16 v11, 0x38

    const/4 v10, 0x1

    const/16 v9, 0x37

    .line 694
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    invoke-static {v7}, Lorg/joni/ast/QuantifierNode;->isRepeatInfinite(I)Z

    move-result v2

    .line 695
    .local v2, "infinite":Z
    iget v0, p1, Lorg/joni/ast/QuantifierNode;->targetEmptyInfo:I

    .line 697
    .local v0, "emptyInfo":I
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v7}, Lorg/joni/ArrayCompiler;->compileLengthTree(Lorg/joni/ast/Node;)I

    move-result v6

    .line 699
    .local v6, "tlen":I
    invoke-virtual {p1}, Lorg/joni/ast/QuantifierNode;->isAnyCharStar()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 700
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    iget v8, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-virtual {p0, v7, v8}, Lorg/joni/ArrayCompiler;->compileTreeNTimes(Lorg/joni/ast/Node;I)V

    .line 701
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v7, :cond_4

    .line 702
    iget-object v7, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v7, v7, Lorg/joni/Regex;->options:I

    invoke-static {v7}, Lorg/joni/Option;->isMultiline(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 703
    iget-object v7, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v7}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x5d

    :goto_0
    invoke-direct {p0, v7}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 707
    :goto_1
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    check-cast v5, Lorg/joni/ast/StringNode;

    .line 708
    .local v5, "sn":Lorg/joni/ast/StringNode;
    iget-object v7, v5, Lorg/joni/ast/StringNode;->bytes:[B

    iget v8, v5, Lorg/joni/ast/StringNode;->p:I

    invoke-direct {p0, v7, v8, v10}, Lorg/joni/ArrayCompiler;->addBytes([BII)V

    .line 785
    .end local v5    # "sn":Lorg/joni/ast/StringNode;
    :cond_0
    :goto_2
    return-void

    .line 703
    :cond_1
    const/16 v7, 0x1c

    goto :goto_0

    .line 705
    :cond_2
    iget-object v7, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v7}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x5c

    :goto_3
    invoke-direct {p0, v7}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_1

    :cond_3
    const/16 v7, 0x1b

    goto :goto_3

    .line 711
    :cond_4
    iget-object v7, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v7, v7, Lorg/joni/Regex;->options:I

    invoke-static {v7}, Lorg/joni/Option;->isMultiline(I)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 712
    iget-object v7, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v7}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x5b

    :goto_4
    invoke-direct {p0, v7}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    :cond_5
    const/16 v7, 0x1a

    goto :goto_4

    .line 714
    :cond_6
    iget-object v7, p0, Lorg/joni/ArrayCompiler;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v7}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0x5a

    :goto_5
    invoke-direct {p0, v7}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    goto :goto_2

    :cond_7
    const/16 v7, 0x19

    goto :goto_5

    .line 721
    :cond_8
    if-eqz v0, :cond_a

    .line 722
    add-int/lit8 v3, v6, 0x4

    .line 726
    .local v3, "modTLen":I
    :goto_6
    if-eqz v2, :cond_12

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-le v7, v10, :cond_9

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    mul-int/2addr v7, v6

    if-gt v7, v13, :cond_12

    .line 727
    :cond_9
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-ne v7, v10, :cond_e

    if-le v6, v13, :cond_e

    .line 728
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v7, :cond_d

    .line 729
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    if-eqz v7, :cond_b

    .line 730
    const/4 v7, 0x3

    invoke-direct {p0, v9, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 743
    :goto_7
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v7, :cond_11

    .line 744
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    if-eqz v7, :cond_f

    .line 745
    const/16 v7, 0x3a

    add-int/lit8 v8, v3, 0x2

    invoke-direct {p0, v7, v8}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 746
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->headExact:Lorg/joni/ast/Node;

    check-cast v5, Lorg/joni/ast/StringNode;

    .line 747
    .restart local v5    # "sn":Lorg/joni/ast/StringNode;
    iget-object v7, v5, Lorg/joni/ast/StringNode;->bytes:[B

    iget v8, v5, Lorg/joni/ast/StringNode;->p:I

    invoke-direct {p0, v7, v8, v10}, Lorg/joni/ArrayCompiler;->addBytes([BII)V

    .line 748
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v7, v0}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 749
    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x3

    neg-int v7, v7

    invoke-direct {p0, v9, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_2

    .line 724
    .end local v3    # "modTLen":I
    .end local v5    # "sn":Lorg/joni/ast/StringNode;
    :cond_a
    move v3, v6

    .restart local v3    # "modTLen":I
    goto :goto_6

    .line 731
    :cond_b
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v7, :cond_c

    .line 732
    const/4 v7, 0x3

    invoke-direct {p0, v9, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto :goto_7

    .line 734
    :cond_c
    invoke-direct {p0, v9, v12}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto :goto_7

    .line 737
    :cond_d
    invoke-direct {p0, v9, v12}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto :goto_7

    .line 740
    :cond_e
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    iget v8, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-virtual {p0, v7, v8}, Lorg/joni/ArrayCompiler;->compileTreeNTimes(Lorg/joni/ast/Node;I)V

    goto :goto_7

    .line 750
    :cond_f
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    if-eqz v7, :cond_10

    .line 751
    const/16 v7, 0x3b

    add-int/lit8 v8, v3, 0x2

    invoke-direct {p0, v7, v8}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 752
    iget-object v5, p1, Lorg/joni/ast/QuantifierNode;->nextHeadExact:Lorg/joni/ast/Node;

    check-cast v5, Lorg/joni/ast/StringNode;

    .line 753
    .restart local v5    # "sn":Lorg/joni/ast/StringNode;
    iget-object v7, v5, Lorg/joni/ast/StringNode;->bytes:[B

    iget v8, v5, Lorg/joni/ast/StringNode;->p:I

    invoke-direct {p0, v7, v8, v10}, Lorg/joni/ArrayCompiler;->addBytes([BII)V

    .line 754
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v7, v0}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 755
    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x3

    neg-int v7, v7

    invoke-direct {p0, v9, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_2

    .line 757
    .end local v5    # "sn":Lorg/joni/ast/StringNode;
    :cond_10
    add-int/lit8 v7, v3, 0x2

    invoke-direct {p0, v11, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 758
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v7, v0}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 759
    add-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x2

    neg-int v7, v7

    invoke-direct {p0, v9, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_2

    .line 762
    :cond_11
    invoke-direct {p0, v9, v3}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 763
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-direct {p0, v7, v0}, Lorg/joni/ArrayCompiler;->compileTreeEmptyCheck(Lorg/joni/ast/Node;I)V

    .line 764
    add-int/lit8 v7, v3, 0x2

    neg-int v7, v7

    invoke-direct {p0, v11, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    goto/16 :goto_2

    .line 766
    :cond_12
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-nez v7, :cond_13

    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->isRefered:Z

    if-eqz v7, :cond_13

    .line 767
    invoke-direct {p0, v9, v6}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 768
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v7}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    goto/16 :goto_2

    .line 769
    :cond_13
    if-nez v2, :cond_15

    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-eqz v7, :cond_15

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-eq v7, v10, :cond_14

    add-int/lit8 v7, v6, 0x2

    iget v8, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    mul-int/2addr v7, v8

    if-gt v7, v13, :cond_15

    .line 771
    :cond_14
    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    iget v8, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    sub-int v4, v7, v8

    .line 772
    .local v4, "n":I
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    iget v8, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    invoke-virtual {p0, v7, v8}, Lorg/joni/ArrayCompiler;->compileTreeNTimes(Lorg/joni/ast/Node;I)V

    .line 774
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v4, :cond_0

    .line 775
    sub-int v7, v4, v1

    mul-int/2addr v7, v6

    sub-int v8, v4, v1

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {p0, v11, v7}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 776
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v7}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 774
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 778
    .end local v1    # "i":I
    .end local v4    # "n":I
    :cond_15
    iget-boolean v7, p1, Lorg/joni/ast/QuantifierNode;->greedy:Z

    if-nez v7, :cond_16

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->upper:I

    if-ne v7, v10, :cond_16

    iget v7, p1, Lorg/joni/ast/QuantifierNode;->lower:I

    if-nez v7, :cond_16

    .line 779
    invoke-direct {p0, v11, v12}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 780
    invoke-direct {p0, v9, v6}, Lorg/joni/ArrayCompiler;->addOpcodeRelAddr(II)V

    .line 781
    iget-object v7, p1, Lorg/joni/ast/QuantifierNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v7}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    goto/16 :goto_2

    .line 783
    :cond_16
    invoke-direct {p0, p1, v3, v0}, Lorg/joni/ArrayCompiler;->compileRangeRepeatNode(Lorg/joni/ast/QuantifierNode;II)V

    goto/16 :goto_2
.end method

.method protected compileOptionNode(Lorg/joni/ast/EncloseNode;)V
    .locals 4
    .param p1, "node"    # Lorg/joni/ast/EncloseNode;

    .prologue
    const/16 v3, 0x57

    .line 802
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v0, v1, Lorg/joni/Regex;->options:I

    .line 804
    .local v0, "prev":I
    iget v1, p1, Lorg/joni/ast/EncloseNode;->option:I

    xor-int/2addr v1, v0

    invoke-static {v1}, Lorg/joni/Option;->isDynamic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    const/16 v1, 0x56

    iget v2, p1, Lorg/joni/ast/EncloseNode;->option:I

    invoke-direct {p0, v1, v2}, Lorg/joni/ArrayCompiler;->addOpcodeOption(II)V

    .line 806
    invoke-direct {p0, v3, v0}, Lorg/joni/ArrayCompiler;->addOpcodeOption(II)V

    .line 807
    const/16 v1, 0x36

    invoke-direct {p0, v1}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 810
    :cond_0
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v2, p1, Lorg/joni/ast/EncloseNode;->option:I

    iput v2, v1, Lorg/joni/Regex;->options:I

    .line 811
    iget-object v1, p1, Lorg/joni/ast/EncloseNode;->target:Lorg/joni/ast/Node;

    invoke-virtual {p0, v1}, Lorg/joni/ArrayCompiler;->compileTree(Lorg/joni/ast/Node;)V

    .line 812
    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iput v0, v1, Lorg/joni/Regex;->options:I

    .line 814
    iget v1, p1, Lorg/joni/ast/EncloseNode;->option:I

    xor-int/2addr v1, v0

    invoke-static {v1}, Lorg/joni/Option;->isDynamic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 815
    invoke-direct {p0, v3, v0}, Lorg/joni/ArrayCompiler;->addOpcodeOption(II)V

    .line 817
    :cond_1
    return-void
.end method

.method protected final finish()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/joni/ArrayCompiler;->addOpcode(I)V

    .line 69
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    iput-object v1, v0, Lorg/joni/Regex;->code:[I

    .line 70
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v1, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    iput v1, v0, Lorg/joni/Regex;->codeLength:I

    .line 71
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v1, p0, Lorg/joni/ArrayCompiler;->templates:[[B

    iput-object v1, v0, Lorg/joni/Regex;->templates:[[B

    .line 72
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget v1, p0, Lorg/joni/ArrayCompiler;->templateNum:I

    iput v1, v0, Lorg/joni/Regex;->templateNum:I

    .line 73
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    sget-object v1, Lorg/joni/MatcherFactory;->DEFAULT:Lorg/joni/MatcherFactory;

    iput-object v1, v0, Lorg/joni/Regex;->factory:Lorg/joni/MatcherFactory;

    .line 75
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v0, v0, Lorg/joni/ScanEnvironment;->unsetAddrList:Lorg/joni/UnsetAddrList;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    iget-object v0, v0, Lorg/joni/ScanEnvironment;->unsetAddrList:Lorg/joni/UnsetAddrList;

    iget-object v1, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    invoke-virtual {v0, v1}, Lorg/joni/UnsetAddrList;->fix(Lorg/joni/Regex;)V

    .line 77
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->analyser:Lorg/joni/Analyser;

    iget-object v0, v0, Lorg/joni/Analyser;->env:Lorg/joni/ScanEnvironment;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/joni/ScanEnvironment;->unsetAddrList:Lorg/joni/UnsetAddrList;

    .line 79
    :cond_0
    return-void
.end method

.method protected final prepare()V
    .locals 2

    .prologue
    .line 59
    const/16 v0, 0x8

    .line 60
    .local v0, "codeSize":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/joni/ArrayCompiler;->code:[I

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lorg/joni/ArrayCompiler;->codeLength:I

    .line 62
    return-void
.end method

.method setInt(II)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "offset"    # I

    .prologue
    .line 1154
    invoke-direct {p0, p2}, Lorg/joni/ArrayCompiler;->ensure(I)V

    .line 1155
    iget-object v0, p0, Lorg/joni/ArrayCompiler;->regex:Lorg/joni/Regex;

    iget-object v0, v0, Lorg/joni/Regex;->code:[I

    aput p1, v0, p2

    .line 1156
    return-void
.end method
