.class public Lorg/jcodings/EncodingDB;
.super Ljava/lang/Object;
.source "EncodingDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodings/EncodingDB$Entry;
    }
.end annotation


# static fields
.field static final aliases:Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Lorg/jcodings/EncodingDB$Entry;",
            ">;"
        }
    .end annotation
.end field

.field static ascii:Lorg/jcodings/EncodingDB$Entry;

.field private static builtin:[Ljava/lang/String;

.field static final encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Lorg/jcodings/EncodingDB$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    const/16 v3, 0x4c

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "ASCII-8BIT"

    aput-object v4, v3, v6

    const-string v4, "ASCII"

    aput-object v4, v3, v7

    const-string v4, "Big5"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    const-string v5, "BIG5"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "Big5-HKSCS"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "Big5HKSCS"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "Big5-UAO"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string v5, "Big5UAO"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string v5, "CP949"

    aput-object v5, v3, v4

    const/16 v4, 0x9

    const-string v5, "CP949"

    aput-object v5, v3, v4

    const/16 v4, 0xa

    const-string v5, "Emacs-Mule"

    aput-object v5, v3, v4

    const/16 v4, 0xb

    const-string v5, "EmacsMule"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    const-string v5, "EUC-JP"

    aput-object v5, v3, v4

    const/16 v4, 0xd

    const-string v5, "EUCJP"

    aput-object v5, v3, v4

    const/16 v4, 0xe

    const-string v5, "EUC-KR"

    aput-object v5, v3, v4

    const/16 v4, 0xf

    const-string v5, "EUCKR"

    aput-object v5, v3, v4

    const/16 v4, 0x10

    const-string v5, "EUC-TW"

    aput-object v5, v3, v4

    const/16 v4, 0x11

    const-string v5, "EUCTW"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    const-string v5, "GB18030"

    aput-object v5, v3, v4

    const/16 v4, 0x13

    const-string v5, "GB18030"

    aput-object v5, v3, v4

    const/16 v4, 0x14

    const-string v5, "GBK"

    aput-object v5, v3, v4

    const/16 v4, 0x15

    const-string v5, "GBK"

    aput-object v5, v3, v4

    const/16 v4, 0x16

    const-string v5, "ISO-8859-1"

    aput-object v5, v3, v4

    const/16 v4, 0x17

    const-string v5, "ISO8859_1"

    aput-object v5, v3, v4

    const/16 v4, 0x18

    const-string v5, "ISO-8859-2"

    aput-object v5, v3, v4

    const/16 v4, 0x19

    const-string v5, "ISO8859_2"

    aput-object v5, v3, v4

    const/16 v4, 0x1a

    const-string v5, "ISO-8859-3"

    aput-object v5, v3, v4

    const/16 v4, 0x1b

    const-string v5, "ISO8859_3"

    aput-object v5, v3, v4

    const/16 v4, 0x1c

    const-string v5, "ISO-8859-4"

    aput-object v5, v3, v4

    const/16 v4, 0x1d

    const-string v5, "ISO8859_4"

    aput-object v5, v3, v4

    const/16 v4, 0x1e

    const-string v5, "ISO-8859-5"

    aput-object v5, v3, v4

    const/16 v4, 0x1f

    const-string v5, "ISO8859_5"

    aput-object v5, v3, v4

    const/16 v4, 0x20

    const-string v5, "ISO-8859-6"

    aput-object v5, v3, v4

    const/16 v4, 0x21

    const-string v5, "ISO8859_6"

    aput-object v5, v3, v4

    const/16 v4, 0x22

    const-string v5, "ISO-8859-7"

    aput-object v5, v3, v4

    const/16 v4, 0x23

    const-string v5, "ISO8859_7"

    aput-object v5, v3, v4

    const/16 v4, 0x24

    const-string v5, "ISO-8859-8"

    aput-object v5, v3, v4

    const/16 v4, 0x25

    const-string v5, "ISO8859_8"

    aput-object v5, v3, v4

    const/16 v4, 0x26

    const-string v5, "ISO-8859-9"

    aput-object v5, v3, v4

    const/16 v4, 0x27

    const-string v5, "ISO8859_9"

    aput-object v5, v3, v4

    const/16 v4, 0x28

    const-string v5, "ISO-8859-10"

    aput-object v5, v3, v4

    const/16 v4, 0x29

    const-string v5, "ISO8859_10"

    aput-object v5, v3, v4

    const/16 v4, 0x2a

    const-string v5, "ISO-8859-11"

    aput-object v5, v3, v4

    const/16 v4, 0x2b

    const-string v5, "ISO8859_11"

    aput-object v5, v3, v4

    const/16 v4, 0x2c

    const-string v5, "ISO-8859-13"

    aput-object v5, v3, v4

    const/16 v4, 0x2d

    const-string v5, "ISO8859_13"

    aput-object v5, v3, v4

    const/16 v4, 0x2e

    const-string v5, "ISO-8859-14"

    aput-object v5, v3, v4

    const/16 v4, 0x2f

    const-string v5, "ISO8859_14"

    aput-object v5, v3, v4

    const/16 v4, 0x30

    const-string v5, "ISO-8859-15"

    aput-object v5, v3, v4

    const/16 v4, 0x31

    const-string v5, "ISO8859_15"

    aput-object v5, v3, v4

    const/16 v4, 0x32

    const-string v5, "ISO-8859-16"

    aput-object v5, v3, v4

    const/16 v4, 0x33

    const-string v5, "ISO8859_16"

    aput-object v5, v3, v4

    const/16 v4, 0x34

    const-string v5, "KOI8-R"

    aput-object v5, v3, v4

    const/16 v4, 0x35

    const-string v5, "KOI8R"

    aput-object v5, v3, v4

    const/16 v4, 0x36

    const-string v5, "KOI8-U"

    aput-object v5, v3, v4

    const/16 v4, 0x37

    const-string v5, "KOI8U"

    aput-object v5, v3, v4

    const/16 v4, 0x38

    const-string v5, "Shift_JIS"

    aput-object v5, v3, v4

    const/16 v4, 0x39

    const-string v5, "SJIS"

    aput-object v5, v3, v4

    const/16 v4, 0x3a

    const-string v5, "US-ASCII"

    aput-object v5, v3, v4

    const/16 v4, 0x3b

    const-string v5, "USASCII"

    aput-object v5, v3, v4

    const/16 v4, 0x3c

    const-string v5, "UTF-8"

    aput-object v5, v3, v4

    const/16 v4, 0x3d

    const-string v5, "UTF8"

    aput-object v5, v3, v4

    const/16 v4, 0x3e

    const-string v5, "UTF-16BE"

    aput-object v5, v3, v4

    const/16 v4, 0x3f

    const-string v5, "UTF16BE"

    aput-object v5, v3, v4

    const/16 v4, 0x40

    const-string v5, "UTF-16LE"

    aput-object v5, v3, v4

    const/16 v4, 0x41

    const-string v5, "UTF16LE"

    aput-object v5, v3, v4

    const/16 v4, 0x42

    const-string v5, "UTF-32BE"

    aput-object v5, v3, v4

    const/16 v4, 0x43

    const-string v5, "UTF32BE"

    aput-object v5, v3, v4

    const/16 v4, 0x44

    const-string v5, "UTF-32LE"

    aput-object v5, v3, v4

    const/16 v4, 0x45

    const-string v5, "UTF32LE"

    aput-object v5, v3, v4

    const/16 v4, 0x46

    const-string v5, "Windows-1251"

    aput-object v5, v3, v4

    const/16 v4, 0x47

    const-string v5, "CP1251"

    aput-object v5, v3, v4

    const/16 v4, 0x48

    const-string v5, "GB2312"

    aput-object v5, v3, v4

    const/16 v4, 0x49

    const-string v5, "EUCKR"

    aput-object v5, v3, v4

    const/16 v4, 0x4a

    const-string v5, "Windows-31J"

    aput-object v5, v3, v4

    const/16 v4, 0x4b

    const-string v5, "SJIS"

    aput-object v5, v3, v4

    sput-object v3, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    .line 142
    new-instance v3, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    sget-object v4, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>(I)V

    sput-object v3, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 143
    new-instance v3, Lorg/jcodings/util/CaseInsensitiveBytesHash;

    sget-object v4, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Lorg/jcodings/util/CaseInsensitiveBytesHash;-><init>(I)V

    sput-object v3, Lorg/jcodings/EncodingDB;->aliases:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    .line 187
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_0

    .line 188
    sget-object v3, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    shl-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    shl-int/lit8 v5, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lorg/jcodings/EncodingDB;->declare(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    :cond_0
    const/4 v3, 0x0

    sput-object v3, Lorg/jcodings/EncodingDB;->builtin:[Ljava/lang/String;

    .line 192
    sget-object v3, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    const-string v4, "ASCII-8BIT"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jcodings/EncodingDB$Entry;

    sput-object v3, Lorg/jcodings/EncodingDB;->ascii:Lorg/jcodings/EncodingDB$Entry;

    .line 194
    sget-object v1, Lorg/jcodings/EncodingList;->LIST:[[Ljava/lang/String;

    .line 195
    .local v1, "encList":[[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 196
    aget-object v0, v1, v2

    .line 198
    .local v0, "enc":[Ljava/lang/String;
    aget-object v3, v0, v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 212
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 213
    new-instance v3, Lorg/jcodings/exception/InternalException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :sswitch_0
    aget-object v3, v0, v7

    aget-object v4, v0, v8

    invoke-static {v3, v4}, Lorg/jcodings/EncodingDB;->replicate(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    :sswitch_1
    aget-object v3, v0, v7

    aget-object v4, v0, v8

    invoke-static {v3, v4}, Lorg/jcodings/EncodingDB;->alias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :sswitch_2
    aget-object v3, v0, v7

    aget-object v4, v0, v8

    invoke-static {v3, v4}, Lorg/jcodings/EncodingDB;->set_base(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :sswitch_3
    aget-object v3, v0, v7

    invoke-static {v3}, Lorg/jcodings/EncodingDB;->dummy(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    .end local v0    # "enc":[Ljava/lang/String;
    :cond_1
    return-void

    .line 198
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_1
        0x44 -> :sswitch_3
        0x52 -> :sswitch_0
        0x53 -> :sswitch_2
    .end sparse-switch
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alias(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 161
    .local v1, "origBytes":[B
    sget-object v3, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v3, v1}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jcodings/EncodingDB$Entry;

    .line 162
    .local v2, "originalEntry":Lorg/jcodings/EncodingDB$Entry;
    if-nez v2, :cond_0

    new-instance v3, Lorg/jcodings/exception/InternalException;

    const-string v4, "no such encoding <%n>"

    invoke-direct {v3, v4, p1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 163
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 164
    .local v0, "aliasBytes":[B
    sget-object v3, Lorg/jcodings/EncodingDB;->aliases:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v3, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/jcodings/exception/InternalException;

    const-string v4, "encoding alias already registerd <%n>"

    invoke-direct {v3, v4, p0}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_1
    sget-object v3, Lorg/jcodings/EncodingDB;->aliases:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v3, v0, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 166
    return-void
.end method

.method public static declare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "encodingClass"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 155
    .local v0, "bytes":[B
    sget-object v1, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v1, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jcodings/exception/InternalException;

    const-string v2, "encoding already registerd <%n>"

    invoke-direct {v1, v2, p0}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 156
    :cond_0
    sget-object v1, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    new-instance v2, Lorg/jcodings/EncodingDB$Entry;

    invoke-direct {v2, p1}, Lorg/jcodings/EncodingDB$Entry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 157
    return-void
.end method

.method public static dummy(Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 182
    .local v0, "bytes":[B
    sget-object v1, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v1, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jcodings/exception/InternalException;

    const-string v2, "encoding already registerd <%n>"

    invoke-direct {v1, v2, p0}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 183
    :cond_0
    sget-object v1, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    new-instance v2, Lorg/jcodings/EncodingDB$Entry;

    invoke-direct {v2, v0}, Lorg/jcodings/EncodingDB$Entry;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 184
    return-void
.end method

.method public static final getAliases()Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Lorg/jcodings/EncodingDB$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v0, Lorg/jcodings/EncodingDB;->aliases:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    return-object v0
.end method

.method public static final getEncodings()Lorg/jcodings/util/CaseInsensitiveBytesHash;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jcodings/util/CaseInsensitiveBytesHash",
            "<",
            "Lorg/jcodings/EncodingDB$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    sget-object v0, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    return-object v0
.end method

.method public static replicate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "replica"    # Ljava/lang/String;
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 170
    .local v0, "origBytes":[B
    sget-object v3, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v3, v0}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jcodings/EncodingDB$Entry;

    .line 171
    .local v1, "originalEntry":Lorg/jcodings/EncodingDB$Entry;
    if-nez v1, :cond_0

    new-instance v3, Lorg/jcodings/exception/InternalException;

    const-string v4, "no such encoding <%n>"

    invoke-direct {v3, v4, p1}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 172
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 173
    .local v2, "replicaBytes":[B
    sget-object v3, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    invoke-virtual {v3, v2}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->get([B)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/jcodings/exception/InternalException;

    const-string v4, "encoding replica already registerd <%n>"

    invoke-direct {v3, v4, p0}, Lorg/jcodings/exception/InternalException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_1
    sget-object v3, Lorg/jcodings/EncodingDB;->encodings:Lorg/jcodings/util/CaseInsensitiveBytesHash;

    new-instance v4, Lorg/jcodings/EncodingDB$Entry;

    invoke-direct {v4, v2, v1}, Lorg/jcodings/EncodingDB$Entry;-><init>([BLorg/jcodings/EncodingDB$Entry;)V

    invoke-virtual {v3, v2, v4}, Lorg/jcodings/util/CaseInsensitiveBytesHash;->putDirect([BLjava/lang/Object;)V

    .line 175
    return-void
.end method

.method public static set_base(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "original"    # Ljava/lang/String;

    .prologue
    .line 178
    return-void
.end method
