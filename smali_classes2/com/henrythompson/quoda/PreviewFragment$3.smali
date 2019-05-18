.class Lcom/henrythompson/quoda/PreviewFragment$3;
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

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/PreviewFragment$3;->this$0:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/QuodaPreferences;->setPreviewPanelVisible(Z)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v2, 0x1
.end method
