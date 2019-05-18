.class Lcom/henrythompson/quoda/settings/KeybindingPreference$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 14

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$800(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$900(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1000(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$1100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_3
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_7

    invoke-interface/range {p1 .. p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    :goto_0
    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v3}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v3

    iget-object v4, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v4}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v4

    iget-object v5, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v5}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v5

    invoke-virtual/range {v1 .. v6}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$100(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$002(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$700(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$302(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$600(Lcom/henrythompson/quoda/settings/KeybindingPreference;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$402(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    if-eqz v6, :cond_4

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    invoke-static {v1, v6}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$502(Lcom/henrythompson/quoda/settings/KeybindingPreference;C)C

    :cond_4
    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$202(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    :cond_5
    :goto_1
    nop

    return-void

    const/4 v11, 0x1

    :cond_6
    move v6, v13

    goto :goto_0

    const/4 v5, 0x6

    :cond_7
    iget-object v7, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual/range {v7 .. v12}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$202(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    goto :goto_1

    const/4 v5, 0x4

    :cond_8
    iget-object v7, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual/range {v7 .. v12}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->setValue(ZZZZC)V

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$102(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$702(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$602(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/KeybindingPreference$4;->this$0:Lcom/henrythompson/quoda/settings/KeybindingPreference;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/settings/KeybindingPreference;->access$202(Lcom/henrythompson/quoda/settings/KeybindingPreference;Z)Z

    goto :goto_1

    const/4 v11, 0x5
.end method
