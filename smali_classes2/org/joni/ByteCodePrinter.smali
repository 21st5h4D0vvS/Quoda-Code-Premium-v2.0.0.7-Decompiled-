.class Lorg/joni/ByteCodePrinter;
.super Ljava/lang/Object;
.source "ByteCodePrinter.java"


# instance fields
.field final code:[I

.field final codeLength:I

.field enc:Lorg/jcodings/Encoding;

.field operands:[Ljava/lang/Object;

.field operantCount:I

.field final templates:[[B

.field warnings:Lorg/joni/WarnCallback;


# direct methods
.method public constructor <init>(Lorg/joni/Regex;)V
    .locals 1
    .param p1, "regex"    # Lorg/joni/Regex;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iget-object v0, p1, Lorg/joni/Regex;->code:[I

    iput-object v0, p0, Lorg/joni/ByteCodePrinter;->code:[I

    .line 41
    iget v0, p1, Lorg/joni/Regex;->codeLength:I

    iput v0, p0, Lorg/joni/ByteCodePrinter;->codeLength:I

    .line 42
    iget-object v0, p1, Lorg/joni/Regex;->operands:[Ljava/lang/Object;

    iput-object v0, p0, Lorg/joni/ByteCodePrinter;->operands:[Ljava/lang/Object;

    .line 43
    iget v0, p1, Lorg/joni/Regex;->operandLength:I

    iput v0, p0, Lorg/joni/ByteCodePrinter;->operantCount:I

    .line 45
    iget-object v0, p1, Lorg/joni/Regex;->templates:[[B

    iput-object v0, p0, Lorg/joni/ByteCodePrinter;->templates:[[B

    .line 46
    iget-object v0, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iput-object v0, p0, Lorg/joni/ByteCodePrinter;->enc:Lorg/jcodings/Encoding;

    .line 47
    iget-object v0, p1, Lorg/joni/Regex;->warnings:Lorg/joni/WarnCallback;

    iput-object v0, p0, Lorg/joni/ByteCodePrinter;->warnings:Lorg/joni/WarnCallback;

    .line 48
    return-void
.end method

.method private compiledByteCodeListToString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v3, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "code length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/ByteCodePrinter;->codeLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, "ncode":I
    const/4 v0, 0x0

    .line 408
    .local v0, "bp":I
    iget v1, p0, Lorg/joni/ByteCodePrinter;->codeLength:I

    .line 410
    .local v1, "end":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 411
    add-int/lit8 v2, v2, 0x1

    .line 413
    if-lez v0, :cond_0

    rem-int/lit8 v4, v2, 0x5

    if-nez v4, :cond_1

    const-string v4, "\n"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    invoke-virtual {p0, v3, v0}, Lorg/joni/ByteCodePrinter;->compiledByteCodeToString(Ljava/lang/StringBuilder;I)I

    move-result v0

    goto :goto_0

    .line 413
    :cond_1
    const-string v4, " "

    goto :goto_1

    .line 417
    :cond_2
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private pLenString(Ljava/lang/StringBuilder;III)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "len"    # I
    .param p3, "mbLen"    # I
    .param p4, "s"    # I

    .prologue
    .line 65
    mul-int v1, p2, p3

    .line 66
    .local v1, "x":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1    # "x":I
    .local v2, "x":I
    move v0, p4

    .line 67
    .end local p4    # "s":I
    .local v0, "s":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "x":I
    .restart local v1    # "x":I
    if-lez v2, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/joni/ByteCodePrinter;->code:[I

    add-int/lit8 p4, v0, 0x1

    .end local v0    # "s":I
    .restart local p4    # "s":I
    aget v6, v6, v0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1    # "x":I
    .restart local v2    # "x":I
    move v0, p4

    .end local p4    # "s":I
    .restart local v0    # "s":I
    goto :goto_0

    .line 68
    .end local v2    # "x":I
    .restart local v1    # "x":I
    :cond_0
    return-void
.end method

.method private pLenStringFromTemplate(Ljava/lang/StringBuilder;II[BI)V
    .locals 7
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "len"    # I
    .param p3, "mbLen"    # I
    .param p4, "tm"    # [B
    .param p5, "idx"    # I

    .prologue
    .line 71
    mul-int v1, p2, p3

    .line 72
    .local v1, "x":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1    # "x":I
    .local v2, "x":I
    move v0, p5

    .line 73
    .end local p5    # "idx":I
    .local v0, "idx":I
    :goto_0
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "x":I
    .restart local v1    # "x":I
    if-lez v2, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v5, 0x0

    add-int/lit8 p5, v0, 0x1

    .end local v0    # "idx":I
    .restart local p5    # "idx":I
    aget-byte v6, p4, v0

    aput-byte v6, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    .end local v1    # "x":I
    .restart local v2    # "x":I
    move v0, p5

    .end local p5    # "idx":I
    .restart local v0    # "idx":I
    goto :goto_0

    .line 74
    .end local v2    # "x":I
    .restart local v1    # "x":I
    :cond_0
    return-void
.end method

.method private pString(Ljava/lang/StringBuilder;II)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "len"    # I
    .param p3, "s"    # I

    .prologue
    .line 55
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p3

    .end local p3    # "s":I
    .local v1, "s":I
    move v0, p2

    .line 56
    .end local p2    # "len":I
    .local v0, "len":I
    :goto_0
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "len":I
    .restart local p2    # "len":I
    if-lez v0, :cond_0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/joni/ByteCodePrinter;->code:[I

    add-int/lit8 p3, v1, 0x1

    .end local v1    # "s":I
    .restart local p3    # "s":I
    aget v5, v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, p3

    .end local p3    # "s":I
    .restart local v1    # "s":I
    move v0, p2

    .end local p2    # "len":I
    .restart local v0    # "len":I
    goto :goto_0

    .line 57
    .end local v0    # "len":I
    .restart local p2    # "len":I
    :cond_0
    return-void
.end method

.method private pStringFromTemplate(Ljava/lang/StringBuilder;I[BI)V
    .locals 6
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "len"    # I
    .param p3, "tm"    # [B
    .param p4, "idx"    # I

    .prologue
    .line 60
    const-string v2, ":T:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p4

    .end local p4    # "idx":I
    .local v0, "idx":I
    move v1, p2

    .line 61
    .end local p2    # "len":I
    .local v1, "len":I
    :goto_0
    add-int/lit8 p2, v1, -0x1

    .end local v1    # "len":I
    .restart local p2    # "len":I
    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    add-int/lit8 p4, v0, 0x1

    .end local v0    # "idx":I
    .restart local p4    # "idx":I
    aget-byte v5, p3, v0

    aput-byte v5, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p4

    .end local p4    # "idx":I
    .restart local v0    # "idx":I
    move v1, p2

    .end local p2    # "len":I
    .restart local v1    # "len":I
    goto :goto_0

    .line 62
    .end local v1    # "len":I
    .restart local p2    # "len":I
    :cond_0
    return-void
.end method


# virtual methods
.method public byteCodeListToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lorg/joni/ByteCodePrinter;->compiledByteCodeListToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public compiledByteCodeToString(Ljava/lang/StringBuilder;I)I
    .locals 28
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "bp"    # I

    .prologue
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lorg/joni/constants/OPCode;->OpCodeNames:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v6, v6, p2

    aget-object v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    sget-object v3, Lorg/joni/constants/OPCode;->OpCodeArgTypes:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    aget v11, v3, v4

    .line 84
    .local v11, "argType":I
    move/from16 v19, p2

    .line 85
    .local v19, "ip":I
    const/4 v3, -0x1

    if-eq v11, v3, :cond_1

    .line 86
    add-int/lit8 p2, p2, 0x1

    .line 87
    packed-switch v11, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    :pswitch_0
    const-string v3, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    return p2

    .line 92
    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 p2, p2, 0x1

    .line 94
    goto :goto_0

    .line 97
    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    add-int/lit8 p2, p2, 0x1

    .line 99
    goto :goto_0

    .line 102
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    add-int/lit8 p2, p2, 0x1

    .line 104
    goto :goto_0

    .line 107
    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 p2, p2, 0x1

    .line 109
    goto/16 :goto_0

    .line 112
    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 p2, p2, 0x1

    .line 114
    goto/16 :goto_0

    .line 117
    :pswitch_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    .line 122
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    add-int/lit8 v12, p2, 0x1

    .end local p2    # "bp":I
    .local v12, "bp":I
    aget v3, v3, p2

    sparse-switch v3, :sswitch_data_0

    .line 390
    new-instance v3, Lorg/joni/exception/InternalException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "undefined code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/joni/ByteCodePrinter;->code:[I

    add-int/lit8 p2, v12, -0x1

    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    aget v6, v6, p2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_0
    const/4 v3, 0x1

    add-int/lit8 p2, v12, 0x1

    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    goto/16 :goto_0

    .line 132
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 133
    add-int/lit8 p2, v12, 0x2

    .line 134
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 137
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_2
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 138
    add-int/lit8 p2, v12, 0x3

    .line 139
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 142
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_3
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 143
    add-int/lit8 p2, v12, 0x4

    .line 144
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 147
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_4
    const/4 v3, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 148
    add-int/lit8 p2, v12, 0x5

    .line 149
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 152
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 153
    .local v5, "len":I
    add-int/lit8 p2, v12, 0x1

    .line 155
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v27, v3, p2

    .line 156
    .local v27, "tm":I
    add-int/lit8 p2, p2, 0x1

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v8, v3, p2

    .line 158
    .local v8, "idx":I
    add-int/lit8 p2, p2, 0x1

    .line 159
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->templates:[[B

    aget-object v7, v3, v27

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/joni/ByteCodePrinter;->pLenStringFromTemplate(Ljava/lang/StringBuilder;II[BI)V

    goto/16 :goto_0

    .line 167
    .end local v5    # "len":I
    .end local v8    # "idx":I
    .end local v27    # "tm":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_6
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 168
    add-int/lit8 p2, v12, 0x2

    .line 169
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 172
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_7
    const/4 v3, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 173
    add-int/lit8 p2, v12, 0x4

    .line 174
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 177
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_8
    const/4 v3, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 178
    add-int/lit8 p2, v12, 0x6

    .line 179
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 182
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 183
    .restart local v5    # "len":I
    add-int/lit8 p2, v12, 0x1

    .line 185
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v27, v3, p2

    .line 186
    .restart local v27    # "tm":I
    add-int/lit8 p2, p2, 0x1

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v8, v3, p2

    .line 188
    .restart local v8    # "idx":I
    add-int/lit8 p2, p2, 0x1

    .line 189
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->templates:[[B

    aget-object v7, v3, v27

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/joni/ByteCodePrinter;->pLenStringFromTemplate(Ljava/lang/StringBuilder;II[BI)V

    goto/16 :goto_0

    .line 197
    .end local v5    # "len":I
    .end local v8    # "idx":I
    .end local v27    # "tm":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 198
    .restart local v5    # "len":I
    add-int/lit8 p2, v12, 0x1

    .line 200
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v27, v3, p2

    .line 201
    .restart local v27    # "tm":I
    add-int/lit8 p2, p2, 0x1

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v8, v3, p2

    .line 203
    .restart local v8    # "idx":I
    add-int/lit8 p2, p2, 0x1

    .line 204
    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->templates:[[B

    aget-object v7, v3, v27

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/joni/ByteCodePrinter;->pLenStringFromTemplate(Ljava/lang/StringBuilder;II[BI)V

    goto/16 :goto_0

    .line 212
    .end local v5    # "len":I
    .end local v8    # "idx":I
    .end local v27    # "tm":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v21, v3, v12

    .line 213
    .local v21, "mbLen":I
    add-int/lit8 p2, v12, 0x1

    .line 214
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, p2

    .line 215
    .restart local v5    # "len":I
    add-int/lit8 p2, p2, 0x1

    .line 216
    mul-int v23, v5, v21

    .line 219
    .local v23, "n":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v27, v3, p2

    .line 220
    .restart local v27    # "tm":I
    add-int/lit8 p2, p2, 0x1

    .line 221
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v8, v3, p2

    .line 222
    .restart local v8    # "idx":I
    add-int/lit8 p2, p2, 0x1

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":T:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v8

    .end local v8    # "idx":I
    .local v18, "idx":I
    move/from16 v24, v23

    .line 225
    .end local v23    # "n":I
    .local v24, "n":I
    :goto_1
    add-int/lit8 v23, v24, -0x1

    .end local v24    # "n":I
    .restart local v23    # "n":I
    if-lez v24, :cond_0

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/joni/ByteCodePrinter;->templates:[[B

    aget-object v7, v7, v27

    add-int/lit8 v8, v18, 0x1

    .end local v18    # "idx":I
    .restart local v8    # "idx":I
    aget-byte v7, v7, v18

    aput-byte v7, v4, v6

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v18, v8

    .end local v8    # "idx":I
    .restart local v18    # "idx":I
    move/from16 v24, v23

    .end local v23    # "n":I
    .restart local v24    # "n":I
    goto :goto_1

    .line 236
    .end local v5    # "len":I
    .end local v18    # "idx":I
    .end local v21    # "mbLen":I
    .end local v24    # "n":I
    .end local v27    # "tm":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_c
    const/4 v9, 0x6

    .line 237
    .local v9, "MAX_CHAR_LENGTH":I
    const/4 v3, 0x6

    new-array v14, v3, [B

    .line 238
    .local v14, "bytes":[B
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    add-int v3, v12, v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    const/4 v3, 0x6

    move/from16 v0, v17

    if-ge v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    add-int v4, v12, v17

    aget v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v14, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 239
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->enc:Lorg/jcodings/Encoding;

    const/4 v4, 0x0

    const/4 v6, 0x6

    invoke-virtual {v3, v14, v4, v6}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v5

    .line 240
    .restart local v5    # "len":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 241
    add-int p2, v12, v5

    .line 242
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    goto/16 :goto_0

    .line 246
    .end local v5    # "len":I
    .end local v9    # "MAX_CHAR_LENGTH":I
    .end local v14    # "bytes":[B
    .end local v17    # "i":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 247
    .restart local v5    # "len":I
    add-int/lit8 p2, v12, 0x1

    .line 249
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v27, v3, p2

    .line 250
    .restart local v27    # "tm":I
    add-int/lit8 p2, p2, 0x1

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v8, v3, p2

    .line 252
    .restart local v8    # "idx":I
    add-int/lit8 p2, p2, 0x1

    .line 253
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->templates:[[B

    aget-object v7, v3, v27

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lorg/joni/ByteCodePrinter;->pLenStringFromTemplate(Ljava/lang/StringBuilder;II[BI)V

    goto/16 :goto_0

    .line 262
    .end local v5    # "len":I
    .end local v8    # "idx":I
    .end local v27    # "tm":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_e
    new-instance v13, Lorg/joni/BitSet;

    invoke-direct {v13}, Lorg/joni/BitSet;-><init>()V

    .line 263
    .local v13, "bs":Lorg/joni/BitSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    iget-object v4, v13, Lorg/joni/BitSet;->bits:[I

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v3, v12, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-virtual {v13}, Lorg/joni/BitSet;->numOn()I

    move-result v23

    .line 265
    .restart local v23    # "n":I
    add-int/lit8 p2, v12, 0x8

    .line 266
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 271
    .end local v13    # "bs":Lorg/joni/BitSet;
    .end local v23    # "n":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_f
    new-instance v13, Lorg/joni/BitSet;

    invoke-direct {v13}, Lorg/joni/BitSet;-><init>()V

    .line 272
    .restart local v13    # "bs":Lorg/joni/BitSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    iget-object v4, v13, Lorg/joni/BitSet;->bits:[I

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v3, v12, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    invoke-virtual {v13}, Lorg/joni/BitSet;->numOn()I

    move-result v23

    .line 274
    .restart local v23    # "n":I
    add-int/lit8 p2, v12, 0x8

    .line 275
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 280
    .end local v13    # "bs":Lorg/joni/BitSet;
    .end local v23    # "n":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 281
    .restart local v5    # "len":I
    add-int/lit8 p2, v12, 0x1

    .line 282
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v16, v3, p2

    .line 284
    .local v16, "cod":I
    add-int p2, p2, v5

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 290
    .end local v5    # "len":I
    .end local v16    # "cod":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_11
    new-instance v13, Lorg/joni/BitSet;

    invoke-direct {v13}, Lorg/joni/BitSet;-><init>()V

    .line 291
    .restart local v13    # "bs":Lorg/joni/BitSet;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    iget-object v4, v13, Lorg/joni/BitSet;->bits:[I

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-static {v3, v12, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    invoke-virtual {v13}, Lorg/joni/BitSet;->numOn()I

    move-result v23

    .line 293
    .restart local v23    # "n":I
    add-int/lit8 p2, v12, 0x8

    .line 294
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, p2

    .line 295
    .restart local v5    # "len":I
    add-int/lit8 p2, p2, 0x1

    .line 296
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v16, v3, p2

    .line 298
    .restart local v16    # "cod":I
    add-int p2, p2, v5

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 303
    .end local v5    # "len":I
    .end local v13    # "bs":Lorg/joni/BitSet;
    .end local v16    # "cod":I
    .end local v23    # "n":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->operands:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v4, v4, v12

    aget-object v15, v3, v4

    check-cast v15, Lorg/joni/ast/CClassNode;

    .line 304
    .local v15, "cc":Lorg/joni/ast/CClassNode;
    add-int/lit8 p2, v12, 0x1

    .line 305
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    iget-object v3, v15, Lorg/joni/ast/CClassNode;->bs:Lorg/joni/BitSet;

    invoke-virtual {v3}, Lorg/joni/BitSet;->numOn()I

    move-result v23

    .line 306
    .restart local v23    # "n":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 310
    .end local v15    # "cc":Lorg/joni/ast/CClassNode;
    .end local v23    # "n":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v22, v3, v12

    .line 311
    .local v22, "mem":I
    add-int/lit8 p2, v12, 0x1

    .line 312
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 317
    .end local v22    # "mem":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_14
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 319
    .restart local v5    # "len":I
    add-int/lit8 p2, v12, 0x1

    .line 320
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_3
    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v22, v3, p2

    .line 322
    .restart local v22    # "mem":I
    add-int/lit8 p2, p2, 0x1

    .line 323
    if-lez v17, :cond_3

    const-string v3, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 329
    .end local v5    # "len":I
    .end local v17    # "i":I
    .end local v22    # "mem":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v25, v3, v12

    .line 330
    .local v25, "option":I
    add-int/lit8 p2, v12, 0x1

    .line 331
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v20, v3, p2

    .line 333
    .local v20, "level":I
    add-int/lit8 p2, p2, 0x1

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v3, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, p2

    .line 337
    .restart local v5    # "len":I
    add-int/lit8 p2, p2, 0x1

    .line 338
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v22, v3, p2

    .line 340
    .restart local v22    # "mem":I
    add-int/lit8 p2, p2, 0x1

    .line 341
    if-lez v17, :cond_4

    const-string v3, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 349
    .end local v5    # "len":I
    .end local v17    # "i":I
    .end local v20    # "level":I
    .end local v22    # "mem":I
    .end local v25    # "option":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v22, v3, v12

    .line 350
    .restart local v22    # "mem":I
    add-int/lit8 p2, v12, 0x1

    .line 351
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v10, v3, p2

    .line 352
    .local v10, "addr":I
    add-int/lit8 p2, p2, 0x1

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 358
    .end local v10    # "addr":I
    .end local v22    # "mem":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v10, v3, v12

    .line 359
    .restart local v10    # "addr":I
    add-int/lit8 p2, v12, 0x1

    .line 360
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v2}, Lorg/joni/ByteCodePrinter;->pString(Ljava/lang/StringBuilder;II)V

    .line 362
    add-int/lit8 p2, p2, 0x1

    .line 363
    goto/16 :goto_0

    .line 367
    .end local v10    # "addr":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, v12

    .line 368
    .restart local v5    # "len":I
    add-int/lit8 p2, v12, 0x1

    .line 369
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 373
    .end local v5    # "len":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v10, v3, v12

    .line 374
    .restart local v10    # "addr":I
    add-int/lit8 p2, v12, 0x1

    .line 375
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v5, v3, p2

    .line 376
    .restart local v5    # "len":I
    add-int/lit8 p2, p2, 0x1

    .line 377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 382
    .end local v5    # "len":I
    .end local v10    # "addr":I
    .end local p2    # "bp":I
    .restart local v12    # "bp":I
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v26, v3, v12

    .line 383
    .local v26, "scn":I
    add-int/lit8 p2, v12, 0x1

    .line 384
    .end local v12    # "bp":I
    .restart local p2    # "bp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/joni/ByteCodePrinter;->code:[I

    aget v10, v3, p2

    .line 385
    .restart local v10    # "addr":I
    add-int/lit8 p2, p2, 0x1

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 122
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_9
        0xc -> :sswitch_a
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_f
        0x14 -> :sswitch_10
        0x15 -> :sswitch_11
        0x16 -> :sswitch_12
        0x1b -> :sswitch_0
        0x1c -> :sswitch_0
        0x2c -> :sswitch_13
        0x2d -> :sswitch_14
        0x2e -> :sswitch_14
        0x2f -> :sswitch_15
        0x3a -> :sswitch_17
        0x3b -> :sswitch_17
        0x3c -> :sswitch_16
        0x3d -> :sswitch_16
        0x4c -> :sswitch_18
        0x4d -> :sswitch_19
        0x51 -> :sswitch_1a
        0x52 -> :sswitch_1a
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x60 -> :sswitch_e
        0x61 -> :sswitch_f
        0x68 -> :sswitch_18
        0x69 -> :sswitch_c
        0x6a -> :sswitch_d
    .end sparse-switch
.end method
