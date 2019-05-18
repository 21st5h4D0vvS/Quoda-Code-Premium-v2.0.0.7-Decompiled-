.class Lcom/henrythompson/quoda/EditorPanel$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/EditorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$8;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eqz p2, :cond_0

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$8;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/QuodaPreferences;->setRegexEnabled(Z)V

    const/4 v3, 0x1

    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$8;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v2, 0x0

    const/4 v3, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$8;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    invoke-static {v0}, Lcom/henrythompson/quoda/EditorPanel;->access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/QuodaPreferences;->setRegexEnabled(Z)V

    goto :goto_0

    const/4 v3, 0x3
.end method
