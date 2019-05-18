.class public final Lcom/google/api/client/xml/XmlNamespaceDictionary;
.super Ljava/lang/Object;
.source "XmlNamespaceDictionary.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
    }
.end annotation


# instance fields
.field private final namespaceAliasToUriMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final namespaceUriToAliasMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    .line 319
    return-void
.end method

.method private computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V
    .locals 12
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p2, "aliases":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 251
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 252
    .local v8, "value":Ljava/lang/Object;
    if-eqz v8, :cond_0

    .line 253
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 254
    .local v6, "name":Ljava/lang/String;
    const-string v10, "text()"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 255
    const/16 v10, 0x3a

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 256
    .local v1, "colon":I
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_4

    const/4 v5, 0x1

    .line 257
    .local v5, "isAttribute":Z
    :goto_1
    const/4 v10, -0x1

    if-ne v1, v10, :cond_1

    if-nez v5, :cond_2

    .line 258
    :cond_1
    const/4 v10, -0x1

    if-ne v1, v10, :cond_5

    const-string v0, ""

    .line 259
    .local v0, "alias":Ljava/lang/String;
    :goto_2
    invoke-interface {p2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 261
    .end local v0    # "alias":Ljava/lang/String;
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 262
    .local v9, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v5, :cond_0

    invoke-static {v9}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 263
    instance-of v10, v8, Ljava/lang/Iterable;

    if-nez v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 264
    :cond_3
    invoke-static {v8}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 265
    .local v7, "subValue":Ljava/lang/Object;
    invoke-direct {p0, v7, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    goto :goto_3

    .line 256
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isAttribute":Z
    .end local v7    # "subValue":Ljava/lang/Object;
    .end local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 258
    .restart local v5    # "isAttribute":Z
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x40

    if-ne v10, v11, :cond_6

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v6, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    .line 268
    .restart local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-direct {p0, v8, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    goto :goto_0

    .line 274
    .end local v1    # "colon":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "isAttribute":Z
    .end local v6    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    .end local v9    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_8
    return-void
.end method

.method private serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "element"    # Ljava/lang/Object;
    .param p4, "errorOnUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const-string v1, ""

    .line 223
    .local v1, "elementAlias":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 224
    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 225
    .local v0, "colon":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 229
    .end local v0    # "colon":I
    :cond_0
    invoke-direct {p0, p1, p3, p4, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 230
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 231
    return-void
.end method

.method private serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementNamespaceUri"    # Ljava/lang/String;
    .param p3, "elementLocalName"    # Ljava/lang/String;
    .param p4, "element"    # Ljava/lang/Object;
    .param p5, "errorOnUnknown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 214
    .local v0, "elementAlias":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, p1, p4, p5, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 217
    return-void

    .line 213
    .end local v0    # "elementAlias":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startDoc(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/Object;ZLjava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "errorOnUnknown"    # Z
    .param p4, "elementAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 236
    invoke-interface {p1, v4, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 237
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 238
    .local v1, "aliases":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Ljava/lang/String;>;"
    invoke-direct {p0, p2, v1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->computeAliases(Ljava/lang/Object;Ljava/util/SortedSet;)V

    .line 239
    if-eqz p4, :cond_0

    .line 240
    invoke-interface {v1, p4}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    invoke-interface {v1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 243
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "uri":Ljava/lang/String;
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    .end local v0    # "alias":Ljava/lang/String;
    .end local v3    # "uri":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    invoke-direct {v4, p0, p2, p3}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    return-object v4
.end method

.method static toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 412
    instance-of v2, p0, Ljava/lang/Float;

    if-eqz v2, :cond_1

    move-object v1, p0

    .line 413
    check-cast v1, Ljava/lang/Float;

    .line 414
    .local v1, "f":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 415
    const-string v2, "INF"

    .line 437
    .end local v1    # "f":Ljava/lang/Float;
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 417
    .restart local v1    # "f":Ljava/lang/Float;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    .line 418
    const-string v2, "-INF"

    goto :goto_0

    .line 421
    .end local v1    # "f":Ljava/lang/Float;
    :cond_1
    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 422
    check-cast v0, Ljava/lang/Double;

    .line 423
    .local v0, "d":Ljava/lang/Double;
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 424
    const-string v2, "INF"

    goto :goto_0

    .line 426
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    .line 427
    const-string v2, "-INF"

    goto :goto_0

    .line 430
    .end local v0    # "d":Ljava/lang/Double;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Number;

    if-nez v2, :cond_4

    instance-of v2, p0, Ljava/lang/Boolean;

    if-eqz v2, :cond_5

    .line 431
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 433
    :cond_5
    instance-of v2, p0, Lcom/google/api/client/util/DateTime;

    if-eqz v2, :cond_6

    .line 434
    check-cast p0, Lcom/google/api/client/util/DateTime;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 436
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v2, p0, Ljava/lang/Enum;

    if-eqz v2, :cond_7

    .line 437
    check-cast p0, Ljava/lang/Enum;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/Enum;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 439
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unrecognized value type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public declared-synchronized getAliasForUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAliasToUriMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getNamespaceAliasForUriErrorOnUnknown(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "namespaceUri"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 311
    invoke-virtual {p0, p1}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "invalid XML: no alias declared for namesapce <%s>; work-around by setting XML namepace directly by calling the set method of %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const-class v3, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    return-object v0

    :cond_0
    move v1, v3

    .line 312
    goto :goto_0
.end method

.method getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "errorOnUnknown"    # Z
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 294
    invoke-virtual {p0, p2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 296
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    const-string v4, "unrecognized alias: %s"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "(default)"

    :goto_1
    aput-object v2, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://unknown/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 296
    goto :goto_0

    :cond_2
    move-object v2, p2

    goto :goto_1
.end method

.method public declared-synchronized getUriForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUriToAliasMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementName"    # Ljava/lang/String;
    .param p3, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 209
    return-void
.end method

.method public serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementNamespaceUri"    # Ljava/lang/String;
    .param p3, "elementLocalName"    # Ljava/lang/String;
    .param p4, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 195
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 196
    return-void
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    const/4 v2, 0x0

    .line 138
    .local v2, "previousUri":Ljava/lang/String;
    const/4 v1, 0x0

    .line 139
    .local v1, "previousAlias":Ljava/lang/String;
    if-nez p2, :cond_3

    .line 140
    if-eqz p1, :cond_0

    .line 141
    :try_start_0
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 154
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 155
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_1
    if-eqz v1, :cond_2

    .line 158
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_2
    monitor-exit p0

    return-object p0

    .line 143
    :cond_3
    if-nez p1, :cond_4

    .line 144
    :try_start_1
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 146
    :cond_4
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceAliasToUriMap:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 148
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 149
    iget-object v3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary;->namespaceUriToAliasMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public toStringOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "element"    # Ljava/lang/Object;

    .prologue
    .line 173
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 174
    .local v2, "writer":Ljava/io/StringWriter;
    invoke-static {}, Lcom/google/api/client/xml/Xml;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    .line 175
    .local v1, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 176
    const/4 v3, 0x0

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 177
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 178
    .end local v1    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v2    # "writer":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
