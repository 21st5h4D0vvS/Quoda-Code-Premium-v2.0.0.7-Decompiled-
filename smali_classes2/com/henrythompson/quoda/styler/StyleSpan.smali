.class public Lcom/henrythompson/quoda/styler/StyleSpan;
.super Ljava/lang/Object;


# instance fields
.field private mBold:Z

.field private mColor:I

.field private mItalic:Z


# direct methods
.method public constructor <init>(IZZ)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput p1, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mColor:I

    const/4 v0, 0x7

    iput-boolean p2, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mBold:Z

    const/4 v0, 0x3

    iput-boolean p3, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mItalic:Z

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getColor()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget v0, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mColor:I

    return v0

    const/4 v0, 0x1
.end method

.method public getIsBold()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mBold:Z

    return v0

    const/4 v0, 0x2
.end method

.method public getIsItalic()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mItalic:Z

    return v0

    const/4 v0, 0x7
.end method

.method setBold(Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-boolean p1, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mBold:Z

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method setColor(I)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x6

    iput p1, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mColor:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method setItalic(Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput-boolean p1, p0, Lcom/henrythompson/quoda/styler/StyleSpan;->mItalic:Z

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method
