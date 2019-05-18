.class Lorg/jcodings/unicode/UnicodeEncoding$CTypeName;
.super Ljava/lang/Object;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/unicode/UnicodeEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CTypeName"
.end annotation


# static fields
.field private static final CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 471
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CTypeName;->initializeCTypeNameTable()Lorg/jcodings/util/CaseInsensitiveBytesHash;

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CTypeName;->CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CTypeName;->CTypeNameHash:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    return-object v0
.end method

.method private static initializeCTypeNameTable()Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    new-instance v1, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-direct {v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>()V

    .line 475
    .local v1, "table":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 476
    sget-object v2, Lorg/jcodings/unicode/UnicodeProperties;->CodeRangeTable:[Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;

    aget-object v2, v2, v0

    iget-object v2, v2, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->name:[B

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    :cond_0
    return-object v1
.end method
