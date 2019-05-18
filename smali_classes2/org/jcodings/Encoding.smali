.class public abstract Lorg/jcodings/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CHAR_INVALID:I = -0x1

.field public static final NEW_LINE:B = 0xat

.field private static count:I


# instance fields
.field protected charset:Ljava/nio/charset/Charset;

.field protected hashCode:I

.field private index:I

.field protected final isAsciiCompatible:Z

.field protected final isDummy:Z

.field protected final isFixedWidth:Z

.field protected final isSingleByte:Z

.field protected final maxLength:I

.field protected final minLength:I

.field protected name:[B


# direct methods
.method protected constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jcodings/Encoding;-><init>(Ljava/lang/String;IIZ)V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;IIZ)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "isDummy"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jcodings/Encoding;->charset:Ljava/nio/charset/Charset;

    .line 44
    invoke-virtual {p0, p1}, Lorg/jcodings/Encoding;->setName(Ljava/lang/String;)V

    .line 46
    iput p2, p0, Lorg/jcodings/Encoding;->minLength:I

    .line 47
    iput p3, p0, Lorg/jcodings/Encoding;->maxLength:I

    .line 48
    if-ne p2, p3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/jcodings/Encoding;->isFixedWidth:Z

    .line 49
    iget-boolean v0, p0, Lorg/jcodings/Encoding;->isFixedWidth:Z

    if-eqz v0, :cond_1

    if-ne p2, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/jcodings/Encoding;->isSingleByte:Z

    .line 50
    sget v0, Lorg/jcodings/Encoding;->count:I

    add-int/lit8 v3, v0, 0x1

    sput v3, Lorg/jcodings/Encoding;->count:I

    iput v0, p0, Lorg/jcodings/Encoding;->index:I

    .line 52
    iput-boolean p4, p0, Lorg/jcodings/Encoding;->isDummy:Z

    .line 53
    if-ne p2, v1, :cond_2

    if-nez p4, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/jcodings/Encoding;->isAsciiCompatible:Z

    .line 54
    return-void

    :cond_0
    move v0, v2

    .line 48
    goto :goto_0

    :cond_1
    move v0, v2

    .line 49
    goto :goto_1

    :cond_2
    move v1, v2

    .line 53
    goto :goto_2
.end method

