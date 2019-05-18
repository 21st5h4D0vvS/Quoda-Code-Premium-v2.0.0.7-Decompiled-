.class final Lorg/joni/SearchAlgorithm$8;
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
    .line 520
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    const-string v0, "MAP_SB"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 3
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 527
    iget-object v0, p1, Lorg/joni/Regex;->map:[B

    .line 528
    .local v0, "map":[B
    move v1, p3

    .line 530
    .local v1, "s":I
    :goto_0
    if-ge v1, p5, :cond_1

    .line 531
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    if-eqz v2, :cond_0

    .line 534
    .end local v1    # "s":I
    :goto_1
    return v1

    .line 532
    .restart local v1    # "s":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 3
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 538
    iget-object v0, p1, Lorg/joni/Regex;->map:[B

    .line 539
    .local v0, "map":[B
    move v1, p6

    .line 541
    .local v1, "s":I
    if-lt v1, p5, :cond_0

    add-int/lit8 v1, p5, -0x1

    .line 542
    :cond_0
    :goto_0
    if-lt v1, p3, :cond_2

    .line 543
    aget-byte v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    if-eqz v2, :cond_1

    .line 546
    .end local v1    # "s":I
    :goto_1
    return v1

    .line 544
    .restart local v1    # "s":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 546
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method
