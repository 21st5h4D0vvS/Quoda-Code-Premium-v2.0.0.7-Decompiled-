.class Lcom/henrythompson/quoda/PreviewFragment$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/PreviewFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/PreviewFragment$8;

.field final synthetic val$html:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/PreviewFragment$8;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$8$1;->this$1:Lcom/henrythompson/quoda/PreviewFragment$8;

    iput-object p2, p0, Lcom/henrythompson/quoda/PreviewFragment$8$1;->val$html:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment$8$1;->this$1:Lcom/henrythompson/quoda/PreviewFragment$8;

    iget-object v0, v0, Lcom/henrythompson/quoda/PreviewFragment$8;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-static {v0}, Lcom/henrythompson/quoda/PreviewFragment;->access$400(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/PreviewFragment$8$1;->this$1:Lcom/henrythompson/quoda/PreviewFragment$8;

    iget-object v1, v1, Lcom/henrythompson/quoda/PreviewFragment$8;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment$8$1;->val$html:Ljava/lang/String;

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    nop

    return-void

    const/4 v6, 0x7
.end method
