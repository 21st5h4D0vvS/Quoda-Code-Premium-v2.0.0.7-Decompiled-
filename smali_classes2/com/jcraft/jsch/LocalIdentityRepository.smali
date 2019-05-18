.class Lcom/jcraft/jsch/LocalIdentityRepository;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jcraft/jsch/IdentityRepository;


# static fields
.field private static final name:Ljava/lang/String; = "Local Identity Repository"


# instance fields
.field private identities:Ljava/util/Vector;

.field private jsch:Lcom/jcraft/jsch/JSch;


# direct methods
.method constructor <init>(Lcom/jcraft/jsch/JSch;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->jsch:Lcom/jcraft/jsch/JSch;

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/jcraft/jsch/Identity;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    :cond_0
    monitor-exit p0

    nop

    return-void

    const/4 v1, 0x1

    const/4 v1, 0x6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add([B)Z
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x1

    monitor-enter p0

    :try_start_0
    const-string v2, "from remote:"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->jsch:Lcom/jcraft/jsch/JSch;

    invoke-static {v2, p1, v3, v4}, Lcom/jcraft/jsch/IdentityFile;->newInstance(Ljava/lang/String;[B[BLcom/jcraft/jsch/JSch;)Lcom/jcraft/jsch/IdentityFile;

    move-result-object v0

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/jcraft/jsch/JSchException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const/4 v2, 0x1

    const/4 v5, 0x2

    :goto_0
    monitor-exit p0

    return v2

    const/4 v2, 0x7

    const/4 v5, 0x1

    :catch_0
    move-exception v1

    const/4 v5, 0x1

    const/4 v2, 0x0

    goto :goto_0

    const/4 v0, 0x5

    const/4 v5, 0x1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getIdentities()Ljava/util/Vector;
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x5

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v0, 0x0

    const/4 v3, 0x7

    :cond_0
    monitor-exit p0

    return-object v1

    const/4 v0, 0x0

    const/4 v3, 0x5

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    const-string v0, "Local Identity Repository"

    return-object v0

    const/4 v0, 0x3
.end method

.method public getStatus()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    const/4 v0, 0x2

    return v0

    const/4 v0, 0x4
.end method

.method declared-synchronized remove(Lcom/jcraft/jsch/Identity;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x5

    const/4 v1, 0x6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove([B)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x2

    monitor-enter p0

    if-nez p1, :cond_0

    move v4, v5

    const/4 v6, 0x7

    :goto_0
    monitor-exit p0

    return v4

    const/4 v3, 0x3

    const/4 v6, 0x3

    :cond_0
    const/4 v3, 0x0

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v6, 0x3

    iget-object v4, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jcraft/jsch/Identity;

    move-object v0, v4

    check-cast v0, Lcom/jcraft/jsch/Identity;

    move-object v2, v0

    const/4 v6, 0x4

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->getPublicKeyBlob()[B

    move-result-object v1

    const/4 v6, 0x6

    if-eqz v1, :cond_1

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v6, 0x6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v5, 0x5

    const/4 v6, 0x6

    :cond_2
    iget-object v4, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    const/4 v6, 0x5

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x1

    const/4 v4, 0x1

    goto :goto_0

    const/4 v3, 0x7

    :cond_3
    move v4, v5

    const/4 v6, 0x5

    goto :goto_0

    const/4 v5, 0x0

    const/4 v6, 0x2

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeAll()V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x2

    monitor-enter p0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jcraft/jsch/Identity;

    move-object v0, v3

    check-cast v0, Lcom/jcraft/jsch/Identity;

    move-object v2, v0

    const/4 v4, 0x1

    invoke-interface {v2}, Lcom/jcraft/jsch/Identity;->clear()V

    const/4 v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x7

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/LocalIdentityRepository;->identities:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->removeAllElements()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x3

    monitor-exit p0

    nop

    return-void

    const/4 v3, 0x0

    const/4 v4, 0x2

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
