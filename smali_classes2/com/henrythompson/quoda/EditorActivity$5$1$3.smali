.class Lcom/henrythompson/quoda/EditorActivity$5$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity$5$1;->showErrorMessage(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
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

    const/4 v0, 0x1

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$3;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$3;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$3;->this$2:Lcom/henrythompson/quoda/EditorActivity$5$1;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$5$1$3;->val$document:Lcom/henrythompson/quoda/document/Document;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorActivity$5$1;->access$200(Lcom/henrythompson/quoda/EditorActivity$5$1;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method
