.class public Lcom/dd/plist/BinaryPropertyListWriter;
.super Ljava/lang/Object;
.source "BinaryPropertyListWriter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final VERSION_00:I = 0x0

.field public static final VERSION_10:I = 0xa

.field public static final VERSION_15:I = 0xf

.field public static final VERSION_20:I = 0x14


# instance fields
.field private count:J

.field private idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/dd/plist/NSObject;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private idSizeInBytes:I

.field private out:Ljava/io/OutputStream;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/dd/plist/BinaryPropertyListWriter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outStr"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    .line 153
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    .line 154
    return-void
.end method

.method constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "outStr"    # Ljava/io/OutputStream;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    .line 157
    iput p2, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    .line 158
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    .line 159
    return-void
.end method

.method private static computeIdSizeInBytes(I)I
    .locals 1
    .param p0, "numberOfIds"    # I

    .prologue
    .line 242
    const/16 v0, 0x100

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    .line 244
    :goto_0
    return v0

    .line 243
    :cond_0
    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 244
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private computeOffsetSizeInBytes(J)I
    .locals 3
    .param p1, "maxOffset"    # J

    .prologue
    .line 248
    const-wide/16 v0, 0x100

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    .line 249
    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 250
    :cond_1
    const-wide v0, 0x100000000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 251
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I
    .locals 10
    .param p0, "root"    # Lcom/dd/plist/NSObject;

    .prologue
    .line 58
    const/4 v5, 0x0

    .line 59
    .local v5, "minVersion":I
    if-nez p0, :cond_0

    .line 60
    const/16 v5, 0xa

    .line 62
    :cond_0
    instance-of v9, p0, Lcom/dd/plist/NSDictionary;

    if-eqz v9, :cond_2

    move-object v2, p0

    .line 63
    check-cast v2, Lcom/dd/plist/NSDictionary;

    .line 64
    .local v2, "dict":Lcom/dd/plist/NSDictionary;
    invoke-virtual {v2}, Lcom/dd/plist/NSDictionary;->getHashMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dd/plist/NSObject;

    .line 65
    .local v6, "o":Lcom/dd/plist/NSObject;
    invoke-static {v6}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v8

    .line 66
    .local v8, "v":I
    if-le v8, v5, :cond_1

    .line 67
    move v5, v8

    goto :goto_0

    .line 69
    .end local v2    # "dict":Lcom/dd/plist/NSDictionary;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "o":Lcom/dd/plist/NSObject;
    .end local v8    # "v":I
    :cond_2
    instance-of v9, p0, Lcom/dd/plist/NSArray;

    if-eqz v9, :cond_4

    move-object v1, p0

    .line 70
    check-cast v1, Lcom/dd/plist/NSArray;

    .line 71
    .local v1, "array":Lcom/dd/plist/NSArray;
    invoke-virtual {v1}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v0

    .local v0, "arr$":[Lcom/dd/plist/NSObject;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 72
    .restart local v6    # "o":Lcom/dd/plist/NSObject;
    invoke-static {v6}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v8

    .line 73
    .restart local v8    # "v":I
    if-le v8, v5, :cond_3

    .line 74
    move v5, v8

    .line 71
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 76
    .end local v0    # "arr$":[Lcom/dd/plist/NSObject;
    .end local v1    # "array":Lcom/dd/plist/NSArray;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "o":Lcom/dd/plist/NSObject;
    .end local v8    # "v":I
    :cond_4
    instance-of v9, p0, Lcom/dd/plist/NSSet;

    if-eqz v9, :cond_6

    .line 78
    const/16 v5, 0xa

    move-object v7, p0

    .line 79
    check-cast v7, Lcom/dd/plist/NSSet;

    .line 80
    .local v7, "set":Lcom/dd/plist/NSSet;
    invoke-virtual {v7}, Lcom/dd/plist/NSSet;->allObjects()[Lcom/dd/plist/NSObject;

    move-result-object v0

    .restart local v0    # "arr$":[Lcom/dd/plist/NSObject;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 81
    .restart local v6    # "o":Lcom/dd/plist/NSObject;
    invoke-static {v6}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v8

    .line 82
    .restart local v8    # "v":I
    if-le v8, v5, :cond_5

    .line 83
    move v5, v8

    .line 80
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 86
    .end local v0    # "arr$":[Lcom/dd/plist/NSObject;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "o":Lcom/dd/plist/NSObject;
    .end local v7    # "set":Lcom/dd/plist/NSSet;
    .end local v8    # "v":I
    :cond_6
    return v5
.end method

.method public static write(Ljava/io/File;Lcom/dd/plist/NSObject;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "root"    # Lcom/dd/plist/NSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 98
    .local v0, "out":Ljava/io/OutputStream;
    invoke-static {v0, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    .line 99
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 100
    return-void
.end method

.method public static write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V
    .locals 6
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "root"    # Lcom/dd/plist/NSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListWriter;->getMinimumRequiredVersion(Lcom/dd/plist/NSObject;)I

    move-result v0

    .line 111
    .local v0, "minVersion":I
    if-lez v0, :cond_3

    .line 112
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    const-string v1, "v1.0"

    .line 113
    .local v1, "versionString":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The given property list structure cannot be saved. The required version of the binary format ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not yet supported."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 112
    .end local v1    # "versionString":Ljava/lang/String;
    :cond_0
    const/16 v3, 0xf

    if-ne v0, v3, :cond_1

    const-string v1, "v1.5"

    goto :goto_0

    :cond_1
    const/16 v3, 0x14

    if-ne v0, v3, :cond_2

    const-string v1, "v2.0"

    goto :goto_0

    :cond_2
    const-string v1, "v0.0"

    goto :goto_0

    .line 116
    :cond_3
    new-instance v2, Lcom/dd/plist/BinaryPropertyListWriter;

    invoke-direct {v2, p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;-><init>(Ljava/io/OutputStream;I)V

    .line 117
    .local v2, "w":Lcom/dd/plist/BinaryPropertyListWriter;
    invoke-virtual {v2, p1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Lcom/dd/plist/NSObject;)V

    .line 118
    return-void
.end method

.method public static writeToArray(Lcom/dd/plist/NSObject;)[B
    .locals 2
    .param p0, "root"    # Lcom/dd/plist/NSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 130
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-static {v0, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(Ljava/io/OutputStream;Lcom/dd/plist/NSObject;)V

    .line 131
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method assignID(Lcom/dd/plist/NSObject;)V
    .locals 2
    .param p1, "obj"    # Lcom/dd/plist/NSObject;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_0
    return-void
.end method

.method getID(Lcom/dd/plist/NSObject;)I
    .locals 1
    .param p1, "obj"    # Lcom/dd/plist/NSObject;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 275
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 276
    return-void
.end method

.method write(Lcom/dd/plist/NSObject;)V
    .locals 14
    .param p1, "root"    # Lcom/dd/plist/NSObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v12, 0x6

    new-array v12, v12, [B

    fill-array-data v12, :array_0

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 166
    iget v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    sparse-switch v12, :sswitch_data_0

    .line 186
    :goto_0
    invoke-virtual {p1, p0}, Lcom/dd/plist/NSObject;->assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V

    .line 188
    iget-object v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Lcom/dd/plist/BinaryPropertyListWriter;->computeIdSizeInBytes(I)I

    move-result v12

    iput v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    .line 191
    iget-object v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    new-array v9, v12, [J

    .line 194
    .local v9, "offsets":[J
    iget-object v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/dd/plist/NSObject;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dd/plist/NSObject;

    .line 196
    .local v5, "obj":Lcom/dd/plist/NSObject;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 197
    .local v3, "id":I
    iget-wide v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    aput-wide v12, v9, v3

    .line 198
    if-nez v5, :cond_0

    .line 199
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    goto :goto_1

    .line 168
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/dd/plist/NSObject;Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v5    # "obj":Lcom/dd/plist/NSObject;
    .end local v9    # "offsets":[J
    :sswitch_0
    const/4 v12, 0x2

    new-array v12, v12, [B

    fill-array-data v12, :array_1

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 172
    :sswitch_1
    const/4 v12, 0x2

    new-array v12, v12, [B

    fill-array-data v12, :array_2

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 176
    :sswitch_2
    const/4 v12, 0x2

    new-array v12, v12, [B

    fill-array-data v12, :array_3

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 180
    :sswitch_3
    const/4 v12, 0x2

    new-array v12, v12, [B

    fill-array-data v12, :array_4

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    goto :goto_0

    .line 201
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/dd/plist/NSObject;Ljava/lang/Integer;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "id":I
    .restart local v5    # "obj":Lcom/dd/plist/NSObject;
    .restart local v9    # "offsets":[J
    :cond_0
    invoke-virtual {v5, p0}, Lcom/dd/plist/NSObject;->toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V

    goto :goto_1

    .line 206
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/dd/plist/NSObject;Ljava/lang/Integer;>;"
    .end local v3    # "id":I
    .end local v5    # "obj":Lcom/dd/plist/NSObject;
    :cond_1
    iget-wide v10, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 207
    .local v10, "offsetTableOffset":J
    iget-wide v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    invoke-direct {p0, v12, v13}, Lcom/dd/plist/BinaryPropertyListWriter;->computeOffsetSizeInBytes(J)I

    move-result v8

    .line 208
    .local v8, "offsetSizeInBytes":I
    move-object v0, v9

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_2

    aget-wide v6, v0, v2

    .line 209
    .local v6, "offset":J
    invoke-virtual {p0, v6, v7, v8}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 208
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .end local v6    # "offset":J
    :cond_2
    iget v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->version:I

    const/16 v13, 0xf

    if-eq v12, v13, :cond_3

    .line 215
    const/4 v12, 0x6

    new-array v12, v12, [B

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write([B)V

    .line 217
    invoke-virtual {p0, v8}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 219
    iget v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    invoke-virtual {p0, v12}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 221
    iget-object v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p0, v12, v13}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 223
    iget-object v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idMap:Ljava/util/Map;

    invoke-interface {v12, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {p0, v12, v13}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 225
    invoke-virtual {p0, v10, v11}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 228
    :cond_3
    iget-object v12, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 229
    return-void

    .line 163
    :array_0
    .array-data 1
        0x62t
        0x70t
        0x6ct
        0x69t
        0x73t
        0x74t
    .end array-data

    .line 166
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0xf -> :sswitch_2
        0x14 -> :sswitch_3
    .end sparse-switch

    .line 168
    :array_1
    .array-data 1
        0x30t
        0x30t
    .end array-data

    .line 172
    nop

    :array_2
    .array-data 1
        0x31t
        0x30t
    .end array-data

    .line 176
    nop

    :array_3
    .array-data 1
        0x31t
        0x35t
    .end array-data

    .line 180
    nop

    :array_4
    .array-data 1
        0x32t
        0x30t
    .end array-data
.end method

.method write([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 280
    iget-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dd/plist/BinaryPropertyListWriter;->count:J

    .line 281
    return-void
.end method

.method writeBytes(JI)V
    .locals 5
    .param p1, "value"    # J
    .param p3, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 286
    mul-int/lit8 v1, v0, 0x8

    shr-long v2, p1, v1

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 285
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 288
    :cond_0
    return-void
.end method

.method writeDouble(D)V
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeLong(J)V

    .line 300
    return-void
.end method

.method writeID(I)V
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    int-to-long v0, p1

    iget v2, p0, Lcom/dd/plist/BinaryPropertyListWriter;->idSizeInBytes:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 292
    return-void
.end method

.method writeIntHeader(II)V
    .locals 3
    .param p1, "kind"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    sget-boolean v0, Lcom/dd/plist/BinaryPropertyListWriter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 256
    :cond_0
    const/16 v0, 0xf

    if-ge p2, v0, :cond_1

    .line 257
    shl-int/lit8 v0, p1, 0x4

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 271
    :goto_0
    return-void

    .line 258
    :cond_1
    const/16 v0, 0x100

    if-ge p2, v0, :cond_2

    .line 259
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 260
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 261
    int-to-long v0, p2

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 262
    :cond_2
    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_3

    .line 263
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 264
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 265
    int-to-long v0, p2

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 267
    :cond_3
    shl-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 268
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 269
    int-to-long v0, p2

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0
.end method

.method writeLong(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    .line 296
    return-void
.end method
