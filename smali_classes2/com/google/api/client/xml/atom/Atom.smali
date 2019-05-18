.class public final Lcom/google/api/client/xml/atom/Atom;
.super Ljava/lang/Object;
.source "Atom.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/xml/atom/Atom$StopAtAtomEntry;
    }
.end annotation


# static fields
.field public static final ATOM_NAMESPACE:Ljava/lang/String; = "http://www.w3.org/2005/Atom"

.field public static final MEDIA_TYPE:Ljava/lang/String;

.field private static final SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    const-string v1, "application/atom+xml"

    invoke-direct {v0, v1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/api/client/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->setCharsetParameter(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/HttpMediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/xml/atom/Atom;->MEDIA_TYPE:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/google/api/client/util/escape/PercentEscaper;

    const-string v1, " !\"#$&\'()*+,-./:;<=>?@[\\]^_`{|}~"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/api/client/util/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/api/client/xml/atom/Atom;->SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static checkContentType(Ljava/lang/String;)V
    .locals 5
    .param p0, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-eqz p0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/api/client/util/Preconditions;->checkArgument(Z)V

    .line 77
    sget-object v0, Lcom/google/api/client/xml/atom/Atom;->MEDIA_TYPE:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong content type: expected <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/api/client/xml/atom/Atom;->MEDIA_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> but got <%s>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0
.end method

.method public static setSlugHeader(Lcom/google/api/client/http/HttpHeaders;Ljava/lang/String;)V
    .locals 4
    .param p0, "headers"    # Lcom/google/api/client/http/HttpHeaders;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "Slug"

    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpHeaders;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "Slug"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/api/client/xml/atom/Atom;->SLUG_ESCAPER:Lcom/google/api/client/util/escape/PercentEscaper;

    invoke-virtual {v3, p1}, Lcom/google/api/client/util/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/api/client/util/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/api/client/http/HttpHeaders;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/http/HttpHeaders;

    goto :goto_0
.end method
