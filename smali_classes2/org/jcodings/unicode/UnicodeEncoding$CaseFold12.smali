.class Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;
.super Ljava/lang/Object;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/unicode/UnicodeEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseFold12"
.end annotation


# static fields
.field private static final CaseUnfold_12:[[I

.field private static final CaseUnfold_12_Locale:[[I

.field static final Unfold2Hash:Lorg/jcodings/util/IntArrayHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/IntArrayHash",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 519
    const-string v0, "CaseUnfold_12"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12:[[I

    .line 520
    const-string v0, "CaseUnfold_12_Locale"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12_Locale:[[I

    .line 531
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->initializeUnfold2Hash()Lorg/jcodings/util/IntArrayHash;

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->Unfold2Hash:Lorg/jcodings/util/IntArrayHash;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()[[I
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12:[[I

    return-object v0
.end method

.method static synthetic access$600()[[I
    .locals 1

    .prologue
    .line 518
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12_Locale:[[I

    return-object v0
.end method

.method private static initializeUnfold2Hash()Lorg/jcodings/util/IntArrayHash;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/IntArrayHash",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 523
    new-instance v1, Lorg/jcodings/util/IntArrayHash;

    const/16 v2, 0xc8

    invoke-direct {v1, v2}, Lorg/jcodings/util/IntArrayHash;-><init>(I)V

    .line 524
    .local v1, "unfold2":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<[I>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 525
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12:[[I

    aget-object v2, v2, v0

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12:[[I

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/IntArrayHash;->putDirect([ILjava/lang/Object;)V

    .line 524
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 526
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12_Locale:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 527
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12_Locale:[[I

    aget-object v2, v2, v0

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold12;->CaseUnfold_12_Locale:[[I

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/IntArrayHash;->putDirect([ILjava/lang/Object;)V

    .line 526
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 528
    :cond_1
    return-object v1
.end method
