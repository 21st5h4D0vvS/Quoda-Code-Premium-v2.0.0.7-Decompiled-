.class final Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;
.super Ljava/lang/Object;
.source "UnicodeEncoding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/unicode/UnicodeEncoding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodeRangeEntry"
.end annotation


# instance fields
.field final name:[B

.field range:[I

.field final table:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "table"    # Ljava/lang/String;

    .prologue
    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p2, p0, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->table:Ljava/lang/String;

    .line 461
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->name:[B

    .line 462
    return-void
.end method


# virtual methods
.method public getRange()[I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->range:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->table:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodings/util/ArrayReader;->readIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->range:[I

    .line 466
    :cond_0
    iget-object v0, p0, Lorg/jcodings/unicode/UnicodeEncoding$CodeRangeEntry;->range:[I

    return-object v0
.end method
