.class public Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Files;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmptyTrash"
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
.field private static final REST_PATH:Ljava/lang/String; = "files/trash"


# instance fields
.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Files;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Files;)V
    .locals 6

    .prologue
    .line 3126
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->this$1:Lcom/google/api/services/drive/Drive$Files;

    .line 3127
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Files;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "DELETE"

    const-string v3, "files/trash"

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Void;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3128
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3167
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3132
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3137
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3142
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3147
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3152
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3157
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;
    .locals 1

    .prologue
    .line 3162
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 3109
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Files$EmptyTrash;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$EmptyTrash;

    move-result-object v0

    return-object v0
.end method
