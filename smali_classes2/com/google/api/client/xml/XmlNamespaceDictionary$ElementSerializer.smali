.class Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
.super Ljava/lang/Object;
.source "XmlNamespaceDictionary.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/xml/XmlNamespaceDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSerializer"
.end annotation


# instance fields
.field final attributeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final attributeValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final errorOnUnknown:Z

.field final subElementNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final subElementValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field textValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V
    .locals 7
    .param p2, "elementValue"    # Ljava/lang/Object;
    .param p3, "errorOnUnknown"    # Z

    .prologue
    .line 328
    iput-object p1, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    .line 323
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    .line 324
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    .line 325
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    .line 326
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    .line 329
    iput-boolean p3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    .line 330
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 331
    .local v4, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {p2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 332
    iput-object p2, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    .line 350
    :cond_0
    return-void

    .line 334
    :cond_1
    invoke-static {p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 335
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 336
    .local v2, "fieldValue":Ljava/lang/Object;
    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 337
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 338
    .local v1, "fieldName":Ljava/lang/String;
    const-string v5, "text()"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 339
    iput-object v2, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    goto :goto_0

    .line 340
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_4

    .line 341
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_4
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "elementLocalName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 355
    .local v3, "elementNamespaceUri":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 356
    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 357
    .local v1, "colon":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 358
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    const-string v0, ""

    .line 359
    .local v0, "alias":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iget-boolean v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    invoke-virtual {v4, v5, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "colon":I
    :cond_0
    invoke-virtual {p0, p1, v3, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void

    .line 358
    .restart local v1    # "colon":I
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "elementNamespaceUri"    # Ljava/lang/String;
    .param p3, "elementLocalName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-boolean v4, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    .line 367
    .local v4, "errorOnUnknown":Z
    if-nez p3, :cond_1

    .line 368
    if-eqz v4, :cond_0

    .line 369
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "XML name not specified"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 371
    :cond_0
    const-string p3, "unknownName"

    .line 373
    :cond_1
    invoke-interface/range {p1 .. p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 376
    .local v7, "num":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_3

    .line 377
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    .local v1, "attributeName":Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 379
    .local v3, "colon":I
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "attributeLocalName":Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v3, v12, :cond_2

    const/4 v2, 0x0

    .line 382
    .local v2, "attributeNamespaceUri":Ljava/lang/String;
    :goto_1
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v2, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 380
    .end local v2    # "attributeNamespaceUri":Ljava/lang/String;
    :cond_2
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 386
    .end local v0    # "attributeLocalName":Ljava/lang/String;
    .end local v1    # "attributeName":Ljava/lang/String;
    .end local v3    # "colon":I
    :cond_3
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    if-eqz v12, :cond_4

    .line 387
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    invoke-static {v12}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 390
    :cond_4
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 391
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v7, :cond_9

    .line 392
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 393
    .local v10, "subElementValue":Ljava/lang/Object;
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 394
    .local v9, "subElementName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 395
    .local v11, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v12, v10, Ljava/lang/Iterable;

    if-nez v12, :cond_5

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 396
    :cond_5
    invoke-static {v10}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 397
    .local v8, "subElement":Ljava/lang/Object;
    if-eqz v8, :cond_6

    invoke-static {v8}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 398
    new-instance v12, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    iget-object v13, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v12, v13, v8, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    invoke-virtual {v12, p1, v9}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_3

    .line 403
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "subElement":Ljava/lang/Object;
    :cond_7
    new-instance v12, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    iget-object v13, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v12, v13, v10, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    invoke-virtual {v12, p1, v9}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 391
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 407
    .end local v9    # "subElementName":Ljava/lang/String;
    .end local v10    # "subElementValue":Ljava/lang/Object;
    .end local v11    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_9
    invoke-interface/range {p1 .. p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    return-void
.end method
