.class public Lorg/htmlcleaner/EndTagToken;
.super Lorg/htmlcleaner/TagToken;
.source "EndTagToken.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/htmlcleaner/TagToken;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lorg/htmlcleaner/TagToken;-><init>(Ljava/lang/String;)V

    .line 53
    return-void

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public serialize(Lorg/htmlcleaner/Serializer;Ljava/io/Writer;)V
    .locals 0
    .param p1, "serializer"    # Lorg/htmlcleaner/Serializer;
    .param p2, "writer"    # Ljava/io/Writer;

    .prologue
    .line 61
    return-void
.end method

.method setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "attName"    # Ljava/lang/String;
    .param p2, "attValue"    # Ljava/lang/String;

    .prologue
    .line 57
    return-void
.end method
