.class final Lorg/joni/SearchAlgorithm$3;
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
    .line 116
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const-string v0, "EXACT_SB"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 10
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 123
    iget-object v5, p1, Lorg/joni/Regex;->exact:[B

    .line 124
    .local v5, "target":[B
    iget v7, p1, Lorg/joni/Regex;->exactP:I

    .line 125
    .local v7, "targetP":I
    iget v6, p1, Lorg/joni/Regex;->exactEnd:I

    .line 127
    .local v6, "targetEnd":I
    move v0, p4

    .line 128
    .local v0, "end":I
    sub-int v8, v6, v7

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v0, v8

    .line 130
    if-le v0, p5, :cond_0

    move v0, p5

    .line 132
    :cond_0
    move v3, p3

    .line 134
    .local v3, "s":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 135
    aget-byte v8, p2, v3

    aget-byte v9, v5, v7

    if-ne v8, v9, :cond_2

    .line 136
    add-int/lit8 v1, v3, 0x1

    .line 137
    .local v1, "p":I
    add-int/lit8 v4, v7, 0x1

    .local v4, "t":I
    move v2, v1

    .line 138
    .end local v1    # "p":I
    .local v2, "p":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 139
    aget-byte v8, v5, v4

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "p":I
    .restart local v1    # "p":I
    aget-byte v9, p2, v2

    if-eq v8, v9, :cond_1

    .line 143
    :goto_2
    if-ne v4, v6, :cond_2

    .line 148
    .end local v1    # "p":I
    .end local v3    # "s":I
    .end local v4    # "t":I
    :goto_3
    return v3

    .line 140
    .restart local v1    # "p":I
    .restart local v3    # "s":I
    .restart local v4    # "t":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    move v2, v1

    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_1

    .line 145
    .end local v2    # "p":I
    .end local v4    # "t":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 148
    :cond_3
    const/4 v3, -0x1

    goto :goto_3

    .restart local v2    # "p":I
    .restart local v4    # "t":I
    :cond_4
    move v1, v2

    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_2
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 9
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 152
    iget-object v4, p1, Lorg/joni/Regex;->exact:[B

    .line 153
    .local v4, "target":[B
    iget v6, p1, Lorg/joni/Regex;->exactP:I

    .line 154
    .local v6, "targetP":I
    iget v5, p1, Lorg/joni/Regex;->exactEnd:I

    .line 156
    .local v5, "targetEnd":I
    move v2, p5

    .line 157
    .local v2, "s":I
    sub-int v7, v5, v6

    sub-int/2addr v2, v7

    .line 159
    if-le v2, p6, :cond_0

    move v2, p6

    .line 161
    :cond_0
    :goto_0
    if-lt v2, p3, :cond_3

    .line 162
    aget-byte v7, p2, v2

    aget-byte v8, v4, v6

    if-ne v7, v8, :cond_2

    .line 163
    add-int/lit8 v0, v2, 0x1

    .line 164
    .local v0, "p":I
    add-int/lit8 v3, v6, 0x1

    .local v3, "t":I
    move v1, v0

    .line 165
    .end local v0    # "p":I
    .local v1, "p":I
    :goto_1
    if-ge v3, v5, :cond_4

    .line 166
    aget-byte v7, v4, v3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    aget-byte v8, p2, v1

    if-eq v7, v8, :cond_1

    .line 169
    :goto_2
    if-ne v3, v5, :cond_2

    .line 174
    .end local v0    # "p":I
    .end local v2    # "s":I
    .end local v3    # "t":I
    :goto_3
    return v2

    .line 167
    .restart local v0    # "p":I
    .restart local v2    # "s":I
    .restart local v3    # "t":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "p":I
    .restart local v1    # "p":I
    goto :goto_1

    .line 172
    .end local v1    # "p":I
    .end local v3    # "t":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 174
    :cond_3
    const/4 v2, -0x1

    goto :goto_3

    .restart local v1    # "p":I
    .restart local v3    # "t":I
    :cond_4
    move v0, v1

    .end local v1    # "p":I
    .restart local v0    # "p":I
    goto :goto_2
.end method
