.class Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/ConfigRepository$Config;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jcraft/jsch/OpenSSHConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfig"
.end annotation


# instance fields
.field private _configs:Ljava/util/Vector;

.field private host:Ljava/lang/String;

.field private final this$0:Lcom/jcraft/jsch/OpenSSHConfig;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/OpenSSHConfig;Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x2

    iput-object p1, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->this$0:Lcom/jcraft/jsch/OpenSSHConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v10, 0x4

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    const/4 v10, 0x6

    iput-object p2, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->host:Ljava/lang/String;

    const/4 v10, 0x4

    iget-object v6, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$000(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v10, 0x2

    invoke-static {p2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v10, 0x7

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$100(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-le v6, v9, :cond_4

    const/4 v10, 0x1

    const/4 v2, 0x1

    :goto_0
    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$100(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    const/4 v10, 0x0

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$100(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "[ \t]"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x4

    const/4 v3, 0x0

    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_3

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x5

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x5

    const-string v6, "!"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v10, 0x6

    const/4 v4, 0x1

    const/4 v10, 0x3

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    :cond_0
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v6, v0}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v10, 0x0

    if-nez v4, :cond_1

    const/4 v10, 0x4

    iget-object v7, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$000(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$100(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v10, 0x7

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v10, 0x6

    const/4 v10, 0x1

    :cond_2
    if-eqz v4, :cond_1

    const/4 v10, 0x5

    iget-object v7, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$000(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Hashtable;

    move-result-object v8

    invoke-static {p1}, Lcom/jcraft/jsch/OpenSSHConfig;->access$100(Lcom/jcraft/jsch/OpenSSHConfig;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    const/4 v6, 0x0

    const/4 v10, 0x5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    const/4 v9, 0x0

    const/4 v10, 0x3

    :cond_4
    nop

    return-void

    const/4 v5, 0x2
.end method

.method private find(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v6, 0x6

    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->access$200()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v6, 0x1

    invoke-static {}, Lcom/jcraft/jsch/OpenSSHConfig;->access$200()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v6, 0x2

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x7

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Vector;

    const/4 v6, 0x6

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v2, v5

    check-cast v2, [Ljava/lang/String;

    const/4 v6, 0x7

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v6, 0x0

    const/4 v5, 0x1

    aget-object v4, v2, v5

    const/4 v6, 0x6

    :cond_1
    if-eqz v4, :cond_4

    const/4 v6, 0x5

    :cond_2
    return-object v4

    const/4 v2, 0x4

    const/4 v6, 0x3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v5, 0x5

    const/4 v6, 0x7

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v0, 0x4
.end method

.method private multiFind(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x5

    const/4 v8, 0x3

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    const/4 v8, 0x4

    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    const/4 v8, 0x5

    iget-object v7, p0, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->_configs:Ljava/util/Vector;

    invoke-virtual {v7, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Vector;

    const/4 v8, 0x3

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    const/4 v8, 0x4

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v3, v7

    check-cast v3, [Ljava/lang/String;

    const/4 v8, 0x4

    const/4 v7, 0x0

    aget-object v7, v3, v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v8, 0x0

    const/4 v7, 0x1

    aget-object v0, v3, v7

    const/4 v8, 0x6

    if-eqz v0, :cond_0

    const/4 v8, 0x0

    invoke-virtual {v6, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x6

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v6, 0x0

    const/4 v8, 0x4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v4, 0x3

    const/4 v8, 0x5

    :cond_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/String;

    const/4 v8, 0x5

    invoke-virtual {v6, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v8, 0x3

    return-object v4

    const/4 v5, 0x3
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    const-string v0, "Hostname"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x1
.end method

.method public getPort()I
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x3

    const-string v2, "Port"

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v3, 0x1

    :goto_0
    return v1

    const/4 v0, 0x6

    const/4 v3, 0x5

    :catch_0
    move-exception v2

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public getUser()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    const-string v0, "User"

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    const-string v1, "compression.s2c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "compression.c2s"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x5

    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x5

    if-eqz v0, :cond_1

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_1
    const-string v1, "none,zlib@openssh.com,zlib"

    const/4 v2, 0x5

    :goto_0
    return-object v1

    const/4 v0, 0x1

    const/4 v2, 0x4

    :cond_2
    const-string v1, "zlib@openssh.com,zlib,none"

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    :cond_3
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->find(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public getValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/OpenSSHConfig$MyConfig;->multiFind(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method
