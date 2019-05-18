.class public Lorg/jcodings/transcode/specific/Iso2022jp_kddi_encoder_Transcoder;
.super Lorg/jcodings/transcode/Transcoder;
.source "Iso2022jp_kddi_encoder_Transcoder.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/transcode/Transcoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/jcodings/transcode/specific/Iso2022jp_kddi_encoder_Transcoder;

    invoke-direct {v0}, Lorg/jcodings/transcode/specific/Iso2022jp_kddi_encoder_Transcoder;-><init>()V

    sput-object v0, Lorg/jcodings/transcode/specific/Iso2022jp_kddi_encoder_Transcoder;->INSTANCE:Lorg/jcodings/transcode/Transcoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 27
    const-string v1, "stateless-ISO-2022-JP-KDDI"

    const-string v2, "ISO-2022-JP-KDDI"

    const/16 v3, 0x6c

    const-string v4, "EmojiIso2022Kddi"

    const/4 v6, 0x3

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    move-object v0, p0

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 28
    return-void
.end method
