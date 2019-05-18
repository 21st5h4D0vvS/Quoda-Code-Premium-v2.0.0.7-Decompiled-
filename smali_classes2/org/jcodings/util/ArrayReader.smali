.class public Lorg/jcodings/util/ArrayReader;
.super Ljava/lang/Object;
.source "ArrayReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAvailable(Ljava/io/DataInputStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "dis"    # Ljava/io/DataInputStream;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jcodings/exception/InternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length mismatch for table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " left)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    return-void
.end method

.method static decorate(Ljava/io/IOException;Ljava/lang/String;)V
    .locals 3
    .param p0, "ioe"    # Ljava/io/IOException;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Lorg/jcodings/exception/InternalException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "problem reading table: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static openStream(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/tables/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bin"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "entry":Ljava/lang/String;
    const-class v2, Lorg/jcodings/util/ArrayReader;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 33
    .local v1, "is":Ljava/io/InputStream;
    if-nez v1, :cond_0

    new-instance v2, Lorg/jcodings/exception/InternalException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 34
    :cond_0
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v2
.end method

.method public static readByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lorg/jcodings/util/ArrayReader;->openStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v1

    .line 40
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 41
    .local v4, "size":I
    new-array v0, v4, [B

    .line 42
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 43
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    aput-byte v5, v0, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v1, p0}, Lorg/jcodings/util/ArrayReader;->checkAvailable(Ljava/io/DataInputStream;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v4    # "size":I
    :goto_1
    return-object v0

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v3, p0}, Lorg/jcodings/util/ArrayReader;->decorate(Ljava/io/IOException;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static readIntArray(Ljava/lang/String;)[I
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Lorg/jcodings/util/ArrayReader;->openStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v0

    .line 57
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 58
    .local v4, "size":I
    new-array v2, v4, [I

    .line 59
    .local v2, "ints":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 60
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    aput v5, v2, v1

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v0, p0}, Lorg/jcodings/util/ArrayReader;->checkAvailable(Ljava/io/DataInputStream;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "i":I
    .end local v2    # "ints":[I
    .end local v4    # "size":I
    :goto_1
    return-object v2

    .line 65
    :catch_0
    move-exception v3

    .line 66
    .local v3, "ioe":Ljava/io/IOException;
    invoke-static {v3, p0}, Lorg/jcodings/util/ArrayReader;->decorate(Ljava/io/IOException;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static readNestedIntArray(Ljava/lang/String;)[[I
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p0}, Lorg/jcodings/util/ArrayReader;->openStream(Ljava/lang/String;)Ljava/io/DataInputStream;

    move-result-object v0

    .line 74
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    .line 75
    .local v7, "size":I
    new-array v4, v7, [[I

    .line 76
    .local v4, "ints":[[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 77
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 78
    .local v2, "iSize":I
    new-array v3, v2, [I

    .line 79
    .local v3, "iints":[I
    aput-object v3, v4, v1

    .line 80
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    aput v8, v3, v6

    .line 80
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 76
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "iSize":I
    .end local v3    # "iints":[I
    .end local v6    # "k":I
    :cond_1
    invoke-static {v0, p0}, Lorg/jcodings/util/ArrayReader;->checkAvailable(Ljava/io/DataInputStream;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v1    # "i":I
    .end local v4    # "ints":[[I
    .end local v7    # "size":I
    :goto_2
    return-object v4

    .line 88
    :catch_0
    move-exception v5

    .line 89
    .local v5, "ioe":Ljava/io/IOException;
    invoke-static {v5, p0}, Lorg/jcodings/util/ArrayReader;->decorate(Ljava/io/IOException;Ljava/lang/String;)V

    .line 90
    const/4 v8, 0x0

    check-cast v8, [[I

    move-object v4, v8

    goto :goto_2
.end method
