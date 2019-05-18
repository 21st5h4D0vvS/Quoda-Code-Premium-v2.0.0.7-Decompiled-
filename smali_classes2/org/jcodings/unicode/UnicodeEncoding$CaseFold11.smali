.class Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;
.super Ljava/lang/Object;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/unicode/UnicodeEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseFold11"
.end annotation


# static fields
.field private static final CaseUnfold_11_From:[I

.field private static final CaseUnfold_11_Locale_From:[I

.field private static final CaseUnfold_11_Locale_To:[[I

.field private static final CaseUnfold_11_To:[[I

.field static final Unfold1Hash:Lorg/jcodings/util/IntHash;
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
    .line 501
    const-string v0, "CaseUnfold_11_From"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_From:[I

    .line 502
    const-string v0, "CaseUnfold_11_To"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_To:[[I

    .line 503
    const-string v0, "CaseUnfold_11_Locale_From"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readIntArray(Ljava/lang/String;)[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_From:[I

    .line 504
    const-string v0, "CaseUnfold_11_Locale_To"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_To:[[I

    .line 515
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->initializeUnfold1Hash()Lorg/jcodings/util/IntHash;

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->Unfold1Hash:Lorg/jcodings/util/IntHash;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_From:[I

    return-object v0
.end method

.method static synthetic access$200()[[I
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_To:[[I

    return-object v0
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_From:[I

    return-object v0
.end method

.method static synthetic access$400()[[I
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_To:[[I

    return-object v0
.end method

.method private static initializeUnfold1Hash()Lorg/jcodings/util/IntHash;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/IntHash",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 507
    new-instance v1, Lorg/jcodings/util/IntHash;

    const/16 v2, 0x3e8

    invoke-direct {v1, v2}, Lorg/jcodings/util/IntHash;-><init>(I)V

    .line 508
    .local v1, "unfold1":Lorg/jcodings/util/IntHash;, "Lorg/jcodings/util/IntHash<[I>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_From:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 509
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_From:[I

    aget v2, v2, v0

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_To:[[I

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/IntHash;->putDirect(ILjava/lang/Object;)V

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 510
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_From:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 511
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_From:[I

    aget v2, v2, v0

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold11;->CaseUnfold_11_Locale_To:[[I

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/IntHash;->putDirect(ILjava/lang/Object;)V

    .line 510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 512
    :cond_1
    return-object v1
.end method
