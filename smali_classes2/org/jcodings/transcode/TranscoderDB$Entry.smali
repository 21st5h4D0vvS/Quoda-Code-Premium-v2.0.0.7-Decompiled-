.class public final Lorg/jcodings/transcode/TranscoderDB$Entry;
.super Ljava/lang/Object;
.source "TranscoderDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/transcode/TranscoderDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# instance fields
.field private final destination:[B

.field private final source:[B

.field private transcoder:Lorg/jcodings/transcode/Transcoder;

.field private transcoderClass:Ljava/lang/String;


# direct methods
.method private constructor <init>([B[B)V
    .locals 0
    .param p1, "source"    # [B
    .param p2, "destination"    # [B

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->source:[B

    .line 43
    iput-object p2, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->destination:[B

    .line 44
    return-void
.end method

.method synthetic constructor <init>([B[BLorg/jcodings/transcode/TranscoderDB$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # [B
    .param p3, "x2"    # Lorg/jcodings/transcode/TranscoderDB$1;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/jcodings/transcode/TranscoderDB$Entry;-><init>([B[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/jcodings/transcode/TranscoderDB$Entry;)Lorg/jcodings/transcode/Transcoder;
    .locals 1
    .param p0, "x0"    # Lorg/jcodings/transcode/TranscoderDB$Entry;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoder:Lorg/jcodings/transcode/Transcoder;

    return-object v0
.end method

.method static synthetic access$102(Lorg/jcodings/transcode/TranscoderDB$Entry;Lorg/jcodings/transcode/Transcoder;)Lorg/jcodings/transcode/Transcoder;
    .locals 0
    .param p0, "x0"    # Lorg/jcodings/transcode/TranscoderDB$Entry;
    .param p1, "x1"    # Lorg/jcodings/transcode/Transcoder;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoder:Lorg/jcodings/transcode/Transcoder;

    return-object p1
.end method

.method static synthetic access$202(Lorg/jcodings/transcode/TranscoderDB$Entry;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/jcodings/transcode/TranscoderDB$Entry;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoderClass:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lorg/jcodings/transcode/TranscoderDB$Entry;)[B
    .locals 1
    .param p0, "x0"    # Lorg/jcodings/transcode/TranscoderDB$Entry;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->source:[B

    return-object v0
.end method

.method static synthetic access$400(Lorg/jcodings/transcode/TranscoderDB$Entry;)[B
    .locals 1
    .param p0, "x0"    # Lorg/jcodings/transcode/TranscoderDB$Entry;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->destination:[B

    return-object v0
.end method


# virtual methods
.method public getDestination()[B
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->destination:[B

    return-object v0
.end method

.method public getSource()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->source:[B

    return-object v0
.end method

.method public getTranscoder()Lorg/jcodings/transcode/Transcoder;
    .locals 5

    .prologue
    .line 56
    iget-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoder:Lorg/jcodings/transcode/Transcoder;

    if-nez v3, :cond_0

    .line 57
    iget-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoderClass:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 58
    iget-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoderClass:Ljava/lang/String;

    invoke-static {v3}, Lorg/jcodings/transcode/Transcoder;->load(Ljava/lang/String;)Lorg/jcodings/transcode/Transcoder;

    move-result-object v3

    iput-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoder:Lorg/jcodings/transcode/Transcoder;

    .line 70
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoder:Lorg/jcodings/transcode/Transcoder;

    return-object v3

    .line 60
    :cond_1
    sget-object v2, Lorg/jcodings/transcode/TranscoderList;->GENERIC_LIST:[Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    .line 61
    .local v2, "list":[Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 62
    aget-object v0, v2, v1

    .line 63
    .local v0, "entry":Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;
    iget-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->source:[B

    iget-object v4, v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->source:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->destination:[B

    iget-object v4, v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->destination:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 64
    invoke-virtual {v0}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->createTranscoder()Lorg/jcodings/transcode/Transcoder;

    move-result-object v3

    iput-object v3, p0, Lorg/jcodings/transcode/TranscoderDB$Entry;->transcoder:Lorg/jcodings/transcode/Transcoder;

    goto :goto_0

    .line 61
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
