.class Lcom/jcraft/jsch/Session$Forwarding;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Forwarding"
.end annotation


# instance fields
.field bind_address:Ljava/lang/String;

.field host:Ljava/lang/String;

.field hostport:I

.field port:I

.field private final this$0:Lcom/jcraft/jsch/Session;


# direct methods
.method private constructor <init>(Lcom/jcraft/jsch/Session;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/Session$Forwarding;->this$0:Lcom/jcraft/jsch/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x5

    iput-object v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->bind_address:Ljava/lang/String;

    const/4 v2, 0x5

    iput v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->port:I

    const/4 v2, 0x1

    iput-object v1, p0, Lcom/jcraft/jsch/Session$Forwarding;->host:Ljava/lang/String;

    const/4 v2, 0x6

    iput v0, p0, Lcom/jcraft/jsch/Session$Forwarding;->hostport:I

    nop

    return-void

    const/4 v2, 0x4
.end method

.method constructor <init>(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Session$1;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/Session$Forwarding;-><init>(Lcom/jcraft/jsch/Session;)V

    nop

    return-void

    const/4 v0, 0x1
.end method
