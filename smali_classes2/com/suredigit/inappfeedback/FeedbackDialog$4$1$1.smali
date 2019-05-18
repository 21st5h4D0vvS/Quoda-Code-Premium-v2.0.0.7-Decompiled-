.class Lcom/suredigit/inappfeedback/FeedbackDialog$4$1$1;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;


# direct methods
.method constructor <init>(Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog$4$1$1;->this$2:Lcom/suredigit/inappfeedback/FeedbackDialog$4$1;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 375
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 376
    return-void
.end method
