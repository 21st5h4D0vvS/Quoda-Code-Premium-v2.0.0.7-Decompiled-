.class Lcom/jcraft/jsch/ChannelSftp$Header;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/ChannelSftp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Header"
.end annotation


# instance fields
.field length:I

.field rid:I

.field private final this$0:Lcom/jcraft/jsch/ChannelSftp;

.field type:I


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/ChannelSftp;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp$Header;->this$0:Lcom/jcraft/jsch/ChannelSftp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method
