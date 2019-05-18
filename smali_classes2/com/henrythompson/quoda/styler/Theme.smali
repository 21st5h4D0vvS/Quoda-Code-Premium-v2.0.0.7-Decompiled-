.class public Lcom/henrythompson/quoda/styler/Theme;
.super Ljava/lang/Object;


# instance fields
.field private mCaretColor:I

.field private mClassStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mCodeViewBackgroundColor:I

.field private mCommentStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mEscapeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mFunctionStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mInvalidStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mKeywordStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mLangConstStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mLineHighlight:I

.field private mLineNumberBackground:I

.field private mLineNumberBookmarkedBackgroundColor:I

.field private mLineNumberBookmarkedTextColor:I

.field private mLineNumberTextColor:I

.field private mName:Ljava/lang/String;

.field private mNormalTextStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mNumberStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mOperatorStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mPreprocessorStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mSelection:I

.field private mStringStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mTagAttributeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mTagBraceStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mTagNameStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mTypeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mUserConstStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

.field private mVariableStyle:Lcom/henrythompson/quoda/styler/StyleSpan;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public getCaretColor()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mCaretColor:I

    return v0

    const/4 v0, 0x1
.end method

.method public getClassStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mClassStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getCodeViewBackgroundColor()I
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mCodeViewBackgroundColor:I

    return v0

    const/4 v0, 0x2
.end method

.method public getCommentStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mCommentStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x7
.end method

.method public getEscapeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mEscapeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getFunctionStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mFunctionStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x2
.end method

.method public getInvalidStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mInvalidStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getKeywordStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mKeywordStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x7
.end method

.method public getLangConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mLangConstStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getLineHighlight()I
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineHighlight:I

    return v0

    const/4 v0, 0x1
.end method

.method public getLineNumberBackground()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberBackground:I

    return v0

    const/4 v1, 0x6
.end method

.method public getLineNumberBookmarkedBackgroundColor()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberBookmarkedBackgroundColor:I

    return v0

    const/4 v0, 0x6
.end method

.method public getLineNumberBookmarkedTextColor()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberBookmarkedTextColor:I

    return v0

    const/4 v0, 0x2
.end method

.method public getLineNumberTextColor()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberTextColor:I

    return v0

    const/4 v0, 0x0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mName:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getNormalTextStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mNormalTextStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getNumberStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mNumberStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x2
.end method

.method public getOperatorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mOperatorStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x2
.end method

.method public getPreprocessorStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mPreprocessorStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x6
.end method

.method public getSelectionColor()I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mSelection:I

    return v0

    const/4 v0, 0x2
.end method

.method public getStringStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mStringStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getTagAttributeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mTagAttributeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x6
.end method

.method public getTagBraceStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mTagBraceStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getTagNameStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mTagNameStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getTypeStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mTypeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v0, 0x1
.end method

.method public getUserConstStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mUserConstStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x1
.end method

.method public getVariableStyle()Lcom/henrythompson/quoda/styler/StyleSpan;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/styler/Theme;->mVariableStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    return-object v0

    const/4 v1, 0x4
.end method

.method public setCaretColor(I)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mCaretColor:I

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setClassStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mClassStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setCodeViewBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mCodeViewBackgroundColor:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setCommentStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mCommentStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setEscapeStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mEscapeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setFunctionStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mFunctionStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setInvalidStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mInvalidStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setKeywordStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mKeywordStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setLangConstStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mLangConstStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setLineHighlight(I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineHighlight:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setLineNumberBackground(I)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberBackground:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setLineNumberBookmarkedBackgroundColor(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberBookmarkedBackgroundColor:I

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setLineNumberBookmarkedTextColor(I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberBookmarkedTextColor:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setLineNumberTextColor(I)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mLineNumberTextColor:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mName:Ljava/lang/String;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setNormalTextStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mNormalTextStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setNumberStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mNumberStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setOperatorStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mOperatorStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setPreprocessorStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mPreprocessorStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    iput p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mSelection:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setStringStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mStringStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setTagAttributeStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mTagAttributeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setTagBraceStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mTagBraceStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setTagNameStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mTagNameStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setTypeStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mTypeStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setUserConstStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mUserConstStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setVariableStyle(Lcom/henrythompson/quoda/styler/StyleSpan;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/styler/Theme;->mVariableStyle:Lcom/henrythompson/quoda/styler/StyleSpan;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method
