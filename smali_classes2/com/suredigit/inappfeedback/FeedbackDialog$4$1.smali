.class Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/suredigit/inappfeedback/FeedbackDialog$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

.field private final synthetic val$resultFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    iput-object p2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->val$resultFinal:Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 371
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->access$0(Lcom/suredigit/inappfeedback/FeedbackDialog$4;)Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$9(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->access$0(Lcom/suredigit/inappfeedback/FeedbackDialog$4;)Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$3(Lcom/suredigit/inappfeedback/FeedbackDialog;)Lcom/suredigit/inappfeedback/FeedbackSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getReplyTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->val$resultFinal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 373
    iget-object v2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    invoke-static {v2}, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->access$0(Lcom/suredigit/inappfeedback/FeedbackDialog$4;)Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-result-object v2

    invoke-static {v2}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$3(Lcom/suredigit/inappfeedback/FeedbackDialog;)Lcom/suredigit/inappfeedback/FeedbackSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getReplyCloseButtonText()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1$1;

    invoke-direct {v3, p0}, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1$1;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->access$0(Lcom/suredigit/inappfeedback/FeedbackDialog$4;)Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$10(Lcom/suredigit/inappfeedback/FeedbackDialog;Landroid/app/AlertDialog;)V

    .line 379
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->this$1:Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog$4;->access$0(Lcom/suredigit/inappfeedback/FeedbackDialog$4;)Lcom/suredigit/inappfeedback/FeedbackDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$11(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 380
    return-void
.end method
