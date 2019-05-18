.class Lcom/jcraft/jsch/Session$GlobalRequestReply;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalRequestReply"
.end annotation


# instance fields
.field private port:I

.field private reply:I

.field private final this$0:Lcom/jcraft/jsch/Session;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/Session;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->this$0:Lcom/jcraft/jsch/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    const/4 v1, 0x3

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    const/4 v1, 0x5

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    nop

    return-void

    const/4 v0, 0x3
.end method

.method constructor <init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session$GlobalRequestReply;-><init>(Lcom/jcraft/jsch/Session;)V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method getPort()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    return v0

    const/4 v1, 0x2
.end method

.method getReply()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    return v0

    const/4 v0, 0x5
.end method

.method getThread()Ljava/lang/Thread;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    return-object v0

    const/4 v0, 0x0
.end method

.method setPort(I)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->port:I

    nop

    return-void

    const/4 v0, 0x5
.end method

.method setReply(I)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    nop

    return-void

    const/4 v0, 0x5
.end method

.method setThread(Ljava/lang/Thread;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->thread:Ljava/lang/Thread;

    const/4 v1, 0x6

    const/4 v0, -0x1

    iput v0, p0, Lcom/jcraft/jsch/Session$GlobalRequestReply;->reply:I

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x2
.end method
