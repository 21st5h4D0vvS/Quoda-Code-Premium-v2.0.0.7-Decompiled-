.class public Lcom/google/api/services/drive/Drive$Properties$Insert;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/Property;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/properties"


# instance fields
.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Properties;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Properties;Ljava/lang/String;Lcom/google/api/services/drive/model/Property;)V
    .locals 6

    .prologue
    .line 7242
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Properties$Insert;->this$1:Lcom/google/api/services/drive/Drive$Properties;

    .line 7243
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Properties;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "POST"

    const-string v3, "files/{fileId}/properties"

    const-class v5, Lcom/google/api/services/drive/model/Property;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 7244
    const-string v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Properties$Insert;->fileId:Ljava/lang/String;

    .line 7245
    return-void
.end method


# virtual methods
.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7289
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Properties$Insert;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7300
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Properties$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7249
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7254
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 0

    .prologue
    .line 7294
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Properties$Insert;->fileId:Ljava/lang/String;

    .line 7295
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7259
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7264
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7269
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7274
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;
    .locals 1

    .prologue
    .line 7279
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Properties$Insert;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 7224
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Properties$Insert;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Properties$Insert;

    move-result-object v0

    return-object v0
.end method
