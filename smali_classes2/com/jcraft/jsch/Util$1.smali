.class final Lcom/jcraft/jsch/Util$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final val$_host:Ljava/lang/String;

.field private final val$_port:I

.field private final val$ee:[Ljava/lang/Exception;

.field private final val$sockp:[Ljava/net/Socket;


# direct methods
.method constructor <init>([Ljava/net/Socket;Ljava/lang/String;I[Ljava/lang/Exception;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    iput-object p2, p0, Lcom/jcraft/jsch/Util$1;->val$_host:Ljava/lang/String;

    iput p3, p0, Lcom/jcraft/jsch/Util$1;->val$_port:I

    iput-object p4, p0, Lcom/jcraft/jsch/Util$1;->val$ee:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    aput-object v7, v1, v6

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    const/4 v2, 0x0

    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lcom/jcraft/jsch/Util$1;->val$_host:Ljava/lang/String;

    iget v5, p0, Lcom/jcraft/jsch/Util$1;->val$_port:I

    invoke-direct {v3, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :goto_0
    nop

    return-void

    const/4 v3, 0x4

    const/4 v8, 0x6

    :catch_0
    move-exception v0

    const/4 v8, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$ee:[Ljava/lang/Exception;

    aput-object v0, v1, v6

    const/4 v8, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    aget-object v1, v1, v6

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x6

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/jcraft/jsch/Util$1;->val$sockp:[Ljava/net/Socket;

    aput-object v7, v1, v6

    goto :goto_0

    const/4 v2, 0x6

    const/4 v8, 0x5

    :catch_1
    move-exception v1

    goto :goto_1

    const/4 v4, 0x0
.end method
