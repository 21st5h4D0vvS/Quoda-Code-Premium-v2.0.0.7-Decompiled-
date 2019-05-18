.class final Lcom/jcraft/jsch/ConfigRepository$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Lcom/jcraft/jsch/ConfigRepository$Config;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    sget-object v0, Lcom/jcraft/jsch/ConfigRepository$2;->defaultConfig:Lcom/jcraft/jsch/ConfigRepository$Config;

    return-object v0

    const/4 v0, 0x1
.end method
