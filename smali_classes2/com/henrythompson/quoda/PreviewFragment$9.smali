.class Lcom/henrythompson/quoda/PreviewFragment$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/PreviewFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/PreviewFragment;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/PreviewFragment;II)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    iput p2, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->val$x:I

    iput p3, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$500(Lcom/henrythompson/quoda/PreviewFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$400(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget v1, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->val$x:I

    iget v2, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->val$y:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$9;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/PreviewFragment;->access$502(Lcom/henrythompson/quoda/PreviewFragment;Z)Z

    const/4 v3, 0x1

    :cond_0
    nop

    return-void

    const/4 v3, 0x5
.end method
