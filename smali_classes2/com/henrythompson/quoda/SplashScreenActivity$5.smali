.class Lcom/henrythompson/quoda/SplashScreenActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SplashScreenActivity;->onReceiveEvent(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

.field final synthetic val$data:[Ljava/lang/Object;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/SplashScreenActivity;I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    iput p2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$event:I

    iput-object p3, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$data:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const v5, 0x7f0d014c

    const v3, 0x7f0d0147

    const/4 v4, 0x0

    const/4 v6, 0x3

    iget v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$event:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$data:[Ljava/lang/Object;

    aget-object v1, v1, v4

    instance-of v1, v1, Lcom/henrythompson/quoda/DataManager;

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$data:[Ljava/lang/Object;

    aget-object v0, v1, v4

    check-cast v0, Lcom/henrythompson/quoda/DataManager;

    const/4 v6, 0x6

    instance-of v1, v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    if-eqz v1, :cond_4

    const/4 v6, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d014d

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x3

    :cond_0
    :goto_0
    iget v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$event:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$data:[Ljava/lang/Object;

    aget-object v1, v1, v4

    instance-of v1, v1, Lcom/henrythompson/quoda/DataManager;

    if-eqz v1, :cond_9

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$data:[Ljava/lang/Object;

    aget-object v0, v1, v4

    check-cast v0, Lcom/henrythompson/quoda/DataManager;

    const/4 v6, 0x1

    instance-of v1, v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    if-eqz v1, :cond_a

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d0150

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    :cond_1
    :goto_1
    iget v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->val$event:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d0155

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$600(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$500(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    const/4 v6, 0x4

    :cond_2
    :goto_2
    nop

    return-void

    const/4 v2, 0x5

    const/4 v6, 0x5

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    const/4 v3, 0x0

    const/4 v6, 0x3

    :cond_4
    instance-of v1, v0, Lcom/henrythompson/quoda/QuodaPreferences;

    if-eqz v1, :cond_5

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d014b

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    const/4 v4, 0x2

    const/4 v6, 0x4

    :cond_5
    instance-of v1, v0, Lcom/henrythompson/quoda/language/LanguagesManager;

    if-eqz v1, :cond_6

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d0154

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v6, 0x0

    :cond_6
    instance-of v1, v0, Lcom/henrythompson/quoda/snippet/SnippetsManager;

    if-eqz v1, :cond_7

    const/4 v6, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d0153

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    const/4 v5, 0x2

    const/4 v6, 0x6

    :cond_7
    instance-of v1, v0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    if-eqz v1, :cond_8

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d014a

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    const/4 v4, 0x5

    const/4 v6, 0x1

    :cond_8
    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v6, 0x5

    :cond_9
    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v2, v5}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    const/4 v1, 0x7

    const/4 v6, 0x1

    :cond_a
    instance-of v1, v0, Lcom/henrythompson/quoda/QuodaPreferences;

    if-eqz v1, :cond_b

    const/4 v6, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d014f

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    const/4 v0, 0x1

    const/4 v6, 0x0

    :cond_b
    instance-of v1, v0, Lcom/henrythompson/quoda/language/LanguagesManager;

    if-eqz v1, :cond_c

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d0152

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    const/4 v3, 0x5

    const/4 v6, 0x6

    :cond_c
    instance-of v1, v0, Lcom/henrythompson/quoda/snippet/SnippetsManager;

    if-eqz v1, :cond_d

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d0151

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    const/4 v2, 0x6

    const/4 v6, 0x7

    :cond_d
    instance-of v1, v0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    if-eqz v1, :cond_e

    const/4 v6, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v3, 0x7f0d014e

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    const/4 v1, 0x3

    const/4 v6, 0x0

    :cond_e
    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$5;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v2, v5}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    const/4 v6, 0x0
.end method
