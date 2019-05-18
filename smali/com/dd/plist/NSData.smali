.class public Lcom/dd/plist/NSData;
.super Lcom/dd/plist/NSObject;
.source "NSData.java"


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v1, v2

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    .line 72
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v0, "raf":Ljava/io/RandomAccessFile;
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 74
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "base64"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 59
    const-string v1, "\\s+"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Lcom/dd/plist/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    .line 61
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/dd/plist/NSData;->bytes:[B

    .line 48
    return-void
.end method


# virtual methods
.method public bytes()[B
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dd/plist/NSData;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v0, p1, Lcom/dd/plist/NSData;->bytes:[B

    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBase64EncodedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-static {v0}, Lcom/dd/plist/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v2, v2

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 103
    return-void
.end method

.method public getBytes(Ljava/nio/ByteBuffer;II)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "rangeStart"    # I
    .param p3, "rangeStop"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v1, v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v0, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 114
    return-void
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 132
    const/4 v0, 0x5

    .line 133
    .local v0, "hash":I
    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/lit16 v0, v1, 0x14f

    .line 134
    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v0, v0

    return v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 5
    .param p1, "ascii"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 161
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    sget-object v3, Lcom/dd/plist/NSData;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 163
    .local v2, "indexOfLastNewLine":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 164
    iget-object v3, p0, Lcom/dd/plist/NSData;->bytes:[B

    aget-byte v3, v3, v1

    and-int/lit16 v0, v3, 0xff

    .line 165
    .local v0, "b":I
    const/16 v3, 0x10

    if-ge v0, v3, :cond_0

    .line 166
    const-string v3, "0"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v2

    const/16 v4, 0x50

    if-le v3, v4, :cond_2

    .line 169
    sget-object v3, Lcom/dd/plist/NSData;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 163
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_2
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    .line 172
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 175
    .end local v0    # "b":I
    :cond_3
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    return-void
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 0
    .param p1, "ascii"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->toASCII(Ljava/lang/StringBuilder;I)V

    .line 181
    return-void
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 2
    .param p1, "out"    # Lcom/dd/plist/BinaryPropertyListWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/dd/plist/NSData;->bytes:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeIntHeader(II)V

    .line 155
    iget-object v0, p0, Lcom/dd/plist/NSData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 156
    return-void
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 6
    .param p1, "xml"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 139
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 140
    const-string v5, "<data>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    sget-object v5, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lcom/dd/plist/NSData;->getBase64EncodedData()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "base64":Ljava/lang/String;
    const-string v5, "\n"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 144
    .local v4, "line":Ljava/lang/String;
    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, p1, v5}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 145
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    sget-object v5, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v4    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSData;->indent(Ljava/lang/StringBuilder;I)V

    .line 149
    const-string v5, "</data>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    return-void
.end method
