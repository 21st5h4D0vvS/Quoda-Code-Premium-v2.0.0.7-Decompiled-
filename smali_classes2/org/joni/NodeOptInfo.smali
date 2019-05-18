.class public final Lorg/joni/NodeOptInfo;
.super Ljava/lang/Object;
.source "NodeOptInfo.java"


# instance fields
.field final anchor:Lorg/joni/OptAnchorInfo;

.field final exb:Lorg/joni/OptExactInfo;

.field final exm:Lorg/joni/OptExactInfo;

.field final expr:Lorg/joni/OptExactInfo;

.field final length:Lorg/joni/MinMaxLen;

.field final map:Lorg/joni/OptMapInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lorg/joni/MinMaxLen;

    invoke-direct {v0}, Lorg/joni/MinMaxLen;-><init>()V

    iput-object v0, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    .line 26
    new-instance v0, Lorg/joni/OptAnchorInfo;

    invoke-direct {v0}, Lorg/joni/OptAnchorInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    .line 27
    new-instance v0, Lorg/joni/OptExactInfo;

    invoke-direct {v0}, Lorg/joni/OptExactInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    .line 28
    new-instance v0, Lorg/joni/OptExactInfo;

    invoke-direct {v0}, Lorg/joni/OptExactInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    .line 29
    new-instance v0, Lorg/joni/OptExactInfo;

    invoke-direct {v0}, Lorg/joni/OptExactInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    .line 30
    new-instance v0, Lorg/joni/OptMapInfo;

    invoke-direct {v0}, Lorg/joni/OptMapInfo;-><init>()V

    iput-object v0, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    return-void
.end method


# virtual methods
.method public altMerge(Lorg/joni/NodeOptInfo;Lorg/joni/OptEnvironment;)V
    .locals 3
    .param p1, "other"    # Lorg/joni/NodeOptInfo;
    .param p2, "env"    # Lorg/joni/OptEnvironment;

    .prologue
    .line 113
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptAnchorInfo;->altMerge(Lorg/joni/OptAnchorInfo;)V

    .line 114
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v0, v1, p2}, Lorg/joni/OptExactInfo;->altMerge(Lorg/joni/OptExactInfo;Lorg/joni/OptEnvironment;)V

    .line 115
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    invoke-virtual {v0, v1, p2}, Lorg/joni/OptExactInfo;->altMerge(Lorg/joni/OptExactInfo;Lorg/joni/OptEnvironment;)V

    .line 116
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    invoke-virtual {v0, v1, p2}, Lorg/joni/OptExactInfo;->altMerge(Lorg/joni/OptExactInfo;Lorg/joni/OptEnvironment;)V

    .line 117
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v2, p2, Lorg/joni/OptEnvironment;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, v1, v2}, Lorg/joni/OptMapInfo;->altMerge(Lorg/joni/OptMapInfo;Lorg/jcodings/Encoding;)V

    .line 118
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, v1}, Lorg/joni/MinMaxLen;->altMerge(Lorg/joni/MinMaxLen;)V

    .line 119
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    invoke-virtual {v0}, Lorg/joni/MinMaxLen;->clear()V

    .line 40
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v0}, Lorg/joni/OptAnchorInfo;->clear()V

    .line 41
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v0}, Lorg/joni/OptExactInfo;->clear()V

    .line 42
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    invoke-virtual {v0}, Lorg/joni/OptExactInfo;->clear()V

    .line 43
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    invoke-virtual {v0}, Lorg/joni/OptExactInfo;->clear()V

    .line 44
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v0}, Lorg/joni/OptMapInfo;->clear()V

    .line 45
    return-void
.end method

