.class Lcom/henrythompson/quoda/EditorPanel$29;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel;->showForceSyntaxDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/EditorPanel;

.field final synthetic val$doc:Lcom/henrythompson/quoda/document/Document;

.field final synthetic val$initiallang:Lcom/henrythompson/quoda/language/Language;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/language/Language;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$29;->this$0:Lcom/henrythompson/quoda/EditorPanel;

    iput-object p2, p0, Lcom/henrythompson/quoda/EditorPanel$29;->val$doc:Lcom/henrythompson/quoda/document/Document;

    iput-object p3, p0, Lcom/henrythompson/quoda/EditorPanel$29;->val$initiallang:Lcom/henrythompson/quoda/language/Language;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel$29;->val$doc:Lcom/henrythompson/quoda/document/Document;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$29;->val$initiallang:Lcom/henrythompson/quoda/language/Language;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x6
.end method
