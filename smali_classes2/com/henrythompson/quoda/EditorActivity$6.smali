.class Lcom/henrythompson/quoda/EditorActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorActivity;->showSaveModifiedFilesBeforeExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorActivity;

.field final synthetic val$shouldSave:[Z


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorActivity;[Z)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorActivity$6;->this$0:Lcom/henrythompson/quoda/EditorActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorActivity$6;->val$shouldSave:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity$6;->val$shouldSave:[Z

    aput-boolean p3, v0, p2

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x1
.end method
