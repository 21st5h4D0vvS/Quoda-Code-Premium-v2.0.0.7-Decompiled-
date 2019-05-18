.class public Lcom/jcraft/jsch/IO;
.super Ljava/lang/Object;


# instance fields
.field in:Ljava/io/InputStream;

.field private in_dontclose:Z

.field out:Ljava/io/OutputStream;

.field private out_dontclose:Z

.field out_ext:Ljava/io/OutputStream;

.field private out_ext_dontclose:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->in_dontclose:Z

    const/4 v1, 0x4

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_dontclose:Z

    const/4 v1, 0x4

    iput-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_ext_dontclose:Z

    nop

    return-void

    const/4 v1, 0x0
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->in_dontclose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x6

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/IO;->out_close()V

    const/4 v1, 0x3

    :try_start_1
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_ext_dontclose:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x5

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x3

    :goto_1
    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x3

    :catch_0
    move-exception v0

    goto :goto_1

    const/4 v0, 0x1

    const/4 v1, 0x4

    :catch_1
    move-exception v0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method getByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method getByte([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/IO;->getByte([BII)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v2, 0x5
.end method

.method getByte([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v3, 0x5

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v3, 0x1

    if-gez v0, :cond_1

    const/4 v3, 0x6

    new-instance v1, Ljava/io/IOException;

    const-string v2, "End of IO Stream Read"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v3, 0x3

    :cond_1
    add-int/2addr p2, v0

    const/4 v3, 0x5

    sub-int/2addr p3, v0

    const/4 v3, 0x2

    if-gtz p3, :cond_0

    const/4 v3, 0x1

    nop

    return-void

    const/4 v1, 0x3
.end method

.method out_close()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/jcraft/jsch/IO;->out_dontclose:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    const/4 v1, 0x6

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v1, 0x7

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public put(Lcom/jcraft/jsch/Packet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/SocketException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    iget-object v1, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/jcraft/jsch/Packet;->buffer:Lcom/jcraft/jsch/Buffer;

    iget v3, v3, Lcom/jcraft/jsch/Buffer;->index:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v4, 0x4

    nop

    return-void

    const/4 v4, 0x4
.end method

.method put([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method put_ext([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x4
.end method

.method setExtOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->out_ext:Ljava/io/OutputStream;

    nop

    return-void

    const/4 v0, 0x0
.end method

.method setExtOutputStream(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->out_ext_dontclose:Z

    const/4 v0, 0x7

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->setExtOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x0
.end method

.method setInputStream(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    nop

    return-void

    const/4 v0, 0x6
.end method

.method setInputStream(Ljava/io/InputStream;Z)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->in_dontclose:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x7
.end method

.method setOutputStream(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/IO;->out:Ljava/io/OutputStream;

    nop

    return-void

    const/4 v0, 0x2
.end method

.method setOutputStream(Ljava/io/OutputStream;Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-boolean p2, p0, Lcom/jcraft/jsch/IO;->out_dontclose:Z

    const/4 v0, 0x6

    invoke-virtual {p0, p1}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x3
.end method
