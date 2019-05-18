.class public final Lorg/jcodings/EncodingDB$Entry;
.super Ljava/lang/Object;
.source "EncodingDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/EncodingDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Entry"
.end annotation


# static fields
.field private static count:I


# instance fields
.field private final base:Lorg/jcodings/EncodingDB$Entry;

.field private encoding:Lorg/jcodings/Encoding;

.field private final encodingClass:Ljava/lang/String;

.field private final index:I

.field private final isDummy:Z

.field private final name:[B


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "encodingClass"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v1, v0}, Lorg/jcodings/EncodingDB$Entry;-><init>([BLjava/lang/String;Lorg/jcodings/EncodingDB$Entry;Z)V

    .line 49
    return-void
.end method

.method constructor <init>([B)V
    .locals 3
    .param p1, "name"    # [B

    .prologue
    .line 58
    sget-object v0, Lorg/jcodings/EncodingDB;->ascii:Lorg/jcodings/EncodingDB$Entry;

    iget-object v0, v0, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    sget-object v1, Lorg/jcodings/EncodingDB;->ascii:Lorg/jcodings/EncodingDB$Entry;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jcodings/EncodingDB$Entry;-><init>([BLjava/lang/String;Lorg/jcodings/EncodingDB$Entry;Z)V

    .line 59
    return-void
.end method

.method private constructor <init>([BLjava/lang/String;Lorg/jcodings/EncodingDB$Entry;Z)V
    .locals 2
    .param p1, "name"    # [B
    .param p2, "encodingClass"    # Ljava/lang/String;
    .param p3, "base"    # Lorg/jcodings/EncodingDB$Entry;
    .param p4, "isDummy"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/jcodings/EncodingDB$Entry;->name:[B

    .line 40
    iput-object p2, p0, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lorg/jcodings/EncodingDB$Entry;->base:Lorg/jcodings/EncodingDB$Entry;

    .line 42
    iput-boolean p4, p0, Lorg/jcodings/EncodingDB$Entry;->isDummy:Z

    .line 43
    sget v0, Lorg/jcodings/EncodingDB$Entry;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/jcodings/EncodingDB$Entry;->count:I

    iput v0, p0, Lorg/jcodings/EncodingDB$Entry;->index:I

    .line 44
    return-void
.end method

.method constructor <init>([BLorg/jcodings/EncodingDB$Entry;)V
    .locals 2
    .param p1, "name"    # [B
    .param p2, "base"    # Lorg/jcodings/EncodingDB$Entry;

    .prologue
    .line 53
    iget-object v0, p2, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lorg/jcodings/EncodingDB$Entry;-><init>([BLjava/lang/String;Lorg/jcodings/EncodingDB$Entry;Z)V

    .line 54
    return-void
.end method


# virtual methods
.method public getBase()Lorg/jcodings/EncodingDB$Entry;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->base:Lorg/jcodings/EncodingDB$Entry;

    return-object v0
.end method

.method public getEncoding()Lorg/jcodings/Encoding;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encoding:Lorg/jcodings/Encoding;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->name:[B

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodings/Encoding;->load(Ljava/lang/String;)Lorg/jcodings/Encoding;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encoding:Lorg/jcodings/Encoding;

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encoding:Lorg/jcodings/Encoding;

    return-object v0

    .line 75
    :cond_1
    iget-boolean v0, p0, Lorg/jcodings/EncodingDB$Entry;->isDummy:Z

    if-eqz v0, :cond_2

    .line 76
    sget-object v0, Lorg/jcodings/specific/ASCIIEncoding;->DUMMY:Lorg/jcodings/specific/ASCIIEncoding;

    iget-object v1, p0, Lorg/jcodings/EncodingDB$Entry;->name:[B

    invoke-virtual {v0, v1}, Lorg/jcodings/specific/ASCIIEncoding;->replicate([B)Lorg/jcodings/Encoding;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encoding:Lorg/jcodings/Encoding;

    goto :goto_0

    .line 78
    :cond_2
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    invoke-static {v0}, Lorg/jcodings/Encoding;->load(Ljava/lang/String;)Lorg/jcodings/Encoding;

    move-result-object v0

    iget-object v1, p0, Lorg/jcodings/EncodingDB$Entry;->name:[B

    invoke-virtual {v0, v1}, Lorg/jcodings/Encoding;->replicate([B)Lorg/jcodings/Encoding;

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encoding:Lorg/jcodings/Encoding;

    goto :goto_0
.end method

.method public getEncodingClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/jcodings/EncodingDB$Entry;->index:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jcodings/EncodingDB$Entry;->encodingClass:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isDummy()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/jcodings/EncodingDB$Entry;->isDummy:Z

    return v0
.end method
