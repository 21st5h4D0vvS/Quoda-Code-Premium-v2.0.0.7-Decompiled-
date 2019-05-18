.class public Lorg/jcodings/transcode/specific/From_GB18030_Transcoder;
.super Lorg/jcodings/transcode/Transcoder;
.source "From_GB18030_Transcoder.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/transcode/Transcoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/jcodings/transcode/specific/From_GB18030_Transcoder;

    invoke-direct {v0}, Lorg/jcodings/transcode/specific/From_GB18030_Transcoder;-><init>()V

    sput-object v0, Lorg/jcodings/transcode/specific/From_GB18030_Transcoder;->INSTANCE:Lorg/jcodings/transcode/Transcoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    const/4 v6, 0x4

    .line 27
    const-string v1, "GB18030"

    const-string v2, "UTF-8"

    const v3, 0xe144

    const-string v4, "Gb18030"

    const/4 v5, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    move-object v0, p0

    move v7, v6

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 28
    return-void
.end method
