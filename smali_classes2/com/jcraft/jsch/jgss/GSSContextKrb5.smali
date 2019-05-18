.class public Lcom/jcraft/jsch/jgss/GSSContextKrb5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/GSSContext;


# static fields
.field private static final pUseSubjectCredsOnly:Ljava/lang/String; = "javax.security.auth.useSubjectCredsOnly"

.field private static useSubjectCredsOnly:Ljava/lang/String;


# instance fields
.field private context:Lorg/ietf/jgss/GSSContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    const-string v0, "javax.security.auth.useSubjectCredsOnly"

    invoke-static {v0}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->useSubjectCredsOnly:Ljava/lang/String;

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x3

    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x6

    :goto_0
    return-object v1

    const/4 v0, 0x5

    const/4 v2, 0x6

    :catch_0
    move-exception v0

    const/4 v2, 0x5

    const/4 v1, 0x0

    goto :goto_0

    const/4 v0, 0x4
.end method

.method private static setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x7

    const/4 v1, 0x3

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x4
.end method


# virtual methods
.method public create(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v9, 0x2

    :try_start_0
    new-instance v4, Lorg/ietf/jgss/Oid;

    const-string v7, "1.2.840.113554.1.2.2"

    invoke-direct {v4, v7}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x5

    new-instance v6, Lorg/ietf/jgss/Oid;

    const-string v7, "1.2.840.113554.1.2.2.1"

    invoke-direct {v6, v7}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x5

    invoke-static {}, Lorg/ietf/jgss/GSSManager;->getInstance()Lorg/ietf/jgss/GSSManager;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x5

    move-object v1, p2

    const/4 v9, 0x2

    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/ietf/jgss/GSSException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    const/4 v9, 0x3

    :goto_0
    :try_start_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "host/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lorg/ietf/jgss/GSSManager;->createName(Ljava/lang/String;Lorg/ietf/jgss/Oid;)Lorg/ietf/jgss/GSSName;

    move-result-object v0

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v4, v2, v7}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSName;Lorg/ietf/jgss/Oid;Lorg/ietf/jgss/GSSCredential;I)Lorg/ietf/jgss/GSSContext;

    move-result-object v7

    iput-object v7, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v9, 0x3

    iget-object v7, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/ietf/jgss/GSSContext;->requestMutualAuth(Z)V

    const/4 v9, 0x3

    iget-object v7, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/ietf/jgss/GSSContext;->requestConf(Z)V

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/ietf/jgss/GSSContext;->requestInteg(Z)V

    const/4 v9, 0x7

    iget-object v7, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/ietf/jgss/GSSContext;->requestCredDeleg(Z)V

    const/4 v9, 0x4

    iget-object v7, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/ietf/jgss/GSSContext;->requestAnonymity(Z)V
    :try_end_2
    .catch Lorg/ietf/jgss/GSSException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x4

    nop

    return-void

    const/4 v4, 0x0

    const/4 v9, 0x5

    :catch_0
    move-exception v3

    const/4 v9, 0x2

    new-instance v7, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v3}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v7

    const/4 v9, 0x4

    :catch_1
    move-exception v7

    goto :goto_0

    const/4 v6, 0x5
.end method

.method public dispose()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x3

    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v1, 0x7

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v1, 0x3
.end method

.method public getMIC([BII)[B
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x2

    :try_start_0
    new-instance v1, Lorg/ietf/jgss/MessageProp;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/ietf/jgss/MessageProp;-><init>(IZ)V

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v2, p1, p2, p3, v1}, Lorg/ietf/jgss/GSSContext;->getMIC([BIILorg/ietf/jgss/MessageProp;)[B
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v4, 0x2

    :goto_0
    return-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    :catch_0
    move-exception v0

    const/4 v4, 0x3

    const/4 v2, 0x0

    goto :goto_0

    const/4 v3, 0x1
.end method

.method public init([BII)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x3

    :try_start_0
    sget-object v1, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->useSubjectCredsOnly:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v4, 0x1

    const-string v1, "javax.security.auth.useSubjectCredsOnly"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Lorg/ietf/jgss/GSSContext;->initSecContext([BII)[B
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    const/4 v4, 0x4

    sget-object v2, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->useSubjectCredsOnly:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v4, 0x5

    const-string v2, "javax.security.auth.useSubjectCredsOnly"

    const-string v3, "true"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v1

    const/4 v3, 0x6

    const/4 v4, 0x4

    :catch_0
    move-exception v0

    const/4 v4, 0x3

    :try_start_1
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->useSubjectCredsOnly:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v4, 0x7

    const-string v2, "javax.security.auth.useSubjectCredsOnly"

    const-string v3, "true"

    invoke-static {v2, v3}, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    throw v1

    const/4 v4, 0x7

    :catch_1
    move-exception v0

    const/4 v4, 0x3

    :try_start_2
    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public isEstablished()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/jgss/GSSContextKrb5;->context:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v0

    return v0

    const/4 v0, 0x4
.end method
