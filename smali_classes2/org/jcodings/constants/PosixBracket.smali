.class public Lorg/jcodings/constants/PosixBracket;
.super Ljava/lang/Object;
.source "PosixBracket.java"


# static fields
.field public static final PBSNamesLower:[[B

.field public static final PBSTableUpper:Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PBSValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xe

    .line 26
    new-array v1, v4, [[B

    const/4 v2, 0x0

    const-string v3, "alnum"

    .line 27
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "alpha"

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "blank"

    .line 29
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "cntrl"

    .line 30
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "digit"

    .line 31
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "graph"

    .line 32
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "lower"

    .line 33
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "print"

    .line 34
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "punct"

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "space"

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "upper"

    .line 37
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "xdigit"

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "ascii"

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "word"

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    aput-object v3, v1, v2

    sput-object v1, Lorg/jcodings/constants/PosixBracket;->PBSNamesLower:[[B

    .line 43
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/jcodings/constants/PosixBracket;->PBSValues:[I

    .line 60
    new-instance v1, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    sget-object v2, Lorg/jcodings/constants/PosixBracket;->PBSNamesLower:[[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x5

    invoke-direct {v1, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>(I)V

    sput-object v1, Lorg/jcodings/constants/PosixBracket;->PBSTableUpper:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/jcodings/constants/PosixBracket;->PBSValues:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lorg/jcodings/constants/PosixBracket;->PBSTableUpper:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    sget-object v2, Lorg/jcodings/constants/PosixBracket;->PBSNamesLower:[[B

    aget-object v2, v2, v0

    sget-object v3, Lorg/jcodings/constants/PosixBracket;->PBSValues:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-void

    .line 43
    :array_0
    .array-data 4
        0xd
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xe
        0xc
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
