.class public Lcom/henrythompson/quoda/tmlanguage/CaptureSet;
.super Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;


# instance fields
.field private mCaptures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;-><init>()V

    const/4 v1, 0x5

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->mCaptures:Landroid/util/SparseArray;

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public addCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->mCaptures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public addCapture(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->mCaptures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public getCapture(I)Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->mCaptures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageElement;

    return-object v0

    const/4 v1, 0x2
.end method

.method public groupForIndex(I)I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->mCaptures:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method public size()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->mCaptures:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0

    const/4 v1, 0x5
.end method
