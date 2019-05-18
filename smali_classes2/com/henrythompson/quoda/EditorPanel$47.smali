.class Lcom/henrythompson/quoda/EditorPanel$47;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->saveFile(Lcom/henrythompson/quoda/document/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$onFailedAuth:Ljava/lang/Runnable;

.field final synthetic val$onSuccessfulAuth:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$47;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$47;->val$onSuccessfulAuth:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$47;->val$onFailedAuth:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$47;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$47;->val$onSuccessfulAuth:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$47;->val$onFailedAuth:Ljava/lang/Runnable;

    invoke-virtual {p2, v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method
