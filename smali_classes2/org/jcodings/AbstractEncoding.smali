.class abstract Lorg/jcodings/AbstractEncoding;
.super Lorg/jcodings/Encoding;
.source "AbstractEncoding.java"


# static fields
.field protected static final EMPTY_FOLD_CODES:[Lorg/jcodings/CaseFoldCodeItem;


# instance fields
.field private final CTypeTable:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/jcodings/CaseFoldCodeItem;

    sput-object v0, Lorg/jcodings/AbstractEncoding;->EMPTY_FOLD_CODES:[Lorg/jcodings/CaseFoldCodeItem;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II[S)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "CTypeTable"    # [S

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lorg/jcodings/Encoding;-><init>(Ljava/lang/String;II)V

    .line 33
    iput-object p4, p0, Lorg/jcodings/AbstractEncoding;->CTypeTable:[S

    .line 34
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II[SZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I
    .param p4, "CTypeTable"    # [S
    .param p5, "isDummy"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p5}, Lorg/jcodings/Encoding;-><init>(Ljava/lang/String;IIZ)V

    .line 38
    iput-object p4, p0, Lorg/jcodings/AbstractEncoding;->CTypeTable:[S

    .line 39
    return-void
.end method

.method private static CTypeToBit(I)I
    .locals 1
    .param p0, "ctype"    # I

    .prologue
    .line 44
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public applyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 0
    .param p1, "flag"    # I
    .param p2, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lorg/jcodings/AbstractEncoding;->asciiApplyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method protected final asciiApplyAllCaseFold(ILorg/jcodings/ApplyAllCaseFoldFunction;Ljava/lang/Object;)V
    .locals 5
    .param p1, "flag"    # I
    .param p2, "fun"    # Lorg/jcodings/ApplyAllCaseFoldFunction;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    new-array v0, v4, [I

    aput v3, v0, v3

    .line 77
    .local v0, "code":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->LowerMap:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 78
    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->LowerMap:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    aput v2, v0, v3

    .line 79
    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->LowerMap:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    invoke-interface {p2, v2, v0, v4, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 81
    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->LowerMap:[[I

    aget-object v2, v2, v1

    aget v2, v2, v3

    aput v2, v0, v3

    .line 82
    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->LowerMap:[[I

    aget-object v2, v2, v1

    aget v2, v2, v4

    invoke-interface {p2, v2, v0, v4, p3}, Lorg/jcodings/ApplyAllCaseFoldFunction;->apply(I[IILjava/lang/Object;)V

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method protected final asciiCaseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 7
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 95
    aget-byte v1, p2, p3

    and-int/lit16 v0, v1, 0xff

    .line 97
    .local v0, "b":I
    const/16 v1, 0x41

    if-gt v1, v0, :cond_0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 98
    new-array v1, v5, [Lorg/jcodings/CaseFoldCodeItem;

    new-instance v2, Lorg/jcodings/CaseFoldCodeItem;

    new-array v3, v5, [I

    add-int/lit8 v4, v0, 0x20

    aput v4, v3, v6

    invoke-direct {v2, v5, v5, v3}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v2, v1, v6

    .line 102
    :goto_0
    return-object v1

    .line 99
    :cond_0
    const/16 v1, 0x61

    if-gt v1, v0, :cond_1

    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 100
    new-array v1, v5, [Lorg/jcodings/CaseFoldCodeItem;

    new-instance v2, Lorg/jcodings/CaseFoldCodeItem;

    new-array v3, v5, [I

    add-int/lit8 v4, v0, -0x20

    aput v4, v3, v6

    invoke-direct {v2, v5, v5, v3}, Lorg/jcodings/CaseFoldCodeItem;-><init>(II[I)V

    aput-object v2, v1, v6

    goto :goto_0

    .line 102
    :cond_1
    sget-object v1, Lorg/jcodings/AbstractEncoding;->EMPTY_FOLD_CODES:[Lorg/jcodings/CaseFoldCodeItem;

    goto :goto_0
.end method

.method protected final asciiMbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 3
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 62
    const/4 v0, 0x0

    sget-object v1, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    iget v2, p3, Lorg/jcodings/IntHolder;->value:I

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v1, v1, v2

    aput-byte v1, p5, v0

    .line 63
    iget v0, p3, Lorg/jcodings/IntHolder;->value:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lorg/jcodings/IntHolder;->value:I

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public caseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;
    .locals 1
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "p"    # I
    .param p4, "end"    # I

    .prologue
    .line 110
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/jcodings/AbstractEncoding;->asciiCaseFoldCodesByString(I[BII)[Lorg/jcodings/CaseFoldCodeItem;

    move-result-object v0

    return-object v0
.end method

.method protected final isCodeCTypeInternal(II)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lorg/jcodings/AbstractEncoding;->CTypeTable:[S

    aget-short v0, v0, p1

    invoke-static {p2}, Lorg/jcodings/AbstractEncoding;->CTypeToBit(I)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNewLine([BII)Z
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v0, 0x0

    .line 58
    if-ge p2, p3, :cond_0

    aget-byte v1, p1, p2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I
    .locals 1
    .param p1, "flag"    # I
    .param p2, "bytes"    # [B
    .param p3, "pp"    # Lorg/jcodings/IntHolder;
    .param p4, "end"    # I
    .param p5, "lower"    # [B

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p5}, Lorg/jcodings/AbstractEncoding;->asciiMbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v0

    return v0
.end method

.method public propertyNameToCType([BII)I
    .locals 5
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 118
    sget-object v1, Lorg/jcodings/constants/PosixBracket;->PBSTableUpper:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v1, p1, p2, p3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([BII)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    .local v0, "ctype":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 120
    :cond_0
    new-instance v1, Lorg/jcodings/exception/CharacterPropertyException;

    const-string v2, "invalid character property name <%n>"

    new-instance v3, Ljava/lang/String;

    sub-int v4, p3, p2

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v1, v2, v3}, Lorg/jcodings/exception/CharacterPropertyException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method
