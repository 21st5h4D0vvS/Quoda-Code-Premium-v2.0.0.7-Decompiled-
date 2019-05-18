.class public Lcom/jcraft/jsch/DHGEX;
.super Lcom/jcraft/jsch/KeyExchange;


# static fields
.field static final DSS:I = 0x1

.field static final RSA:I = 0x0

.field private static final SSH_MSG_KEX_DH_GEX_GROUP:I = 0x1f

.field private static final SSH_MSG_KEX_DH_GEX_INIT:I = 0x20

.field private static final SSH_MSG_KEX_DH_GEX_REPLY:I = 0x21

.field private static final SSH_MSG_KEX_DH_GEX_REQUEST:I = 0x22

.field static max:I

.field static min:I

.field static preferred:I


# instance fields
.field I_C:[B

.field I_S:[B

.field V_C:[B

.field V_S:[B

.field private buf:Lcom/jcraft/jsch/Buffer;

.field dh:Lcom/jcraft/jsch/DH;

.field private e:[B

.field private g:[B

.field private p:[B

.field private packet:Lcom/jcraft/jsch/Packet;

.field private state:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    const/16 v0, 0x400

    const/4 v1, 0x2

    sput v0, Lcom/jcraft/jsch/DHGEX;->min:I

    const/4 v1, 0x1

    sput v0, Lcom/jcraft/jsch/DHGEX;->preferred:I

    const/4 v1, 0x7

    sput v0, Lcom/jcraft/jsch/DHGEX;->max:I

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/KeyExchange;-><init>()V

    const/4 v1, 0x3

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/DHGEX;->type:I

    nop

    return-void

    const/4 v1, 0x7
.end method


# virtual methods
.method public getKeyType()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x7

    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "DSA"

    const/4 v2, 0x2

    :goto_0
    return-object v0

    const/4 v1, 0x1

    :cond_0
    const-string v0, "RSA"

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public getState()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget v0, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    return v0

    const/4 v0, 0x2
.end method

.method public init(Lcom/jcraft/jsch/Session;[B[B[B[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x6

    iput-object p1, p0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    const/4 v6, 0x7

    iput-object p2, p0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    const/4 v6, 0x5

    iput-object p3, p0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    const/4 v6, 0x7

    iput-object p4, p0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    const/4 v6, 0x6

    iput-object p5, p0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    const/4 v6, 0x5

    :try_start_0
    const-string v2, "sha-1"

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/HASH;

    check-cast v2, Lcom/jcraft/jsch/HASH;

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    invoke-interface {v2}, Lcom/jcraft/jsch/HASH;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    :goto_0
    new-instance v2, Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2}, Lcom/jcraft/jsch/Buffer;-><init>()V

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v6, 0x0

    new-instance v2, Lcom/jcraft/jsch/Packet;

    iget-object v3, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v2, v3}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v6, 0x2

    :try_start_1
    const-string v2, "dh"

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x3

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jcraft/jsch/DH;

    check-cast v2, Lcom/jcraft/jsch/DH;

    iput-object v2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    invoke-interface {v2}, Lcom/jcraft/jsch/DH;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v6, 0x7

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v3, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v3, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    sget v3, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {v2, v3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {p1, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    const/4 v6, 0x2

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x7

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "SSH_MSG_KEX_DH_GEX_REQUEST("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget v4, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget v4, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget v4, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ") sent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v6, 0x6

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v2

    const-string v3, "expecting SSH_MSG_KEX_DH_GEX_GROUP"

    invoke-interface {v2, v5, v3}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    const/4 v6, 0x6

    :cond_0
    const/16 v2, 0x1f

    iput v2, p0, Lcom/jcraft/jsch/DHGEX;->state:I

    const/4 v6, 0x4

    nop

    return-void

    const/4 v3, 0x2

    const/4 v6, 0x3

    :catch_0
    move-exception v1

    const/4 v6, 0x3

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    const/4 v0, 0x3

    const/4 v6, 0x7

    :catch_1
    move-exception v1

    const/4 v6, 0x4

    throw v1
.end method

.method public next(Lcom/jcraft/jsch/Buffer;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/DHGEX;->state:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    const/4 v14, 0x0

    :goto_0
    return v14

    const/4 v9, 0x1

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v11

    const/16 v18, 0x1f

    move/from16 v0, v18

    if-eq v11, v0, :cond_0

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "type: must be SSH_MSG_KEX_DH_GEX_GROUP "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto :goto_0

    const/4 v2, 0x3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->p:[B

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->g:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->p:[B

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/DH;->setP([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->g:[B

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/DH;->setG([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/jcraft/jsch/DH;->getE()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->e:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Packet;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    const/16 v19, 0x20

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->e:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->packet:Lcom/jcraft/jsch/Packet;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    const-string v20, "SSH_MSG_KEX_DH_GEX_INIT sent"

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    const-string v20, "expecting SSH_MSG_KEX_DH_GEX_REPLY"

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_1
    const/16 v18, 0x21

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHGEX;->state:I

    const/4 v14, 0x1

    goto/16 :goto_0

    const/4 v1, 0x5

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v11

    const/16 v18, 0x21

    move/from16 v0, v18

    if-eq v11, v0, :cond_2

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "type: must be SSH_MSG_KEX_DH_GEX_REPLY "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_0

    const/4 v5, 0x7

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getMPInt()[B

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Lcom/jcraft/jsch/DH;->setF([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->dh:Lcom/jcraft/jsch/DH;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/jcraft/jsch/DH;->getK()[B

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/DHGEX;->normalize([B)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->K:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->V_C:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->V_S:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->I_C:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->I_S:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    sget v19, Lcom/jcraft/jsch/DHGEX;->min:I

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    sget v19, Lcom/jcraft/jsch/DHGEX;->preferred:I

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    sget v19, Lcom/jcraft/jsch/DHGEX;->max:I

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->p:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->g:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->e:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K:[B

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Buffer;->putMPInt([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v18

    move/from16 v0, v18

    new-array v8, v0, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/jcraft/jsch/Buffer;->getByte([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    array-length v0, v8

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v8, v1, v2}, Lcom/jcraft/jsch/HASH;->update([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->sha:Lcom/jcraft/jsch/HASH;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/jcraft/jsch/HASH;->digest()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->H:[B

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v9, v11}, Lcom/jcraft/jsch/Util;->byte2str([BII)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v9, v11, 0x4

    const/4 v14, 0x0

    const-string v18, "ssh-rsa"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHGEX;->type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    new-array v0, v11, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    move-object/from16 v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    new-array v0, v11, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    move-object/from16 v12, v17

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    move-object/from16 v18, v0

    const-string v19, "signature.rsa"

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jcraft/jsch/SignatureRSA;

    move-object/from16 v0, v18

    check-cast v0, Lcom/jcraft/jsch/SignatureRSA;

    move-object v15, v0

    invoke-interface {v15}, Lcom/jcraft/jsch/SignatureRSA;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-interface {v15, v6, v12}, Lcom/jcraft/jsch/SignatureRSA;->setPubKey([B[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->H:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lcom/jcraft/jsch/SignatureRSA;->update([B)V

    invoke-interface/range {v15 .. v16}, Lcom/jcraft/jsch/SignatureRSA;->verify([B)Z

    move-result v14

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "ssh_rsa_verify: signature "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    :cond_3
    :goto_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHGEX;->state:I

    goto/16 :goto_0

    const/4 v3, 0x3

    :catch_0
    move-exception v5

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1

    const/4 v0, 0x2

    :cond_4
    const-string v18, "ssh-dss"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/4 v13, 0x0

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/jcraft/jsch/DHGEX;->type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    new-array v0, v11, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->p:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    new-array v0, v11, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    move-object/from16 v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    new-array v0, v11, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jcraft/jsch/DHGEX;->g:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v18, v18, v9

    shl-int/lit8 v18, v18, 0x18

    const/high16 v19, -0x1000000

    and-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    shl-int/lit8 v19, v19, 0x10

    const/high16 v20, 0xff0000

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v10, v9, 0x1

    aget-byte v19, v19, v9

    shl-int/lit8 v19, v19, 0x8

    const v20, 0xff00

    and-int v19, v19, v20

    or-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v19, v0

    add-int/lit8 v9, v10, 0x1

    aget-byte v19, v19, v10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    or-int v11, v18, v19

    new-array v0, v11, [B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->K_S:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v11

    move-object/from16 v7, v17

    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->session:Lcom/jcraft/jsch/Session;

    move-object/from16 v18, v0

    const-string v19, "signature.dss"

    invoke-virtual/range {v18 .. v19}, Lcom/jcraft/jsch/Session;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/jcraft/jsch/SignatureDSA;

    move-object/from16 v0, v18

    check-cast v0, Lcom/jcraft/jsch/SignatureDSA;

    move-object v15, v0

    invoke-interface {v15}, Lcom/jcraft/jsch/SignatureDSA;->init()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->p:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->g:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v7, v0, v13, v1}, Lcom/jcraft/jsch/SignatureDSA;->setPubKey([B[B[B[B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/DHGEX;->H:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Lcom/jcraft/jsch/SignatureDSA;->update([B)V

    invoke-interface/range {v15 .. v16}, Lcom/jcraft/jsch/SignatureDSA;->verify([B)Z

    move-result v14

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/jcraft/jsch/Logger;->isEnabled(I)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {}, Lcom/jcraft/jsch/JSch;->getLogger()Lcom/jcraft/jsch/Logger;

    move-result-object v18

    const/16 v19, 0x1

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    const-string v21, "ssh_dss_verify: signature "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lcom/jcraft/jsch/Logger;->log(ILjava/lang/String;)V

    goto/16 :goto_2

    const/4 v9, 0x3

    :catch_1
    move-exception v5

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3

    const/4 v12, 0x5

    :cond_5
    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v19, "unknown alg"

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    const/4 v5, 0x6

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
