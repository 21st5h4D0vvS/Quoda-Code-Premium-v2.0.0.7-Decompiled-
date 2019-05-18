.class public Lcom/jcraft/jsch/jcraft/Compression;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/Compression;


# static fields
.field private static final BUF_SIZE:I = 0x1000


# instance fields
.field private final buffer_margin:I

.field private inflated_buf:[B

.field private stream:Lcom/jcraft/jzlib/ZStream;

.field private tmpbuf:[B

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x3

    const/16 v0, 0x34

    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->buffer_margin:I

    const/4 v1, 0x2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    const/4 v1, 0x0

    new-instance v0, Lcom/jcraft/jzlib/ZStream;

    invoke-direct {v0}, Lcom/jcraft/jzlib/ZStream;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public compress([BI[I)[B
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x3

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v5, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput p2, v5, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    aget v6, p3, v8

    sub-int/2addr v6, p2

    iput v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    const/4 v9, 0x3

    move v2, p2

    const/4 v9, 0x2

    move-object v1, p1

    const/4 v9, 0x7

    const/4 v4, 0x0

    const/4 v9, 0x6

    :cond_0
    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget-object v6, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    iput-object v6, v5, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    const/4 v9, 0x4

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput v8, v5, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/16 v6, 0x1000

    iput v6, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    const/4 v9, 0x7

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/jcraft/jzlib/ZStream;->deflate(I)I

    move-result v3

    const/4 v9, 0x7

    packed-switch v3, :pswitch_data_0

    const/4 v9, 0x0

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "compress: deflate returnd "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v9, 0x2

    :goto_0
    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    if-eqz v5, :cond_0

    const/4 v9, 0x6

    aput v2, p3, v8

    const/4 v9, 0x5

    return-object v1

    const/4 v8, 0x7

    const/4 v9, 0x1

    :pswitch_0
    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v4, v5, 0x1000

    const/4 v9, 0x2

    array-length v5, v1

    add-int v6, v2, v4

    add-int/lit8 v6, v6, 0x34

    if-ge v5, v6, :cond_1

    const/4 v9, 0x4

    add-int v5, v2, v4

    add-int/lit8 v5, v5, 0x34

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    const/4 v9, 0x7

    array-length v5, v1

    invoke-static {v1, v8, v0, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    move-object v1, v0

    const/4 v9, 0x6

    :cond_1
    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    invoke-static {v5, v8, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v9, 0x0

    add-int/2addr v2, v4

    const/4 v9, 0x3

    goto :goto_0

    const/4 v4, 0x6

    const/4 v9, 0x3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public init(II)V
    .locals 3

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v1, :cond_1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0, p2}, Lcom/jcraft/jzlib/ZStream;->deflateInit(I)I

    const/4 v2, 0x2

    iput v1, p0, Lcom/jcraft/jsch/jcraft/Compression;->type:I

    const/4 v2, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x5

    const/4 v2, 0x0

    :cond_1
    if-nez p1, :cond_0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    invoke-virtual {v0}, Lcom/jcraft/jzlib/ZStream;->inflateInit()I

    const/4 v2, 0x2

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->type:I

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public uncompress([BI[I)[B
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput-object p1, v4, Lcom/jcraft/jzlib/ZStream;->next_in:[B

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput p2, v4, Lcom/jcraft/jzlib/ZStream;->next_in_index:I

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    aget v5, p3, v7

    iput v5, v4, Lcom/jcraft/jzlib/ZStream;->avail_in:I

    const/4 v8, 0x2

    :goto_0
    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    iput-object v5, v4, Lcom/jcraft/jzlib/ZStream;->next_out:[B

    const/4 v8, 0x4

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iput v7, v4, Lcom/jcraft/jzlib/ZStream;->next_out_index:I

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/16 v5, 0x1000

    iput v5, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/jcraft/jzlib/ZStream;->inflate(I)I

    move-result v3

    const/4 v8, 0x2

    sparse-switch v3, :sswitch_data_0

    const/4 v8, 0x0

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "uncompress: inflate returnd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v8, 0x4

    const/4 v4, 0x0

    :goto_1
    return-object v4

    const/4 v6, 0x2

    const/4 v8, 0x2

    :sswitch_0
    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    array-length v4, v4

    add-int/lit16 v5, v1, 0x1000

    iget-object v6, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    const/4 v8, 0x6

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    array-length v4, v4

    mul-int/lit8 v2, v4, 0x2

    const/4 v8, 0x1

    add-int/lit16 v4, v1, 0x1000

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_0

    const/4 v8, 0x7

    add-int/lit16 v4, v1, 0x1000

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v5, v5, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    sub-int v2, v4, v5

    const/4 v8, 0x3

    :cond_0
    new-array v0, v2, [B

    const/4 v8, 0x1

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    invoke-static {v4, v7, v0, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x1

    iput-object v0, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    const/4 v8, 0x0

    :cond_1
    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->tmpbuf:[B

    iget-object v5, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    iget-object v6, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v6, v6, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v6, v6, 0x1000

    invoke-static {v4, v7, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->stream:Lcom/jcraft/jzlib/ZStream;

    iget v4, v4, Lcom/jcraft/jzlib/ZStream;->avail_out:I

    rsub-int v4, v4, 0x1000

    add-int/2addr v1, v4

    const/4 v8, 0x4

    aput v1, p3, v7

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v8, 0x4

    :sswitch_1
    array-length v4, p1

    sub-int/2addr v4, p2

    if-le v1, v4, :cond_2

    const/4 v8, 0x1

    add-int v4, v1, p2

    new-array v0, v4, [B

    const/4 v8, 0x7

    invoke-static {p1, v7, v0, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    invoke-static {v4, v7, v0, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x1

    move-object p1, v0

    const/4 v8, 0x4

    :goto_2
    aput v1, p3, v7

    move-object v4, p1

    const/4 v8, 0x1

    goto :goto_1

    const/4 v0, 0x4

    const/4 v8, 0x5

    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/jcraft/Compression;->inflated_buf:[B

    invoke-static {v4, v7, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    const/4 v0, 0x5

    const/4 v8, 0x0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
