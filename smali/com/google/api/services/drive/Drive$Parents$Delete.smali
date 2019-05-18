.class public Lcom/google/api/services/drive/Drive$Parents$Delete;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Parents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Delete"
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
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/parents/{parentId}"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private parentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Parents;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Parents;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 5539
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->this$1:Lcom/google/api/services/drive/Drive$Parents;

    .line 5540
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Parents;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "DELETE"

    const-string v3, "files/{fileId}/parents/{parentId}"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5541
    const-string v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->fileId:Ljava/lang/String;

    .line 5542
    const-string v0, "Required parameter parentId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->parentId:Ljava/lang/String;

    .line 5543
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5587
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5603
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5614
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Parents$Delete;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5547
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5552
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 0

    .prologue
    .line 5592
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->fileId:Ljava/lang/String;

    .line 5593
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5557
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5562
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setParentId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 0

    .prologue
    .line 5608
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Parents$Delete;->parentId:Ljava/lang/String;

    .line 5609
    return-object p0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5567
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5572
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;
    .locals 1

    .prologue
    .line 5577
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Parents$Delete;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 5521
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Parents$Delete;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Parents$Delete;

    move-result-object v0

    return-object v0
.end method
