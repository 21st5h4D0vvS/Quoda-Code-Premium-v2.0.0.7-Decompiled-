.class Lcom/github/rjeschke/txtmark/Utils;
.super Ljava/lang/Object;


# static fields
.field private static RND:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/github/rjeschke/txtmark/Utils;->RND:I

    nop

    return-void

    const/4 v0, 0x6
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public static final appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x6

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v3, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x5

    const/4 v3, 0x5

    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v3, 0x5

    const/4 v3, 0x1

    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x1

    const/4 v3, 0x4

    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v2, 0x6

    const/4 v3, 0x3

    :cond_0
    nop

    return-void

    const/4 v3, 0x1

    const/4 v3, 0x1

    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static final appendDecEntity(Ljava/lang/StringBuilder;C)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    const-string v0, "&#"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public static final appendHexEntity(Ljava/lang/StringBuilder;C)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const-string v0, "&#x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public static final appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x7

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_3

    const/4 v4, 0x5

    invoke-static {}, Lcom/github/rjeschke/txtmark/Utils;->rnd()I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v4, 0x7

    const/16 v3, 0x20

    if-ge v2, v3, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v0, 0x1

    const/4 v4, 0x3

    :sswitch_0
    const/16 v3, 0x200

    if-ge v2, v3, :cond_0

    const/4 v4, 0x7

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Utils;->appendDecEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    const/4 v1, 0x1

    const/4 v4, 0x2

    :cond_0
    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Utils;->appendHexEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    const/4 v4, 0x7

    const/4 v4, 0x2

    :cond_1
    const/16 v3, 0x208

    if-ge v2, v3, :cond_2

    const/4 v4, 0x5

    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Utils;->appendDecEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    const/4 v0, 0x1

    const/4 v4, 0x0

    :cond_2
    invoke-static {p0, v0}, Lcom/github/rjeschke/txtmark/Utils;->appendHexEntity(Ljava/lang/StringBuilder;C)V

    goto :goto_1

    const/4 v3, 0x3

    const/4 v4, 0x1

    :cond_3
    nop

    return-void

    const/4 v1, 0x4

    const/4 v4, 0x1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x40 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x3

    move v1, p2

    :goto_0
    if-ge v1, p3, :cond_0

    const/4 v3, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v3, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v2, 0x2

    const/4 v3, 0x6

    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x6

    const/4 v3, 0x7

    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v0, 0x3

    const/4 v3, 0x4

    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v2, 0x7

    const/4 v3, 0x0

    :sswitch_3
    const-string v2, "&quot;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x3

    const/4 v3, 0x5

    :sswitch_4
    const-string v2, "&apos;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x4

    const/4 v3, 0x3

    :cond_0
    nop

    return-void

    const/4 v3, 0x3

    const/4 v3, 0x6

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_0
        0x27 -> :sswitch_4
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static final codeEncode(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x2

    move v1, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x6

    sparse-switch v0, :sswitch_data_0

    const/4 v3, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v2, 0x3

    const/4 v3, 0x4

    :sswitch_0
    const-string v2, "&amp;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v0, 0x0

    const/4 v3, 0x5

    :sswitch_1
    const-string v2, "&lt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v0, 0x7

    const/4 v3, 0x5

    :sswitch_2
    const-string v2, "&gt;"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v2, 0x1

    const/4 v3, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v3, 0x0

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public static final escape(Ljava/lang/StringBuilder;CI)I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x4

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    :goto_0
    return p2

    const/4 v1, 0x3

    const/4 v1, 0x5

    :sswitch_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    const/4 v0, 0x4

    const/4 v1, 0x4

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x22 -> :sswitch_0
        0x23 -> :sswitch_0
        0x27 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
        0x5f -> :sswitch_0
        0x60 -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method public static final getMetaFromFence(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x4

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x60

    if-eq v0, v2, :cond_0

    const/16 v2, 0x7e

    if-eq v0, v2, :cond_0

    const/16 v2, 0x25

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    :goto_1
    return-object v2

    const/4 v0, 0x4

    const/4 v3, 0x3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :cond_1
    const-string v2, ""

    goto :goto_1

    const/4 v3, 0x5
.end method

.method public static final getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/4 v4, 0x2

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x4

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x7

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x2

    :cond_1
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public static final getXMLTag(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x6

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_0

    const/4 v4, 0x5

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x7

    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    const/4 v2, 0x3

    const/4 v4, 0x7

    :cond_1
    nop

    return-void

    const/4 v0, 0x0
.end method

.method public static final readMdLink(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x7

    move v3, p2

    const/4 v6, 0x4

    const/4 v1, 0x1

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v6, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v6, 0x2

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v6, 0x6

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {p0, v4, v3}, Lcom/github/rjeschke/txtmark/Utils;->escape(Ljava/lang/StringBuilder;CI)I

    move-result v3

    const/4 v6, 0x2

    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x4

    goto :goto_0

    const/4 v2, 0x1

    const/4 v6, 0x2

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x2

    sparse-switch v0, :sswitch_data_0

    const/4 v6, 0x2

    :cond_1
    :goto_2
    if-eqz v2, :cond_4

    const/4 v6, 0x3

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v3, -0x1

    :cond_3
    return v3

    const/4 v0, 0x3

    const/4 v6, 0x5

    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    const/4 v6, 0x7

    goto :goto_2

    const/4 v1, 0x5

    const/4 v6, 0x4

    :sswitch_1
    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    const/4 v6, 0x4

    const/4 v2, 0x1

    goto :goto_2

    const/4 v1, 0x5

    const/4 v6, 0x3

    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    const/4 v6, 0x6

    if-nez v1, :cond_1

    const/4 v6, 0x1

    const/4 v2, 0x1

    goto :goto_2

    const/4 v2, 0x3

    const/4 v6, 0x4

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v3, 0x0

    const/4 v6, 0x0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_1
        0x28 -> :sswitch_0
        0x29 -> :sswitch_2
    .end sparse-switch
.end method

.method public static final readMdLinkId(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 6

    const/4 v5, 0x0

    const/4 v5, 0x5

    move v3, p2

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v5, 0x4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v5, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v5, 0x6

    const/4 v2, 0x0

    const/4 v5, 0x7

    sparse-switch v0, :sswitch_data_0

    const/4 v5, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const/4 v5, 0x6

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_1

    const/4 v3, -0x1

    :cond_1
    return v3

    const/4 v1, 0x7

    const/4 v5, 0x5

    :sswitch_0
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x3

    const/4 v5, 0x4

    :sswitch_1
    add-int/lit8 v1, v1, 0x1

    const/4 v5, 0x4

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x7

    const/4 v5, 0x5

    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    const/4 v5, 0x0

    const/4 v2, 0x1

    goto :goto_1

    const/4 v0, 0x3

    const/4 v5, 0x4

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v4, 0x6

    const/4 v5, 0x3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x7

    goto :goto_0

    const/4 v5, 0x1

    const/4 v5, 0x3

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x5b -> :sswitch_1
        0x5d -> :sswitch_2
    .end sparse-switch
.end method

.method public static final readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x4

    move v1, p2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v3, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v3, 0x5

    if-ne v0, p3, :cond_2

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, -0x1

    :cond_1
    return v1

    const/4 v0, 0x1

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x7

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public static final varargs readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I
    .locals 6

    const/4 v5, 0x0

    const/4 v5, 0x6

    move v3, p2

    const/4 v5, 0x6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x5

    const/4 v2, 0x0

    :goto_1
    array-length v4, p3

    if-ge v2, v4, :cond_0

    const/4 v5, 0x2

    aget-char v4, p3, v2

    if-ne v0, v4, :cond_3

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x2

    :cond_0
    if-eqz v1, :cond_4

    const/4 v5, 0x5

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_2

    const/4 v3, -0x1

    :cond_2
    return v3

    const/4 v3, 0x7

    const/4 v5, 0x5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x6

    goto :goto_0

    const/4 v4, 0x4
.end method

.method public static final readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x4

    move v1, p2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v4, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v4, 0x1

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v4, 0x4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {p0, v2, v1}, Lcom/github/rjeschke/txtmark/Utils;->escape(Ljava/lang/StringBuilder;CI)I

    move-result v1

    const/4 v4, 0x7

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x0

    goto :goto_0

    const/4 v0, 0x3

    const/4 v4, 0x6

    :cond_0
    if-ne v0, p3, :cond_3

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_2

    const/4 v1, -0x1

    :cond_2
    return v1

    const/4 v1, 0x1

    const/4 v4, 0x0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v0, 0x5
.end method

.method public static final varargs readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I
    .locals 7

    const/4 v6, 0x2

    const/4 v6, 0x3

    move v3, p2

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v6, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v6, 0x5

    const/16 v4, 0x5c

    if-ne v0, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v6, 0x5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {p0, v4, v3}, Lcom/github/rjeschke/txtmark/Utils;->escape(Ljava/lang/StringBuilder;CI)I

    move-result v3

    const/4 v6, 0x5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x6

    goto :goto_0

    const/4 v0, 0x2

    const/4 v6, 0x2

    :cond_0
    const/4 v1, 0x0

    const/4 v6, 0x7

    const/4 v2, 0x0

    :goto_2
    array-length v4, p3

    if-ge v2, v4, :cond_1

    const/4 v6, 0x0

    aget-char v4, p3, v2

    if-ne v0, v4, :cond_4

    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v6, 0x0

    :cond_1
    if-eqz v1, :cond_5

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_3

    const/4 v3, -0x1

    :cond_3
    return v3

    const/4 v5, 0x7

    const/4 v6, 0x6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    const/4 v5, 0x4

    const/4 v6, 0x7

    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v5, 0x4
.end method

.method public static final readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x3e

    const/16 v8, 0x2f

    const/4 v5, -0x1

    const/4 v10, 0x3

    add-int/lit8 v6, p2, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_0

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v10, 0x6

    add-int/lit8 v2, p2, 0x2

    const/4 v10, 0x2

    :goto_0
    if-eqz p3, :cond_5

    const/4 v10, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    const/4 v6, 0x3

    new-array v6, v6, [C

    fill-array-data v6, :array_0

    invoke-static {v4, p1, v2, v6}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v2

    const/4 v10, 0x7

    if-ne v2, v5, :cond_2

    move v2, v5

    const/4 v10, 0x5

    :goto_1
    return v2

    const/4 v3, 0x6

    const/4 v10, 0x5

    :cond_0
    add-int/lit8 v6, p2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x21

    if-ne v6, v7, :cond_1

    const/4 v10, 0x6

    const-string v6, "<!"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    add-int/lit8 v2, p2, 0x1

    goto :goto_1

    const/4 v8, 0x6

    const/4 v10, 0x3

    :cond_1
    const/4 v1, 0x0

    const/4 v10, 0x2

    add-int/lit8 v2, p2, 0x1

    goto :goto_0

    const/4 v2, 0x4

    const/4 v10, 0x6

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x4

    invoke-static {v3}, Lcom/github/rjeschke/txtmark/HTML;->isUnsafeHtmlElement(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v10, 0x2

    const-string v6, "&lt;"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    const/4 v10, 0x0

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x7

    :cond_4
    :goto_2
    if-ne v2, v5, :cond_7

    move v2, v5

    const/4 v10, 0x1

    goto :goto_1

    const/4 v1, 0x0

    const/4 v10, 0x0

    :cond_5
    const/16 v6, 0x3c

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    if-eqz v1, :cond_6

    const/4 v10, 0x0

    const/16 v6, 0x2f

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    :cond_6
    const/4 v6, 0x3

    new-array v6, v6, [C

    fill-array-data v6, :array_1

    invoke-static {p0, p1, v2, v6}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v2

    goto :goto_2

    const/4 v5, 0x7

    const/4 v10, 0x5

    :cond_7
    const/4 v6, 0x2

    new-array v6, v6, [C

    fill-array-data v6, :array_2

    invoke-static {p0, p1, v2, v6}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v2

    const/4 v10, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_8

    const/4 v10, 0x6

    const-string v6, " /"

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0x3e

    invoke-static {p0, p1, v6, v7}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v2

    const/4 v10, 0x2

    if-ne v2, v5, :cond_8

    move v2, v5

    const/4 v10, 0x5

    goto/16 :goto_1

    const/4 v4, 0x2

    const/4 v10, 0x3

    :cond_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_9

    const/4 v10, 0x3

    const/16 v6, 0x3e

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    const/4 v4, 0x6

    const/4 v10, 0x7

    :catch_0
    move-exception v0

    move v2, v5

    const/4 v10, 0x6

    goto/16 :goto_1

    const/4 v4, 0x5

    :cond_9
    move v2, v5

    const/4 v10, 0x4

    goto/16 :goto_1

    const/4 v0, 0x0

    const/4 v10, 0x7

    :array_0
    .array-data 2
        0x20s
        0x2fs
        0x3es
    .end array-data

    const/4 v10, 0x4

    :array_1
    .array-data 2
        0x20s
        0x2fs
        0x3es
    .end array-data

    const/4 v10, 0x6

    :array_2
    .array-data 2
        0x2fs
        0x3es
    .end array-data
.end method

.method public static final rnd()I
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x4

    sget v0, Lcom/github/rjeschke/txtmark/Utils;->RND:I

    const v1, 0x19660d

    mul-int/2addr v0, v1

    const v1, 0x3c6ef35f

    add-int/2addr v0, v1

    sput v0, Lcom/github/rjeschke/txtmark/Utils;->RND:I

    ushr-int/lit8 v0, v0, 0x16

    return v0

    const/4 v2, 0x7
.end method

.method public static final skipSpaces(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x2

    move v0, p1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v3, 0x2

    const/4 v3, 0x6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    :goto_1
    return v0

    const/4 v3, 0x0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    const/4 v3, 0x2
.end method
