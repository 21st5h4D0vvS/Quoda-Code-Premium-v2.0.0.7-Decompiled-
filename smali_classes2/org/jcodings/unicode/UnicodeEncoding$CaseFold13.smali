.class Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;
.super Ljava/lang/Object;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/unicode/UnicodeEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CaseFold13"
.end annotation


# static fields
.field private static final CaseUnfold_13:[[I

.field static final Unfold3Hash:Lorg/jcodings/util/IntArrayHash;
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
    .line 535
    const-string v0, "CaseUnfold_13"

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readNestedIntArray(Ljava/lang/String;)[[I

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->CaseUnfold_13:[[I

    .line 544
    invoke-static {}, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->initializeUnfold3Hash()Lorg/jcodings/util/IntArrayHash;

    move-result-object v0

    sput-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->Unfold3Hash:Lorg/jcodings/util/IntArrayHash;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700()[[I
    .locals 1

    .prologue
    .line 534
    sget-object v0, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->CaseUnfold_13:[[I

    return-object v0
.end method

.method private static initializeUnfold3Hash()Lorg/jcodings/util/IntArrayHash;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/IntArrayHash",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 538
    new-instance v1, Lorg/jcodings/util/IntArrayHash;

    const/16 v2, 0x1e

    invoke-direct {v1, v2}, Lorg/jcodings/util/IntArrayHash;-><init>(I)V

    .line 539
    .local v1, "unfold3":Lorg/jcodings/util/IntArrayHash;, "Lorg/jcodings/util/IntArrayHash<[I>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->CaseUnfold_13:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 540
    sget-object v2, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->CaseUnfold_13:[[I

    aget-object v2, v2, v0

    sget-object v3, Lorg/jcodings/unicode/UnicodeEncoding$CaseFold13;->CaseUnfold_13:[[I

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/jcodings/util/IntArrayHash;->putDirect([ILjava/lang/Object;)V

    .line 539
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 541
    :cond_0
    return-object v1
.end method
