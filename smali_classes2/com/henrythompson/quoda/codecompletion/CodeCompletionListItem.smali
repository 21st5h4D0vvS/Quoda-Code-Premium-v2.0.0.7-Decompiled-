.class public Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;
.super Ljava/lang/Object;


# instance fields
.field private mCompletion:Ljava/lang/String;

.field private mCompletionEnd:I

.field private mCompletionStart:I

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mNewCursorPosition:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object p6, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x6

    iput-object p2, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mCompletion:Ljava/lang/String;

    const/4 v0, 0x7

    iput p3, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mCompletionStart:I

    const/4 v0, 0x3

    iput p4, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mCompletionEnd:I

    const/4 v0, 0x1

    iput p5, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mNewCursorPosition:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public getCompletion()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mCompletion:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getCompletionEnd()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mCompletionEnd:I

    return v0

    const/4 v1, 0x3
.end method

.method public getCompletionStart()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mCompletionStart:I

    return v0

    const/4 v1, 0x3
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0

    const/4 v0, 0x0
.end method

.method public getNewCursorPosition()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mNewCursorPosition:I

    return v0

    const/4 v1, 0x4
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mTitle:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x2
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mImage:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setSuggestion(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;->mTitle:Ljava/lang/String;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method
