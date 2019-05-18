.class Lcom/henrythompson/quoda/FilebrowserFragment$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;->showNewFolderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

.field final synthetic val$edittext:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->val$edittext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$200(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$100(Lcom/henrythompson/quoda/FilebrowserFragment;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->isFolderWithNameListed(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-static {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$300(Lcom/henrythompson/quoda/FilebrowserFragment;Ljava/lang/String;)V

    const/4 v3, 0x3

    :goto_0
    nop

    return-void

    const/4 v3, 0x6

    const/4 v3, 0x2

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$5;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->createNewFolder(Ljava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x4
.end method
