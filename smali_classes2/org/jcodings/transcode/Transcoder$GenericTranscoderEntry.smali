.class final Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;
.super Ljava/lang/Object;
.source "Transcoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jcodings/transcode/Transcoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GenericTranscoderEntry"
.end annotation


# instance fields
.field final arrayKey:Ljava/lang/String;

.field final compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

.field final destination:[B

.field final inputUnitLength:I

.field final maxInput:I

.field final maxOutput:I

.field final source:[B

.field final stateSize:I

.field final treeStart:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "destination"    # Ljava/lang/String;
    .param p3, "treeStart"    # I
    .param p4, "arrayKey"    # Ljava/lang/String;
    .param p5, "inputUnitLength"    # I
    .param p6, "maxInput"    # I
    .param p7, "maxOutput"    # I
    .param p8, "compatibility"    # Lorg/jcodings/transcode/AsciiCompatibility;
    .param p9, "stateSize"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->source:[B

    .line 152
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->destination:[B

    .line 153
    iput p3, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->treeStart:I

    .line 154
    iput-object p4, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->arrayKey:Ljava/lang/String;

    .line 155
    iput p5, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->inputUnitLength:I

    .line 156
    iput p6, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->maxInput:I

    .line 157
    iput p7, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->maxOutput:I

    .line 158
    iput-object p8, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    .line 159
    iput p9, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->stateSize:I

    .line 160
    return-void
.end method


# virtual methods
.method createTranscoder()Lorg/jcodings/transcode/Transcoder;
    .locals 10

    .prologue
    .line 163
    new-instance v0, Lorg/jcodings/transcode/GenericTranscoder;

    iget-object v1, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->source:[B

    iget-object v2, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->destination:[B

    iget v3, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->treeStart:I

    iget-object v4, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->arrayKey:Ljava/lang/String;

    iget v5, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->inputUnitLength:I

    iget v6, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->maxInput:I

    iget v7, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->maxOutput:I

    iget-object v8, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->compatibility:Lorg/jcodings/transcode/AsciiCompatibility;

    iget v9, p0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;->stateSize:I

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/GenericTranscoder;-><init>([B[BILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    return-object v0
.end method
