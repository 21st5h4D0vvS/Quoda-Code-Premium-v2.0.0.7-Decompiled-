.class public Lcom/henrythompson/quoda/EulaActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onAgreeClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/QuodaPreferences;->setEulaAccepted(Z)V

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x7

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EulaActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x2

    const v1, 0x7f01000f

    const v2, 0x7f01000c

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/EulaActivity;->overridePendingTransition(II)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EulaActivity;->finish()V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const v3, 0x7f080033

    const/4 v2, 0x0

    const/4 v4, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x0

    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EulaActivity;->setContentView(I)V

    const/4 v4, 0x6

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "#659900"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x1

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "sans-serif-light"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v4, 0x7

    nop

    return-void

    const/4 v3, 0x5
.end method
