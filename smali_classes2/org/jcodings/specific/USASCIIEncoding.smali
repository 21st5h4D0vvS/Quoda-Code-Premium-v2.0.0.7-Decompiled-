.class public final Lorg/jcodings/specific/USASCIIEncoding;
.super Lorg/jcodings/SingleByteEncoding;
.source "USASCIIEncoding.java"


# static fields
.field public static final INSTANCE:Lorg/jcodings/specific/USASCIIEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lorg/jcodings/specific/USASCIIEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/USASCIIEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/USASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/USASCIIEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    .line 28
    const-string v1, "US-ASCII"

    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->AsciiCtypeTable:[S

    sget-object v3, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    const/4 v4, 0x0

    const/16 v5, 0x7f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/jcodings/SingleByteEncoding;-><init>(Ljava/lang/String;[S[BZI)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "US-ASCII"

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 50
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jcodings/specific/USASCIIEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length([BII)I
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "p"    # I
    .param p3, "end"    # I

    .prologue
    .line 33
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final toLowerCaseTable()[B
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jcodings/specific/USASCIIEncoding;->LowerCaseTable:[B

    return-object v0
.end method
