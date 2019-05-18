.class public final Lorg/joni/SearchAlgorithm$SLOW_IC;
.super Lorg/joni/SearchAlgorithm;
.source "SearchAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joni/SearchAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SLOW_IC"
.end annotation


# instance fields
.field private final buf:[B

.field private final caseFoldFlag:I

.field private final enc:Lorg/jcodings/Encoding;

.field private final holder:Lorg/jcodings/IntHolder;


# direct methods
.method public constructor <init>(Lorg/joni/Regex;)V
    .locals 1
    .param p1, "regex"    # Lorg/joni/Regex;

    .prologue
    .line 185
    invoke-direct {p0}, Lorg/joni/SearchAlgorithm;-><init>()V

    .line 180
    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->buf:[B

    .line 181
    new-instance v0, Lorg/jcodings/IntHolder;

    invoke-direct {v0}, Lorg/jcodings/IntHolder;-><init>()V

    iput-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->holder:Lorg/jcodings/IntHolder;

    .line 186
    iget v0, p1, Lorg/joni/Regex;->caseFoldFlag:I

    iput v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->caseFoldFlag:I

    .line 187
    iget-object v0, p1, Lorg/joni/Regex;->enc:Lorg/jcodings/Encoding;

    iput-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->enc:Lorg/jcodings/Encoding;

    .line 188
    return-void
.end method

.method private lowerCaseMatch([BII[BII)Z
    .locals 10
    .param p1, "t"    # [B
    .param p2, "tP"    # I
    .param p3, "tEnd"    # I
    .param p4, "bytes"    # [B
    .param p5, "p"    # I
    .param p6, "end"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->holder:Lorg/jcodings/IntHolder;

    iput p5, v0, Lorg/jcodings/IntHolder;->value:I

    move v9, p2

    .line 237
    .end local p2    # "tP":I
    .local v9, "tP":I
    :goto_0
    if-ge v9, p3, :cond_4

    .line 238
    iget-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->enc:Lorg/jcodings/Encoding;

    iget v1, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->caseFoldFlag:I

    iget-object v3, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->holder:Lorg/jcodings/IntHolder;

    iget-object v5, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->buf:[B

    move-object v2, p4

    move/from16 v4, p6

    invoke-virtual/range {v0 .. v5}, Lorg/jcodings/Encoding;->mbcCaseFold(I[BLorg/jcodings/IntHolder;I[B)I

    move-result v6

    .line 239
    .local v6, "lowlen":I
    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    .line 240
    add-int/lit8 p2, v9, 0x1

    .end local v9    # "tP":I
    .restart local p2    # "tP":I
    aget-byte v0, p1, v9

    iget-object v1, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->buf:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    if-eq v0, v1, :cond_3

    const/4 v0, 0x0

    .line 249
    .end local v6    # "lowlen":I
    :goto_1
    return v0

    .line 242
    .end local p2    # "tP":I
    .restart local v6    # "lowlen":I
    .restart local v9    # "tP":I
    :cond_0
    const/4 v7, 0x0

    .local v7, "q":I
    move v8, v7

    .line 243
    .end local v7    # "q":I
    .local v8, "q":I
    :goto_2
    if-lez v6, :cond_2

    .line 244
    add-int/lit8 p2, v9, 0x1

    .end local v9    # "tP":I
    .restart local p2    # "tP":I
    aget-byte v0, p1, v9

    iget-object v1, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->buf:[B

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "q":I
    .restart local v7    # "q":I
    aget-byte v1, v1, v8

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 245
    :cond_1
    add-int/lit8 v6, v6, -0x1

    move v8, v7

    .end local v7    # "q":I
    .restart local v8    # "q":I
    move v9, p2

    .end local p2    # "tP":I
    .restart local v9    # "tP":I
    goto :goto_2

    :cond_2
    move p2, v9

    .end local v8    # "q":I
    .end local v9    # "tP":I
    .restart local p2    # "tP":I
    :cond_3
    move v9, p2

    .line 248
    .end local p2    # "tP":I
    .restart local v9    # "tP":I
    goto :goto_0

    .line 249
    .end local v6    # "lowlen":I
    :cond_4
    const/4 v0, 0x1

    move p2, v9

    .end local v9    # "tP":I
    .restart local p2    # "tP":I
    goto :goto_1
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    const-string v0, "EXACT_IC"

    return-object v0
.end method

.method public final search(Lorg/joni/Regex;[BIII)I
    .locals 8
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "textEnd"    # I
    .param p5, "textRange"    # I

    .prologue
    .line 195
    iget-object v1, p1, Lorg/joni/Regex;->exact:[B

    .line 196
    .local v1, "target":[B
    iget v2, p1, Lorg/joni/Regex;->exactP:I

    .line 197
    .local v2, "targetP":I
    iget v3, p1, Lorg/joni/Regex;->exactEnd:I

    .line 199
    .local v3, "targetEnd":I
    move v7, p4

    .line 200
    .local v7, "end":I
    sub-int v0, v3, v2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v7, v0

    .line 202
    if-le v7, p5, :cond_0

    move v7, p5

    .line 203
    :cond_0
    move v5, p3

    .line 205
    .local v5, "s":I
    :goto_0
    if-ge v5, v7, :cond_2

    move-object v0, p0

    move-object v4, p2

    move v6, p4

    .line 206
    invoke-direct/range {v0 .. v6}, Lorg/joni/SearchAlgorithm$SLOW_IC;->lowerCaseMatch([BII[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    .end local v5    # "s":I
    :goto_1
    return v5

    .line 207
    .restart local v5    # "s":I
    :cond_1
    iget-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, p2, v5, p4}, Lorg/jcodings/Encoding;->length([BII)I

    move-result v0

    add-int/2addr v5, v0

    goto :goto_0

    .line 209
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method

.method public final searchBackward(Lorg/joni/Regex;[BIIIIII)I
    .locals 7
    .param p1, "regex"    # Lorg/joni/Regex;
    .param p2, "text"    # [B
    .param p3, "textP"    # I
    .param p4, "adjustText"    # I
    .param p5, "textEnd"    # I
    .param p6, "textStart"    # I
    .param p7, "s_"    # I
    .param p8, "range_"    # I

    .prologue
    .line 213
    iget-object v1, p1, Lorg/joni/Regex;->exact:[B

    .line 214
    .local v1, "target":[B
    iget v2, p1, Lorg/joni/Regex;->exactP:I

    .line 215
    .local v2, "targetP":I
    iget v3, p1, Lorg/joni/Regex;->exactEnd:I

    .line 217
    .local v3, "targetEnd":I
    move v5, p5

    .line 218
    .local v5, "s":I
    sub-int v0, v3, v2

    sub-int/2addr v5, v0

    .line 220
    if-le v5, p6, :cond_0

    .line 221
    move v5, p6

    .line 226
    :goto_0
    if-lt v5, p3, :cond_2

    move-object v0, p0

    move-object v4, p2

    move v6, p5

    .line 227
    invoke-direct/range {v0 .. v6}, Lorg/joni/SearchAlgorithm$SLOW_IC;->lowerCaseMatch([BII[BII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    .end local v5    # "s":I
    :goto_1
    return v5

    .line 223
    .restart local v5    # "s":I
    :cond_0
    iget-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, p2, p4, v5, p5}, Lorg/jcodings/Encoding;->leftAdjustCharHead([BIII)I

    move-result v5

    goto :goto_0

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/joni/SearchAlgorithm$SLOW_IC;->enc:Lorg/jcodings/Encoding;

    invoke-virtual {v0, p2, p4, v5, p5}, Lorg/jcodings/Encoding;->prevCharHead([BIII)I

    move-result v5

    goto :goto_0

    .line 230
    :cond_2
    const/4 v5, -0x1

    goto :goto_1
.end method
