.class Lcom/henrythompson/quoda/PreviewFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/PreviewFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/PreviewFragment;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/PreviewFragment;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$2;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$2;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/PreviewFragment;->showSourceDropdown()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method
