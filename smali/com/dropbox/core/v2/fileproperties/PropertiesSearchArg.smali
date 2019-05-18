.class Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;
.super Ljava/lang/Object;
.source "PropertiesSearchArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;
    }
.end annotation


# instance fields
.field protected final queries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;"
        }
    .end annotation
.end field

.field protected final templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;>;"
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->FILTER_NONE:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;-><init>(Ljava/util/List;Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/dropbox/core/v2/fileproperties/TemplateFilter;)V
    .locals 3
    .param p2, "templateFilter"    # Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;",
            "Lcom/dropbox/core/v2/fileproperties/TemplateFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "queries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'queries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List \'queries\' has fewer than 1 items"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 42
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;

    .line 43
    .local v0, "x":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
    if-nez v0, :cond_2

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'queries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    .end local v0    # "x":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;
    :cond_3
    iput-object p1, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    .line 48
    if-nez p2, :cond_4

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'templateFilter\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 100
    if-ne p1, p0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 108
    check-cast v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;

    .line 109
    .local v0, "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    iget-object v4, v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    .line 110
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/fileproperties/TemplateFilter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;
    :cond_5
    move v1, v2

    .line 114
    goto :goto_0
.end method

.method public getQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/fileproperties/PropertiesSearchQuery;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    return-object v0
.end method

.method public getTemplateFilter()Lcom/dropbox/core/v2/fileproperties/TemplateFilter;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->queries:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg;->templateFilter:Lcom/dropbox/core/v2/fileproperties/TemplateFilter;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 95
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/fileproperties/PropertiesSearchArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
