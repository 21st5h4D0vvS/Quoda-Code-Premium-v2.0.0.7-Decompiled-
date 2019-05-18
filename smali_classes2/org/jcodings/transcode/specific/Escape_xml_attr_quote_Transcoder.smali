.class public Lorg/jcodings/transcode/specific/Escape_xml_attr_quote_Transcoder;
.super Lorg/jcodings/transcode/Transcoder;
.source "Escape_xml_attr_quote_Transcoder.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/transcode/Transcoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/jcodings/transcode/specific/Escape_xml_attr_quote_Transcoder;

    invoke-direct {v0}, Lorg/jcodings/transcode/specific/Escape_xml_attr_quote_Transcoder;-><init>()V

    sput-object v0, Lorg/jcodings/transcode/specific/Escape_xml_attr_quote_Transcoder;->INSTANCE:Lorg/jcodings/transcode/Transcoder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    .line 27
    const-string v1, ""

    const-string v2, "xml_attr_quote"

    const/16 v3, 0x48

    const-string v4, "Escape"

    const/4 v7, 0x7

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    move-object v0, p0

    move v6, v5

    move v9, v5

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    .line 28
    return-void
.end method
