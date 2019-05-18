.class final Lorg/jcodings/transcode/TranscoderList;
.super Ljava/lang/Object;
.source "TranscoderList.java"


# static fields
.field static final GENERIC_LIST:[Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

.field static final LIST:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 25
    const/16 v0, 0xbe

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Big5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Big5"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP950"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP950"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Big5-HKSCS"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Big5-HKSCS"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP951"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP951"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Big5-UAO"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Big5-UAO"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GB2312"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GB12345"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "GB2312"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "GB12345"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-DoCoMo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-DoCoMo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-DoCoMo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-DoCoMo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-DoCoMo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-DoCoMo"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stateless-ISO-2022-JP-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateless-ISO-2022-JP-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-2022-JP-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateless-ISO-2022-JP-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Iso2022jp_kddi_decoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stateless-ISO-2022-JP-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-2022-JP-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Iso2022jp_kddi_encoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SJIS-DOCOMO"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-DOCOMO"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-DOCOMO"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SJIS-DOCOMO"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SJIS-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SJIS-KDDI"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SJIS-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "SJIS-SoftBank"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "amp_escape"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "xml_text_escape"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "xml_attr_content_escape"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "xml_attr_quote"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Escape_xml_attr_quote"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GB18030"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_GB18030"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "GB18030"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_GB18030"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "GBK"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "GBK"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-2022-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateless-ISO-2022-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Iso2022jp_decoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stateless-ISO-2022-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-2022-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Iso2022jp_encoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "stateless-ISO-2022-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "EUC-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Stateless_iso2022jp_to_eucjp"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EUC-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "stateless-ISO-2022-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Eucjp_to_stateless_iso2022jp"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP50220"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cp51932"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Cp50220_decoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP50221"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "cp51932"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Cp50221_decoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP51932"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP50221"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Cp50221_encoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP51932"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP50220"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Cp50220_encoder"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EUC-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Shift_JIS"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Eucjp2sjis"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Shift_JIS"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "EUC-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Sjis2eucjp"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EUC-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "eucJP-ms"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP51932"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EUC-JIS-2004"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "EUC-JP"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "eucJP-ms"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP51932"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "EUC-JIS-2004"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Shift_JIS"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Windows-31J"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Shift_JIS"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Windows-31J"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "EUC-KR"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "EUC-KR"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP949"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP949"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "US-ASCII"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "US-ASCII"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ASCII-8BIT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ASCII-8BIT"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-2"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-2"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-3"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-3"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-4"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-4"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-5"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-5"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-6"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-6"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-7"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-7"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-9"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-9"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-10"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-10"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-11"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-11"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-13"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-13"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-14"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-14"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-15"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-15"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-16"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "ISO-8859-16"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-874"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-874"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1250"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1250"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1251"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1251"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1252"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1252"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1253"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1253"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1254"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1254"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1255"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1255"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1256"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1256"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "WINDOWS-1257"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "WINDOWS-1257"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM437"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM437"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM775"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM775"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM737"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM737"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM852"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM852"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM855"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM855"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM857"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM857"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM860"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM860"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM861"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM861"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM862"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM862"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM863"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM863"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM865"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM865"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM866"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM866"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "IBM869"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "IBM869"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACCROATIAN"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACCROATIAN"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACCYRILLIC"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACCYRILLIC"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACGREEK"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACGREEK"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACICELAND"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACICELAND"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACROMAN"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACROMAN"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACROMANIA"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACROMANIA"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACTURKISH"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACTURKISH"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "MACUKRAINE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "MACUKRAINE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "KOI8-U"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "KOI8-U"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "KOI8-R"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "KOI8-R"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "TIS-620"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "TIS-620"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP850"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP850"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP852"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP852"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "CP855"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "CP855"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF8-MAC"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF8-MAC"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF8_MAC"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-16BE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF_16BE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-16BE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_UTF_16BE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-16LE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF_16LE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-16LE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_UTF_16LE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-32BE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF_32BE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-32BE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_UTF_32BE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-32LE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF_32LE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-32LE"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_UTF_32LE"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-16"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF_16"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-32"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "From_UTF_32"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-16"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_UTF_16"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "UTF-32"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "To_UTF_32"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/jcodings/transcode/TranscoderList;->LIST:[[Ljava/lang/String;

    .line 218
    const/16 v0, 0xbe

    new-array v10, v0, [Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const/4 v11, 0x0

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "Big5"

    const-string v2, "UTF-8"

    const v3, 0xdf0c

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x1

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "Big5"

    const v3, 0x1d568

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x2

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP950"

    const-string v2, "UTF-8"

    const v3, 0x233f0

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x3

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP950"

    const v3, 0x2a108

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x4

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "Big5-HKSCS"

    const-string v2, "UTF-8"

    const v3, 0x2fb58

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x5

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "Big5-HKSCS"

    const v3, 0x465e4

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x6

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP951"

    const-string v2, "UTF-8"

    const v3, 0x4ba6c

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/4 v11, 0x7

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP951"

    const v3, 0x4f85c

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "Big5-UAO"

    const-string v2, "UTF-8"

    const v3, 0x55e44

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "Big5-UAO"

    const v3, 0x6aacc

    const-string v4, "Big5"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "GB2312"

    const-string v2, "UTF-8"

    const/16 v3, 0x79a0

    const-string v4, "Chinese"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "GB12345"

    const-string v2, "UTF-8"

    const v3, 0xe9c8

    const-string v4, "Chinese"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xc

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "GB2312"

    const v3, 0x17a34

    const-string v4, "Chinese"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xd

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "GB12345"

    const v3, 0x1ff00

    const-string v4, "Chinese"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xe

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-DoCoMo"

    const-string v2, "UTF8-KDDI"

    const/16 v3, 0x498

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xf

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-DoCoMo"

    const-string v2, "UTF8-SoftBank"

    const/16 v3, 0x864

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x10

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-DoCoMo"

    const-string v2, "UTF-8"

    const/16 v3, 0xa38

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x11

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-KDDI"

    const-string v2, "UTF8-DoCoMo"

    const/16 v3, 0x1634

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x12

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-KDDI"

    const-string v2, "UTF8-SoftBank"

    const/16 v3, 0x270c

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x13

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-KDDI"

    const-string v2, "UTF-8"

    const/16 v3, 0x2d18

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0x8

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x14

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-SoftBank"

    const-string v2, "UTF8-DoCoMo"

    const/16 v3, 0x31f0

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x15

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-SoftBank"

    const-string v2, "UTF8-KDDI"

    const/16 v3, 0x39dc

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x16

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-SoftBank"

    const-string v2, "UTF-8"

    const/16 v3, 0x3c64

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0x8

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x17

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF8-DoCoMo"

    const/16 v3, 0x44d4

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x18

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF8-KDDI"

    const/16 v3, 0x5280

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x19

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF8-SoftBank"

    const/16 v3, 0x5dfc

    const-string v4, "Emoji"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x1a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "stateless-ISO-2022-JP-KDDI"

    const-string v2, "UTF8-KDDI"

    const v3, 0x84cc

    const-string v4, "EmojiIso2022Kddi"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x1b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-KDDI"

    const-string v2, "stateless-ISO-2022-JP-KDDI"

    const v3, 0x12a74

    const-string v4, "EmojiIso2022Kddi"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x1c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-2022-JP-KDDI"

    const-string v2, "stateless-ISO-2022-JP-KDDI"

    const/16 v3, 0x38

    const-string v4, "EmojiIso2022Kddi"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x1d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "stateless-ISO-2022-JP-KDDI"

    const-string v2, "ISO-2022-JP-KDDI"

    const/16 v3, 0x6c

    const-string v4, "EmojiIso2022Kddi"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x1e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "SJIS-DOCOMO"

    const-string v2, "UTF8-DOCOMO"

    const v3, 0x9ac0

    const-string v4, "EmojiSjisDocomo"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x1f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-DOCOMO"

    const-string v2, "SJIS-DOCOMO"

    const v3, 0x14ae0

    const-string v4, "EmojiSjisDocomo"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x20

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "SJIS-KDDI"

    const-string v2, "UTF8-KDDI"

    const v3, 0x9ac0

    const-string v4, "EmojiSjisKddi"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x21

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-KDDI"

    const-string v2, "SJIS-KDDI"

    const v3, 0x15a5c

    const-string v4, "EmojiSjisKddi"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x22

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "SJIS-SoftBank"

    const-string v2, "UTF8-SoftBank"

    const v3, 0x9ac0

    const-string v4, "EmojiSjisSoftbank"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x23

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-SoftBank"

    const-string v2, "SJIS-SoftBank"

    const v3, 0x14ae0

    const-string v4, "EmojiSjisSoftbank"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x24

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, ""

    const-string v2, "amp_escape"

    const/16 v3, 0x8

    const-string v4, "Escape"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x25

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, ""

    const-string v2, "xml_text_escape"

    const/16 v3, 0x20

    const-string v4, "Escape"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x26

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, ""

    const-string v2, "xml_attr_content_escape"

    const/16 v3, 0x3c

    const-string v4, "Escape"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x6

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x27

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, ""

    const-string v2, "xml_attr_quote"

    const/16 v3, 0x48

    const-string v4, "Escape"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x7

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x28

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "GB18030"

    const-string v2, "UTF-8"

    const v3, 0xe144

    const-string v4, "Gb18030"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x29

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "GB18030"

    const v3, 0x1c378

    const-string v4, "Gb18030"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x2a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "GBK"

    const-string v2, "UTF-8"

    const v3, 0x15cc4

    const-string v4, "Gbk"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x2b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "GBK"

    const v3, 0x2ca80

    const-string v4, "Gbk"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x2c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-2022-JP"

    const-string v2, "stateless-ISO-2022-JP"

    const/16 v3, 0x38

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x2d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "stateless-ISO-2022-JP"

    const-string v2, "ISO-2022-JP"

    const/16 v3, 0x6c

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x2e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "stateless-ISO-2022-JP"

    const-string v2, "EUC-JP"

    const/16 v3, 0x80

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x2f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "EUC-JP"

    const-string v2, "stateless-ISO-2022-JP"

    const/16 v3, 0xc0

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x30

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP50220"

    const-string v2, "cp51932"

    const/16 v3, 0xf4

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x31

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP50221"

    const-string v2, "cp51932"

    const/16 v3, 0xf4

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x32

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP51932"

    const-string v2, "CP50221"

    const/16 v3, 0x10c

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x33

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP51932"

    const-string v2, "CP50220"

    const/16 v3, 0x10c

    const-string v4, "Iso2022"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x5

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x3

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x34

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "EUC-JP"

    const-string v2, "Shift_JIS"

    const/16 v3, 0x58

    const-string v4, "Japanese"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x35

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "Shift_JIS"

    const-string v2, "EUC-JP"

    const/16 v3, 0x84

    const-string v4, "Japanese"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x36

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "EUC-JP"

    const-string v2, "UTF-8"

    const v3, 0xd4d8

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x37

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "eucJP-ms"

    const-string v2, "UTF-8"

    const v3, 0xfbe0

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x38

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP51932"

    const-string v2, "UTF-8"

    const v3, 0x1034c

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x39

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "EUC-JIS-2004"

    const-string v2, "UTF-8"

    const v3, 0x151bc

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x3a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "EUC-JP"

    const v3, 0x239c4

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x3b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "eucJP-ms"

    const v3, 0x283e0

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x3c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP51932"

    const v3, 0x30b60

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x3d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "EUC-JIS-2004"

    const v3, 0x3ecf8

    const-string v4, "JapaneseEuc"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x3e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "Shift_JIS"

    const-string v2, "UTF-8"

    const/16 v3, 0x6f20

    const-string v4, "JapaneseSjis"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x3f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "Windows-31J"

    const-string v2, "UTF-8"

    const v3, 0x9ec8

    const-string v4, "JapaneseSjis"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x40

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "Shift_JIS"

    const v3, 0x127b8

    const-string v4, "JapaneseSjis"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x41

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "Windows-31J"

    const v3, 0x19834

    const-string v4, "JapaneseSjis"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x42

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "EUC-KR"

    const v3, 0xac48

    const-string v4, "Korean"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x43

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "EUC-KR"

    const-string v2, "UTF-8"

    const v3, 0x13294

    const-string v4, "Korean"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x44

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP949"

    const v3, 0x1edb8

    const-string v4, "Korean"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x2

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x45

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP949"

    const-string v2, "UTF-8"

    const v3, 0x300fc

    const-string v4, "Korean"

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x46

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "US-ASCII"

    const-string v2, "UTF-8"

    const/16 v3, 0x8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x47

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "US-ASCII"

    const/16 v3, 0x84

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x48

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ASCII-8BIT"

    const-string v2, "UTF-8"

    const/16 v3, 0x94

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x49

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ASCII-8BIT"

    const/16 v3, 0x84

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x4a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-1"

    const-string v2, "UTF-8"

    const/16 v3, 0x2a0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x4b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-1"

    const/16 v3, 0x4ec

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x4c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-2"

    const-string v2, "UTF-8"

    const/16 v3, 0x6f8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x4d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-2"

    const/16 v3, 0x988

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x4e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-3"

    const-string v2, "UTF-8"

    const/16 v3, 0xb7c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x4f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-3"

    const/16 v3, 0xdf0    # 5.0E-42f

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x50

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-4"

    const-string v2, "UTF-8"

    const/16 v3, 0xffc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x51

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-4"

    const/16 v3, 0x128c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x52

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-5"

    const-string v2, "UTF-8"

    const/16 v3, 0x1498

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x53

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-5"

    const/16 v3, 0x1728

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x54

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-6"

    const-string v2, "UTF-8"

    const/16 v3, 0x1884

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x55

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-6"

    const/16 v3, 0x1a38

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x56

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-7"

    const-string v2, "UTF-8"

    const/16 v3, 0x1c3c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x57

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-7"

    const/16 v3, 0x1ee8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x58

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-8"

    const-string v2, "UTF-8"

    const/16 v3, 0x2068

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x59

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-8"

    const/16 v3, 0x2268

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x5a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-9"

    const-string v2, "UTF-8"

    const/16 v3, 0x2474

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x5b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-9"

    const/16 v3, 0x25e0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x5c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-10"

    const-string v2, "UTF-8"

    const/16 v3, 0x27ec

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x5d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-10"

    const/16 v3, 0x2a90

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x5e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-11"

    const-string v2, "UTF-8"

    const/16 v3, 0x2c80

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x5f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-11"

    const/16 v3, 0x2ed8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x60

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-13"

    const-string v2, "UTF-8"

    const/16 v3, 0x30e4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x61

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-13"

    const/16 v3, 0x3388

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x62

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-14"

    const-string v2, "UTF-8"

    const/16 v3, 0x3594

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x63

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-14"

    const/16 v3, 0x3874

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x64

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-15"

    const-string v2, "UTF-8"

    const/16 v3, 0x3a80

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x65

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-15"

    const/16 v3, 0x3c00

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x66

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "ISO-8859-16"

    const-string v2, "UTF-8"

    const/16 v3, 0x3e0c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x67

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "ISO-8859-16"

    const/16 v3, 0x40c4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x68

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-874"

    const-string v2, "UTF-8"

    const/16 v3, 0x4258

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x69

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-874"

    const/16 v3, 0x42fc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x6a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1250"

    const-string v2, "UTF-8"

    const/16 v3, 0x44f8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x6b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1250"

    const/16 v3, 0x4724

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x6c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1251"

    const-string v2, "UTF-8"

    const/16 v3, 0x4930

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x6d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1251"

    const/16 v3, 0x4bac

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x6e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1252"

    const-string v2, "UTF-8"

    const/16 v3, 0x4da8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x6f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1252"

    const/16 v3, 0x4ed4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x70

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1253"

    const-string v2, "UTF-8"

    const/16 v3, 0x50a0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x71

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1253"

    const/16 v3, 0x52a0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x72

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1254"

    const-string v2, "UTF-8"

    const/16 v3, 0x5494

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x73

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1254"

    const/16 v3, 0x5508

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x74

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1255"

    const-string v2, "UTF-8"

    const/16 v3, 0x56bc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x75

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1255"

    const/16 v3, 0x59c0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x76

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1256"

    const-string v2, "UTF-8"

    const/16 v3, 0x5bcc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x77

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1256"

    const/16 v3, 0x5eb4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x78

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "WINDOWS-1257"

    const-string v2, "UTF-8"

    const/16 v3, 0x6094

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x79

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "WINDOWS-1257"

    const/16 v3, 0x6170

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x7a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM437"

    const-string v2, "UTF-8"

    const/16 v3, 0x637c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x7b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM437"

    const/16 v3, 0x66c0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x7c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM775"

    const-string v2, "UTF-8"

    const/16 v3, 0x68cc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x7d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM775"

    const/16 v3, 0x6b50

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x7e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM737"

    const-string v2, "UTF-8"

    const/16 v3, 0x6d5c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x7f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM737"

    const/16 v3, 0x6f5c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x80

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM852"

    const-string v2, "UTF-8"

    const/16 v3, 0x7168

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x81

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM852"

    const/16 v3, 0x73d0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x82

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM855"

    const-string v2, "UTF-8"

    const/16 v3, 0x75dc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x83

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM855"

    const/16 v3, 0x7804

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x84

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM857"

    const-string v2, "UTF-8"

    const/16 v3, 0x7a08

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x85

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM857"

    const/16 v3, 0x7c08

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x86

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM860"

    const-string v2, "UTF-8"

    const/16 v3, 0x7e14

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x87

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM860"

    const/16 v3, 0x7f98

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x88

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM861"

    const-string v2, "UTF-8"

    const v3, 0x81a4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x89

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM861"

    const v3, 0x82dc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM862"

    const-string v2, "UTF-8"

    const v3, 0x84e8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM862"

    const v3, 0x85dc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM863"

    const-string v2, "UTF-8"

    const v3, 0x87e8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM863"

    const v3, 0x8964

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM865"

    const-string v2, "UTF-8"

    const v3, 0x8b70

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x8f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM865"

    const v3, 0x8ca8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x90

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM866"

    const-string v2, "UTF-8"

    const v3, 0x8eb4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x91

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM866"

    const v3, 0x907c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x92

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "IBM869"

    const-string v2, "UTF-8"

    const v3, 0x9268

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x93

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "IBM869"

    const v3, 0x946c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x94

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACCROATIAN"

    const-string v2, "UTF-8"

    const v3, 0x9678

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x95

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACCROATIAN"

    const v3, 0x99b8

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x96

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACCYRILLIC"

    const-string v2, "UTF-8"

    const v3, 0x9bc4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x97

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACCYRILLIC"

    const v3, 0x9e84

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x98

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACGREEK"

    const-string v2, "UTF-8"

    const v3, 0xa090

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x99

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACGREEK"

    const v3, 0xa34c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9a

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACICELAND"

    const-string v2, "UTF-8"

    const v3, 0xa558

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9b

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACICELAND"

    const v3, 0xa824

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9c

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACROMAN"

    const-string v2, "UTF-8"

    const v3, 0xaa30

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9d

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACROMAN"

    const v3, 0xac14

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9e

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACROMANIA"

    const-string v2, "UTF-8"

    const v3, 0xae20

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0x9f

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACROMANIA"

    const v3, 0xaf98

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa0

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACTURKISH"

    const-string v2, "UTF-8"

    const v3, 0xb1a0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa1

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACTURKISH"

    const v3, 0xb304

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa2

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "MACUKRAINE"

    const-string v2, "UTF-8"

    const v3, 0xb510

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa3

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "MACUKRAINE"

    const v3, 0xb5f0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa4

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "KOI8-U"

    const-string v2, "UTF-8"

    const v3, 0xb7fc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa5

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "KOI8-U"

    const v3, 0xbb0c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa6

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "KOI8-R"

    const-string v2, "UTF-8"

    const v3, 0xbd18

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa7

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "KOI8-R"

    const v3, 0xbf2c

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa8

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "TIS-620"

    const-string v2, "UTF-8"

    const v3, 0xc098

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xa9

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "TIS-620"

    const v3, 0xc0c4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xaa

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP850"

    const-string v2, "UTF-8"

    const v3, 0xc2d0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xab

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP850"

    const v3, 0xc4f4

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xac

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP852"

    const-string v2, "UTF-8"

    const/16 v3, 0x7168

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xad

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP852"

    const/16 v3, 0x73d0

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xae

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "CP855"

    const-string v2, "UTF-8"

    const/16 v3, 0x75dc

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xaf

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "CP855"

    const/16 v3, 0x7804

    const-string v4, "SingleByte"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x1

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb0

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF8-MAC"

    const v3, 0xccc4

    const-string v4, "Utf8Mac"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0x9

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->CONVERTER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb1

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF8-MAC"

    const-string v2, "UTF-8"

    const v3, 0xcd40

    const-string v4, "Utf8Mac"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/16 v7, 0xa

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb2

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-16BE"

    const-string v2, "UTF-8"

    const/16 v3, 0xbc

    const-string v4, "Utf1632"

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb3

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF-16BE"

    const/16 v3, 0x1a0

    const-string v4, "Utf1632"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb4

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-16LE"

    const-string v2, "UTF-8"

    const/16 v3, 0x34

    const-string v4, "Utf1632"

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb5

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF-16LE"

    const/16 v3, 0x1a0

    const-string v4, "Utf1632"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb6

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-32BE"

    const-string v2, "UTF-8"

    const/16 v3, 0xfc

    const-string v4, "Utf1632"

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb7

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF-32BE"

    const/16 v3, 0x1a0

    const-string v4, "Utf1632"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb8

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-32LE"

    const-string v2, "UTF-8"

    const/16 v3, 0x80

    const-string v4, "Utf1632"

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xb9

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF-32LE"

    const/16 v3, 0x1a0

    const-string v4, "Utf1632"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xba

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-16"

    const-string v2, "UTF-8"

    const/16 v3, 0x114

    const-string v4, "Utf1632"

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xbb

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-32"

    const-string v2, "UTF-8"

    const/16 v3, 0x12c

    const-string v4, "Utf1632"

    const/4 v5, 0x4

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->DECODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xbc

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF-16"

    const/16 v3, 0x1a0

    const-string v4, "Utf1632"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    const/16 v11, 0xbd

    new-instance v0, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    const-string v1, "UTF-8"

    const-string v2, "UTF-32"

    const/16 v3, 0x1a0

    const-string v4, "Utf1632"

    const/4 v5, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x4

    sget-object v8, Lorg/jcodings/transcode/AsciiCompatibility;->ENCODER:Lorg/jcodings/transcode/AsciiCompatibility;

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILorg/jcodings/transcode/AsciiCompatibility;I)V

    aput-object v0, v10, v11

    sput-object v10, Lorg/jcodings/transcode/TranscoderList;->GENERIC_LIST:[Lorg/jcodings/transcode/Transcoder$GenericTranscoderEntry;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
