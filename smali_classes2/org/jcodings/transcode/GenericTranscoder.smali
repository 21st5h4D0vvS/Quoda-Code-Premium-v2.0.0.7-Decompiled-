.class final Lorg/jcodings/transcode/GenericTranscoder;
.super Lorg/jcodings/transcode/Transcoder;
.source "GenericTranscoder.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V
    .locals 0
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
    .line 25
    invoke-direct/range {p0 .. p9}, Lorg/jcodings/transcode/Transcoder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 26
    return-void
.end method

.method protected constructor <init>([B[BILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V
    .locals 0
    .param p1, "source"    # [B
    .param p2, "destination"    # [B
    .param p3, "treeStart"    # I
    .param p4, "arrayKey"    # Ljava/lang/String;
    .param p5, "inputUnitLength"    # I
    .param p6, "maxInput"    # I
    .param p7, "maxOutput"    # I
    .param p8, "compatibility"    # Lorg/jcodings/transcode/AsciiCompatibility;
    .param p9, "stateSize"    # I

    .prologue
    .line 30
    invoke-direct/range {p0 .. p9}, Lorg/jcodings/transcode/Transcoder;-><init>([B[BILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 31
    return-void
.end method
