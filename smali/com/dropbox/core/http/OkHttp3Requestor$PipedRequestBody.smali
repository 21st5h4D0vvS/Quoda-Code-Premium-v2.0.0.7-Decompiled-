.class Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;
.super Lokhttp3/RequestBody;
.source "OkHttp3Requestor.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/http/OkHttp3Requestor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PipedRequestBody"
.end annotation


# instance fields
.field private final stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 334
    new-instance v0, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-direct {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;-><init>()V

    iput-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    .line 335
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->close()V

    .line 344
    return-void
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 353
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 1
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->stream:Lcom/dropbox/core/http/OkHttpUtil$PipedStream;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/http/OkHttpUtil$PipedStream;->writeTo(Lokio/BufferedSink;)V

    .line 359
    invoke-virtual {p0}, Lcom/dropbox/core/http/OkHttp3Requestor$PipedRequestBody;->close()V

    .line 360
    return-void
.end method
