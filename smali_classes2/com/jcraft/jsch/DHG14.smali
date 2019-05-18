.class public Lcom/jcraft/jsch/DHG14;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static final DSS:I = 0x1

.field static final RSA:I = 0x0

.field private static final SSH_MSG_KEXDH_INIT:I = 0x1e

.field private static final SSH_MSG_KEXDH_REPLY:I = 0x1f

.field static final g:[B

.field static final p:[B


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field e:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x5

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    sput-object v0, Lcom/jcraft/jsch/DHG14;->g:[B

    const/4 v3, 0x4

    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jcraft/jsch/DHG14;->p:[B

    nop

    return-void

    const/4 v0, 0x5

    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1ct
        0x5bt
        0x3dt
        -0x3et
        0x0t
        0x7ct
        -0x48t
        -0x5ft
        0x63t
        -0x41t
        0x5t
        -0x68t
        -0x26t
        0x48t
        0x36t
        0x1ct
        0x55t
        -0x2dt
        -0x66t
        0x69t
        0x16t
        0x3ft
        -0x58t
        -0x3t
        0x24t
        -0x31t
        0x5ft
        -0x7dt
        0x65t
        0x5dt
        0x23t
        -0x24t
        -0x5dt
        -0x53t
        -0x6at
        0x1ct
        0x62t
        -0xdt
        0x56t
        0x20t
        -0x7bt
        0x52t
        -0x45t
        -0x62t
        -0x2bt
        0x29t
        0x7t
        0x70t
        -0x6at
        -0x6at
        0x6dt
        0x67t
        0xct
        0x35t
        0x4et
        0x4at
        -0x44t
        -0x68t
        0x4t
        -0xft
        0x74t
        0x6ct
        0x8t
        -0x36t
        0x18t
        0x21t
        0x7ct
        0x32t
        -0x70t
        0x5et
        0x46t
        0x2et
        0x36t
        -0x32t
        0x3bt
        -0x1dt
        -0x62t
        0x77t
        0x2ct
        0x18t
        0xet
        -0x7at
        0x3t
        -0x65t
        0x27t
        -0x7dt
        -0x5et
        -0x14t
        0x7t
        -0x5et
        -0x71t
        -0x4bt
        -0x3bt
        0x5dt
        -0x10t
        0x6ft
        0x4ct
        0x52t
        -0x37t
        -0x22t
        0x2bt
        -0x35t
        -0xat
        -0x6bt
        0x58t
        0x17t
        0x18t
        0x39t
        -0x6bt
        0x49t
        0x7ct
        -0x16t
        -0x6bt
        0x6at
        -0x1bt
        0x15t
        -0x2et
        0x26t
        0x18t
        -0x68t
        -0x6t
        0x5t
        0x10t
        0x15t
        0x72t
        -0x72t
        0x5at
        -0x76t
        -0x54t
        -0x56t
        0x68t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/DHG14;->type:I

    nop

    return-void

    const/4 v1, 0x3
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x3

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DSA"

    const/4 v2, 0x5

    :goto_0
    return-object v0

    const/4 v0, 0x0

    :cond_0
    const-string v0, "RSA"

    goto :goto_0

    const/4 v1, 0x3
.end method

.method public getState()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget v0, p0, Lcom/jcraft/jsch/DHG14;->state:I

    return v0

    const/4 v1, 0x3
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x3

    iput-object p1, p0, Lcom/jcraft/jsch/DHG14;->session:Lcom/jcraft/jsch/Session;

    const/4 v5, 0x2

    iput-object p2, p0, Lcom/jcraft/jsch/DHG14;->V_S:[B

    const/4 v5, 0x0

    iput-object p3, p0, Lcom/jcraft/jsch/DHG14;->V_C:[B

    const/4 v5, 0x1

    iput-object p4, p0, Lcom/jcraft/jsch/DHG14;->I_S:[B

    const/4 v5, 0x6

    iput-object p5, p0, Lcom/jcraft/jsch/DHG14;->I_C:[B

    const/4 v5, 0x7

    :try_start_0
    const-string v2, "sha-1"

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HASH;

    check-cast v2, Lcom/jcraft/jsch/HASH;

    iput-object v2, p0, Lcom/jcraft/jsch/DHG14;->sha:Lcom/jcraft/jsch/HASH;

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x2

    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v5, 0x3

    new-instance v2, Lcom/jcraft/jsch/Packet;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v2, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v5, 0x5

    :try_start_1
    const-string v2, "dh"

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/DH;

    check-cast v2, Lcom/jcraft/jsch/DH;

    iput-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    sget-object v3, Lcom/jcraft/jsch/DHG14;->p:[B

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/DH;->setP([B)V

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    sget-object v3, Lcom/jcraft/jsch/DHG14;->g:[B

    invoke-interface {v2, v3}, Lcom/jcraft/jsch/DH;->setG([B)V

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v3, p0, Lcom/jcraft/jsch/DHG14;->e:[B

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    const/4 v5, 0x3

    if-nez p2, :cond_0

    const/4 v5, 0x1

    :goto_1
    nop

    return-void

    const/4 v4, 0x1

    const/4 v5, 0x0

    :catch_0
    move-exception v1

    const/4 v5, 0x3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0

    const/4 v4, 0x7

    const/4 v5, 0x4

    :catch_1
    move-exception v1

    const/4 v5, 0x0

    throw v1

    const/4 v5, 0x1

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/DHG14;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v5, 0x2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v5, 0x1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "SSH_MSG_KEXDH_INIT sent"

    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "expecting SSH_MSG_KEXDH_REPLY"

    invoke-interface {v2, v4, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v5, 0x6

    :cond_1
    const/16 v2, 0x1f

    iput v2, p0, Lcom/jcraft/jsch/DHG14;->state:I

    goto :goto_1

    const/4 v4, 0x1
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/DHG14;->state:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    const/16 v16, 0x0

    :goto_0
    return v16

    const/4 v6, 0x0

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v12

    const/16 v20, 0x1f

    move/from16 v0, v20

    if-eq v12, v0, :cond_0

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string v22, "type: must be 31 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v16, 0x0

    goto :goto_0

    const/4 v7, 0x6

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHG14;->K_S:[B

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/DH;->setF([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/DHG14;->normalize([B)[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHG14;->K:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jcraft/jsch/Buffer;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->V_C:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->V_S:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->I_C:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->I_S:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->e:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K:[B

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v20

    move/from16 v0, v20

    new-array v8, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->sha:Lcom/jcraft/jsch/HASH;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    array-length v0, v8

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-interface {v0, v8, v1, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->sha:Lcom/jcraft/jsch/HASH;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHG14;->H:[B

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v10, v12}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v10, v12, 0x4

    const/16 v16, 0x0

    const-string v20, "ssh-rsa"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHG14;->type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    move-object/from16 v6, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    move-object/from16 v13, v19

    const/16 v17, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->session:Lcom/jcraft/jsch/Session;

    move-object/from16 v20, v0

    const-string v21, "signature.rsa"

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jcraft/jsch/SignatureRSA;

    move-object/from16 v0, v20

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/jcraft/jsch/SignatureRSA;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object/from16 v0, v17

    invoke-interface {v0, v6, v13}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->H:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SignatureRSA;->update([B)V

    invoke-interface/range {v17 .. v18}, Lcom/jcraft/jsch/SignatureRSA;->verify([B)Z

    move-result v16

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v20

    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "ssh_rsa_verify: signature "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    :goto_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHG14;->state:I

    goto/16 :goto_0

    const/4 v13, 0x4

    :catch_0
    move-exception v5

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    const/4 v9, 0x6

    :cond_2
    const-string v20, "ssh-dss"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/4 v15, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHG14;->type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    move-object/from16 v14, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    move-object/from16 v15, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    move-object/from16 v9, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v20, v20, v10

    shl-int/lit8 v20, v20, 0x18

    const/high16 v21, -0x1000000

    and-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    shl-int/lit8 v21, v21, 0x10

    const/high16 v22, 0xff0000

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v11, v10, 0x1

    aget-byte v21, v21, v10

    shl-int/lit8 v21, v21, 0x8

    const v22, 0xff00

    and-int v21, v21, v22

    or-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v21, v0

    add-int/lit8 v10, v11, 0x1

    aget-byte v21, v21, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    or-int v12, v20, v21

    new-array v0, v12, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->K_S:[B

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-static {v0, v10, v1, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v12

    move-object/from16 v7, v19

    const/16 v17, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->session:Lcom/jcraft/jsch/Session;

    move-object/from16 v20, v0

    const-string v21, "signature.dss"

    invoke-virtual/range {v20 .. v21}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/jcraft/jsch/SignatureDSA;

    move-object/from16 v0, v20

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/jcraft/jsch/SignatureDSA;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, v17

    invoke-interface {v0, v7, v14, v15, v9}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHG14;->H:[B

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/SignatureDSA;->update([B)V

    invoke-interface/range {v17 .. v18}, Lcom/jcraft/jsch/SignatureDSA;->verify([B)Z

    move-result v16

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v20

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v20

    const/16 v21, 0x1

    new-instance v22, Ljava/lang/StringBuffer;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuffer;-><init>()V

    const-string v23, "ssh_dss_verify: signature "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_2

    const/4 v8, 0x5

    :catch_1
    move-exception v5

    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    const/4 v10, 0x7

    :cond_3
    sget-object v20, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v21, "unknown alg"

    invoke-virtual/range {v20 .. v21}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    const/4 v5, 0x2

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method
