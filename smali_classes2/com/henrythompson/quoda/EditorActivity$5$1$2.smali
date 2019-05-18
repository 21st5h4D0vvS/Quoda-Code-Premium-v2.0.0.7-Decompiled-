.class Lcom/henrythompson/quoda/EditorActivity$5$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity$5$1;->onAuthNeededException(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/AuthNeededException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorActivity;->removeAuthHandler()V

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;->val$document:Lcom/henrythompson/quoda/document/Document;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$2;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorActivity$5$1;->this$1:Lcom/henrythompson/quoda/EditorActivity$5;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorActivity$5;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    const v3, 0x7f0d00ee

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/EditorActivity$5$1;->access$300(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    const/4 v4, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method
