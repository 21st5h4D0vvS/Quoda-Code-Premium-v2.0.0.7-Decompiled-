.class Lcom/henrythompson/quoda/EditorPanel$33;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showEncodingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;[Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$33;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$33;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$33;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$33;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->access$2602(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x2
.end method
