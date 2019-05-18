.class public final Lcom/henrythompson/quoda/utils/Utils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public static apiSupportsControlKeys()Z
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->getApiLevel()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v2, 0x4

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public static concatSnippetFolderPath(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x7

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x6

    :cond_0
    :goto_0
    return-object p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_0

    const/4 v2, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public static final countMatches(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x6

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x2

    :cond_1
    return v0

    const/4 v3, 0x3

    const/4 v3, 0x6

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x7

    const/4 v1, 0x0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    const/4 v3, 0x5
.end method

.method public static documentHasBaseUrl(Lcom/henrythompson/quoda/document/Document;)Z
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\uffff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v2, 0x0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public static documentHasFilepath(Lcom/henrythompson/quoda/document/Document;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x7

    :goto_0
    return v0

    const/4 v1, 0x3

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public static dpAsPixels(I)I
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x3

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v5, 0x7

    const/4 v2, 0x1

    int-to-float v3, p0

    const/4 v5, 0x7

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    return v2

    const/4 v0, 0x0
.end method

.method public static encodeDocumentToDiskFormat(Lcom/henrythompson/quoda/document/Document;Ljava/io/OutputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v12, Ljava/io/OutputStreamWriter;

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-direct {v12, p1, v13}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/high16 v13, 0x10000

    invoke-direct {v2, v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const-string v12, "UTF-16"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "UTF-32"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    const v1, 0xfeff

    invoke-virtual {v2, v1}, Ljava/io/BufferedWriter;->write(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getLinebreakCode()I

    move-result v12

    invoke-static {v12}, Lcom/henrythompson/quoda/LineBreak;->toLineBreak(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v0, 0x1000

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v11, :cond_6

    const/16 v12, 0x1000

    sub-int v13, v11, v8

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int v12, v8, v5

    invoke-virtual {v10, v8, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_5

    const/16 v12, 0xa

    invoke-virtual {v9, v12, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    const/4 v12, -0x1

    if-ne v7, v12, :cond_3

    move v7, v5

    if-eq v6, v7, :cond_2

    sub-int v12, v7, v6

    invoke-virtual {v2, v9, v6, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    :cond_2
    :goto_2
    add-int/lit8 v6, v7, 0x1

    goto :goto_1

    const/4 v7, 0x1

    :cond_3
    if-eq v6, v7, :cond_4

    sub-int v12, v7, v6

    invoke-virtual {v2, v9, v6, v12}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V

    :cond_4
    invoke-virtual {v2, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    const/4 v4, 0x1

    :cond_5
    add-int/2addr v8, v5

    goto :goto_0

    const/4 v1, 0x4

    :cond_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    nop

    return-void

    const/4 v3, 0x7
.end method

.method public static getApiLevel()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0

    const/4 v0, 0x4
.end method

.method public static getContrastColor(Landroid/graphics/Color;)D
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x0

    const v2, 0x11702a

    int-to-double v0, v2

    const/4 v4, 0x7

    const-wide/high16 v2, 0x4060000000000000L    # 128.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, -0x3e90000000000000L    # -1.6777216E7

    :goto_0
    return-wide v2

    const/4 v3, 0x0

    :cond_0
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    if-nez p0, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    :goto_0
    return-object v1

    const/4 v0, 0x7

    const/4 v2, 0x0

    :cond_0
    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x2

    const-string v1, ""

    goto :goto_0

    const/4 v1, 0x2

    const/4 v2, 0x5

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public static getFileTypeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v4, 0x1

    const v3, 0x7f0d0102

    const/4 v4, 0x3

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    if-nez v1, :cond_0

    const/4 v4, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x7

    :goto_0
    return-object v2

    const/4 v4, 0x2

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    const/4 v4, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x3

    const-string v2, "..."

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    const-string v2, "up"

    goto :goto_0

    const/4 v4, 0x5

    const/4 v4, 0x6

    :cond_1
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "htm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    :cond_2
    const v2, 0x7f0d0116

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x4

    :cond_3
    const-string v2, "dhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x7

    const v2, 0x7f0d0114

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    const/4 v2, 0x1

    const/4 v4, 0x2

    :cond_4
    const-string v2, "phtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x5

    const v2, 0x7f0d011f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    const/4 v3, 0x3

    const/4 v4, 0x7

    :cond_5
    const-string v2, "shtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "shtm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "ssi"

    const/4 v4, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x2

    :cond_6
    const v2, 0x7f0d0122

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x5

    :cond_7
    const-string v2, "xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "xhtm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v4, 0x0

    :cond_8
    const v2, 0x7f0d0125

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x0

    :cond_9
    const-string v2, "htx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v4, 0x2

    const v2, 0x7f0d0117

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v4, 0x5

    :cond_a
    const-string v2, "htc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v4, 0x1

    const v2, 0x7f0d0115

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v4, 0x6

    :cond_b
    const-string v2, "inc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v4, 0x3

    const v2, 0x7f0d0118

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v4, 0x4

    :cond_c
    const-string v2, "php"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v4, 0x3

    const v2, 0x7f0d011b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v4, 0x6

    :cond_d
    const-string v2, "php3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v4, 0x2

    const v2, 0x7f0d011c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x7

    :cond_e
    const-string v2, "php4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v4, 0x5

    const v2, 0x7f0d011d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v4, 0x4

    const/4 v4, 0x4

    :cond_f
    const-string v2, "php5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/4 v4, 0x6

    const v2, 0x7f0d011e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x6

    :cond_10
    const-string v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v4, 0x4

    const v2, 0x7f0d0126

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v4, 0x3

    :cond_11
    const-string v2, "xsl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v4, 0x4

    const v2, 0x7f0d0128

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x5

    :cond_12
    const-string v2, "xslt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v4, 0x7

    const v2, 0x7f0d0129

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v1, 0x3

    const/4 v4, 0x2

    :cond_13
    const-string v2, "xsd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    const/4 v4, 0x5

    const v2, 0x7f0d0127

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x6

    :cond_14
    const-string v2, "rss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v4, 0x1

    const v2, 0x7f0d0120

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v1, 0x1

    const/4 v4, 0x4

    :cond_15
    const-string v2, "asp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v4, 0x6

    const v2, 0x7f0d0111

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v4, 0x5

    const/4 v4, 0x5

    :cond_16
    const-string v2, "aspx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v4, 0x3

    const v2, 0x7f0d0112

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v4, 0x1

    :cond_17
    const-string v2, "asa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v4, 0x2

    const v2, 0x7f0d010e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v1, 0x4

    const/4 v4, 0x6

    :cond_18
    const-string v2, "ascx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v4, 0x1

    const v2, 0x7f0d010f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :cond_19
    const-string v2, "asmx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v4, 0x4

    const v2, 0x7f0d0110

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v4, 0x3

    :cond_1a
    const-string v2, "vbs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v4, 0x1

    const v2, 0x7f0d0124

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v3, 0x5

    const/4 v4, 0x4

    :cond_1b
    const-string v2, "vb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    const/4 v4, 0x2

    const-string v2, "Visual Basic"

    goto/16 :goto_0

    const/4 v3, 0x4

    const/4 v4, 0x2

    :cond_1c
    const-string v2, "css"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v4, 0x3

    const v2, 0x7f0d0113

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v4, 0x7

    :cond_1d
    const-string v2, "js"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v4, 0x6

    const v2, 0x7f0d011a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x2

    :cond_1e
    const-string v2, "java"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v4, 0x6

    const v2, 0x7f0d0119

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x3

    :cond_1f
    const-string v2, "md"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v4, 0x7

    const-string v2, "Markdown"

    goto/16 :goto_0

    const/4 v0, 0x7

    const/4 v4, 0x5

    :cond_20
    const-string v2, "txt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v4, 0x0

    const v2, 0x7f0d0123

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v4, 0x5

    :cond_21
    const-string v2, "snippet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v4, 0x1

    const v2, 0x7f0d0121

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v4, 0x6

    :cond_22
    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    const/4 v2, 0x0
.end method

.method public static getScreenHeightPx(Landroid/app/Activity;)I
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x6

    if-eqz p0, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v3, 0x6

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v3, 0x7

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v3, 0x0

    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v3, 0x1

    :goto_0
    return v2

    const/4 v1, 0x3

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    const/4 v2, 0x6
.end method

.method public static getScreenHeighthDp(Landroid/app/Activity;)F
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x6

    if-eqz p0, :cond_0

    const/4 v2, 0x4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->getScreenHeightPx(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v2, 0x2

    :goto_0
    return v1

    const/4 v0, 0x6

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public static getScreenWidthDp(Landroid/app/Activity;)F
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x7

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x3

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->getScreenHeightPx(Landroid/app/Activity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v0

    const/4 v2, 0x5

    :goto_0
    return v1

    const/4 v2, 0x4

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public static getScreenWidthPx(Landroid/app/Activity;)I
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x2

    if-eqz p0, :cond_0

    const/4 v3, 0x7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v3, 0x1

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    const/4 v3, 0x4

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x7

    :goto_0
    return v2

    const/4 v0, 0x1

    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public static guessEncoding([B)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x0

    new-instance v0, Lorg/mozilla/universalchardet/UniversalDetector;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/mozilla/universalchardet/UniversalDetector;-><init>(Lorg/mozilla/universalchardet/CharsetListener;)V

    const/4 v4, 0x3

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v0, p0, v2, v3}, Lorg/mozilla/universalchardet/UniversalDetector;->handleData([BII)V

    const/4 v4, 0x4

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->dataEnd()V

    const/4 v4, 0x7

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->getDetectedCharset()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x4

    invoke-virtual {v0}, Lorg/mozilla/universalchardet/UniversalDetector;->reset()V

    const/4 v4, 0x2

    if-nez v1, :cond_0

    const/4 v4, 0x4

    const-string v1, "UTF-8"

    const/4 v4, 0x7

    :cond_0
    return-object v1

    const/4 v0, 0x2
.end method

.method public static indexOfExtension(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x7

    const/4 v2, -0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v2

    const/4 v2, 0x6

    const/4 v4, 0x1

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v4, 0x7

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->indexOfLastSeparator(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x7

    if-le v1, v0, :cond_1

    move v0, v2

    :cond_1
    move v2, v0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public static indexOfLastSeparator(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x1

    if-nez p0, :cond_0

    const/4 v3, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x2

    :goto_0
    return v2

    const/4 v0, 0x0

    const/4 v3, 0x3

    :cond_0
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v3, 0x5

    const/16 v2, 0x5c

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v3, 0x7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    const/4 v3, 0x5
.end method

.method public static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v4, 0x6

    const-string v0, ""

    const/4 v4, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x3

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v4, 0x7

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    const/4 v3, 0x7

    const/4 v4, 0x2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    const/4 v0, 0x0
.end method

.method public static isConnectedToInternet()Z
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v4, 0x3

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    const/4 v4, 0x3

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    const/4 v3, 0x4
.end method

.method public static isSDCardMounted()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    return v1

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public static normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x2f

    const/4 v3, 0x3

    const/16 v0, 0x5c

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_0

    const/4 v3, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x7

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    :cond_1
    const-string v0, "//+"

    const-string v1, "/"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x7

    return-object p0

    const/4 v1, 0x0
.end method

.method public static removeExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    if-nez p0, :cond_1

    const/4 v2, 0x6

    const/4 p0, 0x0

    const/4 v2, 0x5

    :cond_0
    :goto_0
    return-object p0

    const/4 v0, 0x3

    const/4 v2, 0x5

    :cond_1
    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->indexOfExtension(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    const/4 v0, 0x1
.end method
