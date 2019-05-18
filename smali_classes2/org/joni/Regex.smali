.class public final Lorg/joni/Regex;
.super Ljava/lang/Object;
.source "Regex.java"

# interfaces
.implements Lorg/joni/constants/RegexState;


# instance fields
.field anchor:I

.field anchorDmax:I

.field anchorDmin:I

.field btMemEnd:I

.field btMemStart:I

.field captureHistory:I

.field final caseFoldFlag:I

.field code:[I

.field codeLength:I

.field dMax:I

.field dMin:I

.field final enc:Lorg/jcodings/Encoding;

.field exact:[B

.field exactEnd:I

.field exactP:I

.field public factory:Lorg/joni/MatcherFactory;

.field intMap:[I

.field intMapBackward:[I

.field map:[B

.field nameTable:Lorg/jcodings/util/BytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/BytesHash",
            "<",
            "Lorg/joni/NameEntry;",
            ">;"
        }
    .end annotation
.end field

.field numCall:I

.field numCombExpCheck:I

.field numMem:I

.field numNullCheck:I

.field numRepeat:I

.field operandLength:I

.field operands:[Ljava/lang/Object;

.field options:I

.field repeatRangeHi:[I

.field repeatRangeLo:[I

.field searchAlgorithm:Lorg/joni/SearchAlgorithm;

.field stackNeeded:Z

.field stackPopLevel:I

.field state:I

.field subAnchor:I

.field templateNum:I

.field templates:[[B

.field thresholdLength:I

.field userObject:Ljava/lang/Object;

.field userOptions:I

.field public warnings:Lorg/joni/WarnCallback;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 97
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/joni/Regex;-><init>(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lorg/jcodings/Encoding;)V
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 101
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/joni/Regex;-><init>(Ljava/lang/String;Lorg/jcodings/Encoding;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v5, Lorg/jcodings/specific/UTF8Encoding;->INSTANCE:Lorg/jcodings/specific/UTF8Encoding;

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/jcodings/Encoding;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    .line 110
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v2, 0x0

    .line 113
    array-length v3, p1

    sget-object v5, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    .line 114
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 117
    const/4 v4, 0x0

    sget-object v5, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    .line 118
    return-void
.end method

.method public constructor <init>([BIII)V
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I

    .prologue
    .line 121
    sget-object v5, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;)V

    .line 122
    return-void
.end method

.method public constructor <init>([BIIIILorg/jcodings/Encoding;Lorg/joni/Syntax;Lorg/joni/WarnCallback;)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I
    .param p5, "caseFoldFlag"    # I
    .param p6, "enc"    # Lorg/jcodings/Encoding;
    .param p7, "syntax"    # Lorg/joni/Syntax;
    .param p8, "warnings"    # Lorg/joni/WarnCallback;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    and-int/lit16 v0, p4, 0x180

    const/16 v1, 0x180

    if-ne v0, v1, :cond_0

    .line 147
    new-instance v0, Lorg/joni/exception/ValueException;

    const-string v1, "invalid combination of options"

    invoke-direct {v0, v1}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    and-int/lit8 v0, p4, 0x40

    if-eqz v0, :cond_1

    .line 151
    iget v0, p7, Lorg/joni/Syntax;->options:I

    or-int/2addr p4, v0

    .line 152
    and-int/lit8 p4, p4, -0x9

    .line 157
    :goto_0
    iput-object p6, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 158
    iput p4, p0, Lorg/joni/Regex;->options:I

    .line 159
    iput p5, p0, Lorg/joni/Regex;->caseFoldFlag:I

    .line 160
    iput-object p8, p0, Lorg/joni/Regex;->warnings:Lorg/joni/WarnCallback;

    .line 162
    new-instance v0, Lorg/joni/Analyser;

    new-instance v1, Lorg/joni/ScanEnvironment;

    invoke-direct {v1, p0, p7}, Lorg/joni/ScanEnvironment;-><init>(Lorg/joni/Regex;Lorg/joni/Syntax;)V

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/joni/Analyser;-><init>(Lorg/joni/ScanEnvironment;[BII)V

    invoke-virtual {v0}, Lorg/joni/Analyser;->compile()V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joni/Regex;->warnings:Lorg/joni/WarnCallback;

    .line 165
    return-void

    .line 154
    :cond_1
    iget v0, p7, Lorg/joni/Syntax;->options:I

    or-int/2addr p4, v0

    goto :goto_0
.end method

.method public constructor <init>([BIIILorg/jcodings/Encoding;)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I
    .param p5, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 125
    sget-object v6, Lorg/joni/Syntax;->RUBY:Lorg/joni/Syntax;

    sget-object v7, Lorg/joni/WarnCallback;->DEFAULT:Lorg/joni/WarnCallback;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;Lorg/joni/Syntax;Lorg/joni/WarnCallback;)V

    .line 126
    return-void
.end method

.method public constructor <init>([BIIILorg/jcodings/Encoding;Lorg/joni/Syntax;)V
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I
    .param p5, "enc"    # Lorg/jcodings/Encoding;
    .param p6, "syntax"    # Lorg/joni/Syntax;

    .prologue
    .line 130
    const/high16 v5, 0x40000000    # 2.0f

    sget-object v8, Lorg/joni/WarnCallback;->DEFAULT:Lorg/joni/WarnCallback;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lorg/joni/Regex;-><init>([BIIIILorg/jcodings/Encoding;Lorg/joni/Syntax;Lorg/joni/WarnCallback;)V

    .line 131
    return-void
.end method

.method public constructor <init>([BIIILorg/jcodings/Encoding;Lorg/joni/Syntax;Lorg/joni/WarnCallback;)V
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I
    .param p5, "enc"    # Lorg/jcodings/Encoding;
    .param p6, "syntax"    # Lorg/joni/Syntax;
    .param p7, "warnings"    # Lorg/joni/WarnCallback;

    .prologue
    .line 139
    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/joni/Regex;-><init>([BIIIILorg/jcodings/Encoding;Lorg/joni/Syntax;Lorg/joni/WarnCallback;)V

    .line 140
    return-void
.end method

.method public constructor <init>([BIIILorg/jcodings/Encoding;Lorg/joni/WarnCallback;)V
    .locals 8
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I
    .param p4, "option"    # I
    .param p5, "enc"    # Lorg/jcodings/Encoding;
    .param p6, "warnings"    # Lorg/joni/WarnCallback;

    .prologue
    .line 134
    sget-object v6, Lorg/joni/Syntax;->RUBY:Lorg/joni/Syntax;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;Lorg/joni/Syntax;Lorg/joni/WarnCallback;)V

    .line 135
    return-void
.end method


# virtual methods
.method clearOptimizeInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 357
    sget-object v0, Lorg/joni/SearchAlgorithm;->NONE:Lorg/joni/SearchAlgorithm;

    iput-object v0, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    .line 358
    iput v1, p0, Lorg/joni/Regex;->anchor:I

    .line 359
    iput v1, p0, Lorg/joni/Regex;->anchorDmax:I

    .line 360
    iput v1, p0, Lorg/joni/Regex;->anchorDmin:I

    .line 361
    iput v1, p0, Lorg/joni/Regex;->subAnchor:I

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/joni/Regex;->exact:[B

    .line 364
    iput v1, p0, Lorg/joni/Regex;->exactEnd:I

    iput v1, p0, Lorg/joni/Regex;->exactP:I

    .line 365
    return-void
.end method

.method public encStringToString([BII)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 368
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\nPATTERN: /"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 370
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v4}, Lorg/jcodings/Encoding;->minLength()I

    move-result v4

    if-le v4, v7, :cond_1

    .line 371
    move v2, p2

    .line 372
    .local v2, "p_":I
    :goto_0
    if-ge v2, p3, :cond_2

    .line 373
    iget-object v4, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v4, p1, v2, p3}, Lorg/jcodings/Encoding;->mbcToCode([BII)I

    move-result v0

    .line 374
    .local v0, "code":I
    const/16 v4, 0x80

    if-lt v0, v4, :cond_0

    .line 376
    :try_start_0
    const-string v4, " 0x%04x "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/util/IllegalFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_1
    iget-object v4, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v4, p1, v2, p3}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v4

    add-int/2addr v2, v4

    .line 384
    goto :goto_0

    .line 377
    :catch_0
    move-exception v1

    .line 378
    .local v1, "ifce":Ljava/util/IllegalFormatConversionException;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 381
    .end local v1    # "ifce":Ljava/util/IllegalFormatConversionException;
    :cond_0
    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 386
    .end local v0    # "code":I
    .end local v2    # "p_":I
    :cond_1
    :goto_2
    if-ge p2, p3, :cond_2

    .line 387
    new-instance v4, Ljava/lang/String;

    new-array v5, v7, [B

    aget-byte v6, p1, p2

    aput-byte v6, v5, v8

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 391
    :cond_2
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getEncoding()Lorg/jcodings/Encoding;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    return-object v0
.end method

.method public getOptions()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lorg/joni/Regex;->options:I

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lorg/joni/Regex;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserOptions()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/joni/Regex;->userOptions:I

    return v0
.end method

.method public matcher([B)Lorg/joni/Matcher;
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 168
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/joni/Regex;->matcher([BII)Lorg/joni/Matcher;

    move-result-object v0

    return-object v0
.end method

.method public matcher([BII)Lorg/joni/Matcher;
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lorg/joni/Regex;->factory:Lorg/joni/MatcherFactory;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/joni/MatcherFactory;->create(Lorg/joni/Regex;[BII)Lorg/joni/Matcher;

    move-result-object v0

    return-object v0
.end method

.method nameAdd([BIIILorg/joni/Syntax;)V
    .locals 5
    .param p1, "name"    # [B
    .param p2, "nameP"    # I
    .param p3, "nameEnd"    # I
    .param p4, "backRef"    # I
    .param p5, "syntax"    # Lorg/joni/Syntax;

    .prologue
    .line 228
    sub-int v1, p3, p2

    if-gtz v1, :cond_0

    new-instance v1, Lorg/joni/exception/ValueException;

    const-string v2, "group name is empty"

    invoke-direct {v1, v2}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 230
    :cond_0
    const/4 v0, 0x0

    .line 231
    .local v0, "e":Lorg/joni/NameEntry;
    iget-object v1, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    if-nez v1, :cond_2

    .line 232
    new-instance v1, Lorg/jcodings/util/BytesHash;

    invoke-direct {v1}, Lorg/jcodings/util/BytesHash;-><init>()V

    iput-object v1, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    .line 237
    :goto_0
    if-nez v0, :cond_3

    .line 239
    new-instance v0, Lorg/joni/NameEntry;

    .end local v0    # "e":Lorg/joni/NameEntry;
    invoke-direct {v0, p1, p2, p3}, Lorg/joni/NameEntry;-><init>([BII)V

    .line 240
    .restart local v0    # "e":Lorg/joni/NameEntry;
    iget-object v1, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v1, p1, p2, p3, v0}, Lorg/jcodings/util/BytesHash;->putDirect([BIILjava/lang/Object;)V

    .line 245
    :cond_1
    invoke-virtual {v0, p4}, Lorg/joni/NameEntry;->addBackref(I)V

    .line 246
    return-void

    .line 234
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/joni/Regex;->nameFind([BII)Lorg/joni/NameEntry;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_3
    iget v1, v0, Lorg/joni/NameEntry;->backNum:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    invoke-virtual {p5}, Lorg/joni/Syntax;->allowMultiplexDefinitionName()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    new-instance v1, Lorg/joni/exception/ValueException;

    const-string v2, "multiplex defined name <%n>"

    new-instance v3, Ljava/lang/String;

    sub-int v4, p3, p2

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v1, v2, v3}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method nameFind([BII)Lorg/joni/NameEntry;
    .locals 1
    .param p1, "name"    # [B
    .param p2, "nameP"    # I
    .param p3, "nameEnd"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v0, p1, p2, p3}, Lorg/jcodings/util/BytesHash;->get([BII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joni/NameEntry;

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nameTableToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    if-eqz v2, :cond_1

    .line 195
    const-string v2, "name table\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v2, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v2}, Lorg/jcodings/util/BytesHash;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joni/NameEntry;

    .line 197
    .local v0, "ne":Lorg/joni/NameEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    .end local v0    # "ne":Lorg/joni/NameEntry;
    :cond_0
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public nameToBackrefNumber([BIILorg/joni/Region;)I
    .locals 6
    .param p1, "name"    # [B
    .param p2, "nameP"    # I
    .param p3, "nameEnd"    # I
    .param p4, "region"    # Lorg/joni/Region;

    .prologue
    .line 253
    invoke-virtual {p0, p1, p2, p3}, Lorg/joni/Regex;->nameToGroupNumbers([BII)Lorg/joni/NameEntry;

    move-result-object v0

    .line 254
    .local v0, "e":Lorg/joni/NameEntry;
    if-nez v0, :cond_0

    new-instance v2, Lorg/joni/exception/ValueException;

    const-string v3, "undefined name <%n> reference"

    new-instance v4, Ljava/lang/String;

    sub-int v5, p3, p2

    invoke-direct {v4, p1, p2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v2, v3, v4}, Lorg/joni/exception/ValueException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 257
    :cond_0
    iget v2, v0, Lorg/joni/NameEntry;->backNum:I

    packed-switch v2, :pswitch_data_0

    .line 263
    if-eqz p4, :cond_2

    .line 264
    iget v2, v0, Lorg/joni/NameEntry;->backNum:I

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 265
    iget-object v2, p4, Lorg/joni/Region;->beg:[I

    iget-object v3, v0, Lorg/joni/NameEntry;->backRefs:[I

    aget v3, v3, v1

    aget v2, v2, v3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lorg/joni/NameEntry;->backRefs:[I

    aget v2, v2, v1

    .line 268
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 259
    :pswitch_0
    new-instance v2, Lorg/joni/exception/InternalException;

    const-string v3, "internal parser error (bug)"

    invoke-direct {v2, v3}, Lorg/joni/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 261
    :pswitch_1
    iget v2, v0, Lorg/joni/NameEntry;->backRef1:I

    goto :goto_1

    .line 264
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_2
    iget-object v2, v0, Lorg/joni/NameEntry;->backRefs:[I

    iget v3, v0, Lorg/joni/NameEntry;->backNum:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method nameToGroupNumbers([BII)Lorg/joni/NameEntry;
    .locals 1
    .param p1, "name"    # [B
    .param p2, "nameP"    # I
    .param p3, "nameEnd"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1, p2, p3}, Lorg/joni/Regex;->nameFind([BII)Lorg/joni/NameEntry;

    move-result-object v0

    return-object v0
.end method

.method public namedBackrefIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/joni/NameEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v0}, Lorg/jcodings/util/BytesHash;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public noNameGroupIsActive(Lorg/joni/Syntax;)Z
    .locals 2
    .param p1, "syntax"    # Lorg/joni/Syntax;

    .prologue
    const/4 v0, 0x0

    .line 277
    iget v1, p0, Lorg/joni/Regex;->options:I

    invoke-static {v1}, Lorg/joni/Option;->isDontCaptureGroup(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    invoke-virtual {p0}, Lorg/joni/Regex;->numberOfNames()I

    move-result v1

    if-lez v1, :cond_2

    invoke-virtual {p1}, Lorg/joni/Syntax;->captureOnlyNamedGroup()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lorg/joni/Regex;->options:I

    invoke-static {v1}, Lorg/joni/Option;->isCaptureGroup(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public numberOfCaptureHistories()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public numberOfCaptures()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lorg/joni/Regex;->numMem:I

    return v0
.end method

.method public numberOfNames()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v0}, Lorg/jcodings/util/BytesHash;->size()I

    move-result v0

    goto :goto_0
.end method

.method public optimizeInfoToString()Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v7, 0x100

    .line 395
    const-string v3, ""

    .line 396
    .local v3, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "optimize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    invoke-virtual {v5}, Lorg/joni/SearchAlgorithm;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  anchor:     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->anchor:I

    invoke-static {v5}, Lorg/joni/OptAnchorInfo;->anchorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 399
    iget v4, p0, Lorg/joni/Regex;->anchor:I

    and-int/lit8 v4, v4, 0x18

    if-eqz v4, :cond_0

    .line 400
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->anchorDmin:I

    iget v6, p0, Lorg/joni/Regex;->anchorDmax:I

    invoke-static {v5, v6}, Lorg/joni/MinMaxLen;->distanceRangeToString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    iget-object v4, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    sget-object v5, Lorg/joni/SearchAlgorithm;->NONE:Lorg/joni/SearchAlgorithm;

    if-eq v4, v5, :cond_1

    .line 406
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  sub anchor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->subAnchor:I

    invoke-static {v5}, Lorg/joni/OptAnchorInfo;->anchorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "dmin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->dMin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dmax: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->dMax:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "threshold length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->thresholdLength:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    iget-object v4, p0, Lorg/joni/Regex;->exact:[B

    if-eqz v4, :cond_3

    .line 413
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "exact: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/joni/Regex;->exact:[B

    iget v7, p0, Lorg/joni/Regex;->exactP:I

    iget v8, p0, Lorg/joni/Regex;->exactEnd:I

    iget v9, p0, Lorg/joni/Regex;->exactP:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/joni/Regex;->exactEnd:I

    iget v6, p0, Lorg/joni/Regex;->exactP:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    :cond_2
    :goto_0
    return-object v3

    .line 414
    :cond_3
    iget-object v4, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    sget-object v5, Lorg/joni/SearchAlgorithm;->MAP:Lorg/joni/SearchAlgorithm;

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    sget-object v5, Lorg/joni/SearchAlgorithm;->MAP_SB:Lorg/joni/SearchAlgorithm;

    if-ne v4, v5, :cond_2

    .line 415
    :cond_4
    const/4 v2, 0x0

    .line 416
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_6

    iget-object v4, p0, Lorg/joni/Regex;->map:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 418
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "map: n = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 419
    if-lez v2, :cond_2

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "c":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_a

    .line 423
    iget-object v4, p0, Lorg/joni/Regex;->map:[B

    aget-byte v4, v4, v1

    if-eqz v4, :cond_8

    .line 424
    if-lez v0, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 425
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 426
    iget-object v4, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v4}, Lorg/jcodings/Encoding;->maxLength()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v4, v1}, Lorg/jcodings/Encoding;->isPrint(I)Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    int-to-char v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 422
    :cond_8
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 430
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method renumberNameTable([I)V
    .locals 6
    .param p1, "map"    # [I

    .prologue
    const/4 v5, 0x1

    .line 210
    iget-object v2, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    if-eqz v2, :cond_2

    .line 211
    iget-object v2, p0, Lorg/joni/Regex;->nameTable:Lorg/jcodings/util/BytesHash;

    invoke-virtual {v2}, Lorg/jcodings/util/BytesHash;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/joni/NameEntry;

    .line 212
    .local v0, "e":Lorg/joni/NameEntry;
    iget v3, v0, Lorg/joni/NameEntry;->backNum:I

    if-le v3, v5, :cond_1

    .line 213
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v3, v0, Lorg/joni/NameEntry;->backNum:I

    if-ge v1, v3, :cond_0

    .line 214
    iget-object v3, v0, Lorg/joni/NameEntry;->backRefs:[I

    iget-object v4, v0, Lorg/joni/NameEntry;->backRefs:[I

    aget v4, v4, v1

    aget v4, p1, v4

    aput v4, v3, v1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    .end local v1    # "i":I
    :cond_1
    iget v3, v0, Lorg/joni/NameEntry;->backNum:I

    if-ne v3, v5, :cond_0

    .line 217
    iget v3, v0, Lorg/joni/NameEntry;->backRef1:I

    aget v3, p1, v3

    iput v3, v0, Lorg/joni/NameEntry;->backRef1:I

    goto :goto_0

    .line 221
    .end local v0    # "e":Lorg/joni/NameEntry;
    :cond_2
    return-void
.end method

.method setExactInfo(Lorg/joni/OptExactInfo;)V
    .locals 5
    .param p1, "e"    # Lorg/joni/OptExactInfo;

    .prologue
    .line 306
    iget v1, p1, Lorg/joni/OptExactInfo;->length:I

    if-nez v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p1, Lorg/joni/OptExactInfo;->bytes:[B

    iput-object v1, p0, Lorg/joni/Regex;->exact:[B

    .line 310
    const/4 v1, 0x0

    iput v1, p0, Lorg/joni/Regex;->exactP:I

    .line 311
    iget v1, p1, Lorg/joni/OptExactInfo;->length:I

    iput v1, p0, Lorg/joni/Regex;->exactEnd:I

    .line 313
    iget-boolean v1, p1, Lorg/joni/OptExactInfo;->ignoreCase:Z

    if-eqz v1, :cond_3

    .line 315
    iget-object v1, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1}, Lorg/jcodings/Encoding;->toLowerCaseTable()[B

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/joni/SearchAlgorithm;->SLOW_IC_SB:Lorg/joni/SearchAlgorithm;

    :goto_1
    iput-object v1, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    .line 331
    :goto_2
    iget-object v1, p1, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v1, v1, Lorg/joni/MinMaxLen;->min:I

    iput v1, p0, Lorg/joni/Regex;->dMin:I

    .line 332
    iget-object v1, p1, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v1, v1, Lorg/joni/MinMaxLen;->max:I

    iput v1, p0, Lorg/joni/Regex;->dMax:I

    .line 334
    iget v1, p0, Lorg/joni/Regex;->dMin:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 335
    iget v1, p0, Lorg/joni/Regex;->dMin:I

    iget v2, p0, Lorg/joni/Regex;->exactEnd:I

    iget v3, p0, Lorg/joni/Regex;->exactP:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/joni/Regex;->thresholdLength:I

    goto :goto_0

    .line 315
    :cond_2
    new-instance v1, Lorg/joni/SearchAlgorithm$SLOW_IC;

    invoke-direct {v1, p0}, Lorg/joni/SearchAlgorithm$SLOW_IC;-><init>(Lorg/joni/Regex;)V

    goto :goto_1

    .line 317
    :cond_3
    iget-object v1, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iget-object v2, p0, Lorg/joni/Regex;->exact:[B

    iget v3, p0, Lorg/joni/Regex;->exactP:I

    iget v4, p0, Lorg/joni/Regex;->exactEnd:I

    invoke-virtual {v1, v2, v3, v4}, Lorg/jcodings/Encoding;->isReverseMatchAllowed([BII)Z

    move-result v0

    .line 319
    .local v0, "allowReverse":Z
    iget v1, p1, Lorg/joni/OptExactInfo;->length:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_4

    iget v1, p1, Lorg/joni/OptExactInfo;->length:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_6

    if-eqz v0, :cond_6

    .line 320
    :cond_4
    invoke-virtual {p0}, Lorg/joni/Regex;->setupBMSkipMap()V

    .line 321
    if-eqz v0, :cond_5

    .line 322
    sget-object v1, Lorg/joni/SearchAlgorithm;->BM:Lorg/joni/SearchAlgorithm;

    iput-object v1, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    goto :goto_2

    .line 324
    :cond_5
    sget-object v1, Lorg/joni/SearchAlgorithm;->BM_NOT_REV:Lorg/joni/SearchAlgorithm;

    iput-object v1, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    goto :goto_2

    .line 327
    :cond_6
    iget-object v1, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v1}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lorg/joni/SearchAlgorithm;->SLOW_SB:Lorg/joni/SearchAlgorithm;

    :goto_3
    iput-object v1, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    goto :goto_2

    :cond_7
    sget-object v1, Lorg/joni/SearchAlgorithm;->SLOW:Lorg/joni/SearchAlgorithm;

    goto :goto_3
.end method

.method setOptimizeMapInfo(Lorg/joni/OptMapInfo;)V
    .locals 2
    .param p1, "m"    # Lorg/joni/OptMapInfo;

    .prologue
    .line 340
    iget-object v0, p1, Lorg/joni/OptMapInfo;->map:[B

    iput-object v0, p0, Lorg/joni/Regex;->map:[B

    .line 342
    iget-object v0, p0, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0}, Lorg/jcodings/Encoding;->isSingleByte()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/joni/SearchAlgorithm;->MAP_SB:Lorg/joni/SearchAlgorithm;

    :goto_0
    iput-object v0, p0, Lorg/joni/Regex;->searchAlgorithm:Lorg/joni/SearchAlgorithm;

    .line 343
    iget-object v0, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v0, v0, Lorg/joni/MinMaxLen;->min:I

    iput v0, p0, Lorg/joni/Regex;->dMin:I

    .line 344
    iget-object v0, p1, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v0, v0, Lorg/joni/MinMaxLen;->max:I

    iput v0, p0, Lorg/joni/Regex;->dMax:I

    .line 346
    iget v0, p0, Lorg/joni/Regex;->dMin:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 347
    iget v0, p0, Lorg/joni/Regex;->dMin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/joni/Regex;->thresholdLength:I

    .line 349
    :cond_0
    return-void

    .line 342
    :cond_1
    sget-object v0, Lorg/joni/SearchAlgorithm;->MAP:Lorg/joni/SearchAlgorithm;

    goto :goto_0
.end method

.method setSubAnchor(Lorg/joni/OptAnchorInfo;)V
    .locals 2
    .param p1, "anc"    # Lorg/joni/OptAnchorInfo;

    .prologue
    .line 352
    iget v0, p0, Lorg/joni/Regex;->subAnchor:I

    iget v1, p1, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    and-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/joni/Regex;->subAnchor:I

    .line 353
    iget v0, p0, Lorg/joni/Regex;->subAnchor:I

    iget v1, p1, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    and-int/lit8 v1, v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Lorg/joni/Regex;->subAnchor:I

    .line 354
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 454
    iput-object p1, p0, Lorg/joni/Regex;->userObject:Ljava/lang/Object;

    .line 455
    return-void
.end method

.method public setUserOptions(I)V
    .locals 0
    .param p1, "options"    # I

    .prologue
    .line 446
    iput p1, p0, Lorg/joni/Regex;->userOptions:I

    .line 447
    return-void
.end method

.method setupBMSkipMap()V
    .locals 8

    .prologue
    const/16 v7, 0x100

    .line 287
    iget-object v0, p0, Lorg/joni/Regex;->exact:[B

    .line 288
    .local v0, "bytes":[B
    iget v4, p0, Lorg/joni/Regex;->exactP:I

    .line 289
    .local v4, "p":I
    iget v1, p0, Lorg/joni/Regex;->exactEnd:I

    .line 290
    .local v1, "end":I
    sub-int v3, v1, v4

    .line 292
    .local v3, "len":I
    if-ge v3, v7, :cond_2

    .line 294
    iget-object v5, p0, Lorg/joni/Regex;->map:[B

    if-nez v5, :cond_0

    new-array v5, v7, [B

    iput-object v5, p0, Lorg/joni/Regex;->map:[B

    .line 296
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_1

    iget-object v5, p0, Lorg/joni/Regex;->map:[B

    int-to-byte v6, v3

    aput-byte v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 297
    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lorg/joni/Regex;->map:[B

    add-int v6, v4, v2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 299
    .end local v2    # "i":I
    :cond_2
    iget-object v5, p0, Lorg/joni/Regex;->intMap:[I

    if-nez v5, :cond_3

    new-array v5, v7, [I

    iput-object v5, p0, Lorg/joni/Regex;->intMap:[I

    .line 301
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lorg/joni/Regex;->intMap:[I

    add-int v6, v4, v2

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v2

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 303
    :cond_4
    return-void
.end method
