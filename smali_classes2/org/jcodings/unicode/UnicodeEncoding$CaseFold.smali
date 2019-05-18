.class Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;
.super Ljava/lang/Object;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/unicode/UnicodeEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseFold"
.end annotation


# static fields
.field private static final CaseFold_From:[I

.field private static final CaseFold_Locale_From:[I

.field private static final CaseFold_Locale_To:[[I

.field private static final CaseFold_To:[[I

.field static final FoldHash:Lorg/jcodings/util/IntHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/IntHash",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 483
    const-string v0, "CaseFold_From"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_From:[I

    .line 484
    const-string v0, "CaseFold_To"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_To:[[I

    .line 485
    const-string v0, "CaseFold_Locale_From"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_Locale_From:[I

    .line 486
    const-string v0, "CaseFold_Locale_To"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_Locale_To:[[I

    .line 497
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->initializeFoldHash()Lorg/jcodings/util/IntHash;

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->FoldHash:Lorg/jcodings/util/IntHash;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initializeFoldHash()Lorg/jcodings/util/IntHash;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/IntHash",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Lorg/jcodings/util/IntHash;

    const/16 v2, 0x4b0

    invoke-direct {v0, v2}, Lorg/jcodings/util/IntHash;-><init>(I)V

    .line 490
    .local v0, "fold":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<[I>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_From:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 491
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_From:[I

    aget v2, v2, v1

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_To:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/jcodings/util/IntHash;->putDirect(ILjava/lang/Object;)V

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 492
    :cond_0
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_Locale_From:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 493
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_Locale_From:[I

    aget v2, v2, v1

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold;->CaseFold_Locale_To:[[I

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/jcodings/util/IntHash;->putDirect(ILjava/lang/Object;)V

    .line 492
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 494
    :cond_1
    return-object v0
.end method
