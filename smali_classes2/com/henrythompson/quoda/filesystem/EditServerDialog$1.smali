.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setLayout()Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v6, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$000(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    const v1, 0x7f0d0079

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const v2, 0x7f0d0078

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v5}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x4

    const v1, 0x7f0d006c

    new-instance v2, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1$1;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$1$1;-><init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    const v1, 0x7f0d002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v6, 0x1

    nop

    return-void

    const/4 v3, 0x4
.end method
