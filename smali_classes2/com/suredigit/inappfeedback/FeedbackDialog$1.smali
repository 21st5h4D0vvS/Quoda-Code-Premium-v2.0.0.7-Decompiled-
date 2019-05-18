.class Lcom/suredigit/inappfeedback/FeedbackDialog$1;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/suredigit/inappfeedback/FeedbackDialog;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;


# direct methods
.method constructor <init>(Lcom/suredigit/inappfeedback/FeedbackDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$1;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 145
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$1;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$0(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$1;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    iget-object v2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$1;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v2}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$1(Lcom/suredigit/inappfeedback/FeedbackDialog;)Lcom/suredigit/inappfeedback/FeedBackItem;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/suredigit/inappfeedback/FeedbackDialog;->sendFeedback(Lcom/suredigit/inappfeedback/FeedBackItem;Z)V

    .line 147
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$1;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v1}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$2(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$1;->this$0:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-static {v2}, Lcom/suredigit/inappfeedback/FeedbackDialog;->access$3(Lcom/suredigit/inappfeedback/FeedbackDialog;)Lcom/suredigit/inappfeedback/FeedbackSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getToast()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 148
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 150
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method
