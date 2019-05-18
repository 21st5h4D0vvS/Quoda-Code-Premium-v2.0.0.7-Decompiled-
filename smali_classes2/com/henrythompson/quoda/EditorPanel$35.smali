.class Lcom/henrythompson/quoda/EditorPanel$35;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->reopenWithEncoding(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$encoding:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$35;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$35;->val$encoding:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onAuthNeeded(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$35;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$35$1;

    invoke-direct {v1, p0, p1}, Lcom/henrythompson/quoda/EditorPanel$35$1;-><init>(Lcom/henrythompson/quoda/EditorPanel$35;Lcom/henrythompson/quoda/document/Document;)V

    new-instance v2, Lcom/henrythompson/quoda/EditorPanel$35$2;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/EditorPanel$35$2;-><init>(Lcom/henrythompson/quoda/EditorPanel$35;)V

    invoke-virtual {p2, v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v3, 0x4
.end method
