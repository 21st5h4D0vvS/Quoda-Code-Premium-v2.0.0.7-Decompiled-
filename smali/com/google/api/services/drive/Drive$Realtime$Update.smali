.class public Lcom/google/api/services/drive/Drive$Realtime$Update;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Realtime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/realtime"


# instance fields
.field private baseRevision:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Realtime;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Realtime;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 7905
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->this$1:Lcom/google/api/services/drive/Drive$Realtime;

    .line 7906
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "PUT"

    const-string v3, "files/{fileId}/realtime"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7907
    const-string v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->fileId:Ljava/lang/String;

    .line 7908
    return-void
.end method

.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Realtime;Ljava/lang/String;Lcom/google/api/client/http/AbstractInputStreamContent;)V
    .locals 6

    .prologue
    .line 7930
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->this$1:Lcom/google/api/services/drive/Drive$Realtime;

    .line 7931
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "PUT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/upload/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lcom/google/api/services/drive/Drive$Realtime;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v3}, Lcom/google/api/services/drive/Drive;->getServicePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "files/{fileId}/realtime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7932
    const-string v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->fileId:Ljava/lang/String;

    .line 7933
    invoke-virtual {p0, p3}, Lcom/google/api/services/drive/Drive$Realtime$Update;->initializeMediaUpload(Lcom/google/api/client/http/AbstractInputStreamContent;)V

    .line 7934
    return-void
.end method


# virtual methods
.method public getBaseRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8002
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->baseRevision:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7978
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Realtime$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Realtime$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Realtime$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 8018
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Realtime$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7938
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setBaseRevision(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 0

    .prologue
    .line 8012
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->baseRevision:Ljava/lang/String;

    .line 8013
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7943
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 0

    .prologue
    .line 7983
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Realtime$Update;->fileId:Ljava/lang/String;

    .line 7984
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7948
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7953
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7958
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7963
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;
    .locals 1

    .prologue
    .line 7968
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Realtime$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7887
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Realtime$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Realtime$Update;

    move-result-object v0

    return-object v0
.end method
