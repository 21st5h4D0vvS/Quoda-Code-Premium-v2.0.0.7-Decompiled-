.class public final Lcom/google/api/services/drive/model/ParentReference;
.super Lcom/google/api/client/json/GenericJson;
.source "ParentReference.java"


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private isRoot:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private kind:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parentLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private selfLink:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ParentReference;->clone()Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ParentReference;->clone()Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/ParentReference;
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/ParentReference;

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
    .line 33
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/ParentReference;->clone()Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRoot()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->isRoot:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getParentLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->parentLink:Ljava/lang/String;

    return-object v0
.end method

.method public getSelfLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/api/services/drive/model/ParentReference;->selfLink:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/ParentReference;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/ParentReference;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 1

    .prologue
    .line 158
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/ParentReference;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->id:Ljava/lang/String;

    .line 85
    return-object p0
.end method

.method public setIsRoot(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->isRoot:Ljava/lang/Boolean;

    .line 102
    return-object p0
.end method

.method public setKind(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->kind:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setParentLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->parentLink:Ljava/lang/String;

    .line 136
    return-object p0
.end method

.method public setSelfLink(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/api/services/drive/model/ParentReference;->selfLink:Ljava/lang/String;

    .line 153
    return-object p0
.end method
