.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntry;,
        Lcom/jcraft/jsch/ChannelSftp$Header;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    }
.end annotation


# static fields
.field public static final APPEND:I = 0x2

.field private static final LOCAL_MAXIMUM_PACKET_SIZE:I = 0x8000

.field private static final LOCAL_WINDOW_SIZE_MAX:I = 0x200000

.field private static final MAX_MSG_LENGTH:I = 0x40000

.field public static final OVERWRITE:I = 0x0

.field public static final RESUME:I = 0x1

.field private static final SSH_FILEXFER_ATTR_ACMODTIME:I = 0x8

.field private static final SSH_FILEXFER_ATTR_EXTENDED:I = -0x80000000

.field private static final SSH_FILEXFER_ATTR_PERMISSIONS:I = 0x4

.field private static final SSH_FILEXFER_ATTR_SIZE:I = 0x1

.field private static final SSH_FILEXFER_ATTR_UIDGID:I = 0x2

.field private static final SSH_FXF_APPEND:I = 0x4

.field private static final SSH_FXF_CREAT:I = 0x8

.field private static final SSH_FXF_EXCL:I = 0x20

.field private static final SSH_FXF_READ:I = 0x1

.field private static final SSH_FXF_TRUNC:I = 0x10

.field private static final SSH_FXF_WRITE:I = 0x2

.field private static final SSH_FXP_ATTRS:B = 0x69t

.field private static final SSH_FXP_CLOSE:B = 0x4t

.field private static final SSH_FXP_DATA:B = 0x67t

.field private static final SSH_FXP_EXTENDED:B = -0x38t

.field private static final SSH_FXP_EXTENDED_REPLY:B = -0x37t

.field private static final SSH_FXP_FSETSTAT:B = 0xat

.field private static final SSH_FXP_FSTAT:B = 0x8t

.field private static final SSH_FXP_HANDLE:B = 0x66t

.field private static final SSH_FXP_INIT:B = 0x1t

.field private static final SSH_FXP_LSTAT:B = 0x7t

.field private static final SSH_FXP_MKDIR:B = 0xet

.field private static final SSH_FXP_NAME:B = 0x68t

.field private static final SSH_FXP_OPEN:B = 0x3t

.field private static final SSH_FXP_OPENDIR:B = 0xbt

.field private static final SSH_FXP_READ:B = 0x5t

.field private static final SSH_FXP_READDIR:B = 0xct

.field private static final SSH_FXP_READLINK:B = 0x13t

.field private static final SSH_FXP_REALPATH:B = 0x10t

.field private static final SSH_FXP_REMOVE:B = 0xdt

.field private static final SSH_FXP_RENAME:B = 0x12t

.field private static final SSH_FXP_RMDIR:B = 0xft

.field private static final SSH_FXP_SETSTAT:B = 0x9t

.field private static final SSH_FXP_STAT:B = 0x11t

.field private static final SSH_FXP_STATUS:B = 0x65t

.field private static final SSH_FXP_SYMLINK:B = 0x14t

.field private static final SSH_FXP_VERSION:B = 0x2t

.field private static final SSH_FXP_WRITE:B = 0x6t

.field public static final SSH_FX_BAD_MESSAGE:I = 0x5

.field public static final SSH_FX_CONNECTION_LOST:I = 0x7

.field public static final SSH_FX_EOF:I = 0x1

.field public static final SSH_FX_FAILURE:I = 0x4

.field public static final SSH_FX_NO_CONNECTION:I = 0x6

.field public static final SSH_FX_NO_SUCH_FILE:I = 0x2

.field public static final SSH_FX_OK:I = 0x0

.field public static final SSH_FX_OP_UNSUPPORTED:I = 0x8

.field public static final SSH_FX_PERMISSION_DENIED:I = 0x3

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final file_separator:Ljava/lang/String;

.field private static final file_separatorc:C

.field private static fs_is_bs:Z


# instance fields
.field private ackid:[I

.field private buf:Lcom/jcraft/jsch/Buffer;

.field private client_version:I

.field private cwd:Ljava/lang/String;

.field private extension_hardlink:Z

.field private extension_posix_rename:Z

.field private extension_statvfs:Z

.field private extensions:Ljava/util/Hashtable;

.field private fEncoding:Ljava/lang/String;

.field private fEncoding_is_utf8:Z

.field private home:Ljava/lang/String;

.field private interactive:Z

.field private io_in:Ljava/io/InputStream;

.field private lcwd:Ljava/lang/String;

.field private obuf:Lcom/jcraft/jsch/Buffer;

.field private opacket:Lcom/jcraft/jsch/Packet;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field private seq:I

.field private server_version:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x4

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    const/4 v2, 0x3

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    const/4 v2, 0x7

    sget-char v0, Ljava/io/File;->separatorChar:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    nop

    return-void

    const/4 v2, 0x5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x6
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/high16 v4, 0x200000

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x2

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v6, 0x0

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->interactive:Z

    const/4 v6, 0x3

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    const/4 v6, 0x7

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    const/4 v6, 0x3

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->client_version:I

    const/4 v6, 0x2

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v6, 0x0

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->client_version:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    const/4 v6, 0x2

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const/4 v6, 0x2

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    const/4 v6, 0x3

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    const/4 v6, 0x3

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    const/4 v6, 0x2

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    const/4 v6, 0x6

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    const/4 v6, 0x7

    iput-boolean v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    const/4 v6, 0x0

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/4 v6, 0x0

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/ChannelSftp;->setLocalWindowSizeMax(I)V

    const/4 v6, 0x6

    invoke-virtual {p0, v4}, Lcom/jcraft/jsch/ChannelSftp;->setLocalWindowSize(I)V

    const/4 v6, 0x6

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->setLocalPacketSize(I)V

    const/4 v6, 0x4

    nop

    return-void

    const/4 v5, 0x4
.end method

.method private _get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v27

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    new-instance v18, Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    const/16 v2, 0x66

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v2, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v16

    move-object/from16 v0, v16

    instance-of v2, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_e

    check-cast v16, Lcom/jcraft/jsch/SftpException;

    throw v16

    :cond_0
    const/16 v2, 0x65

    move/from16 v0, v28

    if-ne v0, v2, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    const-wide/16 v22, 0x0

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_2

    add-long v22, v22, p5

    :cond_2
    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    move-wide/from16 v4, v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    add-int/lit8 v6, v2, -0xd

    move-object/from16 v0, p0

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-nez v2, :cond_3

    const/16 v6, 0x400

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->count()I

    move-result v2

    move/from16 v0, v25

    if-ge v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    int-to-long v8, v6

    add-long/2addr v4, v8

    goto :goto_0

    const/4 v3, 0x0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v28, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v26, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v0, v18

    iget v7, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    invoke-virtual {v2, v7}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->get(I)Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;
    :try_end_2
    .catch Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v26

    const/16 v2, 0x65

    move/from16 v0, v28

    if-ne v0, v2, :cond_8

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v19

    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    :cond_5
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V

    if-eqz p3, :cond_6

    invoke-interface/range {p3 .. p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    nop

    return-void

    const/4 v12, 0x6

    :catch_1
    move-exception v16

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$OutOfOrderException;->offset:J

    move-object/from16 v0, v18

    iget v2, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    int-to-long v8, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    goto/16 :goto_0

    const/4 v4, 0x6

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v2, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_8
    const/16 v2, 0x67

    move/from16 v0, v28

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->rewind()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v8}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v20, v20, -0x4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v21

    sub-int v24, v20, v21

    move/from16 v17, v21

    :cond_9
    if-lez v17, :cond_b

    move/from16 v14, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v2

    if-le v14, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v14, v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v7, v7, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v15

    if-ltz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v2, v2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v7, v15}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v15

    add-long v22, v22, v8

    sub-int v17, v17, v15

    if-eqz p3, :cond_9

    int-to-long v8, v15

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v9}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    move-result v2

    if-nez v2, :cond_9

    move/from16 v0, v17

    int-to-long v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    if-lez v24, :cond_5

    move/from16 v0, v24

    int-to-long v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    goto/16 :goto_1

    const/4 v2, 0x2

    :cond_b
    if-lez v24, :cond_c

    move/from16 v0, v24

    int-to-long v8, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    :cond_c
    move/from16 v0, v21

    int-to-long v8, v0

    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->cancel(Lcom/jcraft/jsch/ChannelSftp$Header;Lcom/jcraft/jsch/Buffer;)V

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    move/from16 v0, v21

    int-to-long v10, v0

    add-long/2addr v10, v8

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    move/from16 v0, v21

    int-to-long v12, v0

    sub-long/2addr v8, v12

    long-to-int v12, v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    move-object/from16 v8, p0

    move-object v9, v3

    invoke-direct/range {v8 .. v13}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->offset:J

    move-object/from16 v0, v26

    iget-wide v10, v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue$Request;->length:J

    add-long v4, v8, v10

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v2}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_3

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    const/4 v0, 0x2

    :cond_e
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_f

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    move-object/from16 v0, v16

    invoke-direct {v2, v7, v8, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_f
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v2, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method private _lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x6

    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->sendLSTAT([B)V

    const/4 v10, 0x7

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    const/4 v10, 0x4

    iget v4, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v10, 0x7

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v10, 0x4

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v10, 0x7

    const/16 v6, 0x69

    if-eq v5, v6, :cond_1

    const/4 v10, 0x3

    const/16 v6, 0x65

    if-ne v5, v6, :cond_0

    const/4 v10, 0x5

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    const/4 v10, 0x5

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v3}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v10, 0x3

    :cond_0
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x7

    :catch_0
    move-exception v1

    const/4 v10, 0x2

    instance-of v6, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_2

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v10, 0x6

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v6}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/4 v10, 0x7

    return-object v0

    const/4 v2, 0x7

    const/4 v10, 0x5

    :cond_2
    instance-of v6, v1, Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    const/4 v10, 0x5

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v9, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v10, 0x1

    :cond_3
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v9, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method private _realpath(Ljava/lang/String;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;,
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x1

    const/16 v7, 0x65

    const/4 v9, 0x4

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/jcraft/jsch/ChannelSftp;->sendREALPATH([B)V

    const/4 v9, 0x1

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v0, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v9, 0x6

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v0}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    const/4 v9, 0x2

    iget v3, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v9, 0x4

    iget v5, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v9, 0x3

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v9, 0x1

    if-eq v5, v7, :cond_0

    const/16 v6, 0x68

    if-eq v5, v6, :cond_0

    const/4 v9, 0x2

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6

    const/4 v9, 0x4

    :cond_0
    if-ne v5, v7, :cond_1

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v9, 0x4

    :cond_1
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    const/4 v9, 0x1

    const/4 v4, 0x0

    move v2, v1

    const/4 v9, 0x3

    :goto_0
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_3

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    const/4 v9, 0x1

    iget v6, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v7, 0x3

    if-gt v6, v7, :cond_2

    const/4 v9, 0x3

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    const/4 v9, 0x2

    :cond_2
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v6}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move v2, v1

    const/4 v9, 0x4

    goto :goto_0

    const/4 v0, 0x5

    const/4 v9, 0x4

    :cond_3
    return-object v4

    const/4 v6, 0x7
