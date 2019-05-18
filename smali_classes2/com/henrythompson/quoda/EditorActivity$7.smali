.class Lcom/henrythompson/quoda/EditorActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->configureWorkspace()V
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

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$7;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onCloseFileBrowserPanel()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/QuodaPreferences;->setFilebrowserPanelVisible(Z)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v1, 0x3
.end method
