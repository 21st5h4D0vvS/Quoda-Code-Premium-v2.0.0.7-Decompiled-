.class public Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;
.super Landroid/text/style/CharacterStyle;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/CharacterStyle;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x968dfaff4c57b77L


# instance fields
.field public bold:Z

.field public color:I

.field public end:I

.field public italics:Z

.field public start:I


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/styler/StyleSpan;II)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/StyleSpan;->getColor()I

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->color:I

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/StyleSpan;->getIsBold()Z

    move-result v0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->bold:Z

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/styler/StyleSpan;->getIsItalic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->italics:Z

    const/4 v1, 0x1

    iput p2, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    const/4 v1, 0x3

    iput p3, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x2
.end method


# virtual methods
.method public compareTo(Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;)I
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    iget v1, p1, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    sub-int/2addr v0, v1

    return v0

    const/4 v2, 0x6
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    check-cast p1, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->compareTo(Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;)I

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->bold:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->italics:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    const v0, -0x41b33333    # -0.2f

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method
