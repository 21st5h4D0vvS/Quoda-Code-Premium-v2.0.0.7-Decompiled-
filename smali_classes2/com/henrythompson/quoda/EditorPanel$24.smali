.class Lcom/henrythompson/quoda/EditorPanel$24;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->previewBrowserPicker(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$list:Ljava/util/List;

.field final synthetic val$local:Z

.field final synthetic val$uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/util/List;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$24;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$24;->val$list:Ljava/util/List;

    iput-boolean p3, p0, Lcom/henrythompson/quoda/EditorPanel$24;->val$local:Z

    iput-object p4, p0, Lcom/henrythompson/quoda/EditorPanel$24;->val$uri:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$24;->val$list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$24;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-boolean v2, p0, Lcom/henrythompson/quoda/EditorPanel$24;->val$local:Z

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel$24;->val$uri:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->access$2400(Lcom/henrythompson/quoda/EditorPanel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v6, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$24;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    const v2, 0x7f0d00d8

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    const/4 v6, 0x1

    :cond_0
    nop

    return-void

    const/4 v6, 0x4
.end method
