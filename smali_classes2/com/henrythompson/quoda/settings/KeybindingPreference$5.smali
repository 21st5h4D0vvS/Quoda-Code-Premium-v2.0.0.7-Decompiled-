.class Lcom/henrythompson/quoda/settings/KeybindingPreference$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x2

    const/16 v3, 0x39

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$800(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v8, 0x0

    :cond_0
    :goto_0
    return v1

    const/4 v1, 0x5

    const/4 v8, 0x3

    :cond_1
    const/4 v6, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1200(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getVolumeUpAsCtrlEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x5

    const/16 v0, 0x18

    if-ne p2, v0, :cond_3

    const/4 v8, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x0

    :cond_2
    const/4 v6, 0x1

    const/4 v8, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$900(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v8, 0x7

    :cond_3
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1200(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getVolumeDownAsAltEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v8, 0x2

    const/16 v0, 0x19

    if-ne p2, v0, :cond_5

    const/4 v8, 0x1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_2
    invoke-static {v2, v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x6

    :cond_4
    const/4 v6, 0x1

    const/4 v8, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v8, 0x5

    :cond_5
    if-eq p2, v3, :cond_6

    if-ne p2, v3, :cond_8

    const/4 v8, 0x2

    :cond_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_7

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_3
    invoke-static {v2, v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x2

    :cond_7
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v8, 0x7

    const/4 v6, 0x1

    const/4 v8, 0x6

    :cond_8
    const/16 v0, 0x71

    if-eq p2, v0, :cond_9

    const/16 v0, 0x72

    if-ne p2, v0, :cond_b

    const/4 v8, 0x1

    :cond_9
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_a

    const/4 v8, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    :goto_4
    invoke-static {v2, v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x5

    :cond_a
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$900(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v8, 0x4

    const/4 v6, 0x1

    const/4 v8, 0x1

    :cond_b
    const/16 v0, 0x3b

    if-eq p2, v0, :cond_c

    const/16 v0, 0x3c

    if-ne p2, v0, :cond_e

    const/4 v8, 0x0

    :cond_c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_d

    const/4 v8, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_5
    invoke-static {v2, v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x3

    :cond_d
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1000(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v8, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x2

    :cond_e
    if-nez v6, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v8, 0x6

    :cond_f
    new-instance p3, Landroid/view/KeyEvent;

    invoke-direct {p3, v7, p2}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v8, 0x2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    int-to-char v5, v0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    iget-object v3, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v3}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v3

    iget-object v4, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v4}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    const/4 v8, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$002(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$302(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-static {v0, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$402(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$502(Lcom/henrythompson/quoda/settings/KeybindingPreference;C)C

    const/4 v8, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$202(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, v7}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, v7}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    const/4 v8, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$5;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v0, v7}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    move v1, v7

    const/4 v8, 0x2

    goto/16 :goto_0

    const/4 v3, 0x6

    :cond_10
    move v0, v7

    const/4 v8, 0x6

    goto/16 :goto_1

    const/4 v8, 0x3

    :cond_11
    move v0, v7

    const/4 v8, 0x4

    goto/16 :goto_2

    const/4 v1, 0x2

    :cond_12
    move v0, v7

    const/4 v8, 0x0

    goto/16 :goto_3

    const/4 v1, 0x2

    :cond_13
    move v0, v7

    const/4 v8, 0x6

    goto/16 :goto_4

    const/4 v7, 0x2

    :cond_14
    move v0, v7

    const/4 v8, 0x4

    goto/16 :goto_5

    const/4 v1, 0x3
.end method
