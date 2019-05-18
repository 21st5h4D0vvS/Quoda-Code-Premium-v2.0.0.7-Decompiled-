.class public Lcom/henrythompson/quoda/WordCounter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/WordCounter$WordCountResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public static count(Landroid/widget/TextView;)Lcom/henrythompson/quoda/WordCounter$WordCountResult;
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x1

    new-instance v0, Lcom/henrythompson/quoda/WordCounter$WordCountResult;

    invoke-direct {v0}, Lcom/henrythompson/quoda/WordCounter$WordCountResult;-><init>()V

    const/4 v3, 0x3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    const/4 v3, 0x3

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    iput v2, v0, Lcom/henrythompson/quoda/WordCounter$WordCountResult;->charactrers:I

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    iput v2, v0, Lcom/henrythompson/quoda/WordCounter$WordCountResult;->lines:I

    const/4 v3, 0x0

    const-string v2, "\n"

    invoke-static {v2, v1}, Lcom/henrythompson/quoda/WordCounter;->countPatterns(Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v0, Lcom/henrythompson/quoda/WordCounter$WordCountResult;->logicallines:I

    const/4 v3, 0x6

    const-string v2, "\\w+"

    invoke-static {v2, v1}, Lcom/henrythompson/quoda/WordCounter;->countPatterns(Ljava/lang/String;Ljava/lang/CharSequence;)I

    move-result v2

    iput v2, v0, Lcom/henrythompson/quoda/WordCounter$WordCountResult;->words:I

    const/4 v3, 0x0

    return-object v0

    const/4 v3, 0x7
.end method

.method public static countPatterns(Ljava/lang/String;Ljava/lang/CharSequence;)I
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x3

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v4, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v0, 0x6

    const/4 v4, 0x5

    :cond_0
    return v0

    const/4 v1, 0x1
.end method
