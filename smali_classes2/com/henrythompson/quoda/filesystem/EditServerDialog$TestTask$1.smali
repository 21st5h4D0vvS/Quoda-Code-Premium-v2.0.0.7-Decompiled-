.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->cancel(Z)Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask$1;->this$1:Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;

    iget-object v0, v0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$TestTask;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x1
.end method
