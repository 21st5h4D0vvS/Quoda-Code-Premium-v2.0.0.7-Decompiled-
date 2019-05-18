.class public Lorg/jcodings/transcode/TranscoderDB;
.super Ljava/lang/Object;
.source "TranscoderDB.java"

# interfaces
.implements Lorg/jcodings/transcode/EConvFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/transcode/TranscoderDB$SearchPathCallback;,
        Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;,
        Lorg/jcodings/transcode/TranscoderDB$Entry;
    }
.end annotation


# static fields
.field public static final transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Lorg/jcodings/transcode/TranscoderDB$Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 74
    new-instance v3, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-direct {v3}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>()V

    sput-object v3, Lorg/jcodings/transcode/TranscoderDB;->transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 295
    sget-object v2, Lorg/jcodings/transcode/TranscoderList;->LIST:[[Ljava/lang/String;

    .line 297
    .local v2, "transList":[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 298
    aget-object v1, v2, v0

    .line 299
    .local v1, "trans":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v3, v4, v5}, Lorg/jcodings/transcode/TranscoderDB;->declare([B[BLjava/lang/String;)V

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "trans":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asciiCompatibleEncoding([B)[B
    .locals 7
    .param p0, "asciiCompatName"    # [B

    .prologue
    .line 278
    sget-object v4, Lorg/jcodings/transcode/TranscoderDB;->transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v4, p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 279
    .local v1, "dTable":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->size()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 291
    :cond_1
    :goto_0
    return-object v0

    .line 281
    :cond_2
    const/4 v0, 0x0

    .line 282
    .local v0, "asciiCN":[B
    invoke-virtual {v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jcodings/transcode/TranscoderDB$Entry;

    .line 283
    .local v2, "e":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-static {v2}, Lorg/jcodings/transcode/TranscoderDB$Entry;->access$300(Lorg/jcodings/transcode/TranscoderDB$Entry;)[B

    move-result-object v5

    invoke-static {v2}, Lorg/jcodings/transcode/TranscoderDB$Entry;->access$400(Lorg/jcodings/transcode/TranscoderDB$Entry;)[B

    move-result-object v6

    invoke-static {v5, v6}, Lorg/jcodings/transcode/EConv;->decorator([B[B)Z

    move-result v5

    if-nez v5, :cond_3

    .line 284
    invoke-virtual {v2}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v3

    .line 285
    .local v3, "transcoder":Lorg/jcodings/transcode/Transcoder;
    if-eqz v3, :cond_3

    iget-object v5, v3, Lorg/jcodings/transcode/Transcoder;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    invoke-virtual {v5}, Lorg/jcodings/transcode/AsciiCompatibility;->isDecoder()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 286
    iget-object v0, v3, Lorg/jcodings/transcode/Transcoder;->destination:[B

    .line 287
    goto :goto_0
.end method

.method static declare([B[BLjava/lang/String;)V
    .locals 1
    .param p0, "source"    # [B
    .param p1, "destination"    # [B
    .param p2, "transcoderClass"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p0, p1}, Lorg/jcodings/transcode/TranscoderDB;->makeEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v0

    .line 112
    .local v0, "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-static {v0, p2}, Lorg/jcodings/transcode/TranscoderDB$Entry;->access$202(Lorg/jcodings/transcode/TranscoderDB$Entry;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    return-void
.end method

.method private static decoratorNames(I[[B)I
    .locals 4
    .param p0, "ecflags"    # I
    .param p1, "decorators"    # [[B

    .prologue
    const v3, 0x8000

    const/4 v0, -0x1

    .line 234
    and-int/lit16 v2, p0, 0x3f00

    sparse-switch v2, :sswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 244
    :sswitch_0
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_1

    and-int v2, p0, v3

    if-nez v2, :cond_0

    .line 246
    :cond_1
    const/4 v0, 0x0

    .line 248
    .local v0, "num":I
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_6

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "num":I
    .local v1, "num":I
    const-string v2, "xml_text_escape"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v0

    .line 249
    :goto_1
    and-int v2, p0, v3

    if-eqz v2, :cond_2

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "num":I
    .restart local v0    # "num":I
    const-string v2, "xml_attr_content_escape"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v1

    move v1, v0

    .line 250
    .end local v0    # "num":I
    .restart local v1    # "num":I
    :cond_2
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-eqz v2, :cond_3

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "num":I
    .restart local v0    # "num":I
    const-string v2, "xml_attr_quote"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v1

    move v1, v0

    .line 252
    .end local v0    # "num":I
    .restart local v1    # "num":I
    :cond_3
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_4

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "num":I
    .restart local v0    # "num":I
    const-string v2, "crlf_newline"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v1

    move v1, v0

    .line 253
    .end local v0    # "num":I
    .restart local v1    # "num":I
    :cond_4
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_5

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "num":I
    .restart local v0    # "num":I
    const-string v2, "cr_newline"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v1

    .line 254
    :goto_2
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_0

    const-string v2, "universal_newline"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    aput-object v2, p1, v0

    goto :goto_0

    .end local v0    # "num":I
    .restart local v1    # "num":I
    :cond_5
    move v0, v1

    .end local v1    # "num":I
    .restart local v0    # "num":I
    goto :goto_2

    :cond_6
    move v1, v0

    .end local v0    # "num":I
    .restart local v1    # "num":I
    goto :goto_1

    .line 234
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_0
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method static getEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "destination"    # [B

    .prologue
    .line 96
    sget-object v1, Lorg/jcodings/transcode/TranscoderDB;->transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v1, p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 97
    .local v0, "sHash":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodings/transcode/TranscoderDB$Entry;

    goto :goto_0
.end method

.method static makeEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;
    .locals 7
    .param p0, "source"    # [B
    .param p1, "destination"    # [B

    .prologue
    .line 78
    sget-object v2, Lorg/jcodings/transcode/TranscoderDB;->transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v2, p0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 79
    .local v1, "sHash":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    if-nez v1, :cond_0

    .line 80
    new-instance v1, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .end local v1    # "sHash":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    invoke-direct {v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>()V

    .line 81
    .restart local v1    # "sHash":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    sget-object v2, Lorg/jcodings/transcode/TranscoderDB;->transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v2, p0, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 83
    :cond_0
    invoke-virtual {v1, p1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jcodings/transcode/TranscoderDB$Entry;

    .line 84
    .local v0, "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    if-nez v0, :cond_1

    .line 85
    new-instance v0, Lorg/jcodings/transcode/TranscoderDB$Entry;

    .end local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/jcodings/transcode/TranscoderDB$Entry;-><init>([B[BLorg/jcodings/transcode/TranscoderDB$1;)V

    .line 86
    .restart local v0    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-virtual {v1, p1, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 91
    return-object v0

    .line 88
    :cond_1
    new-instance v2, Lorg/jcodings/exception/TranscoderException;

    const-string v3, "transcoder from <%n> has been already registered"

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/jcodings/exception/TranscoderException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method

.method public static open([B[BI)Lorg/jcodings/transcode/EConv;
    .locals 6
    .param p0, "source"    # [B
    .param p1, "destination"    # [B
    .param p2, "ecflags"    # I

    .prologue
    const/4 v4, 0x0

    .line 261
    const/16 v5, 0x20

    new-array v0, v5, [[B

    .line 262
    .local v0, "decorators":[[B
    invoke-static {p2, v0}, Lorg/jcodings/transcode/TranscoderDB;->decoratorNames(I[[B)I

    move-result v3

    .line 263
    .local v3, "num":I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    move-object v1, v4

    .line 273
    :goto_0
    return-object v1

    .line 264
    :cond_0
    and-int/lit16 v5, p2, 0xff

    invoke-static {p0, p1, v5}, Lorg/jcodings/transcode/TranscoderDB;->open0([B[BI)Lorg/jcodings/transcode/EConv;

    move-result-object v1

    .line 266
    .local v1, "econv":Lorg/jcodings/transcode/EConv;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 267
    aget-object v5, v0, v2

    invoke-virtual {v1, v5}, Lorg/jcodings/transcode/EConv;->decorateAtLast([B)Z

    move-result v5

    if-nez v5, :cond_1

    .line 268
    invoke-virtual {v1}, Lorg/jcodings/transcode/EConv;->close()V

    move-object v1, v4

    .line 269
    goto :goto_0

    .line 266
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 272
    :cond_2
    iget v4, v1, Lorg/jcodings/transcode/EConv;->flags:I

    and-int/lit16 v5, p2, -0x100

    or-int/2addr v4, v5

    iput v4, v1, Lorg/jcodings/transcode/EConv;->flags:I

    goto :goto_0
.end method

.method private static open0([B[BI)Lorg/jcodings/transcode/EConv;
    .locals 5
    .param p0, "source"    # [B
    .param p1, "destination"    # [B
    .param p2, "ecflags"    # I

    .prologue
    .line 209
    array-length v4, p0

    if-nez v4, :cond_0

    array-length v4, p1

    if-nez v4, :cond_0

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "numTrans":I
    const/4 v1, 0x0

    .line 225
    .local v1, "entries":[Lorg/jcodings/transcode/TranscoderDB$Entry;
    :goto_0
    invoke-static {v3, v1}, Lorg/jcodings/transcode/TranscoderDB;->openByTrascoderEntries(I[Lorg/jcodings/transcode/TranscoderDB$Entry;)Lorg/jcodings/transcode/EConv;

    move-result-object v0

    .line 226
    .local v0, "econv":Lorg/jcodings/transcode/EConv;
    iput p2, v0, Lorg/jcodings/transcode/EConv;->flags:I

    .line 227
    iput-object p0, v0, Lorg/jcodings/transcode/EConv;->source:[B

    .line 228
    iput-object p1, v0, Lorg/jcodings/transcode/EConv;->destination:[B

    .line 229
    return-object v0

    .line 213
    .end local v0    # "econv":Lorg/jcodings/transcode/EConv;
    .end local v1    # "entries":[Lorg/jcodings/transcode/TranscoderDB$Entry;
    .end local v3    # "numTrans":I
    :cond_0
    new-instance v2, Lorg/jcodings/ObjPtr;

    invoke-direct {v2}, Lorg/jcodings/ObjPtr;-><init>()V

    .line 214
    .local v2, "lentries":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<[Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    new-instance v4, Lorg/jcodings/transcode/TranscoderDB$1;

    invoke-direct {v4, v2}, Lorg/jcodings/transcode/TranscoderDB$1;-><init>(Lorg/jcodings/ObjPtr;)V

    invoke-static {p0, p1, v4}, Lorg/jcodings/transcode/TranscoderDB;->searchPath([B[BLorg/jcodings/transcode/TranscoderDB$SearchPathCallback;)I

    move-result v3

    .line 223
    .restart local v3    # "numTrans":I
    iget-object v1, v2, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    check-cast v1, [Lorg/jcodings/transcode/TranscoderDB$Entry;

    .restart local v1    # "entries":[Lorg/jcodings/transcode/TranscoderDB$Entry;
    goto :goto_0
.end method

.method private static openByTrascoderEntries(I[Lorg/jcodings/transcode/TranscoderDB$Entry;)Lorg/jcodings/transcode/EConv;
    .locals 4
    .param p0, "n"    # I
    .param p1, "entries"    # [Lorg/jcodings/transcode/TranscoderDB$Entry;

    .prologue
    .line 193
    new-instance v0, Lorg/jcodings/transcode/EConv;

    invoke-direct {v0, p0}, Lorg/jcodings/transcode/EConv;-><init>(I)V

    .line 195
    .local v0, "econv":Lorg/jcodings/transcode/EConv;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 196
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lorg/jcodings/transcode/TranscoderDB$Entry;->getTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v2

    .line 197
    .local v2, "transcoder":Lorg/jcodings/transcode/Transcoder;
    iget v3, v0, Lorg/jcodings/transcode/EConv;->numTranscoders:I

    invoke-virtual {v0, v2, v3}, Lorg/jcodings/transcode/EConv;->addTranscoderAt(Lorg/jcodings/transcode/Transcoder;I)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "transcoder":Lorg/jcodings/transcode/Transcoder;
    :cond_0
    return-object v0
.end method

.method static register(Lorg/jcodings/transcode/Transcoder;)V
    .locals 7
    .param p0, "transcoder"    # Lorg/jcodings/transcode/Transcoder;

    .prologue
    .line 102
    iget-object v1, p0, Lorg/jcodings/transcode/Transcoder;->source:[B

    iget-object v2, p0, Lorg/jcodings/transcode/Transcoder;->destination:[B

    invoke-static {v1, v2}, Lorg/jcodings/transcode/TranscoderDB;->makeEntry([B[B)Lorg/jcodings/transcode/TranscoderDB$Entry;

    move-result-object v0

    .line 103
    .local v0, "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    invoke-static {v0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->access$100(Lorg/jcodings/transcode/TranscoderDB$Entry;)Lorg/jcodings/transcode/Transcoder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Lorg/jcodings/exception/TranscoderException;

    const-string v2, "transcoder from <%n> has been already registered"

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/jcodings/transcode/Transcoder;->source:[B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lorg/jcodings/transcode/Transcoder;->destination:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lorg/jcodings/exception/TranscoderException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_0
    invoke-static {v0, p0}, Lorg/jcodings/transcode/TranscoderDB$Entry;->access$102(Lorg/jcodings/transcode/TranscoderDB$Entry;Lorg/jcodings/transcode/Transcoder;)Lorg/jcodings/transcode/Transcoder;

    .line 107
    return-void
.end method

.method static searchPath([B[BLorg/jcodings/transcode/TranscoderDB$SearchPathCallback;)I
    .locals 20
    .param p0, "source"    # [B
    .param p1, "destination"    # [B
    .param p2, "callback"    # Lorg/jcodings/transcode/TranscoderDB$SearchPathCallback;

    .prologue
    .line 126
    invoke-static/range {p0 .. p1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->caseInsensitiveEquals([B[B)Z

    move-result v17

    if-eqz v17, :cond_1

    const/4 v12, -0x1

    .line 188
    :cond_0
    :goto_0
    return v12

    .line 128
    :cond_1
    new-instance v4, Lorg/jcodings/ObjPtr;

    invoke-direct {v4}, Lorg/jcodings/ObjPtr;-><init>()V

    .line 129
    .local v4, "bfsQueue":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;>;"
    new-instance v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;

    invoke-direct {v14}, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;-><init>()V

    .line 130
    .local v14, "queue":Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;
    move-object/from16 v0, p0

    iput-object v0, v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->encoding:[B

    .line 132
    iget-object v3, v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->next:Lorg/jcodings/ObjPtr;

    .line 133
    .local v3, "bfsLastQueue":Lorg/jcodings/ObjPtr;, "Lorg/jcodings/ObjPtr<Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;>;"
    iput-object v14, v4, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 135
    new-instance v5, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-direct {v5}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>()V

    .line 136
    .local v5, "bfsVisited":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<[B>;"
    sget-object v17, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_2
    iget-object v0, v4, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 139
    iget-object v14, v4, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .end local v14    # "queue":Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;
    check-cast v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;

    .line 140
    .restart local v14    # "queue":Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;
    iget-object v0, v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->next:Lorg/jcodings/ObjPtr;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v4, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 141
    iget-object v0, v4, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    move-object v3, v4

    .line 143
    :cond_3
    sget-object v17, Lorg/jcodings/transcode/TranscoderDB;->transcoders:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    iget-object v0, v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->encoding:[B

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 144
    .local v15, "table2":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    if-eqz v15, :cond_2

    .line 146
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jcodings/transcode/TranscoderDB$Entry;

    .line 147
    .local v10, "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    if-eqz v10, :cond_5

    .line 148
    iget-object v0, v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->encoding:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->put([BLjava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-object/from16 v9, p1

    .line 150
    .local v9, "enc":[B
    const/4 v12, 0x0

    .line 152
    .local v12, "pathLength":I
    :goto_1
    invoke-virtual {v5, v9}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [B

    .line 153
    .local v16, "tmp":[B
    sget-object v17, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 158
    move v6, v12

    .line 159
    .local v6, "depth":I
    move-object/from16 v9, p1

    .line 161
    :goto_2
    invoke-virtual {v5, v9}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "tmp":[B
    check-cast v16, [B

    .line 162
    .restart local v16    # "tmp":[B
    sget-object v17, Lorg/jcodings/transcode/EConv;->NULL_STRING:[B

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 163
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1, v9, v6}, Lorg/jcodings/transcode/TranscoderDB$SearchPathCallback;->call([B[BI)V

    .line 164
    move-object/from16 v9, v16

    .line 165
    goto :goto_2

    .line 154
    .end local v6    # "depth":I
    :cond_4
    add-int/lit8 v12, v12, 0x1

    .line 155
    move-object/from16 v9, v16

    .line 157
    goto :goto_1

    .line 168
    .end local v9    # "enc":[B
    .end local v12    # "pathLength":I
    .end local v16    # "tmp":[B
    :cond_5
    iget-object v2, v14, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->encoding:[B

    .line 170
    .local v2, "bfsBaseEnc":[B
    invoke-virtual {v15}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->entryIterator()Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntryIterator;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/jcodings/util/Hash$HashEntry;

    .local v11, "o":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    move-object v8, v11

    .line 171
    check-cast v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;

    .line 172
    .local v8, "e":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    iget-object v7, v8, Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;->bytes:[B

    .line 173
    .local v7, "dname":[B
    invoke-virtual {v5, v7}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v18

    if-nez v18, :cond_6

    .line 174
    new-instance v13, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;

    invoke-direct {v13}, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;-><init>()V

    .line 175
    .local v13, "q":Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;
    iput-object v7, v13, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->encoding:[B

    .line 176
    iget-object v0, v13, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->next:Lorg/jcodings/ObjPtr;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 177
    iput-object v13, v3, Lorg/jcodings/ObjPtr;->p:Ljava/lang/Object;

    .line 178
    iget-object v3, v13, Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;->next:Lorg/jcodings/ObjPtr;

    .line 180
    invoke-virtual {v5, v7, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    goto :goto_3

    .line 188
    .end local v2    # "bfsBaseEnc":[B
    .end local v7    # "dname":[B
    .end local v8    # "e":Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry;, "Lorg/jcodings/util/CaseInsensitiveBytesHash$CaseInsensitiveBytesHashEntry<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    .end local v10    # "entry":Lorg/jcodings/transcode/TranscoderDB$Entry;
    .end local v11    # "o":Lorg/jcodings/util/Hash$HashEntry;, "Lorg/jcodings/util/Hash$HashEntry<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    .end local v13    # "q":Lorg/jcodings/transcode/TranscoderDB$SearchPathQueue;
    .end local v15    # "table2":Lorg/jcodings/util/CaseInsensitiveBytesHash;, "Lorg/jcodings/util/CaseInsensitiveBytesHash<Lorg/jcodings/transcode/TranscoderDB$Entry;>;"
    :cond_7
    const/4 v12, -0x1

    goto/16 :goto_0
.end method