.method public static asciiToLower(I)B
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 510
    sget-object v0, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method public static asciiToUpper(I)B
    .locals 1
    .param p0, "c"    # I

    .prologue
    .line 514
    sget-object v0, Lorg/jcodings/ascii/AsciiTables;->ToUpperCaseTable:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method public static digitVal(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 480
    add-int/lit8 v0, p0, -0x30

    return v0
.end method

.method public static isAscii(B)Z
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 506
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAscii(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 502
    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMbcAscii(B)Z
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 497
    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWordGraphPrint(I)Z
    .locals 1
    .param p0, "ctype"    # I

    .prologue
    .line 518
    const/16 v0, 0xc

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static load(Ljava/lang/String;)Lorg/jcodings/Encoding;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 538
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "org.jcodings.specific."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Encoding"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "encClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 548
    .local v2, "encClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    const-string v4, "INSTANCE"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jcodings/Encoding;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 543
    .end local v2    # "encClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 544
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    new-instance v4, Lorg/jcodings/exception/InternalException;

    const-string v5, "encoding class <%n> not found"

    invoke-direct {v4, v5, v3}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    .line 549
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v2    # "encClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/jcodings/exception/InternalException;

    const-string v5, "problem loading encoding <%n>"

    invoke-direct {v4, v5, v3}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method public static odigitVal(I)I
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 484
    invoke-static {p0}, Lorg/jcodings/Encoding;->digitVal(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
.end method

.method public abstract caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
.end method

.method public abstract codeToMbc(I[BI)I
.end method

.method public abstract codeToMbcLength(I)I
.end method

.method public abstract ctypeCodeRange(ILorg/jcodings/IntHolder;)[I
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 77
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->isDummy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jcodings/Encoding;->charset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jcodings/Encoding;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->getCharsetName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/Encoding;->charset:Ljava/nio/charset/Charset;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/jcodings/Encoding;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIndex()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/jcodings/Encoding;->index:I

    return v0
.end method

.method public final getName()[B
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jcodings/Encoding;->name:[B

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/jcodings/Encoding;->hashCode:I

    return v0
.end method

.method public final isAlnum(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 414
    const/16 v0, 0xd

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isAlpha(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 418
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isAsciiCompatible()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/jcodings/Encoding;->isAsciiCompatible:Z

    return v0
.end method

.method public final isBlank(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 442
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isCntrl(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 430
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public abstract isCodeCType(II)Z
.end method

.method public final isDigit(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 446
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isDummy()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/jcodings/Encoding;->isDummy:Z

    return v0
.end method

.method public final isFixedWidth()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lorg/jcodings/Encoding;->isFixedWidth:Z

    return v0
.end method

.method public final isGraph(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 406
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isLower(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 422
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public isMbcCrnl([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 473
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0, p3}, Lorg/jcodings/Encoding;->isNewLine([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMbcHead([BII)Z
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v0, 0x1

    .line 469
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isMbcWord([BII)Z
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 459
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    return v0
.end method

.method public final isNewLine(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public abstract isNewLine([BII)Z
.end method

.method public final isPrint(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 410
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isPunct(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 434
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public abstract isReverseMatchAllowed([BII)Z
.end method

.method public final isSbWord(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 464
    invoke-static {p1}, Lorg/jcodings/Encoding;->isAscii(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/jcodings/Encoding;->isWord(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSingleByte()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lorg/jcodings/Encoding;->isSingleByte:Z

    return v0
.end method

.method public final isSpace(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 438
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isUpper(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 426
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isWord(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 454
    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public final isXDigit(I)Z
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 450
    const/16 v0, 0xb

    invoke-virtual {p0, p1, v0}, Lorg/jcodings/Encoding;->isCodeCType(II)Z

    move-result v0

    return v0
.end method

.method public abstract leftAdjustCharHead([BIII)I
.end method

.method public abstract length(B)I
.end method

.method public abstract length([BII)I
.end method

.method public final maxLength()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/jcodings/Encoding;->maxLength:I

    return v0
.end method

.method public final maxLengthDistance()I
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->maxLength()I

    move-result v0

    return v0
.end method

.method public abstract mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
.end method

.method public abstract mbcToCode([BII)I
.end method

.method public final mbcodeStartPosition()I
    .locals 2

    .prologue
    .line 524
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->minLength()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public final minLength()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lorg/jcodings/Encoding;->minLength:I

    return v0
.end method

.method public final prevCharHead([BIII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 315
    if-gt p3, p2, :cond_0

    const/4 v0, -0x1

    .line 316
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v0

    goto :goto_0
.end method

.method public abstract propertyNameToCType([BII)I
.end method

.method public replicate([B)Lorg/jcodings/Encoding;
    .locals 5
    .param p1, "name"    # [B

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodings/Encoding;

    .line 125
    .local v0, "clone":Lorg/jcodings/Encoding;
    invoke-virtual {v0, p1}, Lorg/jcodings/Encoding;->setName([B)V

    .line 126
    sget v2, Lorg/jcodings/Encoding;->count:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/jcodings/Encoding;->count:I

    iput v2, v0, Lorg/jcodings/Encoding;->index:I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    return-object v0

    .line 128
    .end local v0    # "clone":Lorg/jcodings/Encoding;
    :catch_0
    move-exception v1

    .line 129
    .local v1, "cnse":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Lorg/jcodings/exception/EncodingException;

    const-string v3, "could not replicate <%n> encoding"

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3, v4}, Lorg/jcodings/exception/EncodingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public final rightAdjustCharHead([BIII)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v0

    .line 297
    .local v0, "p_":I
    if-ge v0, p3, :cond_0

    invoke-virtual {p0, p1, v0, p4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 298
    :cond_0
    return v0
.end method

.method public final rightAdjustCharHeadWithPrev([BIIILorg/jcodings/IntHolder;)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I
    .param p5, "prev"    # Lorg/jcodings/IntHolder;

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v0

    .line 304
    .local v0, "p_":I
    if-ge v0, p3, :cond_2

    .line 305
    if-eqz p5, :cond_0

    iput v0, p5, Lorg/jcodings/IntHolder;->value:I

    .line 306
    :cond_0
    invoke-virtual {p0, p1, v0, p4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_1
    :goto_0
    return v0

    .line 308
    :cond_2
    if-eqz p5, :cond_1

    const/4 v1, -0x1

    iput v1, p5, Lorg/jcodings/IntHolder;->value:I

    goto :goto_0
.end method

.method protected final setName(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/Encoding;->name:[B

    .line 62
    iget-object v0, p0, Lorg/jcodings/Encoding;->name:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jcodings/Encoding;->name:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lorg/jcodings/util/BytesHash;->hashCode([BII)I

    move-result v0

    iput v0, p0, Lorg/jcodings/Encoding;->hashCode:I

    .line 63
    return-void
.end method

.method protected final setName([B)V
    .locals 3
    .param p1, "name"    # [B

    .prologue
    .line 66
    iput-object p1, p0, Lorg/jcodings/Encoding;->name:[B

    .line 67
    iget-object v0, p0, Lorg/jcodings/Encoding;->name:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jcodings/Encoding;->name:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lorg/jcodings/util/BytesHash;->hashCode([BII)I

    move-result v0

    iput v0, p0, Lorg/jcodings/Encoding;->hashCode:I

    .line 68
    return-void
.end method

.method public final step([BIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "n"    # I

    .prologue
    .line 330
    move v1, p2

    .local v1, "q":I
    move v0, p4

    .line 331
    .end local p4    # "n":I
    .local v0, "n":I
    :goto_0
    add-int/lit8 p4, v0, -0x1

    .end local v0    # "n":I
    .restart local p4    # "n":I
    if-lez v0, :cond_0

    .line 332
    invoke-virtual {p0, p1, v1, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v2

    add-int/2addr v1, v2

    move v0, p4

    .end local p4    # "n":I
    .restart local v0    # "n":I
    goto :goto_0

    .line 334
    .end local v0    # "n":I
    .restart local p4    # "n":I
    :cond_0
    if-gt v1, p3, :cond_1

    .end local v1    # "q":I
    :goto_1
    return v1

    .restart local v1    # "q":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final stepBack([BIIII)I
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "s"    # I
    .param p4, "end"    # I
    .param p5, "n"    # I

    .prologue
    const/4 v1, -0x1

    .line 321
    move v0, p5

    .end local p5    # "n":I
    .local v0, "n":I
    :goto_0
    if-eq p3, v1, :cond_2

    add-int/lit8 p5, v0, -0x1

    .end local v0    # "n":I
    .restart local p5    # "n":I
    if-lez v0, :cond_0

    .line 322
    if-gt p3, p2, :cond_1

    move p3, v1

    .line 325
    .end local p3    # "s":I
    :cond_0
    :goto_1
    return p3

    .line 323
    .restart local p3    # "s":I
    :cond_1
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, p1, p2, v2, p4}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result p3

    move v0, p5

    .end local p5    # "n":I
    .restart local v0    # "n":I
    goto :goto_0

    :cond_2
    move p5, v0

    .end local v0    # "n":I
    .restart local p5    # "n":I
    goto :goto_1
.end method

.method public final strByteLengthNull([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v5, 0x1

    .line 368
    const/4 v3, 0x0

    .local v3, "start":I
    move v1, v3

    .line 371
    .local v1, "p_":I
    :goto_0
    aget-byte v4, p1, v1

    if-nez v4, :cond_4

    .line 372
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->minLength()I

    move-result v0

    .line 373
    .local v0, "len":I
    if-ne v0, v5, :cond_0

    sub-int v4, v1, v3

    .line 381
    :goto_1
    return v4

    .line 374
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 375
    .local v2, "q":I
    :goto_2
    if-le v0, v5, :cond_2

    .line 376
    array-length v4, p1

    if-lt v2, v4, :cond_1

    sub-int v4, v1, v3

    goto :goto_1

    .line 377
    :cond_1
    aget-byte v4, p1, v2

    if-eqz v4, :cond_3

    .line 381
    :cond_2
    if-ne v0, v5, :cond_4

    sub-int v4, v1, v3

    goto :goto_1

    .line 378
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 379
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 383
    .end local v0    # "len":I
    .end local v2    # "q":I
    :cond_4
    invoke-virtual {p0, p1, v1, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v4

    add-int/2addr v1, v4

    goto :goto_0
.end method

.method public abstract strCodeAt([BIII)I
.end method

.method public abstract strLength([BII)I
.end method

.method public final strLengthNull([BII)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x1

    .line 344
    const/4 v1, 0x0

    .line 347
    .local v1, "n":I
    :goto_0
    aget-byte v3, p1, p2

    if-nez v3, :cond_3

    .line 348
    invoke-virtual {p0}, Lorg/jcodings/Encoding;->minLength()I

    move-result v0

    .line 350
    .local v0, "len":I
    if-ne v0, v4, :cond_1

    .line 358
    :cond_0
    return v1

    .line 351
    :cond_1
    add-int/lit8 v2, p2, 0x1

    .line 353
    .local v2, "q":I
    :goto_1
    if-le v0, v4, :cond_2

    .line 354
    aget-byte v3, p1, v2

    if-eqz v3, :cond_4

    .line 358
    :cond_2
    if-eq v0, v4, :cond_0

    .line 360
    .end local v0    # "len":I
    .end local v2    # "q":I
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr p2, v3

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .restart local v0    # "len":I
    .restart local v2    # "q":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 356
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final strNCmp([BII[BII)I
    .locals 4
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "ascii"    # [B
    .param p5, "asciiP"    # I
    .param p6, "n"    # I

    .prologue
    .line 389
    move v1, p6

    .end local p6    # "n":I
    .local v1, "n":I
    :goto_0
    add-int/lit8 p6, v1, -0x1

    .end local v1    # "n":I
    .restart local p6    # "n":I
    if-lez v1, :cond_2

    .line 390
    if-lt p2, p3, :cond_1

    aget-byte v2, p4, p5

    .line 398
    :cond_0
    :goto_1
    return v2

    .line 391
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    .line 392
    .local v0, "c":I
    aget-byte v3, p4, p5

    sub-int v2, v3, v0

    .line 393
    .local v2, "x":I
    if-nez v2, :cond_0

    .line 395
    add-int/lit8 p5, p5, 0x1

    .line 396
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr p2, v3

    move v1, p6

    .line 397
    .end local p6    # "n":I
    .restart local v1    # "n":I
    goto :goto_0

    .line 398
    .end local v0    # "c":I
    .end local v1    # "n":I
    .end local v2    # "x":I
    .restart local p6    # "n":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public toLowerCaseTable()[B
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/jcodings/Encoding;->name:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public final xdigitVal(I)I
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lorg/jcodings/Encoding;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    invoke-static {p1}, Lorg/jcodings/Encoding;->digitVal(I)I

    move-result v0

    .line 491
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/jcodings/Encoding;->isUpper(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method
