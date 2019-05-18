.class public final Lcom/google/api/services/drive/model/File$Labels;
.super Lcom/google/api/client/json/GenericJson;
.source "File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/model/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Labels"
.end annotation


# instance fields
.field private hidden:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private restricted:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private starred:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private trashed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private viewed:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1990
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1990
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Labels;->clone()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1990
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Labels;->clone()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/google/api/services/drive/model/File$Labels;
    .locals 1

    .prologue
    .line 2119
    invoke-super {p0}, Lcom/google/api/client/json/GenericJson;->clone()Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Labels;

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
    .line 1990
    invoke-virtual {p0}, Lcom/google/api/services/drive/model/File$Labels;->clone()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public getHidden()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->hidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRestricted()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->restricted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStarred()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->starred:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTrashed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->trashed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getViewed()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Lcom/google/api/services/drive/model/File$Labels;->viewed:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;
    .locals 1

    .prologue
    .line 1990
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Labels;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 1990
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/model/File$Labels;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 1

    .prologue
    .line 2114
    invoke-super {p0, p1, p2}, Lcom/google/api/client/json/GenericJson;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/json/GenericJson;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/model/File$Labels;

    return-object v0
.end method

.method public setHidden(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    .prologue
    .line 2040
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->hidden:Ljava/lang/Boolean;

    .line 2041
    return-object p0
.end method

.method public setRestricted(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    .prologue
    .line 2057
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->restricted:Ljava/lang/Boolean;

    .line 2058
    return-object p0
.end method

.method public setStarred(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    .prologue
    .line 2074
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->starred:Ljava/lang/Boolean;

    .line 2075
    return-object p0
.end method

.method public setTrashed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    .prologue
    .line 2091
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->trashed:Ljava/lang/Boolean;

    .line 2092
    return-object p0
.end method

.method public setViewed(Ljava/lang/Boolean;)Lcom/google/api/services/drive/model/File$Labels;
    .locals 0

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/google/api/services/drive/model/File$Labels;->viewed:Ljava/lang/Boolean;

    .line 2109
    return-object p0
.end method
