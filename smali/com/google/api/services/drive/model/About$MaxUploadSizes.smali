.class public final Lcom/google/api/services/drive/model/About$MaxUploadSizes;
.super Lcom/google/api/client/json/GenericJson;
.source "About.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/About;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MaxUploadSizes"
.end annotation


# instance fields
.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/google/api/client/json/JsonString;
    .end annotation

    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->clone()Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->clone()Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/About$MaxUploadSizes;
    .locals 1

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;

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
    .line 973
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->clone()Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->type:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 973
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/About$MaxUploadSizes;
    .locals 1

    .prologue
    .line 1025
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;

    return-object v0
.end method

.method public setSize(Ljava/lang/Long;)Lcom/google/api/services/drive/model/About$MaxUploadSizes;
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->size:Ljava/lang/Long;

    .line 1003
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/api/services/drive/model/About$MaxUploadSizes;
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/google/api/services/drive/model/About$MaxUploadSizes;->type:Ljava/lang/String;

    .line 1020
    return-object p0
.end method
