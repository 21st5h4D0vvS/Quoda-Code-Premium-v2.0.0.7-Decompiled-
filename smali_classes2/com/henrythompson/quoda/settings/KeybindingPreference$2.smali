.class Lcom/henrythompson/quoda/settings/KeybindingPreference$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/KeybindingPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/settings/KeybindingPreference;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, p2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$402(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v6, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, p2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$200(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$000(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    iget-object v3, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v3}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$300(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v3

    iget-object v4, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v4}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$400(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v4

    iget-object v5, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$2;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$500(Lcom/henrythompson/quoda/settings/KeybindingPreference;)C

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    const/4 v6, 0x0

    nop

    return-void

    const/4 v4, 0x5
.end method
