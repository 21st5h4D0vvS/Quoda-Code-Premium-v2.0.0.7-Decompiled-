.class final Lorg/joni/OptAnchorInfo;
.super Ljava/lang/Object;
.source "OptAnchorInfo.java"

# interfaces
.implements Lorg/joni/constants/AnchorType;


# instance fields
.field leftAnchor:I

.field rightAnchor:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static anchorToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "anchor"    # I

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "s":Ljava/lang/StringBuffer;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "begin-buf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "begin-line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "begin-pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, "end-buf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, "semi-end-buf "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, "end-line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    :cond_5
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_6

    const-string v1, "anychar-star "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :cond_6
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const-string v1, "anychar-star-pl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    :cond_7
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static isLeftAnchor(I)Z
    .locals 1
    .param p0, "anchor"    # I

    .prologue
    .line 72
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0x400

    if-eq p0, v0, :cond_0

    const/16 v0, 0x800

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method add(I)V
    .locals 1
    .param p1, "anchor"    # I

    .prologue
    .line 51
    invoke-static {p1}, Lorg/joni/OptAnchorInfo;->isLeftAnchor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    iget v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    or-int/2addr v0, p1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    goto :goto_0
.end method

.method altMerge(Lorg/joni/OptAnchorInfo;)V
    .locals 2
    .param p1, "other"    # Lorg/joni/OptAnchorInfo;

    .prologue
    .line 67
    iget v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    iget v1, p1, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 68
    iget v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    iget v1, p1, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    and-int/2addr v0, v1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    .line 69
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 30
    return-void
.end method

.method concat(Lorg/joni/OptAnchorInfo;Lorg/joni/OptAnchorInfo;II)V
    .locals 2
    .param p1, "left"    # Lorg/joni/OptAnchorInfo;
    .param p2, "right"    # Lorg/joni/OptAnchorInfo;
    .param p3, "leftLength"    # I
    .param p4, "rightLength"    # I

    .prologue
    .line 38
    iget v0, p1, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 39
    if-nez p3, :cond_0

    iget v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    iget v1, p2, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 41
    :cond_0
    iget v0, p2, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    .line 42
    if-nez p4, :cond_1

    iget v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    iget v1, p1, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    or-int/2addr v0, v1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    .line 43
    :cond_1
    return-void
.end method

.method copy(Lorg/joni/OptAnchorInfo;)V
    .locals 1
    .param p1, "other"    # Lorg/joni/OptAnchorInfo;

    .prologue
    .line 33
    iget v0, p1, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 34
    iget v0, p1, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    .line 35
    return-void
.end method

.method isSet(I)Z
    .locals 2
    .param p1, "anchor"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    iget v1, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method remove(I)V
    .locals 2
    .param p1, "anchor"    # I

    .prologue
    .line 59
    invoke-static {p1}, Lorg/joni/OptAnchorInfo;->isLeftAnchor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/joni/OptAnchorInfo;->rightAnchor:I

    goto :goto_0
.end method
