.class public Lcom/dd/plist/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dd/plist/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1725
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dd/plist/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 1726
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1750
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1751
    iput p2, p0, Lcom/dd/plist/Base64$InputStream;->options:I

    .line 1752
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->breakLines:Z

    .line 1753
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    .line 1754
    iget-boolean v0, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lcom/dd/plist/Base64$InputStream;->bufferLength:I

    .line 1755
    iget v0, p0, Lcom/dd/plist/Base64$InputStream;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    .line 1756
    const/4 v0, -0x1

    iput v0, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    .line 1757
    iput v2, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    .line 1758
    invoke-static {p2}, Lcom/dd/plist/Base64;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/dd/plist/Base64$InputStream;->decodabet:[B

    .line 1759
    return-void

    :cond_0
    move v0, v2

    .line 1752
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1753
    goto :goto_1

    .line 1754
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1772
    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    if-gez v3, :cond_1

    .line 1773
    iget-boolean v3, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_3

    .line 1774
    new-array v0, v4, [B

    .line 1775
    .local v0, "b3":[B
    const/4 v2, 0x0

    .line 1776
    .local v2, "numBinaryBytes":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 1777
    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1780
    .local v6, "b":I
    if-ltz v6, :cond_0

    .line 1781
    int-to-byte v3, v6

    aput-byte v3, v0, v8

    .line 1782
    add-int/lit8 v2, v2, 0x1

    .line 1776
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1789
    .end local v6    # "b":I
    :cond_0
    if-lez v2, :cond_2

    .line 1790
    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    iget v5, p0, Lcom/dd/plist/Base64$InputStream;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lcom/dd/plist/Base64;->access$100([BII[BII)[B

    .line 1791
    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    .line 1792
    iput v10, p0, Lcom/dd/plist/Base64$InputStream;->numSigBytes:I

    .line 1834
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_1
    :goto_1
    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    if-ltz v3, :cond_d

    .line 1836
    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    iget v4, p0, Lcom/dd/plist/Base64$InputStream;->numSigBytes:I

    if-lt v3, v4, :cond_a

    move v1, v9

    .line 1855
    :goto_2
    return v1

    .restart local v0    # "b3":[B
    .restart local v2    # "numBinaryBytes":I
    .restart local v8    # "i":I
    :cond_2
    move v1, v9

    .line 1795
    goto :goto_2

    .line 1801
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_3
    new-array v7, v10, [B

    .line 1802
    .local v7, "b4":[B
    const/4 v8, 0x0

    .line 1803
    .restart local v8    # "i":I
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v10, :cond_6

    .line 1805
    const/4 v6, 0x0

    .line 1807
    .restart local v6    # "b":I
    :cond_4
    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1809
    if-ltz v6, :cond_5

    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_4

    .line 1811
    :cond_5
    if-gez v6, :cond_7

    .line 1818
    .end local v6    # "b":I
    :cond_6
    if-ne v8, v10, :cond_8

    .line 1819
    iget-object v3, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/dd/plist/Base64$InputStream;->options:I

    invoke-static {v7, v1, v3, v1, v4}, Lcom/dd/plist/Base64;->access$200([BI[BII)I

    move-result v3

    iput v3, p0, Lcom/dd/plist/Base64$InputStream;->numSigBytes:I

    .line 1820
    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    goto :goto_1

    .line 1815
    .restart local v6    # "b":I
    :cond_7
    int-to-byte v3, v6

    aput-byte v3, v7, v8

    .line 1803
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1822
    .end local v6    # "b":I
    :cond_8
    if-nez v8, :cond_9

    move v1, v9

    .line 1823
    goto :goto_2

    .line 1827
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1840
    .end local v7    # "b4":[B
    .end local v8    # "i":I
    :cond_a
    iget-boolean v3, p0, Lcom/dd/plist/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lcom/dd/plist/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_b

    .line 1841
    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    .line 1842
    const/16 v1, 0xa

    goto :goto_2

    .line 1845
    :cond_b
    iget v1, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dd/plist/Base64$InputStream;->lineLength:I

    .line 1849
    iget-object v1, p0, Lcom/dd/plist/Base64$InputStream;->buffer:[B

    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    aget-byte v6, v1, v3

    .line 1851
    .restart local v6    # "b":I
    iget v1, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    iget v3, p0, Lcom/dd/plist/Base64$InputStream;->bufferLength:I

    if-lt v1, v3, :cond_c

    .line 1852
    iput v9, p0, Lcom/dd/plist/Base64$InputStream;->position:I

    .line 1855
    :cond_c
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1862
    .end local v6    # "b":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "dest"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1884
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1885
    invoke-virtual {p0}, Lcom/dd/plist/Base64$InputStream;->read()I

    move-result v0

    .line 1887
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 1888
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1889
    :cond_0
    if-nez v1, :cond_1

    .line 1890
    const/4 v1, -0x1

    .line 1895
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_1
    return v1
.end method
