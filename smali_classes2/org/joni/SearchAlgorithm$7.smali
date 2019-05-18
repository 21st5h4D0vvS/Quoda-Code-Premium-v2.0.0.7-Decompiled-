.class final Lorg/joni/SearchAlgorithm$7;
.super Lorg/joni/SearchAlgorithm;
.source "SearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/SearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 487
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    const-string v0, "MAP"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 4
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 495
    iget-object v0, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 496
    .local v0, "enc":Lorg/jcodings/Encoding;
    iget-object v1, p1, Lorg/joni/Regex;->map:[B

    .line 497
    .local v1, "map":[B
    move v2, p3

    .line 499
    .local v2, "s":I
    :goto_0
    if-ge v2, p5, :cond_1

    .line 500
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    if-eqz v3, :cond_0

    .line 503
    .end local v2    # "s":I
    :goto_1
    return v2

    .line 501
    .restart local v2    # "s":I
    :cond_0
    invoke-virtual {v0, p2, v2, p4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 503
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 4
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 507
    iget-object v0, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    .line 508
    .local v0, "enc":Lorg/jcodings/Encoding;
    iget-object v1, p1, Lorg/joni/Regex;->map:[B

    .line 509
    .local v1, "map":[B
    move v2, p6

    .line 511
    .local v2, "s":I
    if-lt v2, p5, :cond_0

    add-int/lit8 v2, p5, -0x1

    .line 512
    :cond_0
    :goto_0
    if-lt v2, p3, :cond_2

    .line 513
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v1, v3

    if-eqz v3, :cond_1

    .line 516
    .end local v2    # "s":I
    :goto_1
    return v2

    .line 514
    .restart local v2    # "s":I
    :cond_1
    invoke-virtual {v0, p2, p4, v2, p5}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v2

    goto :goto_0

    .line 516
    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method
