.class public Lorg/jcodings/transcode/specific/From_UTF_32BE_Transcoder;
.super Lorg/jcodings/transcode/Transcoder;
.source "From_UTF_32BE_Transcoder.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/transcode/Transcoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/jcodings/transcode/specific/From_UTF_32BE_Transcoder;

    invoke-direct {v0}, Lorg/jcodings/transcode/specific/From_UTF_32BE_Transcoder;-><init>()V

    sput-object v0, Lorg/jcodings/transcode/specific/From_UTF_32BE_Transcoder;->INSTANCE:Lorg/jcodings/transcode/Transcoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    const/4 v5, 0x4

    .line 27
    const-string v1, "UTF-32BE"

    const-string v2, "UTF-8"

    const/16 v3, 0xfc

    const-string v4, "Utf1632"

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    move-object v0, p0

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 28
    return-void
.end method