.method public concatLeftNode(Lorg/joni/NodeOptInfo;Lorg/jcodings/Encoding;)V
    .locals 8
    .param p1, "other"    # Lorg/joni/NodeOptInfo;
    .param p2, "enc"    # Lorg/jcodings/Encoding;

    .prologue
    .line 57
    new-instance v3, Lorg/joni/OptAnchorInfo;

    invoke-direct {v3}, Lorg/joni/OptAnchorInfo;-><init>()V

    .line 58
    .local v3, "tanchor":Lorg/joni/OptAnchorInfo;
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v6, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v6, v6, Lorg/joni/MinMaxLen;->max:I

    iget-object v7, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v7, v7, Lorg/joni/MinMaxLen;->max:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/joni/OptAnchorInfo;->concat(Lorg/joni/OptAnchorInfo;Lorg/joni/OptAnchorInfo;II)V

    .line 59
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v4, v3}, Lorg/joni/OptAnchorInfo;->copy(Lorg/joni/OptAnchorInfo;)V

    .line 61
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget v4, v4, Lorg/joni/OptExactInfo;->length:I

    if-lez v4, :cond_0

    iget-object v4, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v4, v4, Lorg/joni/MinMaxLen;->max:I

    if-nez v4, :cond_0

    .line 62
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v5, v5, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v6, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v6, v6, Lorg/joni/MinMaxLen;->max:I

    iget-object v7, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v7, v7, Lorg/joni/MinMaxLen;->max:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/joni/OptAnchorInfo;->concat(Lorg/joni/OptAnchorInfo;Lorg/joni/OptAnchorInfo;II)V

    .line 63
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v4, v4, Lorg/joni/OptExactInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v4, v3}, Lorg/joni/OptAnchorInfo;->copy(Lorg/joni/OptAnchorInfo;)V

    .line 66
    :cond_0
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget v4, v4, Lorg/joni/OptMapInfo;->value:I

    if-lez v4, :cond_1

    iget-object v4, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v4, v4, Lorg/joni/MinMaxLen;->max:I

    if-nez v4, :cond_1

    .line 67
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v4, v4, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v4, v4, Lorg/joni/MinMaxLen;->max:I

    if-nez v4, :cond_1

    .line 68
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v4, v4, Lorg/joni/OptMapInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v5, v4, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    iget-object v6, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget v6, v6, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    or-int/2addr v5, v6

    iput v5, v4, Lorg/joni/OptAnchorInfo;->leftAnchor:I

    .line 72
    :cond_1
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-boolean v0, v4, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 73
    .local v0, "exbReach":Z
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-boolean v1, v4, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 75
    .local v1, "exmReach":Z
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v4, v4, Lorg/joni/MinMaxLen;->max:I

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v5, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/joni/OptExactInfo;->reachEnd:Z

    iput-boolean v6, v4, Lorg/joni/OptExactInfo;->reachEnd:Z

    .line 79
    :cond_2
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget v4, v4, Lorg/joni/OptExactInfo;->length:I

    if-lez v4, :cond_3

    .line 80
    if-eqz v0, :cond_7

    .line 81
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5, p2}, Lorg/joni/OptExactInfo;->concat(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 82
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v4}, Lorg/joni/OptExactInfo;->clear()V

    .line 89
    :cond_3
    :goto_0
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5, p2}, Lorg/joni/OptExactInfo;->select(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 90
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5, p2}, Lorg/joni/OptExactInfo;->select(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 92
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget v4, v4, Lorg/joni/OptExactInfo;->length:I

    if-lez v4, :cond_9

    .line 93
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v4, v4, Lorg/joni/MinMaxLen;->max:I

    if-lez v4, :cond_6

    .line 95
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget v2, v4, Lorg/joni/MinMaxLen;->max:I

    .line 96
    .local v2, "otherLengthMax":I
    const v4, 0x7fffffff

    if-ne v2, v4, :cond_4

    const/4 v2, -0x1

    .line 97
    :cond_4
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget v4, v4, Lorg/joni/OptExactInfo;->length:I

    if-le v4, v2, :cond_5

    iget-object v4, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iput v2, v4, Lorg/joni/OptExactInfo;->length:I

    .line 98
    :cond_5
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget-object v4, v4, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    iget v4, v4, Lorg/joni/MinMaxLen;->max:I

    if-nez v4, :cond_8

    .line 99
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v5, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5, p2}, Lorg/joni/OptExactInfo;->select(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 108
    .end local v2    # "otherLengthMax":I
    :cond_6
    :goto_1
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v4, v5}, Lorg/joni/OptMapInfo;->select(Lorg/joni/OptMapInfo;)V

    .line 109
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    invoke-virtual {v4, v5}, Lorg/joni/MinMaxLen;->add(Lorg/joni/MinMaxLen;)V

    .line 110
    return-void

    .line 83
    :cond_7
    if-eqz v1, :cond_3

    .line 84
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5, p2}, Lorg/joni/OptExactInfo;->concat(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    .line 85
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v4}, Lorg/joni/OptExactInfo;->clear()V

    goto :goto_0

    .line 101
    .restart local v2    # "otherLengthMax":I
    :cond_8
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v5, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5, p2}, Lorg/joni/OptExactInfo;->select(Lorg/joni/OptExactInfo;Lorg/jcodings/Encoding;)V

    goto :goto_1

    .line 104
    .end local v2    # "otherLengthMax":I
    :cond_9
    iget-object v4, p1, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget v4, v4, Lorg/joni/OptExactInfo;->length:I

    if-lez v4, :cond_6

    .line 105
    iget-object v4, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget-object v5, p1, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    invoke-virtual {v4, v5}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    goto :goto_1
.end method

.method public copy(Lorg/joni/NodeOptInfo;)V
    .locals 2
    .param p1, "other"    # Lorg/joni/NodeOptInfo;

    .prologue
    .line 48
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->length:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, v1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 49
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->anchor:Lorg/joni/OptAnchorInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptAnchorInfo;->copy(Lorg/joni/OptAnchorInfo;)V

    .line 50
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    .line 51
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->exm:Lorg/joni/OptExactInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    .line 52
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptExactInfo;->copy(Lorg/joni/OptExactInfo;)V

    .line 53
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v1, p1, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    invoke-virtual {v0, v1}, Lorg/joni/OptMapInfo;->copy(Lorg/joni/OptMapInfo;)V

    .line 54
    return-void
.end method

.method public setBound(Lorg/joni/MinMaxLen;)V
    .locals 1
    .param p1, "mmd"    # Lorg/joni/MinMaxLen;

    .prologue
    .line 122
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v0, v0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, p1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 123
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget-object v0, v0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, p1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 124
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v0, v0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, p1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 125
    return-void
.end method

.method public setBoundNode(Lorg/joni/MinMaxLen;)V
    .locals 1
    .param p1, "mmd"    # Lorg/joni/MinMaxLen;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->exb:Lorg/joni/OptExactInfo;

    iget-object v0, v0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, p1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 34
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->expr:Lorg/joni/OptExactInfo;

    iget-object v0, v0, Lorg/joni/OptExactInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, p1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 35
    iget-object v0, p0, Lorg/joni/NodeOptInfo;->map:Lorg/joni/OptMapInfo;

    iget-object v0, v0, Lorg/joni/OptMapInfo;->mmd:Lorg/joni/MinMaxLen;

    invoke-virtual {v0, p1}, Lorg/joni/MinMaxLen;->copy(Lorg/joni/MinMaxLen;)V

    .line 36
    return-void
.end method
