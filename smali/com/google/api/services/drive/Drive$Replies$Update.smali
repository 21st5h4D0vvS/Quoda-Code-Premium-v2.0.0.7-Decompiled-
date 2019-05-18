.class public Lcom/google/api/services/drive/Drive$Replies$Update;
.super Lcom/google/api/services/drive/DriveRequest;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive$Replies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/drive/DriveRequest",
        "<",
        "Lcom/google/api/services/drive/model/CommentReply;",
        ">;"
    }
.end annotation


# static fields
.field private static final REST_PATH:Ljava/lang/String; = "files/{fileId}/comments/{commentId}/replies/{replyId}"


# instance fields
.field private commentId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private fileId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private replyId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/drive/Drive$Replies;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/drive/Drive$Replies;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/drive/model/CommentReply;)V
    .locals 6

    .prologue
    .line 8866
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->this$1:Lcom/google/api/services/drive/Drive$Replies;

    .line 8867
    iget-object v1, p1, Lcom/google/api/services/drive/Drive$Replies;->this$0:Lcom/google/api/services/drive/Drive;

    const-string v2, "PUT"

    const-string v3, "files/{fileId}/comments/{commentId}/replies/{replyId}"

    const-class v5, Lcom/google/api/services/drive/model/CommentReply;

    move-object v0, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/drive/DriveRequest;-><init>(Lcom/google/api/services/drive/Drive;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8868
    const-string v0, "Required parameter fileId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->fileId:Ljava/lang/String;

    .line 8869
    const-string v0, "Required parameter commentId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->commentId:Ljava/lang/String;

    .line 8870
    const-string v0, "Required parameter replyId must be specified."

    invoke-static {p4, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->replyId:Ljava/lang/String;

    .line 8871
    const-string v0, "content"

    invoke-virtual {p0, p5, v0}, Lcom/google/api/services/drive/Drive$Replies$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8872
    invoke-virtual {p5}, Lcom/google/api/services/drive/model/CommentReply;->getContent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommentReply.getContent()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/drive/Drive$Replies$Update;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8873
    return-void
.end method


# virtual methods
.method public getCommentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8933
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->commentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8917
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->fileId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8949
    iget-object v0, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->replyId:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8960
    invoke-super {p0, p1, p2}, Lcom/google/api/services/drive/DriveRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/drive/Drive$Replies$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8877
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setAlt(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setCommentId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 0

    .prologue
    .line 8938
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->commentId:Ljava/lang/String;

    .line 8939
    return-object p0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8882
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFileId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 0

    .prologue
    .line 8922
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->fileId:Ljava/lang/String;

    .line 8923
    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8887
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setKey(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setKey(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8892
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setOauthToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8897
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8902
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setQuotaUser(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method

.method public setReplyId(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 0

    .prologue
    .line 8954
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Replies$Update;->replyId:Ljava/lang/String;

    .line 8955
    return-object p0
.end method

.method public setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;
    .locals 1

    .prologue
    .line 8907
    invoke-super {p0, p1}, Lcom/google/api/services/drive/DriveRequest;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/drive/Drive$Replies$Update;

    return-object v0
.end method

.method public bridge synthetic setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/DriveRequest;
    .locals 1

    .prologue
    .line 8846
    invoke-virtual {p0, p1}, Lcom/google/api/services/drive/Drive$Replies$Update;->setUserIp(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Replies$Update;

    move-result-object v0

    return-object v0
.end method
