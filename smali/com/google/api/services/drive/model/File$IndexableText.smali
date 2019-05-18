.class public final Lcom/google/api/services/drive/model/File$IndexableText;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IndexableText"
.end annotation


# instance fields
.field private text:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1949
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1949
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$IndexableText;->clone()Lcom/google/api/services/drive/model/File$IndexableText;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1949
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$IndexableText;->clone()Lcom/google/api/services/drive/model/File$IndexableText;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$IndexableText;
    .locals 1

    .prologue
    .line 1982
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$IndexableText;

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
    .line 1949
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$IndexableText;->clone()Lcom/google/api/services/drive/model/File$IndexableText;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1963
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$IndexableText;->text:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1949
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$IndexableText;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$IndexableText;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1949
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$IndexableText;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$IndexableText;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$IndexableText;
    .locals 1

    .prologue
    .line 1977
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$IndexableText;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$IndexableText;
    .locals 0

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$IndexableText;->text:Ljava/lang/String;

    .line 1972
    return-object p0
.end method
