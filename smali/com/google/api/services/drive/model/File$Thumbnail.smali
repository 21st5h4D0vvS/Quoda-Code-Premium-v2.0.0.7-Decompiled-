.class public final Lcom/google/api/services/drive/model/File$Thumbnail;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Thumbnail"
.end annotation


# instance fields
.field private image:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private mimeType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2128
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2128
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$Thumbnail;
    .locals 1

    .prologue
    .line 2213
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Thumbnail;

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
    .line 2128
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Thumbnail;->clone()Lcom/google/api/services/drive/model/File$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public decodeImage()[B
    .locals 1

    .prologue
    .line 2161
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Thumbnail;->image:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public encodeImage([B)Lcom/google/api/services/drive/model/File$Thumbnail;
    .locals 1

    .prologue
    .line 2185
    invoke-static {p1}, Lcom/google/api/client/util/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/services/drive/model/File$Thumbnail;->image:Ljava/lang/String;

    .line 2186
    return-object p0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Thumbnail;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Thumbnail;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 2128
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 2128
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Thumbnail;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Thumbnail;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Thumbnail;
    .locals 1

    .prologue
    .line 2208
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Thumbnail;

    return-object v0
.end method

.method public setImage(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$Thumbnail;
    .locals 0

    .prologue
    .line 2170
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Thumbnail;->image:Ljava/lang/String;

    .line 2171
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File$Thumbnail;
    .locals 0

    .prologue
    .line 2202
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Thumbnail;->mimeType:Ljava/lang/String;

    .line 2203
    return-object p0
.end method
