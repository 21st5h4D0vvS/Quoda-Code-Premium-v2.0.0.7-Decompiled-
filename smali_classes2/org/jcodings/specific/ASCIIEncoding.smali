.class public final Lorg/jcodings/specific/ASCIIEncoding;
.super Lorg/jcodings/SingleByteEncoding;
.source "ASCIIEncoding.java"


# static fields
.field public static final DUMMY:Lorg/jcodings/specific/ASCIIEncoding;

.field public static final INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lorg/jcodings/specific/ASCIIEncoding;

    invoke-direct {v0}, Lorg/jcodings/specific/ASCIIEncoding;-><init>()V

    sput-object v0, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    .line 52
    new-instance v0, Lorg/jcodings/specific/ASCIIEncoding;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/jcodings/specific/ASCIIEncoding;-><init>(Z)V

    sput-object v0, Lorg/jcodings/specific/ASCIIEncoding;->DUMMY:Lorg/jcodings/specific/ASCIIEncoding;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 27
    const-string v0, "ASCII-8BIT"

    sget-object v1, Lorg/jcodings/ascii/AsciiTables;->AsciiCtypeTable:[S

    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/jcodings/SingleByteEncoding;-><init>(Ljava/lang/String;[S[B)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 3
    .param p1, "isDummy"    # Z

    .prologue
    .line 31
    if-eqz p1, :cond_0

    const-string v0, "DUMMY"

    :goto_0
    sget-object v1, Lorg/jcodings/ascii/AsciiTables;->AsciiCtypeTable:[S

    sget-object v2, Lorg/jcodings/ascii/AsciiTables;->ToLowerCaseTable:[B

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/jcodings/SingleByteEncoding;-><init>(Ljava/lang/String;[S[BZ)V

    .line 32
    return-void

    .line 31
    :cond_0
    const-string v0, "ASCII-8BIT"

    goto :goto_0
.end method


# virtual methods
.method public getCharsetName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public isCodeCType(II)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "ctype"    # I

    .prologue
    .line 48
    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/jcodings/specific/ASCIIEncoding;->isCodeCTypeInternal(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toLowerCaseTable()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/jcodings/specific/ASCIIEncoding;->LowerCaseTable:[B

    return-object v0
.end method