.end method

.method private _sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendCLOSE([B)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method private _setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendSETSTAT([BLcom/jcraft/jsch/SftpATTRS;)V

    const/4 v9, 0x6

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v9, 0x7

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    const/4 v9, 0x3

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v9, 0x3

    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v9, 0x0

    const/16 v5, 0x65

    if-eq v4, v5, :cond_0

    const/4 v9, 0x4

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    :catch_0
    move-exception v0

    const/4 v9, 0x3

    instance-of v5, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v9, 0x1

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    const/4 v9, 0x4

    if-eqz v2, :cond_1

    const/4 v9, 0x5

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v9, 0x5

    :cond_1
    nop

    return-void

    const/4 v7, 0x6

    const/4 v9, 0x5

    :cond_2
    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    const/4 v9, 0x6

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    const/4 v9, 0x3

    :cond_3
    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method private _stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    return-object v0

    const/4 v1, 0x6
.end method

.method private _stat([B)Lcom/jcraft/jsch/SftpATTRS;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x6

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    const/4 v10, 0x2

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    const/4 v10, 0x6

    iget v4, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v10, 0x3

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v10, 0x7

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v10, 0x1

    const/16 v6, 0x69

    if-eq v5, v6, :cond_1

    const/4 v10, 0x4

    const/16 v6, 0x65

    if-ne v5, v6, :cond_0

    const/4 v10, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v3}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v10, 0x1

    :cond_0
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x5

    :catch_0
    move-exception v1

    const/4 v10, 0x6

    instance-of v6, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_2

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v10, 0x4

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v6}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    const/4 v10, 0x0

    return-object v0

    const/4 v5, 0x3

    const/4 v10, 0x5

    :cond_2
    instance-of v6, v1, Ljava/lang/Throwable;

    if-eqz v6, :cond_3

    const/4 v10, 0x6

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v9, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v10, 0x3

    :cond_3
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v9, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method private _statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->_statVFS([B)Lcom/jcraft/jsch/SftpStatVFS;

    move-result-object v0

    return-object v0

    const/4 v0, 0x6
.end method

.method private _statVFS([B)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v10, 0x2

    iget-boolean v6, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    if-nez v6, :cond_0

    const/4 v10, 0x3

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const/16 v7, 0x8

    const-string v8, "statvfs@openssh.com is not supported"

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6

    const/4 v10, 0x0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTATVFS([B)V

    const/4 v10, 0x7

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    const/4 v10, 0x2

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v10, 0x5

    iget v5, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v10, 0x2

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v10, 0x4

    const/16 v6, 0xc9

    if-eq v5, v6, :cond_2

    const/4 v10, 0x6

    const/16 v6, 0x65

    if-ne v5, v6, :cond_1

    const/4 v10, 0x1

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    const/4 v10, 0x7

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v6, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v10, 0x7

    :cond_1
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const/4 v7, 0x4

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x0

    :catch_0
    move-exception v0

    const/4 v10, 0x2

    instance-of v6, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_3

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v10, 0x4

    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v6}, Lcom/jcraft/jsch/SftpStatVFS;->getStatVFS(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpStatVFS;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    const/4 v10, 0x1

    return-object v4

    const/4 v0, 0x5

    const/4 v10, 0x4

    :cond_3
    instance-of v6, v0, Ljava/lang/Throwable;

    if-eqz v6, :cond_4

    const/4 v10, 0x0

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v9, v7, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v10, 0x6

    :cond_4
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v9, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6
.end method

.method static access$000(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    return v0

    const/4 v1, 0x7
.end method

.method static access$100(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v2, 0x4

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result v0

    return v0

    const/4 v0, 0x3
.end method

.method static access$1000(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v0, 0x6

    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static access$1100(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static access$1200(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method static access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    return-object v0

    const/4 v0, 0x3
.end method

.method static access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method static access$400(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v0

    return v0

    const/4 v1, 0x4
.end method

.method static access$500(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x3

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v0

    return-object v0

    const/4 v0, 0x2
.end method

.method static access$600(Lcom/jcraft/jsch/ChannelSftp;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    return-object v0

    const/4 v0, 0x2
.end method

.method static access$800(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return v0

    const/4 v0, 0x4
.end method

.method static access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object v0

    const/4 v1, 0x4
.end method

.method private checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x3

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p2

    const/4 v6, 0x7

    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v6, 0x1

    iget v2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    const/4 v6, 0x7

    const/4 v3, 0x0

    iget v4, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    aput v4, p1, v3

    const/4 v6, 0x5

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v6, 0x4

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    const/4 v6, 0x1

    new-instance v3, Lcom/jcraft/jsch/SftpException;

    const/4 v4, 0x4

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v3

    const/4 v6, 0x4

    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v0}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v6, 0x4

    :cond_2
    const/4 v3, 0x1

    return v3

    const/4 v2, 0x4
.end method

.method private fill([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    move v0, p2

    const/4 v4, 0x5

    :goto_0
    if-lez p3, :cond_1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    const/4 v4, 0x4

    if-gtz v1, :cond_0

    const/4 v4, 0x5

    new-instance v2, Ljava/io/IOException;

    const-string v3, "inputstream is closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    const/4 v4, 0x1

    :cond_0
    add-int/2addr p2, v1

    const/4 v4, 0x3

    sub-int/2addr p3, v1

    goto :goto_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_1
    sub-int v2, p2, v0

    return v2

    const/4 v1, 0x7
.end method

.method private fill(Lcom/jcraft/jsch/Buffer;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v2, 0x7

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    const/4 v2, 0x2

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    const/4 v2, 0x6

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v1, 0x6
.end method

.method private getCwd()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    const/4 v1, 0x2

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x7
.end method

.method private glob_local(Ljava/lang/String;)Ljava/util/Vector;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x6

    const/16 v11, 0x5c

    const/4 v10, 0x0

    const/4 v12, 0x2

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    const/4 v12, 0x3

    const-string v8, "UTF-8"

    invoke-static {p1, v8}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const/4 v12, 0x4

    array-length v8, v4

    add-int/lit8 v2, v8, -0x1

    const/4 v12, 0x7

    :goto_0
    if-ltz v2, :cond_1

    const/4 v12, 0x0

    aget-byte v8, v4, v2

    const/16 v9, 0x2a

    if-eq v8, v9, :cond_0

    aget-byte v8, v4, v2

    const/16 v9, 0x3f

    if-eq v8, v9, :cond_0

    const/4 v12, 0x5

    add-int/lit8 v2, v2, -0x1

    const/4 v12, 0x2

    goto :goto_0

    const/4 v2, 0x4

    const/4 v12, 0x7

    :cond_0
    sget-boolean v8, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-nez v8, :cond_1

    if-lez v2, :cond_1

    add-int/lit8 v8, v2, -0x1

    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_1

    const/4 v12, 0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v12, 0x5

    if-lez v2, :cond_1

    add-int/lit8 v8, v2, -0x1

    aget-byte v8, v4, v8

    if-ne v8, v11, :cond_1

    const/4 v12, 0x3

    add-int/lit8 v2, v2, -0x1

    const/4 v12, 0x0

    add-int/lit8 v2, v2, -0x1

    const/4 v12, 0x2

    goto :goto_0

    const/4 v1, 0x3

    const/4 v12, 0x2

    :cond_1
    if-gez v2, :cond_5

    sget-boolean v8, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v8, :cond_3

    :goto_1
    invoke-virtual {v7, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v12, 0x0

    :cond_2
    :goto_2
    return-object v7

    const/4 v3, 0x2

    const/4 v12, 0x1

    :cond_3
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    const/4 v11, 0x2

    const/4 v12, 0x0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    const/4 v12, 0x6

    :cond_5
    if-ltz v2, :cond_6

    const/4 v12, 0x7

    aget-byte v8, v4, v2

    sget-char v9, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    if-eq v8, v9, :cond_6

    sget-boolean v8, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v8, :cond_4

    aget-byte v8, v4, v2

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_4

    const/4 v12, 0x4

    :cond_6
    if-gez v2, :cond_8

    sget-boolean v8, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v8, :cond_7

    :goto_3
    invoke-virtual {v7, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    const/4 v2, 0x5

    :cond_7
    invoke-static {p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    const/4 v6, 0x7

    const/4 v12, 0x3

    :cond_8
    if-nez v2, :cond_a

    const/4 v8, 0x1

    new-array v1, v8, [B

    sget-char v8, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    int-to-byte v8, v8

    aput-byte v8, v1, v10

    const/4 v12, 0x7

    :goto_4
    array-length v8, v4

    sub-int/2addr v8, v2

    add-int/lit8 v8, v8, -0x1

    new-array v5, v8, [B

    const/4 v12, 0x1

    add-int/lit8 v8, v2, 0x1

    array-length v9, v5

    invoke-static {v4, v8, v5, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v12, 0x2

    :try_start_0
    new-instance v8, Ljava/io/File;

    const-string v9, "UTF-8"

    invoke-static {v1, v9}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    sget-object v9, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x3

    const/4 v3, 0x0

    :goto_5
    array-length v8, v0

    if-ge v3, v8, :cond_2

    const/4 v12, 0x7

    aget-object v8, v0, v3

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    invoke-static {v5, v8}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v12, 0x1

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    aget-object v9, v0, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    const/4 v1, 0x3

    const/4 v12, 0x1

    :cond_a
    new-array v1, v2, [B

    const/4 v12, 0x7

    invoke-static {v4, v10, v1, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    const/4 v0, 0x5

    const/4 v12, 0x5

    :catch_0
    move-exception v8

    goto/16 :goto_2

    const/4 v2, 0x3
.end method

.method private glob_remote(Ljava/lang/String;)Ljava/util/Vector;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v23, Ljava/util/Vector;

    invoke-direct/range {v23 .. v23}, Ljava/util/Vector;-><init>()V

    const/16 v16, 0x0

    const/16 v24, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    if-gez v12, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object v23

    const/4 v2, 0x1

    :cond_1
    const/16 v25, 0x0

    if-nez v12, :cond_3

    const/16 v24, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v24, v12, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/16 v19, 0x0

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v6, v0, [[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v24, "/"

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_2

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_2
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    const/4 v5, 0x3

    :cond_3
    move/from16 v24, v12

    goto :goto_1

    const/4 v6, 0x7

    :cond_4
    const/16 v24, 0x0

    aget-object v19, v6, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    new-instance v15, Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v15

    iget v0, v15, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v18, v0

    iget v0, v15, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v24, 0x65

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    const/16 v24, 0x66

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    new-instance v24, Lcom/jcraft/jsch/SftpException;

    const/16 v25, 0x4

    const-string v26, ""

    invoke-direct/range {v24 .. v26}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v24

    :cond_5
    const/16 v24, 0x65

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v14

    const/16 v21, 0x0

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v15

    iget v0, v15, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v18, v0

    iget v0, v15, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v22, v0

    const/16 v24, 0x65

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    const/16 v24, 0x68

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    new-instance v24, Lcom/jcraft/jsch/SftpException;

    const/16 v25, 0x4

    const-string v26, ""

    invoke-direct/range {v24 .. v26}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v24

    :cond_8
    const/16 v24, 0x65

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v24

    if-nez v24, :cond_0

    const/16 v23, 0x0

    goto/16 :goto_0

    const/4 v14, 0x5

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->rewind()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v18, v18, -0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->reset()V

    :goto_2
    if-lez v8, :cond_7

    if-lez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->shift()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v25, v0

    add-int v25, v25, v18

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    move/from16 v17, v18

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v16

    if-lez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v25, v0

    add-int v25, v25, v16

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int v18, v18, v16

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/jcraft/jsch/Buffer;->getString()[B

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v7

    move-object v4, v11

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-static {v10, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    :cond_c
    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v13

    if-eqz v13, :cond_f

    if-nez v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-static {v11, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_d
    if-nez v21, :cond_e

    move-object/from16 v21, v9

    const-string v24, "/"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_e

    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "/"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    :cond_e
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2

    const/4 v7, 0x0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v25, v0

    sub-int v17, v24, v25

    goto/16 :goto_3

    const/4 v6, 0x5
.end method

.method private header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    const/4 v4, 0x1

    iget-object v1, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-direct {p0, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    add-int/lit8 v1, v1, -0x5

    iput v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v4, 0x5

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    const/4 v4, 0x2

    return-object p2

    const/4 v2, 0x4
.end method

.method private static isLocalAbsolutePath(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method private isPattern(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v0

    return v0

    const/4 v1, 0x1
.end method

.method private isPattern(Ljava/lang/String;[[B)Z
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x5

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v2, 0x2

    if-eqz p2, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const/4 v2, 0x0

    :cond_0
    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->isPattern([B)Z

    move-result v1

    return v1

    const/4 v0, 0x6
.end method

.method private isPattern([B)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x1

    array-length v1, p1

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x5

    :goto_0
    if-ge v0, v1, :cond_3

    const/4 v4, 0x6

    aget-byte v2, p1, v0

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_0

    aget-byte v2, p1, v0

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_1

    const/4 v4, 0x2

    :cond_0
    const/4 v2, 0x1

    const/4 v4, 0x6

    :goto_1
    return v2

    const/4 v0, 0x3

    const/4 v4, 0x6

    :cond_1
    aget-byte v2, p1, v0

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    if-ge v2, v1, :cond_2

    const/4 v4, 0x5

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x7

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x1

    const/4 v4, 0x6

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    const/4 v0, 0x4
.end method

.method private isRemoteDir(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x4

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    const/4 v6, 0x4

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v6, 0x7

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    const/4 v6, 0x1

    iget v2, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v6, 0x0

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v6, 0x6

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v6, 0x1

    const/16 v5, 0x69

    if-eq v3, v5, :cond_0

    const/4 v6, 0x4

    :goto_0
    return v4

    const/4 v6, 0x1

    const/4 v6, 0x5

    :cond_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v5}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    const/4 v6, 0x7

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    const/4 v6, 0x6

    const/4 v6, 0x0

    :catch_0
    move-exception v5

    goto :goto_0

    const/4 v3, 0x7
.end method

.method private isUnique(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v5, 0x2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    const/4 v5, 0x6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v5, 0x7

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is not unique: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    const/4 v5, 0x5

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    return-object v1

    const/4 v0, 0x5
.end method

.method private localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x7

    invoke-static {p1}, Lcom/jcraft/jsch/ChannelSftp;->isLocalAbsolutePath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    :goto_0
    return-object p1

    const/4 v2, 0x5

    const/4 v2, 0x3

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x2

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private putHEAD(BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private putHEAD(Lcom/jcraft/jsch/Buffer;BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v1, 0x1

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->recipient:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v1, 0x1

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v1, 0x1

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private read([BII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v4, 0x7

    const/4 v0, 0x0

    const/4 v4, 0x2

    :goto_0
    if-lez p3, :cond_1

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v4, 0x3

    if-gtz v0, :cond_0

    const/4 v4, 0x6

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    const/4 v4, 0x6

    :cond_0
    add-int/2addr p2, v0

    const/4 v4, 0x4

    sub-int/2addr p3, v0

    goto :goto_0

    const/4 v0, 0x4

    const/4 v4, 0x5

    :cond_1
    nop

    return-void

    const/4 v2, 0x4
.end method

.method private remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    const/4 v3, 0x5

    :goto_0
    return-object p1

    const/4 v2, 0x0

    const/4 v3, 0x6

    :cond_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x3

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private sendCLOSE([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x7

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private sendFSTAT([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x2

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method

.method private sendHARDLINK([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x5

    const/4 v2, 0x5

    const/4 v0, 0x0

    const-string v1, "hardlink@openssh.com"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method

.method private sendINIT()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v3, 0x1

    nop

    return-void

    const/4 v2, 0x5
.end method

.method private sendLSTAT([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private sendMKDIR([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v1, 0x4

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x5

    const/16 v2, 0xe

    array-length v0, p1

    add-int/lit8 v3, v0, 0x9

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    invoke-direct {p0, v2, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->dump(Lcom/jcraft/jsch/Buffer;)V

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length v3, p1

    add-int/lit8 v3, v3, 0x9

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v1

    :cond_0
    add-int/2addr v1, v3

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v2, p0, v1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v0, 0x6

    :cond_1
    move v0, v1

    const/4 v4, 0x4

    goto :goto_0

    const/4 v1, 0x1

    const/4 v4, 0x4

    :cond_2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto :goto_1

    const/4 v3, 0x5
.end method

.method private sendOPEN([BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v3, 0x3

    const/4 v0, 0x3

    array-length v1, p1

    add-int/lit8 v1, v1, 0x11

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x11

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private sendOPENA([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x3

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private sendOPENDIR([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private sendOPENR([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private sendOPENW([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x0

    const/16 v0, 0x1a

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private sendPacketPath(B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x3

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private sendPacketPath(B[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x0

    array-length v1, p2

    add-int/lit8 v0, v1, 0x9

    const/4 v4, 0x1

    if-nez p3, :cond_0

    const/4 v4, 0x3

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x5

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v1, v2, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x5

    nop

    return-void

    const/4 v4, 0x7

    const/4 v4, 0x5

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/4 v4, 0x0

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    goto :goto_0

    const/4 v1, 0x0
.end method

.method private sendPacketPath(B[B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private sendPacketPath(B[B[BLjava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x0

    array-length v1, p2

    add-int/lit8 v1, v1, 0xd

    array-length v2, p3

    add-int v0, v1, v2

    const/4 v4, 0x3

    if-nez p4, :cond_0

    const/4 v4, 0x7

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x7

    :goto_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v3, v0, 0x4

    invoke-virtual {v1, v2, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x1

    nop

    return-void

    const/4 v0, 0x4

    const/4 v4, 0x6

    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    const/4 v4, 0x3

    const/16 v1, -0x38

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    goto :goto_0

    const/4 v0, 0x6
.end method

.method private sendREAD([BJI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    const/4 v6, 0x0

    nop

    return-void

    const/4 v5, 0x2
.end method

.method private sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x0

    const/4 v0, 0x5

    array-length v1, p1

    add-int/lit8 v1, v1, 0x15

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x15

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x7

    if-eqz p5, :cond_0

    const/4 v4, 0x6

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p5, v0, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->add(IJI)V

    const/4 v4, 0x0

    :cond_0
    nop

    return-void

    const/4 v2, 0x3
.end method

.method private sendREADDIR([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x6

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private sendREADLINK([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x3

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private sendREALPATH([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private sendREMOVE([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x5

    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private sendRENAME([B[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x12

    iget-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    if-eqz v0, :cond_0

    const-string v0, "posix-rename@openssh.com"

    :goto_0
    invoke-direct {p0, v1, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[BLjava/lang/String;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x0

    const/4 v2, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x6
.end method

.method private sendRMDIR([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x1

    const/16 v0, 0xf

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private sendSETSTAT([BLcom/jcraft/jsch/SftpATTRS;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x1

    const/16 v0, 0x9

    array-length v1, p1

    add-int/lit8 v1, v1, 0x9

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/SftpATTRS;->dump(Lcom/jcraft/jsch/Buffer;)V

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length v2, p1

    add-int/lit8 v2, v2, 0x9

    invoke-virtual {p2}, Lcom/jcraft/jsch/SftpATTRS;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v3, 0x6
.end method

.method private sendSTAT([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method private sendSTATVFS([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v2, 0x5

    const/4 v0, 0x0

    const-string v1, "statvfs@openssh.com"

    invoke-direct {p0, v0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v1, 0x4
.end method

.method private sendSYMLINK([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x2

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B[B)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x6
.end method

.method private sendWRITE([BJ[BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v4, 0x6

    move v0, p6

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v2, 0xd

    add-int/lit8 v2, v2, 0x15

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/2addr v2, p6

    add-int/lit8 v2, v2, 0x54

    if-ge v1, v2, :cond_0

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v2, v2, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v2, v2, 0xd

    add-int/lit8 v2, v2, 0x15

    array-length v3, p1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x54

    sub-int v0, v1, v2

    const/4 v4, 0x2

    :cond_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    const/4 v2, 0x6

    array-length v3, p1

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v1, v2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    if-eq v1, p4, :cond_1

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, p4, p5, v0}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    const/4 v4, 0x3

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    array-length v3, p1

    add-int/lit8 v3, v3, 0x15

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1, v2, p0, v3}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    const/4 v4, 0x0

    return v0

    const/4 v1, 0x1

    const/4 v4, 0x4

    :cond_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1, v0}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    goto :goto_0

    const/4 v3, 0x5
.end method

.method private setCwd(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private skip(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x7

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    :goto_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    const/4 v7, 0x3

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    const/4 v7, 0x6

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    const/4 v7, 0x4

    :cond_0
    nop

    return-void

    const/4 v7, 0x1

    const/4 v7, 0x4

    :cond_1
    sub-long/2addr p1, v0

    const/4 v7, 0x7

    goto :goto_0

    const/4 v7, 0x1
.end method

.method private throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v3, 0x5

    const/4 v3, 0x7

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    const/4 v3, 0x1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    const/4 v3, 0x6

    :cond_0
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, "Failure"

    invoke-direct {v1, p2, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public _put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v4, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    const-wide/16 v28, 0x0

    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_1

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v28

    :cond_1
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_2

    const-wide/16 v34, 0x0

    cmp-long v4, v28, v34

    if-lez v4, :cond_2

    :try_start_2
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v30

    cmp-long v4, v30, v28

    if-gez v4, :cond_2

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "failed to resume for "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v4, v9, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v22

    move-object/from16 v0, v22

    instance-of v4, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v4, :cond_19

    check-cast v22, Lcom/jcraft/jsch/SftpException;

    throw v22

    :cond_2
    if-nez p4, :cond_3

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENW([B)V

    :goto_1
    new-instance v23, Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v4, 0x65

    move/from16 v0, v33

    if-eq v0, v4, :cond_4

    const/16 v4, 0x66

    move/from16 v0, v33

    if-eq v0, v4, :cond_4

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "invalid type="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v4, v9, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENA([B)V

    goto :goto_1

    const/4 v1, 0x1

    :cond_4
    const/16 v4, 0x65

    move/from16 v0, v33

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    const/4 v8, 0x0

    const/16 v20, 0x1

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    array-length v9, v5

    add-int/lit8 v9, v9, 0x27

    add-int/lit8 v9, v9, 0x54

    sub-int/2addr v4, v9

    new-array v8, v4, [B

    :cond_6
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_7

    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_8

    :cond_7
    add-long v6, v6, v28

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    move/from16 v32, v0

    const/4 v15, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    if-nez v20, :cond_f

    array-length v13, v8

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v17

    :cond_9
    const/16 v26, 0x0

    const/16 v18, 0x0

    move/from16 v27, v14

    move/from16 v19, v13

    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v19

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v26

    if-lez v26, :cond_b

    add-int v27, v27, v26

    sub-int v19, v19, v26

    add-int v18, v18, v26

    :cond_b
    if-lez v19, :cond_c

    if-gtz v26, :cond_a

    :cond_c
    if-gtz v18, :cond_10

    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int v11, v4, v32

    :goto_4
    if-le v11, v15, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_d
    if-eqz p3, :cond_e

    invoke-interface/range {p3 .. p3}, Lcom/jcraft/jsch/SftpProgressMonitor;->end()V

    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    nop

    return-void

    const/4 v13, 0x2

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v8, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v5

    add-int/lit8 v14, v4, 0x27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v4, v4, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v4, v4

    sub-int/2addr v4, v14

    add-int/lit8 v13, v4, -0x54

    goto :goto_2

    const/4 v1, 0x3

    :cond_10
    move/from16 v10, v18

    :goto_5
    if-lez v10, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v32

    if-eq v4, v0, :cond_11

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int v4, v4, v32

    sub-int/2addr v4, v15

    move/from16 v0, v17

    if-lt v4, v0, :cond_12

    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    sub-int v4, v4, v32

    sub-int/2addr v4, v15

    move/from16 v0, v17

    if-lt v4, v0, :cond_12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/jcraft/jsch/ChannelSftp;->rwsize:J

    move-wide/from16 v34, v0

    int-to-long v0, v10

    move-wide/from16 v36, v0

    cmp-long v4, v34, v36

    if-ltz v4, :cond_13

    :cond_12
    const/4 v9, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result v4

    sub-int/2addr v10, v4

    goto :goto_5

    const/4 v2, 0x6

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v4, v1}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    const/4 v9, 0x0

    aget v12, v4, v9

    move/from16 v0, v32

    if-gt v0, v12, :cond_14

    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v4, v4, -0x1

    if-le v12, v4, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    if-ne v12, v4, :cond_16

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v34, "ack error: startid="

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v34, " seq="

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v34, " _ackid="

    move-object/from16 v0, v34

    invoke-virtual {v9, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    const/4 v6, 0x0

    :cond_16
    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    new-instance v34, Ljava/lang/StringBuffer;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuffer;-><init>()V

    const-string v35, "ack error: startid="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v34

    const-string v35, " seq="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v34

    const-string v35, " _ackid="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v4, v9, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_17
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v6, v6, v34

    if-eqz p3, :cond_9

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v34, v0

    move-object/from16 v0, p3

    move-wide/from16 v1, v34

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_3

    const/4 v4, 0x4

    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    const/4 v7, 0x3

    :cond_19
    move-object/from16 v0, v22

    instance-of v4, v0, Ljava/lang/Throwable;

    if-eqz v4, :cond_1a

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-direct {v4, v9, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1a
    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-direct {v4, v9, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :catch_1
    move-exception v4

    goto/16 :goto_0

    const/4 v3, 0x4
.end method

.method public cd(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    :try_start_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v3, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v8, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v8, 0x5

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v0

    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_0

    const/4 v8, 0x0

    new-instance v3, Lcom/jcraft/jsch/SftpException;

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Can\'t change directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x0

    :catch_0
    move-exception v1

    const/4 v8, 0x6

    instance-of v3, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v8, 0x3

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v8, 0x5

    new-instance v3, Lcom/jcraft/jsch/SftpException;

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Can\'t change directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v3

    const/4 v8, 0x1

    :cond_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/jcraft/jsch/ChannelSftp;->setCwd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v8, 0x3

    nop

    return-void

    const/4 v4, 0x2

    const/4 v8, 0x3

    :cond_2
    instance-of v3, v1, Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    const/4 v8, 0x5

    new-instance v3, Lcom/jcraft/jsch/SftpException;

    const-string v4, ""

    invoke-direct {v3, v7, v4, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    const/4 v8, 0x0

    :cond_3
    new-instance v3, Lcom/jcraft/jsch/SftpException;

    const-string v4, ""

    invoke-direct {v3, v7, v4}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method public chgrp(ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x2

    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v6, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x3

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    const/4 v9, 0x7

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v9, 0x7

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    const/4 v9, 0x3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    const/4 v9, 0x6

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    const/4 v9, 0x3

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    const/4 v9, 0x5

    iget v6, v1, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    invoke-virtual {v1, v6, p1}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    const/4 v9, 0x4

    invoke-direct {p0, p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v6, 0x0

    const/4 v9, 0x7

    :catch_0
    move-exception v2

    const/4 v9, 0x5

    instance-of v6, v2, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_0

    check-cast v2, Lcom/jcraft/jsch/SftpException;

    throw v2

    const/4 v9, 0x7

    :cond_0
    instance-of v6, v2, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    const/4 v9, 0x6

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v9, 0x6

    :cond_1
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6

    const/4 v9, 0x3

    :cond_2
    nop

    return-void

    const/4 v9, 0x3
.end method

.method public chmod(ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v9, 0x5

    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v6, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x5

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x4

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    const/4 v9, 0x3

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v9, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    const/4 v9, 0x3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    const/4 v9, 0x1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    const/4 v9, 0x7

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    const/4 v9, 0x5

    invoke-virtual {v1, p1}, Lcom/jcraft/jsch/SftpATTRS;->setPERMISSIONS(I)V

    const/4 v9, 0x0

    invoke-direct {p0, p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v9, 0x3

    const/4 v9, 0x0

    :catch_0
    move-exception v2

    const/4 v9, 0x0

    instance-of v6, v2, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_0

    check-cast v2, Lcom/jcraft/jsch/SftpException;

    throw v2

    const/4 v9, 0x6

    :cond_0
    instance-of v6, v2, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    const/4 v9, 0x3

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v9, 0x4

    :cond_1
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6

    const/4 v9, 0x6

    :cond_2
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public chown(ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x7

    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v6, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x0

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    const/4 v9, 0x2

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v9, 0x3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    const/4 v9, 0x3

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    const/4 v9, 0x3

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    const/4 v9, 0x4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    const/4 v9, 0x5

    iget v6, v1, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    invoke-virtual {v1, p1, v6}, Lcom/jcraft/jsch/SftpATTRS;->setUIDGID(II)V

    const/4 v9, 0x6

    invoke-direct {p0, p2, v1}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v1, 0x6

    const/4 v9, 0x0

    :catch_0
    move-exception v2

    const/4 v9, 0x7

    instance-of v6, v2, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_0

    check-cast v2, Lcom/jcraft/jsch/SftpException;

    throw v2

    const/4 v9, 0x5

    :cond_0
    instance-of v6, v2, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    const/4 v9, 0x7

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v9, 0x7

    :cond_1
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6

    const/4 v9, 0x7

    :cond_2
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public disconnect()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->disconnect()V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public exit()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x5

    const/4 v4, 0x4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    const/4 v3, 0x3
.end method

.method public get(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v4, 0x6

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    const/4 v2, 0x0
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    const/4 v0, 0x1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    const/4 v0, 0x5
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v6

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    const-string v3, "??"

    invoke-virtual {v6}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v4

    move-object v0, p2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0, v11}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    new-instance v8, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v8, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v8}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v8

    iget v10, v8, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget v12, v8, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v10}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v1, 0x65

    if-eq v12, v1, :cond_1

    const/16 v1, 0x66

    if-eq v12, v1, :cond_1

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    instance-of v1, v7, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_3

    check-cast v7, Lcom/jcraft/jsch/SftpException;

    throw v7

    :cond_1
    const/16 v1, 0x65

    if-ne v12, v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v9

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v9}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v1, p0

    move-wide/from16 v2, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    const/4 v5, 0x0

    :cond_3
    instance-of v1, v7, Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    const/4 v8, 0x0

    nop

    return-void

    const/4 v3, 0x2
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v8, 0x2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V

    const/4 v8, 0x5

    nop

    return-void

    const/4 v8, 0x2
.end method

.method public get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v6

    const/4 v1, 0x1

    const-string v3, "??"

    invoke-virtual {v6}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v4

    move-object v0, p3

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    invoke-interface {p3, p5, p6}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->_get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    const/4 v6, 0x7

    :catch_0
    move-exception v7

    instance-of v0, v7, Lcom/jcraft/jsch/SftpException;

    if-eqz v0, :cond_1

    check-cast v7, Lcom/jcraft/jsch/SftpException;

    throw v7

    :cond_1
    instance-of v0, v7, Ljava/lang/Throwable;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/util/Vector;->size()I

    move-result v29

    if-nez v29, :cond_1

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x2

    const-string v6, "No such file"

    invoke-direct {v2, v3, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v19

    if-nez v14, :cond_0

    if-eqz v5, :cond_0

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    :cond_0
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_f

    check-cast v19, Lcom/jcraft/jsch/SftpException;

    throw v19

    :cond_1
    :try_start_1
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isDirectory()Z

    move-result v22

    const/16 v18, 0x0

    if-eqz v22, :cond_4

    sget-object v2, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v18, Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_3
    const/16 v23, 0x0

    :goto_0
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "not supported to get directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_4
    const/4 v2, 0x1

    move/from16 v0, v29

    if-le v0, v2, :cond_3

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    const-string v6, "Copying multiple files, but destination is missing or a file."

    invoke-direct {v2, v3, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_5
    const/4 v5, 0x0

    if-eqz v22, :cond_7

    const/16 v2, 0x2f

    invoke-virtual {v4, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v21

    const/4 v2, -0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_6

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :goto_2
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_a

    invoke-virtual/range {v16 .. v16}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v26

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v24

    cmp-long v2, v24, v26

    if-lez v2, :cond_8

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "failed to resume for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_6
    add-int/lit8 v2, v21, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    const/4 v6, 0x2

    :cond_7
    move-object/from16 v5, p2

    goto :goto_2

    const/4 v2, 0x7

    :cond_8
    cmp-long v2, v24, v26

    if-nez v2, :cond_a

    :cond_9
    nop

    return-void

    const/4 v9, 0x5

    :cond_a
    if-eqz p3, :cond_b

    const/4 v3, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v6

    move-object/from16 v2, p3

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_b

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    move-object/from16 v0, p3

    invoke-interface {v0, v2, v3}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z

    :cond_b
    const/4 v9, 0x0

    invoke-virtual {v15}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-nez p4, :cond_d

    :try_start_2
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v20

    :goto_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v12

    move-object/from16 v7, p0

    move-object v8, v4

    move-object/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v7 .. v13}, Lcom/jcraft/jsch/ChannelSftp;->_get(Ljava/lang/String;Ljava/io/OutputStream;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_c

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    const/4 v3, 0x6

    :cond_d
    :try_start_4
    new-instance v20, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v9, v20

    goto :goto_3

    const/4 v13, 0x0

    :catchall_0
    move-exception v2

    if-eqz v9, :cond_e

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_f
    move-object/from16 v0, v19

    instance-of v2, v0, Ljava/lang/Throwable;

    if-eqz v2, :cond_10

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    const-string v6, ""

    move-object/from16 v0, v19

    invoke-direct {v2, v3, v6, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_10
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    const-string v6, ""

    invoke-direct {v2, v3, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getBulkRequests()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {v0}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->size()I

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method public getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    const/4 v1, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x7

    :goto_0
    return-object v0

    const/4 v0, 0x2

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public getHome()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v5, 0x3

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v5, 0x3

    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    :cond_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    return-object v2

    const/4 v3, 0x5

    const/4 v5, 0x3

    :catch_0
    move-exception v1

    const/4 v5, 0x2

    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v5, 0x4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    const/4 v5, 0x5

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const-string v3, ""

    invoke-direct {v2, v4, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    const/4 v5, 0x5

    :cond_2
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const-string v3, ""

    invoke-direct {v2, v4, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public getServerVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v3, 0x5

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x0

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x4

    const-string v2, "The channel is not connected."

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    const/4 v3, 0x0

    :cond_0
    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return v0

    const/4 v3, 0x4
.end method

.method public hardlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x4

    const/4 v9, 0x1

    iget-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    if-nez v5, :cond_0

    const/4 v9, 0x6

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/16 v6, 0x8

    const-string v7, "hardlink@openssh.com is not supported"

    invoke-direct {v5, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5

    const/4 v9, 0x6

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x6

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v9, 0x2

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x2

    :catch_0
    move-exception v0

    const/4 v9, 0x2

    instance-of v5, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v9, 0x6

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p2, v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->sendHARDLINK([B[B)V

    const/4 v9, 0x0

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    const/4 v9, 0x4

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v9, 0x6

    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v9, 0x7

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v9, 0x5

    const/16 v5, 0x65

    if-eq v4, v5, :cond_2

    const/4 v9, 0x6

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5

    const/4 v9, 0x0

    :cond_2
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    const/4 v9, 0x2

    if-nez v2, :cond_3

    const/4 v9, 0x2

    :goto_0
    nop

    return-void

    const/4 v7, 0x1

    const/4 v9, 0x7

    :cond_3
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    const/4 v6, 0x0

    const/4 v9, 0x1

    :cond_4
    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    const/4 v9, 0x1

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    const/4 v9, 0x2

    :cond_5
    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method init()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public lcd(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    const/4 v3, 0x4

    :goto_0
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    const/4 v3, 0x0

    nop

    return-void

    const/4 v2, 0x7

    const/4 v3, 0x0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const/4 v1, 0x2

    const-string v2, "No such directory"

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    const/4 v3, 0x1

    :catch_0
    move-exception v0

    goto :goto_0

    const/4 v3, 0x5
.end method

.method public lpwd()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x0
.end method

.method public ls(Ljava/lang/String;)Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v2, 0x2

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x4

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$3;

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$3;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/util/Vector;)V

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V

    const/4 v2, 0x6

    return-object v1

    const/4 v2, 0x4
.end method

.method public ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    move-object/from16 v29, v0

    check-cast v29, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v24, 0x0

    new-instance v28, Ljava/util/Vector;

    invoke-direct/range {v28 .. v28}, Ljava/util/Vector;-><init>()V

    const/16 v29, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    const/16 v30, 0x0

    if-nez v16, :cond_0

    const/16 v29, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v29, v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v11}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v6, v0, [[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v25

    if-eqz v25, :cond_1

    const/16 v29, 0x0

    aget-object v24, v6, v29

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v11, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    new-instance v18, Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v29, 0x65

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    const/16 v29, 0x66

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    new-instance v29, Lcom/jcraft/jsch/SftpException;

    const/16 v30, 0x4

    const-string v31, ""

    invoke-direct/range {v29 .. v31}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v29
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    instance-of v0, v12, Lcom/jcraft/jsch/SftpException;

    move/from16 v29, v0

    if-eqz v29, :cond_15

    check-cast v12, Lcom/jcraft/jsch/SftpException;

    throw v12

    :cond_0
    move/from16 v29, v16

    goto/16 :goto_0

    const/4 v5, 0x3

    :cond_1
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v29

    if-eqz v29, :cond_2

    const/16 v24, 0x0

    move-object/from16 v11, v27

    goto/16 :goto_1

    const/4 v3, 0x2

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3

    const/16 v29, 0x0

    aget-object v24, v6, v29

    invoke-static/range {v24 .. v24}, Lcom/jcraft/jsch/Util;->unquote([B)[B

    move-result-object v24

    goto/16 :goto_1

    const/4 v6, 0x5

    :cond_3
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v24

    goto/16 :goto_1

    const/4 v4, 0x5

    :cond_4
    const/16 v29, 0x65

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v17

    :cond_6
    if-nez v9, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    move/from16 v22, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move/from16 v26, v0

    const/16 v29, 0x65

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    const/16 v29, 0x68

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    new-instance v29, Lcom/jcraft/jsch/SftpException;

    const/16 v30, 0x4

    const-string v31, ""

    invoke-direct/range {v29 .. v31}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v29

    :cond_7
    const/16 v29, 0x65

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v19

    const/16 v29, 0x1

    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    nop

    return-void

    const/4 v9, 0x0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->rewind()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v22, v22, -0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->reset()V

    :goto_2
    if-lez v10, :cond_6

    if-lez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->shift()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v30, v0

    add-int v30, v30, v22

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_d

    move/from16 v20, v22

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v30, v0

    add-int v30, v30, v19

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int v22, v22, v19

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v14

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    move/from16 v29, v0

    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v23

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v8

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v9, v0, :cond_e

    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    const/4 v5, 0x3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/jcraft/jsch/Buffer;->index:I

    move/from16 v30, v0

    sub-int v20, v29, v30

    goto/16 :goto_3

    const/4 v13, 0x1

    :cond_e
    const/4 v15, 0x0

    const/4 v13, 0x0

    if-nez v24, :cond_11

    const/4 v15, 0x1

    :goto_4
    if-eqz v15, :cond_10

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v14, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_f
    const/16 v21, 0x0

    if-nez v23, :cond_14

    new-instance v29, Ljava/lang/StringBuffer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    :goto_5
    new-instance v29, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v13, v2, v8}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v9

    :cond_10
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    const/4 v13, 0x7

    :cond_11
    if-nez v25, :cond_12

    move-object/from16 v0, v24

    invoke-static {v0, v14}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v15

    goto :goto_4

    const/4 v0, 0x7

    :cond_12
    move-object v4, v14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    move/from16 v29, v0

    if-nez v29, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v29, "UTF-8"

    move-object/from16 v0, v29

    invoke-static {v13, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    :cond_13
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v15

    goto :goto_4

    const/4 v9, 0x0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v21

    goto :goto_5

    const/4 v8, 0x7

    :cond_15
    instance-of v0, v12, Ljava/lang/Throwable;

    move/from16 v29, v0

    if-eqz v29, :cond_16

    new-instance v29, Lcom/jcraft/jsch/SftpException;

    const/16 v30, 0x4

    const-string v31, ""

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2, v12}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_16
    new-instance v29, Lcom/jcraft/jsch/SftpException;

    const/16 v30, 0x4

    const-string v31, ""

    invoke-direct/range {v29 .. v31}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v29
.end method

.method public lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x2

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_lstat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    const/4 v1, 0x7

    const/4 v4, 0x3

    :catch_0
    move-exception v0

    const/4 v4, 0x6

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v4, 0x1

    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const/4 v4, 0x7

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const/4 v4, 0x0

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public mkdir(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x7

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->sendMKDIR([BLcom/jcraft/jsch/SftpATTRS;)V

    const/4 v9, 0x1

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    const/4 v9, 0x7

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v9, 0x4

    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v9, 0x0

    const/16 v5, 0x65

    if-eq v4, v5, :cond_0

    const/4 v9, 0x7

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x5

    :catch_0
    move-exception v0

    const/4 v9, 0x0

    instance-of v5, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v5, :cond_2

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v9, 0x2

    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    const/4 v9, 0x0

    if-nez v2, :cond_1

    const/4 v9, 0x6

    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v9, 0x6

    :cond_1
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    const/4 v4, 0x5

    const/4 v9, 0x7

    :cond_2
    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    const/4 v9, 0x6

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    const/4 v9, 0x0

    :cond_3
    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v2, 0x2

    const/4 v0, 0x0

    check-cast v0, Lcom/jcraft/jsch/SftpProgressMonitor;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    const/4 v2, 0x1
.end method

.method public put(Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x6

    const/4 v0, 0x0

    check-cast v0, Lcom/jcraft/jsch/SftpProgressMonitor;

    invoke-virtual {p0, p1, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method public put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0

    const/4 v5, 0x0
.end method

.method public put(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;IJ)Ljava/io/OutputStream;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v14, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    new-instance v14, Lcom/jcraft/jsch/SftpException;

    const/4 v15, 0x4

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " is a directory"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    instance-of v14, v5, Lcom/jcraft/jsch/SftpException;

    if-eqz v14, :cond_8

    check-cast v5, Lcom/jcraft/jsch/SftpException;

    throw v5

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_1

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_2

    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v12

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENW([B)V

    :goto_1
    new-instance v7, Lcom/jcraft/jsch/ChannelSftp$Header;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v7

    iget v9, v7, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget v11, v7, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v14, 0x65

    if-eq v11, v14, :cond_4

    const/16 v14, 0x66

    if-eq v11, v14, :cond_4

    new-instance v14, Lcom/jcraft/jsch/SftpException;

    const/4 v15, 0x4

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v14

    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENA([B)V

    goto :goto_1

    const/4 v7, 0x5

    :cond_4
    const/16 v14, 0x65

    if-ne v11, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    const/4 v14, 0x1

    move/from16 v0, p3

    if-eq v0, v14, :cond_6

    const/4 v14, 0x2

    move/from16 v0, p3

    if-ne v0, v14, :cond_7

    :cond_6
    add-long p4, p4, v12

    :cond_7
    const/4 v14, 0x1

    new-array v2, v14, [J

    const/4 v14, 0x0

    aput-wide p4, v2, v14

    new-instance v10, Lcom/jcraft/jsch/ChannelSftp$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v6, v2, v1}, Lcom/jcraft/jsch/ChannelSftp$1;-><init>(Lcom/jcraft/jsch/ChannelSftp;[B[JLcom/jcraft/jsch/SftpProgressMonitor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v10

    const/4 v1, 0x0

    :cond_8
    instance-of v14, v5, Ljava/lang/Throwable;

    if-eqz v14, :cond_9

    new-instance v14, Lcom/jcraft/jsch/SftpException;

    const/4 v15, 0x4

    const-string v16, ""

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :cond_9
    new-instance v14, Lcom/jcraft/jsch/SftpException;

    const/4 v15, 0x4

    const-string v16, ""

    invoke-direct/range {v14 .. v16}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v14

    :catch_1
    move-exception v14

    goto/16 :goto_0

    const/4 v1, 0x0
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v2, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x5
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x7

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v11, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v10

    const/4 v2, 0x1

    if-eq v10, v2, :cond_2

    if-nez v10, :cond_1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v8

    instance-of v2, v8, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_5

    move-object v2, v8

    check-cast v2, Lcom/jcraft/jsch/SftpException;

    iget v2, v2, Lcom/jcraft/jsch/SftpException;->id:I

    if-ne v2, v11, :cond_4

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " is a directory"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    invoke-virtual {v9}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    if-eqz p3, :cond_3

    const/4 v3, 0x0

    const-string v4, "-"

    const-wide/16 v6, -0x1

    move-object v2, p3

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    :cond_3
    invoke-virtual/range {p0 .. p4}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    const/4 v5, 0x2

    :cond_4
    check-cast v8, Lcom/jcraft/jsch/SftpException;

    throw v8

    :cond_5
    instance-of v2, v8, Ljava/lang/Throwable;

    if-eqz v2, :cond_6

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v11, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v2, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/ChannelSftp;->put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v4, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->localAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v24

    const/4 v4, 0x1

    move/from16 v0, v24

    if-eq v0, v4, :cond_2

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v5, 0x4

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v12

    instance-of v4, v12, Lcom/jcraft/jsch/SftpException;

    if-eqz v4, :cond_f

    check-cast v12, Lcom/jcraft/jsch/SftpException;

    throw v12

    :cond_0
    :try_start_1
    invoke-static/range {p2 .. p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v5, 0x4

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->isRemoteDir(Ljava/lang/String;)Z

    move-result v17

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_local(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v24

    const/4 v11, 0x0

    if-eqz v17, :cond_6

    const-string v4, "/"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_3
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v0, p2

    invoke-direct {v11, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_4
    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    if-eqz v17, :cond_8

    sget-char v4, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    sget-boolean v4, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    if-eqz v4, :cond_5

    const/16 v4, 0x2f

    invoke-virtual {v6, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    const/4 v4, -0x1

    move/from16 v0, v16

    if-eq v0, v4, :cond_5

    move/from16 v0, v16

    if-le v0, v15, :cond_5

    move/from16 v15, v16

    :cond_5
    const/4 v4, -0x1

    if-ne v15, v4, :cond_7

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    const-wide/16 v20, 0x0

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_b

    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v10

    invoke-virtual {v10}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v20

    :goto_3
    :try_start_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v22

    cmp-long v4, v22, v20

    if-gez v4, :cond_9

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v5, 0x4

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "failed to resume for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_6
    const/4 v4, 0x1

    move/from16 v0, v24

    if-le v0, v4, :cond_4

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v5, 0x4

    const-string v8, "Copying multiple files, but the destination is missing or a file."

    invoke-direct {v4, v5, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :cond_7
    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    const/4 v1, 0x2

    :cond_8
    move-object/from16 v7, p2

    goto :goto_2

    const/4 v4, 0x4

    :cond_9
    cmp-long v4, v22, v20

    if-nez v4, :cond_b

    :cond_a
    nop

    return-void

    const/4 v12, 0x7

    :cond_b
    if-eqz p3, :cond_c

    const/4 v5, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object/from16 v4, p3

    invoke-interface/range {v4 .. v9}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_c

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/jcraft/jsch/SftpProgressMonitor;->count(J)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_c
    const/4 v13, 0x0

    :try_start_4
    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v14, v7, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->_put(Ljava/io/InputStream;Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v14, :cond_d

    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V

    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    const/4 v10, 0x0

    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V

    :cond_e
    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_f
    instance-of v4, v12, Ljava/lang/Throwable;

    if-eqz v4, :cond_10

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v5, 0x4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8, v12}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_10
    new-instance v4, Lcom/jcraft/jsch/SftpException;

    const/4 v5, 0x4

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v4

    :catchall_1
    move-exception v4

    move-object v13, v14

    goto :goto_4

    const/4 v4, 0x2

    :catch_1
    move-exception v4

    goto/16 :goto_3

    const/4 v8, 0x3
.end method

.method public pwd()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x7
.end method

.method public quit()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->disconnect()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public readlink(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v11, 0x7

    const/16 v9, 0x68

    const/4 v8, 0x3

    const/4 v10, 0x4

    const/4 v11, 0x5

    :try_start_0
    iget v7, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-ge v7, v8, :cond_0

    const/4 v11, 0x7

    new-instance v7, Lcom/jcraft/jsch/SftpException;

    const/16 v8, 0x8

    const-string v9, "The remote sshd is too old to support symlink operation."

    invoke-direct {v7, v8, v9}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x5

    :catch_0
    move-exception v1

    const/4 v11, 0x1

    instance-of v7, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v7, :cond_5

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v11, 0x1

    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v7, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v11, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x2

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v11, 0x7

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v7}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/jcraft/jsch/ChannelSftp;->sendREADLINK([B)V

    const/4 v11, 0x2

    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v11, 0x2

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v3}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v3

    const/4 v11, 0x6

    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v11, 0x3

    iget v6, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v11, 0x2

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v11, 0x5

    const/16 v7, 0x65

    if-eq v6, v7, :cond_1

    if-eq v6, v9, :cond_1

    const/4 v11, 0x0

    new-instance v7, Lcom/jcraft/jsch/SftpException;

    const/4 v8, 0x4

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v7

    const/4 v11, 0x5

    :cond_1
    if-ne v6, v9, :cond_4

    const/4 v11, 0x3

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    const/4 v11, 0x6

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    const/4 v11, 0x4

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    const/4 v11, 0x2

    iget v7, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-gt v7, v8, :cond_2

    const/4 v11, 0x5

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    const/4 v11, 0x6

    :cond_2
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v7}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    const/4 v11, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v7, 0x3

    const/4 v11, 0x6

    :cond_3
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v2, v7}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    :goto_1
    return-object v7

    const/4 v8, 0x7

    const/4 v11, 0x5

    :cond_4
    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v4

    const/4 v11, 0x2

    iget-object v7, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v7, v4}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v11, 0x5

    const/4 v7, 0x0

    goto :goto_1

    const/4 v4, 0x3

    const/4 v11, 0x2

    :cond_5
    instance-of v7, v1, Ljava/lang/Throwable;

    if-eqz v7, :cond_6

    const/4 v11, 0x3

    new-instance v7, Lcom/jcraft/jsch/SftpException;

    const-string v8, ""

    invoke-direct {v7, v10, v8, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    const/4 v11, 0x6

    :cond_6
    new-instance v7, Lcom/jcraft/jsch/SftpException;

    const-string v8, ""

    invoke-direct {v7, v10, v8}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v7
.end method

.method public realpath(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    const/4 v4, 0x7

    const/4 v5, 0x4

    :catch_0
    move-exception v1

    const/4 v5, 0x6

    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v5, 0x0

    :cond_0
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const-string v3, ""

    invoke-direct {v2, v4, v3, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    const/4 v5, 0x1

    :cond_1
    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const-string v3, ""

    invoke-direct {v2, v4, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v2
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v9, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x6

    iget v8, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    if-ge v8, v9, :cond_0

    const/4 v12, 0x1

    new-instance v8, Lcom/jcraft/jsch/SftpException;

    const/16 v9, 0x8

    const-string v10, "The remote sshd is too old to support rename operation."

    invoke-direct {v8, v9, v10}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v8

    const/4 v12, 0x7

    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v8, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v12, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v12, 0x2

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v12, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v12, 0x6

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v12, 0x7

    if-lt v7, v9, :cond_1

    const/4 v12, 0x3

    new-instance v8, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    invoke-virtual {v6}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x3

    :catch_0
    move-exception v1

    const/4 v12, 0x2

    instance-of v8, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v8, :cond_6

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v12, 0x3

    :cond_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    const/4 v12, 0x4

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v0, v8

    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    const/4 v12, 0x3

    :goto_0
    iget-object v8, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p2, v9}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/jcraft/jsch/ChannelSftp;->sendRENAME([B[B)V

    const/4 v12, 0x1

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v12, 0x2

    iget-object v8, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v8, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    const/4 v12, 0x7

    iget v4, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v12, 0x5

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v12, 0x4

    iget-object v8, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v12, 0x3

    const/16 v8, 0x65

    if-eq v5, v8, :cond_4

    const/4 v12, 0x7

    new-instance v8, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    const-string v10, ""

    invoke-direct {v8, v9, v10}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v8

    const/4 v12, 0x7

    :cond_2
    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v12, 0x4

    new-instance v8, Lcom/jcraft/jsch/SftpException;

    const/4 v9, 0x4

    invoke-direct {v8, v9, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v8

    const/4 v12, 0x0

    :cond_3
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    const/4 v10, 0x2

    const/4 v12, 0x5

    :cond_4
    iget-object v8, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    const/4 v12, 0x0

    if-nez v3, :cond_5

    const/4 v12, 0x0

    :goto_1
    nop

    return-void

    const/4 v10, 0x1

    const/4 v12, 0x2

    :cond_5
    iget-object v8, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v8, v3}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    const/4 v4, 0x1

    const/4 v12, 0x0

    :cond_6
    instance-of v8, v1, Ljava/lang/Throwable;

    if-eqz v8, :cond_7

    const/4 v12, 0x1

    new-instance v8, Lcom/jcraft/jsch/SftpException;

    const-string v9, ""

    invoke-direct {v8, v11, v9, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    const/4 v12, 0x6

    :cond_7
    new-instance v8, Lcom/jcraft/jsch/SftpException;

    const-string v9, ""

    invoke-direct {v8, v11, v9}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v8
.end method

.method public rm(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v13, 0x7

    const/4 v12, 0x4

    const/4 v13, 0x6

    :try_start_0
    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v9, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v13, 0x0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v13, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v13, 0x4

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v13, 0x5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_4

    const/4 v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    const/4 v13, 0x2

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/jcraft/jsch/ChannelSftp;->sendREMOVE([B)V

    const/4 v13, 0x7

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v9, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    const/4 v13, 0x4

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v13, 0x1

    iget v6, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v13, 0x5

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v9, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v13, 0x0

    const/16 v9, 0x65

    if-eq v6, v9, :cond_0

    const/4 v13, 0x2

    new-instance v9, Lcom/jcraft/jsch/SftpException;

    const/4 v10, 0x4

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x7

    :catch_0
    move-exception v1

    const/4 v13, 0x3

    instance-of v9, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v9, :cond_2

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v13, 0x4

    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    const/4 v13, 0x3

    if-eqz v3, :cond_1

    const/4 v13, 0x5

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v9, v3}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v13, 0x5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v8, 0x4

    const/4 v13, 0x0

    :cond_2
    instance-of v9, v1, Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    const/4 v13, 0x4

    new-instance v9, Lcom/jcraft/jsch/SftpException;

    const-string v10, ""

    invoke-direct {v9, v12, v10, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    const/4 v13, 0x4

    :cond_3
    new-instance v9, Lcom/jcraft/jsch/SftpException;

    const-string v10, ""

    invoke-direct {v9, v12, v10}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v9

    const/4 v13, 0x5

    :cond_4
    nop

    return-void

    const/4 v11, 0x1
.end method

.method public rmdir(Ljava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v13, 0x4

    const/4 v12, 0x4

    const/4 v13, 0x5

    :try_start_0
    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v9, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v13, 0x0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v13, 0x5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v7

    const/4 v13, 0x4

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v8

    const/4 v13, 0x1

    new-instance v2, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v2, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v13, 0x3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v8, :cond_4

    const/4 v13, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    const/4 v13, 0x4

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/jcraft/jsch/ChannelSftp;->sendRMDIR([B)V

    const/4 v13, 0x7

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v9, v2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v2

    const/4 v13, 0x0

    iget v5, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v13, 0x4

    iget v6, v2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v13, 0x6

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v9, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v13, 0x4

    const/16 v9, 0x65

    if-eq v6, v9, :cond_0

    const/4 v13, 0x4

    new-instance v9, Lcom/jcraft/jsch/SftpException;

    const/4 v10, 0x4

    const-string v11, ""

    invoke-direct {v9, v10, v11}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x4

    :catch_0
    move-exception v1

    const/4 v13, 0x1

    instance-of v9, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v9, :cond_2

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v13, 0x6

    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v3

    const/4 v13, 0x2

    if-eqz v3, :cond_1

    const/4 v13, 0x5

    iget-object v9, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v9, v3}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v13, 0x6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v13, 0x7

    const/4 v13, 0x5

    :cond_2
    instance-of v9, v1, Ljava/lang/Throwable;

    if-eqz v9, :cond_3

    const/4 v13, 0x0

    new-instance v9, Lcom/jcraft/jsch/SftpException;

    const-string v10, ""

    invoke-direct {v9, v12, v10, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    const/4 v13, 0x6

    :cond_3
    new-instance v9, Lcom/jcraft/jsch/SftpException;

    const-string v10, ""

    invoke-direct {v9, v12, v10}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v9

    const/4 v13, 0x4

    :cond_4
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setBulkRequests(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v3, 0x2

    if-lez p1, :cond_0

    const/4 v3, 0x5

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-direct {v0, p0, p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/4 v3, 0x7

    nop

    return-void

    const/4 v0, 0x5

    const/4 v3, 0x0

    :cond_0
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "setBulkRequests: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " must be greater than 0."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilenameEncoding(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getServerVersion()I

    move-result v0

    const/4 v4, 0x6

    const/4 v1, 0x3

    if-gt v1, v0, :cond_0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v4, 0x3

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const/4 v2, 0x4

    const-string v3, "The encoding can not be changed for this sftp server."

    invoke-direct {v1, v2, v3}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1

    const/4 v4, 0x4

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x4

    const-string p1, "UTF-8"

    const/4 v4, 0x3

    :cond_1
    iput-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    const/4 v4, 0x5

    nop

    return-void

    const/4 v4, 0x7
.end method

.method public setMtime(Ljava/lang/String;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v9, 0x3

    :try_start_0
    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v6, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v9, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    const/4 v9, 0x4

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    const/4 v9, 0x7

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v1

    const/4 v9, 0x4

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/jcraft/jsch/SftpATTRS;->setFLAGS(I)V

    const/4 v9, 0x7

    invoke-virtual {v1}, Lcom/jcraft/jsch/SftpATTRS;->getATime()I

    move-result v6

    invoke-virtual {v1, v6, p2}, Lcom/jcraft/jsch/SftpATTRS;->setACMODTIME(II)V

    const/4 v9, 0x0

    invoke-direct {p0, p1, v1}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v4, 0x0

    const/4 v9, 0x4

    :catch_0
    move-exception v2

    const/4 v9, 0x6

    instance-of v6, v2, Lcom/jcraft/jsch/SftpException;

    if-eqz v6, :cond_0

    check-cast v2, Lcom/jcraft/jsch/SftpException;

    throw v2

    const/4 v9, 0x2

    :cond_0
    instance-of v6, v2, Ljava/lang/Throwable;

    if-eqz v6, :cond_1

    const/4 v9, 0x6

    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    const/4 v9, 0x6

    :cond_1
    new-instance v6, Lcom/jcraft/jsch/SftpException;

    const-string v7, ""

    invoke-direct {v6, v8, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v6

    const/4 v9, 0x3

    :cond_2
    nop

    return-void

    const/4 v2, 0x5
.end method

.method public setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v8, 0x7

    const/4 v7, 0x4

    const/4 v8, 0x4

    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v8, 0x3

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x6

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v3

    const/4 v8, 0x7

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    const/4 v8, 0x7

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    const/4 v8, 0x3

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object p1, v0

    const/4 v8, 0x2

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->_setStat(Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v7, 0x0

    const/4 v8, 0x4

    :catch_0
    move-exception v1

    const/4 v8, 0x2

    instance-of v5, v1, Lcom/jcraft/jsch/SftpException;

    if-eqz v5, :cond_0

    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    const/4 v8, 0x5

    :cond_0
    instance-of v5, v1, Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    const/4 v8, 0x4

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v7, v6, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    const/4 v8, 0x6

    :cond_1
    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v7, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5

    const/4 v8, 0x7

    :cond_2
    nop

    return-void

    const/4 v7, 0x5
.end method

.method public start()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/JSchException;
        }
    .end annotation

    const/4 v14, 0x2

    const/4 v14, 0x4

    :try_start_0
    new-instance v7, Ljava/io/PipedOutputStream;

    invoke-direct {v7}, Ljava/io/PipedOutputStream;-><init>()V

    const/4 v14, 0x6

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v10, v7}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    const/4 v14, 0x7

    new-instance v6, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v10, p0, Lcom/jcraft/jsch/ChannelSftp;->rmpsize:I

    invoke-direct {v6, p0, v7, v10}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    const/4 v14, 0x4

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v10, v6}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    const/4 v14, 0x1

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->io:Lcom/jcraft/jsch/IO;

    iget-object v10, v10, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    const/4 v14, 0x2

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    if-nez v10, :cond_0

    const/4 v14, 0x4

    new-instance v10, Lcom/jcraft/jsch/JSchException;

    const-string v11, "channel is down"

    invoke-direct {v10, v11}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v14, 0x0

    :catch_0
    move-exception v0

    const/4 v14, 0x0

    instance-of v10, v0, Lcom/jcraft/jsch/JSchException;

    if-eqz v10, :cond_6

    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0

    const/4 v14, 0x0

    :cond_0
    :try_start_1
    new-instance v8, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v8}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    const/4 v14, 0x6

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v10

    invoke-virtual {v8, v10, p0}, Lcom/jcraft/jsch/Request;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    const/4 v14, 0x1

    new-instance v10, Lcom/jcraft/jsch/Buffer;

    iget v11, p0, Lcom/jcraft/jsch/ChannelSftp;->lmpsize:I

    invoke-direct {v10, v11}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v14, 0x3

    new-instance v10, Lcom/jcraft/jsch/Packet;

    iget-object v11, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v10, v11}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    const/4 v14, 0x1

    new-instance v10, Lcom/jcraft/jsch/Buffer;

    iget v11, p0, Lcom/jcraft/jsch/ChannelSftp;->rmpsize:I

    invoke-direct {v10, v11}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    const/4 v14, 0x4

    new-instance v10, Lcom/jcraft/jsch/Packet;

    iget-object v11, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v10, v11}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    const/4 v14, 0x6

    const/4 v4, 0x0

    const/4 v14, 0x6

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->sendINIT()V

    const/4 v14, 0x1

    new-instance v3, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v3, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v14, 0x1

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v10, v3}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v3

    const/4 v14, 0x3

    iget v5, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v14, 0x2

    const/high16 v10, 0x40000

    if-le v5, v10, :cond_1

    const/4 v14, 0x5

    new-instance v10, Lcom/jcraft/jsch/SftpException;

    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Received message is too long: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v10

    const/4 v14, 0x3

    :cond_1
    iget v9, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v14, 0x2

    iget v10, v3, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    iput v10, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v14, 0x0

    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const/4 v14, 0x4

    if-lez v5, :cond_2

    const/4 v14, 0x0

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v10, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v14, 0x5

    const/4 v2, 0x0

    const/4 v14, 0x1

    const/4 v1, 0x0

    const/4 v14, 0x4

    :goto_0
    if-lez v5, :cond_2

    const/4 v14, 0x2

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v2

    const/4 v14, 0x0

    array-length v10, v2

    add-int/lit8 v10, v10, 0x4

    sub-int/2addr v5, v10

    const/4 v14, 0x0

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v10}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v1

    const/4 v14, 0x4

    array-length v10, v1

    add-int/lit8 v10, v10, 0x4

    sub-int/2addr v5, v10

    const/4 v14, 0x4

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    const/4 v8, 0x4

    const/4 v14, 0x4

    :cond_2
    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v11, "posix-rename@openssh.com"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v11, "posix-rename@openssh.com"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v14, 0x0

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    const/4 v14, 0x7

    :cond_3
    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v11, "statvfs@openssh.com"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v11, "statvfs@openssh.com"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "2"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v14, 0x7

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    const/4 v14, 0x5

    :cond_4
    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v11, "hardlink@openssh.com"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    const-string v11, "hardlink@openssh.com"

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v14, 0x1

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    const/4 v14, 0x2

    :cond_5
    new-instance v10, Ljava/io/File;

    const-string v11, "."

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v14, 0x6

    nop

    return-void

    const/4 v13, 0x7

    const/4 v14, 0x5

    :cond_6
    instance-of v10, v0, Ljava/lang/Throwable;

    if-eqz v10, :cond_7

    const/4 v14, 0x7

    new-instance v10, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    const/4 v14, 0x7

    :cond_7
    new-instance v10, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x3

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v4, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    const/4 v1, 0x0

    const/4 v4, 0x4

    :catch_0
    move-exception v0

    const/4 v4, 0x6

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v4, 0x0

    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const/4 v4, 0x7

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x6

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v4, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_statVFS(Ljava/lang/String;)Lcom/jcraft/jsch/SftpStatVFS;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    const/4 v4, 0x6

    const/4 v4, 0x1

    :catch_0
    move-exception v0

    const/4 v4, 0x2

    instance-of v1, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v4, 0x2

    :cond_0
    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const/4 v4, 0x6

    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    const/4 v4, 0x1

    :cond_1
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    const-string v2, ""

    invoke-direct {v1, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jcraft/jsch/SftpException;
        }
    .end annotation

    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v9, 0x5

    iget v5, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_0

    const/4 v9, 0x2

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/16 v6, 0x8

    const-string v7, "The remote sshd is too old to support symlink operation."

    invoke-direct {v5, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5

    const/4 v9, 0x4

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    const/4 v9, 0x4

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x1

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x5

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x6

    invoke-direct {p0, p2}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v9, 0x3

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, p2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x4

    :catch_0
    move-exception v0

    const/4 v9, 0x4

    instance-of v5, v0, Lcom/jcraft/jsch/SftpException;

    if-eqz v5, :cond_4

    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0

    const/4 v9, 0x1

    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v9, 0x1

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p2, v6}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/jcraft/jsch/ChannelSftp;->sendSYMLINK([B[B)V

    const/4 v9, 0x1

    new-instance v1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    const/4 v9, 0x7

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v1

    const/4 v9, 0x7

    iget v3, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/4 v9, 0x4

    iget v4, v1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    const/4 v9, 0x4

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/4 v9, 0x0

    const/16 v5, 0x65

    if-eq v4, v5, :cond_2

    const/4 v9, 0x1

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const/4 v6, 0x4

    const-string v7, ""

    invoke-direct {v5, v6, v7}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5

    const/4 v9, 0x4

    :cond_2
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v5}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v2

    const/4 v9, 0x2

    if-nez v2, :cond_3

    const/4 v9, 0x2

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v9, 0x6

    :cond_3
    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v2}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    const/4 v3, 0x2

    const/4 v9, 0x0

    :cond_4
    instance-of v5, v0, Ljava/lang/Throwable;

    if-eqz v5, :cond_5

    const/4 v9, 0x4

    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    const/4 v9, 0x0

    :cond_5
    new-instance v5, Lcom/jcraft/jsch/SftpException;

    const-string v6, ""

    invoke-direct {v5, v8, v6}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v5
.end method

.method public version()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method
