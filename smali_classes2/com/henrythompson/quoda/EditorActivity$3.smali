.class Lcom/henrythompson/quoda/EditorActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->showChangesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$3;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    const-string v1, "market://details?id=com.henrythompson.quoda"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity$3;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/EditorActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x1
.end method
