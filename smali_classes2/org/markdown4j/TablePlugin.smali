.class public Lorg/markdown4j/TablePlugin;
.super Lorg/markdown4j/Plugin;
.source "TablePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "table"

    invoke-direct {p0, v0}, Lorg/markdown4j/Plugin;-><init>(Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method private findSeparatorLine(ILjava/util/List;)I
    .locals 3
    .param p1, "beginIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 15
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 16
    .local v1, "line":Ljava/lang/String;
    const-string v2, "- "

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 20
    .end local v0    # "i":I
    .end local v1    # "line":Ljava/lang/String;
    :goto_1
    return v0

    .line 14
    .restart local v0    # "i":I
    .restart local v1    # "line":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    .end local v1    # "line":Ljava/lang/String;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public emit(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .param p1, "out"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, -0x1

    .line 26
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 27
    .local v5, "sb2":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .line 28
    .local v4, "lparams":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-direct {p0, v6, p2}, Lorg/markdown4j/TablePlugin;->findSeparatorLine(ILjava/util/List;)I

    move-result v3

    .line 29
    .local v3, "ioh":I
    const/4 v1, 0x0

    .line 30
    .local v1, "headerLine":Ljava/lang/String;
    const/4 v0, 0x0

    .line 31
    .local v0, "footerLine":Ljava/lang/String;
    if-eq v3, v7, :cond_0

    .line 32
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "headerLine":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 33
    .restart local v1    # "headerLine":Ljava/lang/String;
    invoke-direct {p0, v3, p2}, Lorg/markdown4j/TablePlugin;->findSeparatorLine(ILjava/util/List;)I

    move-result v2

    .line 34
    .local v2, "iof":I
    if-eq v2, v7, :cond_0

    .line 35
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "footerLine":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 39
    .end local v2    # "iof":I
    .restart local v0    # "footerLine":Ljava/lang/String;
    :cond_0
    return-void
.end method
