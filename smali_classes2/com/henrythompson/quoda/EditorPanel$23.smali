.class Lcom/henrythompson/quoda/EditorPanel$23;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromBaseUrl(Lcom/henrythompson/quoda/document/Document;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$document:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$23;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$23;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x3

    if-nez p2, :cond_0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$23;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$23;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$2300(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v3, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v3, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$23;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$23;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->access$2000(Lcom/henrythompson/quoda/EditorPanel;ZLjava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x4
.end method
