.class Lcom/henrythompson/quoda/EditorPanel$28$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/EditorPanel$28;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/EditorPanel$28;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/EditorPanel$28;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel$28$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel$28$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$28;

    iget-object v1, v1, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel$28$1;->this$1:Lcom/henrythompson/quoda/EditorPanel$28;

    iget-object v2, v2, Lcom/henrythompson/quoda/EditorPanel$28;->val$doc:Lcom/henrythompson/quoda/document/Document;

    const/4 v3, 0x5

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/language/FileAssociations;->associateFilename(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v2, 0x2
.end method
