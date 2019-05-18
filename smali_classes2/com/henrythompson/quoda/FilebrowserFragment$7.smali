.class Lcom/henrythompson/quoda/FilebrowserFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/FilebrowserFragment;->showAddressBar()V
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

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$7;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iput-object p2, p0, Lcom/henrythompson/quoda/FilebrowserFragment$7;->val$edittext:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserFragment$7;->this$0:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FilebrowserFragment$7;->val$edittext:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->access$400(Lcom/henrythompson/quoda/FilebrowserFragment;Landroid/widget/EditText;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x2
.end method
