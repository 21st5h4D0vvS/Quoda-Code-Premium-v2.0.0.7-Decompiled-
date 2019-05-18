.class Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;
    }
.end annotation


# instance fields
.field count:I

.field head:I

.field rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

.field private final this$0:Lcom/jcraft/jsch/ChannelSftp;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x7

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    const/4 v3, 0x5

    new-array v1, p2, [Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    const/4 v3, 0x2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    aput-object v2, v1, v0

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x6

    const/4 v3, 0x4

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method add(IJI)V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x1

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    const/4 v4, 0x5

    :cond_0
    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    add-int v0, v1, v2

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    sub-int/2addr v0, v1

    const/4 v4, 0x4

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput p1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iput-wide p2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    int-to-long v2, p4

    iput-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    const/4 v4, 0x6

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    const/4 v4, 0x5

    nop

    return-void

    const/4 v2, 0x7
.end method

.method cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v8, 0x3

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    const/4 v8, 0x6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-static {v4, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->access$500(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    const/4 v8, 0x6

    iget v3, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v8, 0x5

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v4, v4

    if-ge v2, v4, :cond_0

    const/4 v8, 0x5

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    iget v5, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    if-ne v4, v5, :cond_1

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    iput v5, v4, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    const/4 v8, 0x0

    :cond_0
    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    int-to-long v6, v3

    invoke-static {v4, v6, v7}, Lcom/jcraft/jsch/ChannelSftp;->access$600(Lcom/jcraft/jsch/ChannelSftp;J)V

    const/4 v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v6, 0x4

    const/4 v8, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v0, 0x1

    const/4 v8, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    const/4 v8, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method count()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    return v0

    const/4 v1, 0x4
.end method

.method get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    const/4 v9, 0x5

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    const/4 v9, 0x1

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    const/4 v9, 0x1

    iget v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v6, v6

    if-ne v3, v6, :cond_0

    iput v7, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    const/4 v9, 0x2

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    if-eq v3, p1, :cond_4

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->getOffset()J

    move-result-wide v4

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v9, 0x6

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    if-ne v3, p1, :cond_2

    const/4 v9, 0x3

    const/4 v0, 0x1

    const/4 v9, 0x2

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v2

    iput v7, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    const/4 v9, 0x1

    :cond_1
    if-eqz v0, :cond_3

    const/4 v9, 0x0

    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;

    invoke-direct {v3, p0, v4, v5}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;-><init>(Lcom/jcraft/jsch/ChannelSftp$RequestQueue;J)V

    throw v3

    const/4 v9, 0x6

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v0, 0x7

    const/4 v9, 0x4

    :cond_3
    new-instance v3, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "RequestQueue: unknown request id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v3

    const/4 v9, 0x6

    :cond_4
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v1

    iput v7, v3, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v3, v3, v1

    return-object v3

    const/4 v2, 0x6
.end method

.method getOffset()J
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x6

    const-wide v2, 0x7fffffffffffffffL

    const/4 v6, 0x2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v6, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->id:I

    if-nez v1, :cond_1

    const/4 v6, 0x5

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v4, 0x1

    const/4 v6, 0x1

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget-wide v4, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    aget-object v1, v1, v0

    iget-wide v2, v1, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    goto :goto_1

    const/4 v2, 0x7

    const/4 v6, 0x4

    :cond_2
    return-wide v2

    const/4 v0, 0x6
.end method

.method init()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count:I

    iput v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->head:I

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x6
.end method

.method size()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->rrq:[Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;

    array-length v0, v0

    return v0

    const/4 v0, 0x2
.end method
