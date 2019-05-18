.class public Lorg/jcodings/transcode/specific/Stateless_iso2022jp_to_eucjp_Transcoder;
.super Lorg/jcodings/transcode/Transcoder;
.source "Stateless_iso2022jp_to_eucjp_Transcoder.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/transcode/Transcoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/jcodings/transcode/specific/Stateless_iso2022jp_to_eucjp_Transcoder;

    invoke-direct {v0}, Lorg/jcodings/transcode/specific/Stateless_iso2022jp_to_eucjp_Transcoder;-><init>()V

    sput-object v0, Lorg/jcodings/transcode/specific/Stateless_iso2022jp_to_eucjp_Transcoder;->INSTANCE:Lorg/jcodings/transcode/Transcoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    .line 27
    const-string v1, "stateless-ISO-2022-JP"

    const-string v2, "EUC-JP"

    const/16 v3, 0x80

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 28
    return-void
.end method
