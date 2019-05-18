.class public Lcom/google/api/client/xml/GenericXml;
.super Lcom/google/api/client/util/GenericData;
.source "GenericXml.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/api/client/util/GenericData;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/api/client/xml/GenericXml;->clone()Lcom/google/api/client/xml/GenericXml;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/client/xml/GenericXml;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/google/api/client/util/GenericData;->clone()Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/GenericXml;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/api/client/xml/GenericXml;->clone()Lcom/google/api/client/xml/GenericXml;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/xml/GenericXml;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/xml/GenericXml;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;

    move-result-object v0

    check-cast v0, Lcom/google/api/client/xml/GenericXml;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/api/client/xml/GenericXml;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 63
    .local v0, "namespaceDictionary":Lcom/google/api/client/xml/XmlNamespaceDictionary;
    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .end local v0    # "namespaceDictionary":Lcom/google/api/client/xml/XmlNamespaceDictionary;
    invoke-direct {v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;-><init>()V

    .line 66
    .restart local v0    # "namespaceDictionary":Lcom/google/api/client/xml/XmlNamespaceDictionary;
    :cond_0
    iget-object v1, p0, Lcom/google/api/client/xml/GenericXml;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toStringOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
