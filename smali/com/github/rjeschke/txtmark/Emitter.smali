.class Lcom/github/rjeschke/txtmark/Emitter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/rjeschke/txtmark/Emitter$1;
    }
.end annotation


# instance fields
.field private final config:Lcom/github/rjeschke/txtmark/Configuration;

.field public convertNewline2Br:Z

.field private final linkRefs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/github/rjeschke/txtmark/LinkRef;",
            ">;"
        }
    .end annotation
.end field

.field private plugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/markdown4j/Plugin;",
            ">;"
        }
    .end annotation
.end field

.field public useExtensions:Z


# direct methods
.method public constructor <init>(Lcom/github/rjeschke/txtmark/Configuration;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    const/4 v4, 0x6

    iput-boolean v3, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    const/4 v4, 0x3

    iput-boolean v3, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    const/4 v4, 0x7

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->plugins:Ljava/util/Map;

    const/4 v4, 0x5

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    const/4 v4, 0x5

    iget-boolean v2, p1, Lcom/github/rjeschke/txtmark/Configuration;->forceExtendedProfile:Z

    iput-boolean v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    const/4 v4, 0x5

    iget-boolean v2, p1, Lcom/github/rjeschke/txtmark/Configuration;->convertNewline2Br:Z

    iput-boolean v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    const/4 v4, 0x0

    iget-object v2, p1, Lcom/github/rjeschke/txtmark/Configuration;->plugins:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/markdown4j/Plugin;

    const/4 v4, 0x1

    invoke-virtual {p0, v1}, Lcom/github/rjeschke/txtmark/Emitter;->register(Lorg/markdown4j/Plugin;)V

    goto :goto_0

    const/4 v1, 0x3

    const/4 v4, 0x5

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method

.method private static checkEntity(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 11

    const/4 v10, 0x6

    const/16 v9, 0x39

    const/16 v8, 0x30

    const/4 v7, 0x2

    const/16 v6, 0x3b

    const/4 v3, -0x1

    const/4 v10, 0x0

    invoke-static {p0, p1, p2, v6}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v2

    const/4 v10, 0x0

    if-ltz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return v3

    const/4 v8, 0x6

    const/4 v10, 0x3

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_8

    const/4 v10, 0x5

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x58

    if-ne v4, v5, :cond_6

    const/4 v10, 0x7

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v10, 0x7

    const/4 v1, 0x3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/4 v10, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/4 v10, 0x3

    if-lt v0, v8, :cond_3

    if-le v0, v9, :cond_5

    :cond_3
    const/16 v4, 0x61

    if-lt v0, v4, :cond_4

    const/16 v4, 0x66

    if-le v0, v4, :cond_5

    :cond_4
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x46

    if-gt v0, v4, :cond_0

    const/4 v10, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v0, 0x5

    const/4 v10, 0x0

    :cond_6
    const/4 v1, 0x2

    :goto_2
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    const/4 v10, 0x6

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/4 v10, 0x1

    if-lt v0, v8, :cond_0

    if-gt v0, v9, :cond_0

    const/4 v10, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    const/4 v5, 0x4

    const/4 v10, 0x7

    :cond_7
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v2

    const/4 v10, 0x0

    goto :goto_0

    const/4 v9, 0x0

    const/4 v10, 0x2

    :cond_8
    const/4 v1, 0x1

    :goto_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v1, v4, :cond_b

    const/4 v10, 0x7

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/4 v10, 0x3

    const/16 v4, 0x61

    if-lt v0, v4, :cond_9

    const/16 v4, 0x7a

    if-le v0, v4, :cond_a

    :cond_9
    const/16 v4, 0x41

    if-lt v0, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v0, v4, :cond_0

    const/4 v10, 0x0

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    const/4 v1, 0x3

    const/4 v10, 0x1

    :cond_b
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/rjeschke/txtmark/HTML;->isEntity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    :goto_4
    move v3, v2

    goto/16 :goto_0

    const/4 v5, 0x0

    :cond_c
    move v2, v3

    goto :goto_4

    const/4 v4, 0x6
.end method

.method private checkHtml(Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 12

    const/4 v11, 0x3

    const/16 v10, 0x3e

    const/4 v9, 0x4

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v11, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x6

    add-int/lit8 v6, p3, 0x1

    new-array v7, v9, [C

    fill-array-data v7, :array_0

    invoke-static {v3, p2, v6, v7}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v1

    const/4 v11, 0x6

    if-eq v1, v5, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/github/rjeschke/txtmark/HTML;->isLinkPrefix(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v11, 0x5

    invoke-static {v3, p2, v1, v10}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v1

    const/4 v11, 0x0

    if-eq v1, v5, :cond_1

    const/4 v11, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x5

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openLink(Ljava/lang/StringBuilder;)V

    const/4 v11, 0x2

    const-string v5, " href=\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v0, v8, v5}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v11, 0x0

    const-string v5, "\">"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v0, v8, v5}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v11, 0x3

    const-string v5, "</a>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v1

    const/4 v11, 0x1

    :cond_0
    :goto_0
    return v5

    const/4 v3, 0x2

    const/4 v11, 0x5

    :cond_1
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x4

    add-int/lit8 v6, p3, 0x1

    new-array v7, v9, [C

    fill-array-data v7, :array_1

    invoke-static {v3, p2, v6, v7}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;I[C)I

    move-result v1

    const/4 v11, 0x4

    if-eq v1, v5, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x40

    if-ne v6, v7, :cond_3

    const/4 v11, 0x0

    invoke-static {v3, p2, v1, v10}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v1

    const/4 v11, 0x2

    if-eq v1, v5, :cond_3

    const/4 v11, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openLink(Ljava/lang/StringBuilder;)V

    const/4 v11, 0x5

    const-string v5, " href=\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x2

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v11, 0x7

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "https://maps.google.com/maps?q="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    const/16 v7, 0x2b

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    const-string v5, "\">"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x5

    :goto_1
    const-string v5, "</a>"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v1

    const/4 v11, 0x0

    goto :goto_0

    const/4 v1, 0x2

    const/4 v11, 0x7

    :cond_2
    const-string v5, "mailto:"

    const/4 v6, 0x7

    invoke-static {p1, v5, v8, v6}, Lcom/github/rjeschke/txtmark/Utils;->appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v11, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v0, v8, v5}, Lcom/github/rjeschke/txtmark/Utils;->appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v11, 0x3

    const-string v5, "\">"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {p1, v0, v8, v5}, Lcom/github/rjeschke/txtmark/Utils;->appendMailto(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    goto :goto_1

    const/4 v11, 0x5

    const/4 v11, 0x5

    :cond_3
    add-int/lit8 v6, p3, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    const/4 v11, 0x4

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v11, 0x7

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    invoke-static {p1, p2, p3, v5}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v5

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v11, 0x4

    :array_0
    .array-data 2
        0x3as
        0x20s
        0x3es
        0xas
    .end array-data

    const/4 v11, 0x7

    nop

    :array_1
    .array-data 2
        0x40s
        0x20s
        0x3es
        0xas
    .end array-data
.end method

.method private checkLink(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I
    .locals 14

    const/4 v3, 0x0

    sget-object v12, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_0

    const/4 v12, 0x1

    :goto_0
    add-int v8, p3, v12

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p2

    invoke-static {v10, v0, v8}, Lcom/github/rjeschke/txtmark/Utils;->readMdLinkId(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_1

    const/4 v12, -0x1

    :goto_1
    return v12

    const/4 v3, 0x1

    :cond_0
    const/4 v12, 0x2

    goto :goto_0

    const/4 v4, 0x0

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    const/4 v1, 0x0

    add-int/lit8 v9, v8, 0x1

    move v7, v8

    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_4

    iget-object v12, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v5, :cond_3

    iget-boolean v3, v5, Lcom/github/rjeschke/txtmark/LinkRef;->isAbbrev:Z

    iget-object v4, v5, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    iget-object v1, v5, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    move v8, v7

    :cond_2
    :goto_2
    if-nez v4, :cond_11

    const/4 v12, -0x1

    goto :goto_1

    const/4 v6, 0x3

    :cond_3
    const/4 v12, -0x1

    goto :goto_1

    const/4 v0, 0x5

    :cond_4
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x28

    if-ne v12, v13, :cond_c

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_5

    const/4 v12, -0x1

    goto :goto_1

    const/4 v6, 0x7

    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3c

    if-ne v12, v13, :cond_6

    const/4 v11, 0x1

    :goto_3
    if-eqz v11, :cond_7

    add-int/lit8 v12, v8, 0x1

    const/16 v13, 0x3e

    move-object/from16 v0, p2

    invoke-static {v10, v0, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v8

    :goto_4
    move/from16 v0, p3

    if-ge v8, v0, :cond_8

    const/4 v12, -0x1

    goto :goto_1

    const/4 v12, 0x2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    const/4 v0, 0x0

    :cond_7
    move-object/from16 v0, p2

    invoke-static {v10, v0, v8}, Lcom/github/rjeschke/txtmark/Utils;->readMdLink(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v8

    goto :goto_4

    const/4 v13, 0x1

    :cond_8
    if-eqz v11, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_b

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v8

    move/from16 v0, p3

    if-le v8, v0, :cond_b

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x22

    if-ne v12, v13, :cond_b

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v12, 0x22

    move-object/from16 v0, p2

    invoke-static {v10, v0, v8, v12}, Lcom/github/rjeschke/txtmark/Utils;->readUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_a

    const/4 v12, -0x1

    goto/16 :goto_1

    const/4 v2, 0x5

    :cond_a
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v8}, Lcom/github/rjeschke/txtmark/Utils;->skipSpaces(Ljava/lang/String;I)I

    move-result v8

    const/4 v12, -0x1

    if-ne v8, v12, :cond_b

    const/4 v12, -0x1

    goto/16 :goto_1

    const/4 v7, 0x5

    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x29

    if-eq v12, v13, :cond_2

    const/4 v12, -0x1

    goto/16 :goto_1

    const/4 v10, 0x6

    :cond_c
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5b

    if-ne v12, v13, :cond_f

    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v12, 0x5d

    move-object/from16 v0, p2

    invoke-static {v10, v0, v8, v12}, Lcom/github/rjeschke/txtmark/Utils;->readRawUntil(Ljava/lang/StringBuilder;Ljava/lang/String;IC)I

    move-result v8

    move/from16 v0, p3

    if-ge v8, v0, :cond_d

    const/4 v12, -0x1

    goto/16 :goto_1

    const/4 v12, 0x5

    :cond_d
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_e

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v12, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v5, :cond_2

    iget-object v4, v5, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    iget-object v1, v5, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    goto/16 :goto_2

    const/4 v8, 0x7

    :cond_e
    move-object v2, v6

    goto :goto_5

    const/4 v9, 0x3

    :cond_f
    iget-object v12, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/rjeschke/txtmark/LinkRef;

    if-eqz v5, :cond_10

    iget-boolean v3, v5, Lcom/github/rjeschke/txtmark/LinkRef;->isAbbrev:Z

    iget-object v4, v5, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    iget-object v1, v5, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    move v8, v7

    goto/16 :goto_2

    const/4 v13, 0x2

    :cond_10
    const/4 v12, -0x1

    goto/16 :goto_1

    const/4 v2, 0x6

    :cond_11
    sget-object v12, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    move-object/from16 v0, p4

    if-ne v0, v12, :cond_15

    if-eqz v3, :cond_13

    if-eqz v1, :cond_13

    iget-boolean v12, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-nez v12, :cond_12

    const/4 v12, -0x1

    goto/16 :goto_1

    const/4 v2, 0x6

    :cond_12
    const-string v12, "<abbr title=\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {p1, v1, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v12, "\">"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    sget-object v13, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {p0, p1, v6, v12, v13}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    const-string v12, "</abbr>"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v12, v8

    goto/16 :goto_1

    const/4 v2, 0x7

    :cond_13
    iget-object v12, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v12, v12, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v12, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openLink(Ljava/lang/StringBuilder;)V

    const-string v12, " href=\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {p1, v4, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/16 v12, 0x22

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_14

    const-string v12, " title=\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {p1, v1, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/16 v12, 0x22

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    const/16 v12, 0x3e

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    sget-object v13, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {p0, p1, v6, v12, v13}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    const-string v12, "</a>"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    const/4 v8, 0x2

    :cond_15
    iget-object v12, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v12, v12, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v12, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openImage(Ljava/lang/StringBuilder;)V

    const-string v12, " src=\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {p1, v4, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const-string v12, "\" alt=\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {p1, v6, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/16 v12, 0x22

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_16

    const-string v12, " title=\""

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {p1, v1, v12, v13}, Lcom/github/rjeschke/txtmark/Utils;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/16 v12, 0x22

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    const-string v12, " />"

    invoke-virtual {p1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    const/4 v11, 0x7
.end method

.method private emitCodeLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;Z)V
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x1

    move-object v2, p2

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v4, v4, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    if-eqz v4, :cond_5

    const/4 v6, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-eqz v2, :cond_2

    const/4 v6, 0x2

    iget-boolean v4, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v4, :cond_0

    const/4 v6, 0x6

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x6

    :goto_1
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v0, 0x7

    const/4 v6, 0x4

    :cond_0
    if-eqz p4, :cond_1

    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v3, 0x4

    :cond_1
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    goto :goto_2

    const/4 v3, 0x2

    const/4 v6, 0x0

    :cond_2
    iget-object v4, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v4, v4, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    invoke-interface {v4, p1, v3, p3}, Lcom/github/rjeschke/txtmark/BlockEmitter;->emitBlock(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)V

    const/4 v6, 0x3

    :cond_3
    nop

    return-void

    const/4 v4, 0x6

    const/4 v6, 0x2

    :cond_4
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    const/4 v6, 0x1

    :cond_5
    if-eqz v2, :cond_3

    const/4 v6, 0x3

    iget-boolean v4, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v4, :cond_4

    const/4 v6, 0x5

    const/4 v1, 0x4

    :goto_3
    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_4

    const/4 v6, 0x2

    iget-object v4, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v6, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    const/4 v2, 0x4

    const/4 v6, 0x7

    :sswitch_0
    const-string v4, "&amp;"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    const/4 v6, 0x6

    const/4 v6, 0x3

    :sswitch_1
    const-string v4, "&lt;"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    const/4 v0, 0x4

    const/4 v6, 0x4

    :sswitch_2
    const-string v4, "&gt;"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    const/4 v1, 0x4

    const/4 v6, 0x5

    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method private emitLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x3

    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v3, 0x7

    :pswitch_0
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p0, p1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->emitMarkedLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V

    const/4 v3, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v3, 0x5

    :pswitch_1
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/github/rjeschke/txtmark/Emitter;->emitCodeLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;Z)V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v3, 0x0

    :pswitch_2
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/github/rjeschke/txtmark/Emitter;->emitCodeLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;Z)V

    goto :goto_0

    const/4 v3, 0x7

    const/4 v3, 0x1

    :pswitch_3
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->meta:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/github/rjeschke/txtmark/Emitter;->emitPluginLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;)V

    goto :goto_0

    const/4 v3, 0x1

    const/4 v3, 0x4

    :pswitch_4
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p0, p1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->emitRawLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V

    goto :goto_0

    const/4 v3, 0x3

    const/4 v3, 0x7

    :pswitch_5
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->lines:Lcom/github/rjeschke/txtmark/Line;

    invoke-direct {p0, p1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->emitMarkedLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v3, 0x2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private emitMarkedLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    move-object v1, p2

    const/4 v6, 0x6

    :goto_0
    if-eqz v1, :cond_2

    const/4 v6, 0x5

    iget-boolean v2, v1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v2, :cond_0

    const/4 v6, 0x4

    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    iget v3, v1, Lcom/github/rjeschke/txtmark/Line;->leading:I

    iget-object v4, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, v1, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    iget v2, v1, Lcom/github/rjeschke/txtmark/Line;->trailing:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    if-nez v2, :cond_0

    const/4 v6, 0x6

    const-string v2, "<br />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    :cond_0
    iget-object v2, v1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    if-eqz v2, :cond_1

    const/4 v6, 0x3

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    iget-boolean v2, p0, Lcom/github/rjeschke/txtmark/Emitter;->convertNewline2Br:Z

    if-eqz v2, :cond_1

    const/4 v6, 0x3

    const-string v2, "<br />"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    :cond_1
    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v2, 0x2

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    const/4 v6, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private emitRawLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;)V
    .locals 8

    const/4 v7, 0x6

    const/16 v6, 0xa

    const/4 v7, 0x5

    move-object v1, p2

    const/4 v7, 0x3

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    if-eqz v5, :cond_4

    const/4 v7, 0x7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x3

    :goto_0
    if-eqz v1, :cond_1

    const/4 v7, 0x5

    iget-boolean v5, v1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v5, :cond_0

    const/4 v7, 0x3

    iget-object v5, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    :cond_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v6, 0x5

    const/4 v7, 0x5

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x6

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_6

    const/4 v7, 0x7

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_3

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-boolean v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->safeMode:Z

    invoke-static {v4, v0, v2, v5}, Lcom/github/rjeschke/txtmark/Utils;->readXML(Ljava/lang/StringBuilder;Ljava/lang/String;IZ)I

    move-result v3

    const/4 v7, 0x1

    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    const/4 v7, 0x6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    move v2, v3

    const/4 v7, 0x5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v3, 0x3

    const/4 v7, 0x5

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    const/4 v3, 0x2

    const/4 v7, 0x4

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    const/4 v7, 0x5

    const/4 v7, 0x6

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    const/4 v7, 0x5

    iget-boolean v5, v1, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-nez v5, :cond_5

    const/4 v7, 0x0

    iget-object v5, v1, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :cond_5
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x7

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_3

    const/4 v4, 0x5

    const/4 v7, 0x4

    :cond_6
    nop

    return-void

    const/4 v5, 0x5
.end method

.method private findToken(Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x5

    move v0, p2

    const/4 v2, 0x7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->getToken(Ljava/lang/String;I)Lcom/github/rjeschke/txtmark/MarkToken;

    move-result-object v1

    if-ne v1, p3, :cond_0

    const/4 v2, 0x2

    :goto_1
    return v0

    const/4 v1, 0x1

    const/4 v2, 0x6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x5

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    const/4 v1, 0x7
.end method

.method private getToken(Ljava/lang/String;I)Lcom/github/rjeschke/txtmark/MarkToken;
    .locals 13

    const/4 v12, 0x4

    const/16 v11, 0x2d

    const/16 v10, 0x29

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x20

    const/4 v12, 0x6

    if-lez p2, :cond_1

    add-int/lit8 v8, p2, -0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v1

    const/4 v12, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v0

    const/4 v12, 0x2

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_2

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v2

    const/4 v12, 0x5

    :goto_1
    add-int/lit8 v8, p2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    add-int/lit8 v8, p2, 0x2

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v3

    const/4 v12, 0x2

    :goto_2
    add-int/lit8 v8, p2, 0x3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_4

    add-int/lit8 v8, p2, 0x3

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Lcom/github/rjeschke/txtmark/Emitter;->whitespaceToSpace(C)C

    move-result v4

    const/4 v12, 0x5

    :goto_3
    sparse-switch v0, :sswitch_data_0

    const/4 v12, 0x1

    iget-boolean v8, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v8, :cond_0

    const/4 v12, 0x2

    sparse-switch v0, :sswitch_data_1

    const/4 v12, 0x6

    :cond_0
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    :goto_4
    return-object v5

    const/4 v3, 0x2

    :cond_1
    move v1, v5

    const/4 v12, 0x7

    goto :goto_0

    const/4 v6, 0x5

    :cond_2
    move v2, v5

    const/4 v12, 0x2

    goto :goto_1

    const/4 v11, 0x6

    :cond_3
    move v3, v5

    const/4 v12, 0x0

    goto :goto_2

    const/4 v6, 0x0

    :cond_4
    move v4, v5

    const/4 v12, 0x1

    goto :goto_3

    const/4 v0, 0x5

    const/4 v12, 0x5

    :sswitch_0
    const/16 v6, 0x2a

    if-ne v2, v6, :cond_7

    const/4 v12, 0x6

    if-ne v1, v5, :cond_5

    if-eq v3, v5, :cond_6

    :cond_5
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v10, 0x0

    :cond_6
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v6, 0x7

    const/4 v12, 0x3

    :cond_7
    if-ne v1, v5, :cond_8

    if-eq v2, v5, :cond_9

    :cond_8
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v9, 0x5

    :cond_9
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v12, 0x0

    const/4 v12, 0x5

    :sswitch_1
    const/16 v6, 0x5f

    if-ne v2, v6, :cond_c

    const/4 v12, 0x0

    if-ne v1, v5, :cond_a

    if-eq v3, v5, :cond_b

    :cond_a
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v2, 0x6

    :cond_b
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v12, 0x2

    const/4 v12, 0x3

    :cond_c
    iget-boolean v6, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v6, :cond_e

    const/4 v12, 0x5

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v5, 0x5f

    if-eq v1, v5, :cond_d

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_d

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v0, 0x1

    :cond_d
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v5, 0x2

    const/4 v12, 0x5

    :cond_e
    if-ne v1, v5, :cond_f

    if-eq v2, v5, :cond_10

    :cond_f
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v3, 0x1

    :cond_10
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v7, 0x0

    const/4 v12, 0x6

    :sswitch_2
    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v5, :cond_11

    const/16 v5, 0x7e

    if-ne v2, v5, :cond_11

    const/4 v12, 0x1

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v9, 0x1

    const/4 v12, 0x2

    :cond_11
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto :goto_4

    const/4 v5, 0x3

    const/4 v12, 0x5

    :sswitch_3
    const/16 v5, 0x5b

    if-ne v2, v5, :cond_12

    const/4 v12, 0x6

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v10, 0x0

    const/4 v12, 0x6

    :cond_12
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v7, 0x0

    const/4 v12, 0x2

    :sswitch_4
    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v5, :cond_13

    const/16 v5, 0x5b

    if-ne v2, v5, :cond_13

    const/4 v12, 0x6

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v10, 0x7

    const/4 v12, 0x7

    :cond_13
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v7, 0x6

    const/4 v12, 0x4

    :sswitch_5
    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v5, :cond_14

    const/16 v5, 0x5d

    if-ne v2, v5, :cond_14

    const/4 v12, 0x2

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v1, 0x0

    const/4 v12, 0x6

    :cond_14
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v8, 0x3

    const/4 v12, 0x5

    :sswitch_6
    const/16 v5, 0x60

    if-ne v2, v5, :cond_15

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v7, 0x1

    :cond_15
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v10, 0x0

    const/4 v12, 0x2

    :sswitch_7
    sparse-switch v2, :sswitch_data_2

    const/4 v12, 0x3

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v11, 0x5

    const/4 v12, 0x4

    :sswitch_8
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v1, 0x3

    const/4 v12, 0x2

    :sswitch_9
    iget-boolean v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v5, :cond_16

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_16

    const/4 v12, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v5, 0x4

    const/4 v12, 0x7

    :cond_16
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v7, 0x2

    const/4 v12, 0x4

    :sswitch_a
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v8, 0x3

    const/4 v12, 0x3

    :sswitch_b
    if-ne v2, v11, :cond_0

    const/4 v12, 0x3

    if-ne v3, v11, :cond_17

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v3, 0x6

    :cond_17
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v3, 0x3

    const/4 v12, 0x4

    :sswitch_c
    const/16 v5, 0x5e

    if-eq v1, v5, :cond_18

    const/16 v5, 0x5e

    if-ne v2, v5, :cond_19

    :cond_18
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v8, 0x5

    :cond_19
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v2, 0x6

    const/4 v12, 0x0

    :sswitch_d
    const/16 v5, 0x3e

    if-ne v2, v5, :cond_0

    const/4 v12, 0x7

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v3, 0x0

    const/4 v12, 0x2

    :sswitch_e
    const/16 v5, 0x2e

    if-ne v2, v5, :cond_0

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_0

    const/4 v12, 0x5

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v12, 0x0

    const/4 v12, 0x7

    :sswitch_f
    const/16 v5, 0x43

    if-ne v2, v5, :cond_1a

    if-ne v3, v10, :cond_1a

    const/4 v12, 0x5

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v5, 0x4

    const/4 v12, 0x3

    :cond_1a
    const/16 v5, 0x52

    if-ne v2, v5, :cond_1b

    if-ne v3, v10, :cond_1b

    const/4 v12, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v11, 0x4

    const/4 v12, 0x3

    :cond_1b
    const/16 v5, 0x54

    if-ne v2, v5, :cond_1c

    move v8, v6

    :goto_5
    const/16 v5, 0x4d

    if-ne v3, v5, :cond_1d

    move v5, v6

    :goto_6
    and-int/2addr v8, v5

    if-ne v4, v10, :cond_1e

    move v5, v6

    :goto_7
    and-int/2addr v5, v8

    if-eqz v5, :cond_0

    const/4 v12, 0x4

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v4, 0x6

    :cond_1c
    move v8, v7

    const/4 v12, 0x3

    goto :goto_5

    const/4 v2, 0x2

    :cond_1d
    move v5, v7

    goto :goto_6

    const/4 v3, 0x7

    :cond_1e
    move v5, v7

    goto :goto_7

    const/4 v0, 0x5

    const/4 v12, 0x2

    :sswitch_10
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v6

    if-nez v6, :cond_1f

    if-eq v2, v5, :cond_1f

    const/4 v12, 0x3

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v9, 0x2

    const/4 v12, 0x3

    :cond_1f
    if-eq v1, v5, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v12, 0x5

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    goto/16 :goto_4

    const/4 v5, 0x3

    const/4 v12, 0x7

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x26 -> :sswitch_a
        0x2a -> :sswitch_0
        0x3c -> :sswitch_9
        0x5b -> :sswitch_4
        0x5c -> :sswitch_7
        0x5d -> :sswitch_5
        0x5f -> :sswitch_1
        0x60 -> :sswitch_6
        0x7e -> :sswitch_2
    .end sparse-switch

    const/4 v12, 0x3

    nop

    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_10
        0x28 -> :sswitch_f
        0x2d -> :sswitch_b
        0x2e -> :sswitch_e
        0x3e -> :sswitch_d
        0x5e -> :sswitch_c
    .end sparse-switch

    const/4 v12, 0x0

    nop

    :sswitch_data_2
    .sparse-switch
        0x21 -> :sswitch_8
        0x22 -> :sswitch_8
        0x23 -> :sswitch_8
        0x27 -> :sswitch_8
        0x28 -> :sswitch_8
        0x29 -> :sswitch_8
        0x2a -> :sswitch_8
        0x2b -> :sswitch_8
        0x2d -> :sswitch_8
        0x2e -> :sswitch_8
        0x3c -> :sswitch_8
        0x3e -> :sswitch_8
        0x5b -> :sswitch_8
        0x5c -> :sswitch_8
        0x5d -> :sswitch_8
        0x5e -> :sswitch_8
        0x5f -> :sswitch_8
        0x60 -> :sswitch_8
        0x7b -> :sswitch_8
        0x7d -> :sswitch_8
    .end sparse-switch
.end method

.method private recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x7

    move v3, p3

    const/4 v10, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x7

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_11

    const/4 v10, 0x3

    invoke-direct {p0, p2, v3}, Lcom/github/rjeschke/txtmark/Emitter;->getToken(Ljava/lang/String;I)Lcom/github/rjeschke/txtmark/MarkToken;

    move-result-object v2

    const/4 v10, 0x1

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->NONE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-eq p4, v5, :cond_2

    if-eq v2, p4, :cond_1

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne p4, v5, :cond_0

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    if-eq v2, v5, :cond_1

    :cond_0
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne p4, v5, :cond_2

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v2, v5, :cond_2

    const/4 v10, 0x3

    :cond_1
    :goto_1
    return v3

    const/4 v9, 0x5

    const/4 v10, 0x4

    :cond_2
    sget-object v5, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v8

    aget v5, v5, v8

    packed-switch v5, :pswitch_data_0

    const/4 v10, 0x7

    :goto_2
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x6

    goto :goto_0

    const/4 v3, 0x5

    const/4 v10, 0x2

    :pswitch_0
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x5

    invoke-direct {p0, v4, p2, v3, v2}, Lcom/github/rjeschke/txtmark/Emitter;->checkLink(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x0

    if-lez v1, :cond_4

    const/4 v10, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    move v3, v1

    goto :goto_3

    const/4 v10, 0x3

    const/4 v10, 0x0

    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    const/4 v0, 0x2

    const/4 v10, 0x1

    :pswitch_1
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x4

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, p2, v5, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x0

    if-lez v1, :cond_5

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openEmphasis(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeEmphasis(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x6

    move v3, v1

    goto :goto_3

    const/4 v9, 0x5

    const/4 v10, 0x7

    :cond_5
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    const/4 v5, 0x4

    const/4 v10, 0x0

    :pswitch_2
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x3

    add-int/lit8 v5, v3, 0x2

    invoke-direct {p0, v4, p2, v5, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x1

    if-lez v1, :cond_6

    const/4 v10, 0x6

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openStrong(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeStrong(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x2

    add-int/lit8 v3, v1, 0x1

    goto :goto_3

    const/4 v5, 0x5

    const/4 v10, 0x2

    :cond_6
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v7, 0x7

    const/4 v10, 0x6

    :pswitch_3
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x5

    add-int/lit8 v5, v3, 0x2

    invoke-direct {p0, v4, p2, v5, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x0

    if-lez v1, :cond_7

    const/4 v10, 0x7

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openStrike(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeStrike(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x6

    add-int/lit8 v3, v1, 0x1

    goto/16 :goto_3

    const/4 v10, 0x4

    const/4 v10, 0x7

    :cond_7
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v5, 0x3

    const/4 v10, 0x3

    :pswitch_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x7

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, p2, v5, v2}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x4

    if-lez v1, :cond_8

    const/4 v10, 0x6

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openSuper(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeSuper(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x1

    move v3, v1

    goto/16 :goto_3

    const/4 v1, 0x0

    const/4 v10, 0x0

    :cond_8
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v4, 0x6

    const/4 v10, 0x6

    :pswitch_5
    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v2, v5, :cond_9

    const/4 v5, 0x2

    :goto_4
    add-int v0, v3, v5

    const/4 v10, 0x7

    invoke-direct {p0, p2, v0, v2}, Lcom/github/rjeschke/txtmark/Emitter;->findToken(Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x2

    if-lez v1, :cond_d

    const/4 v10, 0x0

    sget-object v5, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    if-ne v2, v5, :cond_a

    move v5, v6

    :goto_5
    add-int v3, v1, v5

    const/4 v10, 0x3

    :goto_6
    if-ge v0, v1, :cond_b

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_b

    const/4 v10, 0x5

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    const/4 v4, 0x7

    :cond_9
    move v5, v6

    const/4 v10, 0x1

    goto :goto_4

    const/4 v8, 0x7

    :cond_a
    move v5, v7

    const/4 v10, 0x7

    goto :goto_5

    const/4 v3, 0x4

    const/4 v10, 0x3

    :cond_b
    if-ge v0, v1, :cond_3

    const/4 v10, 0x1

    :goto_7
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_c

    const/4 v10, 0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    const/4 v8, 0x6

    const/4 v10, 0x3

    :cond_c
    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openCodeSpan(Ljava/lang/StringBuilder;)V

    const/4 v10, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/github/rjeschke/txtmark/Utils;->appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v10, 0x3

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v5, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeCodeSpan(Ljava/lang/StringBuilder;)V

    goto/16 :goto_3

    const/4 v2, 0x6

    const/4 v10, 0x6

    :cond_d
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v0, 0x3

    const/4 v10, 0x7

    :pswitch_6
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x7

    invoke-direct {p0, v4, p2, v3}, Lcom/github/rjeschke/txtmark/Emitter;->checkHtml(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    const/4 v10, 0x7

    if-lez v1, :cond_e

    const/4 v10, 0x6

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x7

    move v3, v1

    goto/16 :goto_3

    const/4 v4, 0x7

    const/4 v10, 0x6

    :cond_e
    const-string v5, "&lt;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v4, 0x5

    const/4 v10, 0x2

    :pswitch_7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x6

    invoke-static {v4, p2, v3}, Lcom/github/rjeschke/txtmark/Emitter;->checkEntity(Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    const/4 v10, 0x7

    if-lez v1, :cond_f

    const/4 v10, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    move v3, v1

    goto/16 :goto_3

    const/4 v7, 0x1

    const/4 v10, 0x0

    :cond_f
    const-string v5, "&amp;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v4, 0x3

    const/4 v10, 0x0

    :pswitch_8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v10, 0x1

    add-int/lit8 v5, v3, 0x2

    sget-object v8, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_CLOSE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-direct {p0, v4, p2, v5, v8}, Lcom/github/rjeschke/txtmark/Emitter;->recursiveEmitLine(Ljava/lang/StringBuilder;Ljava/lang/String;ILcom/github/rjeschke/txtmark/MarkToken;)I

    move-result v1

    const/4 v10, 0x3

    if-lez v1, :cond_10

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    if-eqz v5, :cond_10

    const/4 v10, 0x6

    iget-object v5, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v5, v5, Lcom/github/rjeschke/txtmark/Configuration;->specialLinkEmitter:Lcom/github/rjeschke/txtmark/SpanEmitter;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, p1, v8}, Lcom/github/rjeschke/txtmark/SpanEmitter;->emitSpan(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/4 v10, 0x4

    add-int/lit8 v3, v1, 0x1

    goto/16 :goto_3

    const/4 v3, 0x3

    const/4 v10, 0x1

    :cond_10
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v2, 0x7

    const/4 v10, 0x5

    :pswitch_9
    const-string v5, "&copy;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    add-int/lit8 v3, v3, 0x2

    const/4 v10, 0x1

    goto/16 :goto_3

    const/4 v2, 0x7

    const/4 v10, 0x7

    :pswitch_a
    const-string v5, "&reg;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    add-int/lit8 v3, v3, 0x2

    const/4 v10, 0x6

    goto/16 :goto_3

    const/4 v3, 0x7

    const/4 v10, 0x7

    :pswitch_b
    const-string v5, "&trade;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    add-int/lit8 v3, v3, 0x3

    const/4 v10, 0x5

    goto/16 :goto_3

    const/4 v2, 0x5

    const/4 v10, 0x6

    :pswitch_c
    const-string v5, "&ndash;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x5

    goto/16 :goto_3

    const/4 v9, 0x1

    const/4 v10, 0x1

    :pswitch_d
    const-string v5, "&mdash;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    add-int/lit8 v3, v3, 0x2

    const/4 v10, 0x5

    goto/16 :goto_3

    const/4 v10, 0x0

    const/4 v10, 0x4

    :pswitch_e
    const-string v5, "&hellip;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x5

    add-int/lit8 v3, v3, 0x2

    const/4 v10, 0x6

    goto/16 :goto_3

    const/4 v0, 0x7

    const/4 v10, 0x1

    :pswitch_f
    const-string v5, "&laquo;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x1

    goto/16 :goto_3

    const/4 v0, 0x2

    const/4 v10, 0x3

    :pswitch_10
    const-string v5, "&raquo;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x6

    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x3

    goto/16 :goto_3

    const/4 v5, 0x7

    const/4 v10, 0x6

    :pswitch_11
    const-string v5, "&rdquo;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v5, 0x5

    const/4 v10, 0x6

    :pswitch_12
    const-string v5, "&ldquo;"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v6, 0x2

    const/4 v10, 0x1

    :pswitch_13
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    const/4 v6, 0x4

    const/4 v10, 0x0

    :cond_11
    const/4 v3, -0x1

    goto/16 :goto_1

    const/4 v6, 0x0

    const/4 v10, 0x5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method private static whitespaceToSpace(C)C
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x20

    :cond_0
    return p0

    const/4 v1, 0x4
.end method


# virtual methods
.method public addLinkRef(Ljava/lang/String;Lcom/github/rjeschke/txtmark/LinkRef;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->linkRefs:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x6

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public emit(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V
    .locals 7

    const/4 v6, 0x5

    const/16 v5, 0x3e

    const/16 v4, 0x22

    const/4 v3, 0x0

    const/4 v6, 0x3

    invoke-virtual {p2}, Lcom/github/rjeschke/txtmark/Block;->removeSurroundingEmptyLines()V

    const/4 v6, 0x5

    sget-object v1, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v6, 0x6

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Lcom/github/rjeschke/txtmark/Block;->hasLines()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v6, 0x3

    invoke-direct {p0, p1, p2}, Lcom/github/rjeschke/txtmark/Emitter;->emitLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V

    const/4 v6, 0x2

    :cond_1
    sget-object v1, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Block;->type:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v2}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    const/4 v6, 0x5

    :cond_2
    :goto_1
    :pswitch_1
    nop

    return-void

    const/4 v4, 0x2

    const/4 v6, 0x3

    :pswitch_2
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->horizontalRuler(Ljava/lang/StringBuilder;)V

    goto :goto_1

    const/4 v1, 0x1

    const/4 v6, 0x1

    :pswitch_3
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    iget v2, p2, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    invoke-interface {v1, p1, v2}, Lcom/github/rjeschke/txtmark/Decorator;->openHeadline(Ljava/lang/StringBuilder;I)V

    const/4 v6, 0x0

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/4 v6, 0x4

    const-string v1, " id=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v3, v2}, Lcom/github/rjeschke/txtmark/Utils;->appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v6, 0x4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    const/4 v0, 0x0

    const/4 v6, 0x7

    :pswitch_4
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openParagraph(Ljava/lang/StringBuilder;)V

    goto :goto_0

    const/4 v2, 0x3

    const/4 v6, 0x6

    :pswitch_5
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    if-nez v1, :cond_0

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openCodeBlock(Ljava/lang/StringBuilder;)V

    goto :goto_0

    const/4 v6, 0x6

    const/4 v6, 0x2

    :pswitch_6
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openBlockquote(Ljava/lang/StringBuilder;)V

    goto :goto_0

    const/4 v4, 0x4

    const/4 v6, 0x7

    :pswitch_7
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openUnorderedList(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    const/4 v6, 0x2

    const/4 v6, 0x0

    :pswitch_8
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openOrderedList(Ljava/lang/StringBuilder;)V

    goto/16 :goto_0

    const/4 v0, 0x7

    const/4 v6, 0x3

    :pswitch_9
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->openListItem(Ljava/lang/StringBuilder;)V

    const/4 v6, 0x5

    iget-boolean v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->useExtensions:Z

    if-eqz v1, :cond_4

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v6, 0x1

    const-string v1, " id=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    iget-object v1, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/github/rjeschke/txtmark/Block;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v1, v3, v2}, Lcom/github/rjeschke/txtmark/Utils;->appendCode(Ljava/lang/StringBuilder;Ljava/lang/String;II)V

    const/4 v6, 0x4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x7

    :cond_4
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v6, 0x6

    :cond_5
    iget-object v0, p2, Lcom/github/rjeschke/txtmark/Block;->blocks:Lcom/github/rjeschke/txtmark/Block;

    const/4 v6, 0x5

    :goto_2
    if-eqz v0, :cond_1

    const/4 v6, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/github/rjeschke/txtmark/Emitter;->emit(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Block;)V

    const/4 v6, 0x3

    iget-object v0, v0, Lcom/github/rjeschke/txtmark/Block;->next:Lcom/github/rjeschke/txtmark/Block;

    goto :goto_2

    const/4 v4, 0x1

    const/4 v6, 0x5

    :pswitch_a
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    iget v2, p2, Lcom/github/rjeschke/txtmark/Block;->hlDepth:I

    invoke-interface {v1, p1, v2}, Lcom/github/rjeschke/txtmark/Decorator;->closeHeadline(Ljava/lang/StringBuilder;I)V

    goto/16 :goto_1

    const/4 v2, 0x0

    const/4 v6, 0x4

    :pswitch_b
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeParagraph(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    const/4 v2, 0x7

    const/4 v6, 0x6

    :pswitch_c
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->codeBlockEmitter:Lcom/github/rjeschke/txtmark/BlockEmitter;

    if-nez v1, :cond_2

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeCodeBlock(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    const/4 v5, 0x7

    const/4 v6, 0x0

    :pswitch_d
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeBlockquote(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    const/4 v5, 0x0

    const/4 v6, 0x4

    :pswitch_e
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeUnorderedList(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    const/4 v2, 0x4

    const/4 v6, 0x1

    :pswitch_f
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeOrderedList(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    const/4 v0, 0x1

    const/4 v6, 0x4

    :pswitch_10
    iget-object v1, p0, Lcom/github/rjeschke/txtmark/Emitter;->config:Lcom/github/rjeschke/txtmark/Configuration;

    iget-object v1, v1, Lcom/github/rjeschke/txtmark/Configuration;->decorator:Lcom/github/rjeschke/txtmark/Decorator;

    invoke-interface {v1, p1}, Lcom/github/rjeschke/txtmark/Decorator;->closeListItem(Ljava/lang/StringBuilder;)V

    goto/16 :goto_1

    const/4 v5, 0x4

    const/4 v6, 0x6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    const/4 v6, 0x4

    nop

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected emitPluginLines(Ljava/lang/StringBuilder;Lcom/github/rjeschke/txtmark/Line;Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v8, 0x4

    move-object v2, p2

    const/4 v8, 0x2

    move-object v0, p3

    const/4 v8, 0x3

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x4

    const/16 v7, 0x20

    invoke-virtual {p3, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v8, 0x2

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    const/4 v8, 0x6

    const/4 v7, 0x0

    invoke-virtual {p3, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x3

    if-eqz v6, :cond_0

    const/4 v8, 0x1

    invoke-virtual {p0, v6}, Lcom/github/rjeschke/txtmark/Emitter;->parsePluginParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    const/4 v8, 0x2

    :cond_0
    if-nez v4, :cond_1

    const/4 v8, 0x1

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x1

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x3

    :goto_0
    if-eqz v2, :cond_3

    const/4 v8, 0x5

    iget-boolean v7, v2, Lcom/github/rjeschke/txtmark/Line;->isEmpty:Z

    if-eqz v7, :cond_2

    const/4 v8, 0x0

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x7

    :goto_1
    iget-object v2, v2, Lcom/github/rjeschke/txtmark/Line;->next:Lcom/github/rjeschke/txtmark/Line;

    goto :goto_0

    const/4 v3, 0x7

    const/4 v8, 0x7

    :cond_2
    iget-object v7, v2, Lcom/github/rjeschke/txtmark/Line;->value:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v8, 0x0

    const/4 v8, 0x1

    :cond_3
    iget-object v7, p0, Lcom/github/rjeschke/txtmark/Emitter;->plugins:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/markdown4j/Plugin;

    const/4 v8, 0x2

    if-eqz v5, :cond_4

    const/4 v8, 0x3

    invoke-virtual {v5, p1, v3, v4}, Lorg/markdown4j/Plugin;->emit(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/Map;)V

    const/4 v8, 0x0

    :cond_4
    nop

    return-void

    const/4 v7, 0x0
.end method

.method protected parsePluginParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v5, 0x6

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x3

    const-string v3, "(\\w+)=\"*((?<=\")[^\"]+(?=\")|([^\\s]+))\"*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v5, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    const/4 v5, 0x7

    const/4 v5, 0x2

    :cond_0
    return-object v2

    const/4 v4, 0x7
.end method

.method public register(Lorg/markdown4j/Plugin;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/github/rjeschke/txtmark/Emitter;->plugins:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/markdown4j/Plugin;->getIdPlugin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    nop

    return-void

    const/4 v2, 0x7
.end method
