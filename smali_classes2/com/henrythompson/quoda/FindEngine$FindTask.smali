.class public Lcom/henrythompson/quoda/FindEngine$FindTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/FindEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FindTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lcom/henrythompson/quoda/FindEngine$FindResult;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/henrythompson/quoda/FindEngine$FindResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mFind:Ljava/lang/String;

.field private mListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/FindEngine$FindResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollToResult:Z

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/FindEngine$FindListener;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v2, 0x4

    if-nez p1, :cond_0

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "preferenceListener cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x0

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x3
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/FindEngine$FindTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x5
.end method

.method static synthetic access$102(Lcom/henrythompson/quoda/FindEngine$FindTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x7
.end method

.method static synthetic access$202(Lcom/henrythompson/quoda/FindEngine$FindTask;Z)Z
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mScrollToResult:Z

    return p1

    const/4 v0, 0x3
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FindEngine$FindTask;->doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v0, 0x0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/FindEngine$FindResult;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x7

    const/4 v10, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getRegexEnabled()Z

    move-result v5

    const/4 v10, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getCaseSensitive()Z

    move-result v0

    const/4 v10, 0x3

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mResults:Ljava/util/ArrayList;

    const/4 v10, 0x1

    if-eqz v5, :cond_1

    const/4 v10, 0x2

    if-eqz v0, :cond_0

    const/4 v10, 0x7

    :try_start_0
    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    const/4 v10, 0x4

    :goto_0
    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v10, 0x4

    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v10, 0x2

    new-instance v6, Lcom/henrythompson/quoda/FindEngine$FindResult;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-direct {v6, v8, v9}, Lcom/henrythompson/quoda/FindEngine$FindResult;-><init>(II)V

    const/4 v10, 0x7

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    const/4 v1, 0x0

    const/4 v10, 0x1

    :catch_0
    move-exception v1

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mResults:Ljava/util/ArrayList;

    const/4 v10, 0x7

    :goto_2
    return-object v8

    const/4 v10, 0x2

    const/4 v10, 0x0

    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    const/4 v9, 0x2

    invoke-static {v8, v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0

    const/4 v2, 0x7

    const/4 v10, 0x2

    :cond_1
    if-eqz v0, :cond_4

    const/4 v10, 0x5

    const/4 v7, 0x0

    const/4 v10, 0x3

    :goto_3
    if-ltz v7, :cond_2

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v10, 0x7

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    iget-object v9, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v10, 0x6

    if-gez v2, :cond_3

    const/4 v10, 0x7

    :cond_2
    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mResults:Ljava/util/ArrayList;

    goto :goto_2

    const/4 v4, 0x0

    const/4 v10, 0x0

    :cond_3
    new-instance v6, Lcom/henrythompson/quoda/FindEngine$FindResult;

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v6, v2, v8}, Lcom/henrythompson/quoda/FindEngine$FindResult;-><init>(II)V

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v2, v8

    const/4 v10, 0x6

    goto :goto_3

    const/4 v10, 0x2

    const/4 v10, 0x6

    :cond_4
    const/4 v7, 0x0

    const/4 v10, 0x6

    :goto_4
    if-ltz v7, :cond_2

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->isCancelled()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v10, 0x7

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-virtual {p0, v8, v7}, Lcom/henrythompson/quoda/FindEngine$FindTask;->indexOfCaseInsensitive(Ljava/lang/String;I)I

    move-result v2

    const/4 v10, 0x5

    if-ltz v2, :cond_2

    const/4 v10, 0x3

    new-instance v6, Lcom/henrythompson/quoda/FindEngine$FindResult;

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-direct {v6, v2, v8}, Lcom/henrythompson/quoda/FindEngine$FindResult;-><init>(II)V

    const/4 v10, 0x3

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x4

    iget-object v8, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mFind:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v7, v2, v8

    const/4 v10, 0x2

    goto :goto_4

    const/4 v8, 0x7
.end method

.method public indexOfCaseInsensitive(Ljava/lang/String;I)I
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v6, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, p2

    iget-object v5, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_2

    const/4 v6, 0x1

    move v3, p2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v4, v5, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v6, 0x1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v6, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mText:Ljava/lang/String;

    add-int v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    const/4 v6, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    const/4 v6, 0x5

    if-ne v1, v2, :cond_1

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_0

    const/4 v6, 0x4

    :goto_2
    return v3

    const/4 v3, 0x5

    const/4 v6, 0x4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v4, 0x7

    const/4 v6, 0x3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v6, 0x6

    const/4 v6, 0x2

    :cond_2
    const/4 v3, -0x1

    goto :goto_2

    const/4 v6, 0x7
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/FindEngine$FindTask;->onPostExecute(Ljava/util/ArrayList;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/FindEngine$FindResult;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FindEngine$FindTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v3, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mScrollToResult:Z

    invoke-interface {v0, v1, v2}, Lcom/henrythompson/quoda/FindEngine$FindListener;->onFindFinished(Ljava/util/ArrayList;Z)V

    const/4 v3, 0x6

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v3, 0x6

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

    iget-boolean v1, p0, Lcom/henrythompson/quoda/FindEngine$FindTask;->mScrollToResult:Z

    invoke-interface {v0, p1, v1}, Lcom/henrythompson/quoda/FindEngine$FindListener;->onFindFinished(Ljava/util/ArrayList;Z)V

    goto :goto_0

    const/4 v2, 0x2
.end method
