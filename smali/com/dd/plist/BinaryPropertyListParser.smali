.class public Lcom/dd/plist/BinaryPropertyListParser;
.super Ljava/lang/Object;
.source "BinaryPropertyListParser.java"


# instance fields
.field private bytes:[B

.field private majorVersion:I

.field private minorVersion:I

.field private numObjects:I

.field private objectRefSize:I

.field private offsetSize:I

.field private offsetTable:[I

.field private offsetTableOffset:I

.field private topObject:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static copyOfRange([BII)[B
    .locals 5
    .param p0, "src"    # [B
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 478
    sub-int v1, p2, p1

    .line 479
    .local v1, "length":I
    if-gez v1, :cond_0

    .line 480
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startIndex ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > endIndex ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 482
    :cond_0
    new-array v0, v1, [B

    .line 483
    .local v0, "dest":[B
    const/4 v2, 0x0

    invoke-static {p0, p1, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 484
    return-object v0
.end method

.method private doParse([B)Lcom/dd/plist/NSObject;
    .locals 12
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v11, 0x18

    const/16 v10, 0x10

    const/4 v9, 0x6

    const/16 v8, 0x8

    const/4 v7, 0x7

    .line 103
    iput-object p1, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    .line 104
    new-instance v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v8}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    .line 105
    .local v1, "magic":Ljava/lang/String;
    const-string v4, "bplist"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The given data is no binary property list. Wrong magic bytes: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_0
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->majorVersion:I

    .line 110
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->minorVersion:I

    .line 118
    iget v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->majorVersion:I

    if-lez v4, :cond_1

    .line 119
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported binary property list format: v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->majorVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->minorVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Version 1.0 and later are not yet supported."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 126
    :cond_1
    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    iget-object v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x20

    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v3

    .line 128
    .local v3, "trailer":[B
    invoke-static {v3, v9, v7}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    .line 130
    invoke-static {v3, v7, v8}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    .line 132
    invoke-static {v3, v8, v10}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    .line 134
    invoke-static {v3, v10, v11}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->topObject:I

    .line 136
    const/16 v4, 0x20

    invoke-static {v3, v11, v4}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    .line 142
    iget v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    .line 144
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->numObjects:I

    if-ge v0, v4, :cond_2

    .line 145
    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    iget v5, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    iget v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    mul-int/2addr v6, v0

    add-int/2addr v5, v6

    iget v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTableOffset:I

    add-int/lit8 v7, v0, 0x1

    iget v8, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetSize:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v2

    .line 146
    .local v2, "offsetBytes":[B
    iget-object v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    invoke-static {v2}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v5, v6

    aput v5, v4, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "offsetBytes":[B
    :cond_2
    iget v4, p0, Lcom/dd/plist/BinaryPropertyListParser;->topObject:I

    invoke-direct {p0, v4}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v4

    return-object v4
.end method

.method public static parse(Ljava/io/File;)Lcom/dd/plist/NSObject;
    .locals 4
    .param p0, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To little heap space available! Wanted to read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes, but only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " are available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 164
    const v1, 0x7fffffff

    invoke-static {p0, v1}, Lcom/dd/plist/PropertyListParser;->readAll(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 165
    .local v0, "buf":[B
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 166
    invoke-static {v0}, Lcom/dd/plist/BinaryPropertyListParser;->parse([B)Lcom/dd/plist/NSObject;

    move-result-object v1

    return-object v1
.end method

.method public static parse([B)Lcom/dd/plist/NSObject;
    .locals 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 91
    new-instance v0, Lcom/dd/plist/BinaryPropertyListParser;

    invoke-direct {v0}, Lcom/dd/plist/BinaryPropertyListParser;-><init>()V

    .line 92
    .local v0, "parser":Lcom/dd/plist/BinaryPropertyListParser;
    invoke-direct {v0, p0}, Lcom/dd/plist/BinaryPropertyListParser;->doParse([B)Lcom/dd/plist/NSObject;

    move-result-object v1

    return-object v1
.end method

.method public static final parseDouble([B)D
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 460
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 461
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 463
    :goto_0
    return-wide v0

    .line 462
    :cond_0
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 463
    invoke-static {p0}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0

    .line 465
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad byte array length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final parseLong([B)J
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 445
    const-wide/16 v4, 0x0

    .line 446
    .local v4, "l":J
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 447
    .local v1, "b":B
    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 448
    and-int/lit16 v6, v1, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 446
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "b":B
    :cond_0
    return-wide v4
.end method

.method private parseObject(I)Lcom/dd/plist/NSObject;
    .locals 28
    .param p1, "obj"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->offsetTable:[I

    move-object/from16 v23, v0

    aget v17, v23, p1

    .line 195
    .local v17, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    aget-byte v20, v23, v17

    .line 196
    .local v20, "type":B
    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xf0

    move/from16 v23, v0

    shr-int/lit8 v16, v23, 0x4

    .line 197
    .local v16, "objType":I
    and-int/lit8 v14, v20, 0xf

    .line 198
    .local v14, "objInfo":I
    packed-switch v16, :pswitch_data_0

    .line 388
    :pswitch_0
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Unknown object type: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    :goto_0
    :pswitch_1
    const/16 v18, 0x0

    :cond_0
    :goto_1
    return-object v18

    .line 201
    :pswitch_2
    packed-switch v14, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 204
    :pswitch_4
    const/16 v18, 0x0

    goto :goto_1

    .line 208
    :pswitch_5
    new-instance v18, Lcom/dd/plist/NSNumber;

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_1

    .line 212
    :pswitch_6
    new-instance v18, Lcom/dd/plist/NSNumber;

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    goto :goto_1

    .line 231
    :pswitch_7
    const/16 v18, 0x0

    goto :goto_1

    .line 238
    :pswitch_8
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    int-to-double v0, v14

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v13, v0

    .line 239
    .local v13, "length":I
    int-to-long v0, v13

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_1

    .line 240
    new-instance v18, Lcom/dd/plist/NSNumber;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v17, 0x1

    add-int/lit8 v25, v17, 0x1

    add-int v25, v25, v13

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSNumber;-><init>([BI)V

    goto :goto_1

    .line 242
    :cond_1
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "To little heap space available! Wanted to read "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes, but only "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " are available."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 247
    .end local v13    # "length":I
    :pswitch_9
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    int-to-double v0, v14

    move-wide/from16 v26, v0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v13, v0

    .line 248
    .restart local v13    # "length":I
    int-to-long v0, v13

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_2

    .line 249
    new-instance v18, Lcom/dd/plist/NSNumber;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v17, 0x1

    add-int/lit8 v25, v17, 0x1

    add-int v25, v25, v13

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    const/16 v24, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSNumber;-><init>([BI)V

    goto/16 :goto_1

    .line 251
    :cond_2
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "To little heap space available! Wanted to read "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes, but only "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " are available."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 256
    .end local v13    # "length":I
    :pswitch_a
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v14, v0, :cond_3

    .line 257
    sget-object v23, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "BinaryPropertyListParser: Unknown date type :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ". Attempting to parse anyway..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    :cond_3
    new-instance v18, Lcom/dd/plist/NSDate;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int/lit8 v24, v17, 0x1

    add-int/lit8 v25, v17, 0x9

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/dd/plist/NSDate;-><init>([B)V

    goto/16 :goto_1

    .line 263
    :pswitch_b
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 264
    .local v12, "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 265
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v7, v12, v23

    .line 267
    .local v7, "dataoffset":I
    int-to-long v0, v13

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_4

    .line 268
    new-instance v18, Lcom/dd/plist/NSData;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v7

    add-int v25, v17, v7

    add-int v25, v25, v13

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/dd/plist/NSData;-><init>([B)V

    goto/16 :goto_1

    .line 270
    :cond_4
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "To little heap space available! Wanted to read "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes, but only "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " are available."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 275
    .end local v7    # "dataoffset":I
    .end local v12    # "lenAndoffset":[I
    .end local v13    # "length":I
    :pswitch_c
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 276
    .restart local v12    # "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 277
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v19, v12, v23

    .line 279
    .local v19, "stroffset":I
    int-to-long v0, v13

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_5

    .line 280
    new-instance v18, Lcom/dd/plist/NSString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v19

    add-int v25, v17, v19

    add-int v25, v25, v13

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    const-string v24, "ASCII"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSString;-><init>([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 282
    :cond_5
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "To little heap space available! Wanted to read "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes, but only "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " are available."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 287
    .end local v12    # "lenAndoffset":[I
    .end local v13    # "length":I
    .end local v19    # "stroffset":I
    :pswitch_d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 288
    .restart local v12    # "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 289
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v19, v12, v23

    .line 292
    .restart local v19    # "stroffset":I
    mul-int/lit8 v13, v13, 0x2

    .line 293
    int-to-long v0, v13

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_6

    .line 294
    new-instance v18, Lcom/dd/plist/NSString;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v19

    add-int v25, v17, v19

    add-int v25, v25, v13

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    const-string v24, "UTF-16BE"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/dd/plist/NSString;-><init>([BLjava/lang/String;)V

    goto/16 :goto_1

    .line 296
    :cond_6
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "To little heap space available! Wanted to read "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes, but only "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " are available."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 301
    .end local v12    # "lenAndoffset":[I
    .end local v13    # "length":I
    .end local v19    # "stroffset":I
    :pswitch_e
    add-int/lit8 v13, v14, 0x1

    .line 302
    .restart local v13    # "length":I
    int-to-long v0, v13

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-gez v23, :cond_7

    .line 303
    new-instance v18, Lcom/dd/plist/UID;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v24, v0

    add-int/lit8 v25, v17, 0x1

    add-int/lit8 v26, v17, 0x1

    add-int v26, v26, v13

    invoke-static/range {v24 .. v26}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/dd/plist/UID;-><init>(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 305
    :cond_7
    new-instance v23, Ljava/lang/Exception;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "To little heap space available! Wanted to read "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " bytes, but only "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " are available."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 310
    .end local v13    # "length":I
    :pswitch_f
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 311
    .restart local v12    # "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 312
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v5, v12, v23

    .line 314
    .local v5, "arrayoffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v23, v0

    mul-int v23, v23, v13

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_8

    .line 315
    new-instance v23, Ljava/lang/Exception;

    const-string v24, "To little heap space available!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 317
    :cond_8
    new-instance v4, Lcom/dd/plist/NSArray;

    invoke-direct {v4, v13}, Lcom/dd/plist/NSArray;-><init>(I)V

    .line 318
    .local v4, "array":Lcom/dd/plist/NSArray;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v13, :cond_9

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v25, v0

    mul-int v25, v25, v9

    add-int v24, v24, v25

    add-int v25, v17, v5

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 322
    .local v15, "objRef":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v9, v0}, Lcom/dd/plist/NSArray;->setValue(ILcom/dd/plist/NSObject;)V

    .line 318
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v15    # "objRef":I
    :cond_9
    move-object/from16 v18, v4

    .line 324
    goto/16 :goto_1

    .line 329
    .end local v4    # "array":Lcom/dd/plist/NSArray;
    .end local v5    # "arrayoffset":I
    .end local v9    # "i":I
    .end local v12    # "lenAndoffset":[I
    .end local v13    # "length":I
    :pswitch_10
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 330
    .restart local v12    # "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 331
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v6, v12, v23

    .line 333
    .local v6, "contentOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v23, v0

    mul-int v23, v23, v13

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_a

    .line 334
    new-instance v23, Ljava/lang/Exception;

    const-string v24, "To little heap space available!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 336
    :cond_a
    new-instance v18, Lcom/dd/plist/NSSet;

    const/16 v23, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/dd/plist/NSSet;-><init>(Z)V

    .line 337
    .local v18, "set":Lcom/dd/plist/NSSet;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v13, :cond_0

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v25, v0

    mul-int v25, v25, v9

    add-int v24, v24, v25

    add-int v25, v17, v6

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 341
    .restart local v15    # "objRef":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    .line 337
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 347
    .end local v6    # "contentOffset":I
    .end local v9    # "i":I
    .end local v12    # "lenAndoffset":[I
    .end local v13    # "length":I
    .end local v15    # "objRef":I
    .end local v18    # "set":Lcom/dd/plist/NSSet;
    :pswitch_11
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 348
    .restart local v12    # "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 349
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v6, v12, v23

    .line 351
    .restart local v6    # "contentOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v23, v0

    mul-int v23, v23, v13

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_b

    .line 352
    new-instance v23, Ljava/lang/Exception;

    const-string v24, "To little heap space available!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 354
    :cond_b
    new-instance v18, Lcom/dd/plist/NSSet;

    invoke-direct/range {v18 .. v18}, Lcom/dd/plist/NSSet;-><init>()V

    .line 355
    .restart local v18    # "set":Lcom/dd/plist/NSSet;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_4
    if-ge v9, v13, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v25, v0

    mul-int v25, v25, v9

    add-int v24, v24, v25

    add-int v25, v17, v6

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v15, v0

    .line 359
    .restart local v15    # "objRef":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    .line 355
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 365
    .end local v6    # "contentOffset":I
    .end local v9    # "i":I
    .end local v12    # "lenAndoffset":[I
    .end local v13    # "length":I
    .end local v15    # "objRef":I
    .end local v18    # "set":Lcom/dd/plist/NSSet;
    :pswitch_12
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Lcom/dd/plist/BinaryPropertyListParser;->readLengthAndOffset(II)[I

    move-result-object v12

    .line 366
    .restart local v12    # "lenAndoffset":[I
    const/16 v23, 0x0

    aget v13, v12, v23

    .line 367
    .restart local v13    # "length":I
    const/16 v23, 0x1

    aget v6, v12, v23

    .line 369
    .restart local v6    # "contentOffset":I
    mul-int/lit8 v23, v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v24, v0

    mul-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-lez v23, :cond_c

    .line 370
    new-instance v23, Ljava/lang/Exception;

    const-string v24, "To little heap space available!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v23

    .line 373
    :cond_c
    new-instance v8, Lcom/dd/plist/NSDictionary;

    invoke-direct {v8}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 374
    .local v8, "dict":Lcom/dd/plist/NSDictionary;
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_5
    if-ge v9, v13, :cond_d

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v25, v0

    mul-int v25, v25, v9

    add-int v24, v24, v25

    add-int v25, v17, v6

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v11, v0

    .line 378
    .local v11, "keyRef":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    move-object/from16 v23, v0

    add-int v24, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v25, v0

    mul-int v25, v25, v13

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v25, v0

    mul-int v25, v25, v9

    add-int v24, v24, v25

    add-int v25, v17, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v26, v0

    mul-int v26, v26, v13

    add-int v25, v25, v26

    add-int/lit8 v26, v9, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/dd/plist/BinaryPropertyListParser;->objectRefSize:I

    move/from16 v27, v0

    mul-int v26, v26, v27

    add-int v25, v25, v26

    invoke-static/range {v23 .. v25}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v22, v0

    .line 381
    .local v22, "valRef":I
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v10

    .line 382
    .local v10, "key":Lcom/dd/plist/NSObject;
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/dd/plist/BinaryPropertyListParser;->parseObject(I)Lcom/dd/plist/NSObject;

    move-result-object v21

    .line 383
    .local v21, "val":Lcom/dd/plist/NSObject;
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    .line 374
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .end local v10    # "key":Lcom/dd/plist/NSObject;
    .end local v11    # "keyRef":I
    .end local v21    # "val":Lcom/dd/plist/NSObject;
    .end local v22    # "valRef":I
    :cond_d
    move-object/from16 v18, v8

    .line 385
    goto/16 :goto_1

    .line 198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch

    .line 201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static final parseUnsignedInt([B)J
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 429
    const-wide/16 v4, 0x0

    .line 430
    .local v4, "l":J
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 431
    .local v1, "b":B
    const/16 v6, 0x8

    shl-long/2addr v4, v6

    .line 432
    and-int/lit16 v6, v1, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 434
    .end local v1    # "b":B
    :cond_0
    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 435
    return-wide v4
.end method

.method private readLengthAndOffset(II)[I
    .locals 11
    .param p1, "objInfo"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v10, 0x1

    .line 402
    move v4, p1

    .line 403
    .local v4, "length":I
    const/4 v5, 0x1

    .line 404
    .local v5, "stroffset":I
    const/16 v6, 0xf

    if-ne p1, v6, :cond_1

    .line 405
    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v7, p2, 0x1

    aget-byte v3, v6, v7

    .line 406
    .local v3, "int_type":I
    and-int/lit16 v6, v3, 0xf0

    shr-int/lit8 v2, v6, 0x4

    .line 407
    .local v2, "intType":I
    if-eq v2, v10, :cond_0

    .line 408
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BinaryPropertyListParser: Length integer has an unexpected type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Attempting to parse anyway..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 410
    :cond_0
    and-int/lit8 v0, v3, 0xf

    .line 411
    .local v0, "intInfo":I
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v1, v6

    .line 412
    .local v1, "intLength":I
    add-int/lit8 v5, v1, 0x2

    .line 413
    const/4 v6, 0x3

    if-ge v1, v6, :cond_2

    .line 414
    iget-object v6, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v7, p2, 0x2

    add-int/lit8 v8, p2, 0x2

    add-int/2addr v8, v1

    invoke-static {v6, v7, v8}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v6

    invoke-static {v6}, Lcom/dd/plist/BinaryPropertyListParser;->parseUnsignedInt([B)J

    move-result-wide v6

    long-to-int v4, v6

    .line 419
    .end local v0    # "intInfo":I
    .end local v1    # "intLength":I
    .end local v2    # "intType":I
    .end local v3    # "int_type":I
    :cond_1
    :goto_0
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v4, v6, v7

    aput v5, v6, v10

    return-object v6

    .line 416
    .restart local v0    # "intInfo":I
    .restart local v1    # "intLength":I
    .restart local v2    # "intType":I
    .restart local v3    # "int_type":I
    :cond_2
    new-instance v6, Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/dd/plist/BinaryPropertyListParser;->bytes:[B

    add-int/lit8 v8, p2, 0x2

    add-int/lit8 v9, p2, 0x2

    add-int/2addr v9, v1

    invoke-static {v7, v8, v9}, Lcom/dd/plist/BinaryPropertyListParser;->copyOfRange([BII)[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    goto :goto_0
.end method
