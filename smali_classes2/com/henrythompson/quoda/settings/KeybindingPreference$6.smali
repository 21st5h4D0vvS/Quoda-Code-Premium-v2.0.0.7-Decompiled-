.class Lcom/henrythompson/quoda/settings/KeybindingPreference$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$6;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$6;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v3, 0x4

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1300(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$6;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1300(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v3, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method
