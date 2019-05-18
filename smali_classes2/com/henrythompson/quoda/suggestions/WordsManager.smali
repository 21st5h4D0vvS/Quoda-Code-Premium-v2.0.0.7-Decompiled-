.class public Lcom/henrythompson/quoda/suggestions/WordsManager;
.super Ljava/lang/Object;


# static fields
.field public static final mWordRegex:Ljava/lang/String;


# instance fields
.field private mDocument:Lcom/henrythompson/quoda/document/Document;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mWords:Lcom/henrythompson/quoda/suggestions/WordsList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    const-string v0, "\\w((\\w|-)*(\\w))?"

    invoke-static {v0}, Lcom/henrythompson/quoda/PatternUtils;->unicode_charclass(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWordRegex:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public constructor <init>(Lcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v1, 0x6

    new-instance v0, Lcom/henrythompson/quoda/suggestions/WordsList;

    invoke-direct {v0}, Lcom/henrythompson/quoda/suggestions/WordsList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWords:Lcom/henrythompson/quoda/suggestions/WordsList;

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWordRegex:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mPattern:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method

.method private processLine(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v6, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWords:Lcom/henrythompson/quoda/suggestions/WordsList;

    invoke-virtual {v3, p3}, Lcom/henrythompson/quoda/suggestions/WordsList;->clearLine(Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v6, 0x2

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v6, 0x5

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    const/4 v6, 0x5

    invoke-interface {p2, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWords:Lcom/henrythompson/quoda/suggestions/WordsList;

    new-instance v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, p3}, Lcom/henrythompson/quoda/suggestions/WordsList;->addWord(Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V

    goto :goto_0

    const/4 v4, 0x7

    const/4 v6, 0x5

    :cond_0
    nop

    return-void

    const/4 v3, 0x2
.end method


# virtual methods
.method public deleteLine(Lcom/henrythompson/quoda/document/LineObject;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWords:Lcom/henrythompson/quoda/suggestions/WordsList;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/suggestions/WordsList;->deleteLine(Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public getSuggestions(Ljava/lang/CharSequence;II)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v10, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWords:Lcom/henrythompson/quoda/suggestions/WordsList;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/suggestions/WordsList;->getWords()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mWords:Lcom/henrythompson/quoda/suggestions/WordsList;

    invoke-virtual {v8, p1}, Lcom/henrythompson/quoda/suggestions/WordsList;->findWord(Ljava/lang/CharSequence;)Lcom/henrythompson/quoda/suggestions/WordsList$Word;

    move-result-object v6

    const/4 v10, 0x4

    if-eqz v6, :cond_0

    const/4 v10, 0x2

    invoke-virtual {v6}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->getOccurences()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    invoke-virtual {v6}, Lcom/henrythompson/quoda/suggestions/WordsList$Word;->getValue()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x3

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v10, 0x7

    :cond_0
    invoke-static {v7, p1}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->getFuzzyMatches(Ljava/util/ArrayList;Ljava/lang/CharSequence;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v10, 0x1

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/FuzzySearcher;->styleResults(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v10, 0x5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x7

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    const/4 v10, 0x7

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/utils/FuzzySearchResult;

    const/4 v10, 0x7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/Spanned;

    const/4 v10, 0x4

    new-instance v8, Lcom/henrythompson/quoda/suggestions/Suggestion;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/utils/FuzzySearchResult;->getSearchItem()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v8, v3, v9, p2, p3}, Lcom/henrythompson/quoda/suggestions/Suggestion;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v10, 0x1

    :cond_1
    return-object v5

    const/4 v5, 0x7
.end method

.method public processAllLines()V
    .locals 8

    const/4 v7, 0x0

    const/4 v7, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v5

    const/4 v7, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const/4 v7, 0x5

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v6

    if-ge v1, v6, :cond_0

    const/4 v7, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v2

    const/4 v7, 0x5

    iget-object v6, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v6, v1}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v4

    const/4 v7, 0x3

    iget-object v6, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v6, v1}, Lcom/henrythompson/quoda/document/Document;->getIndexForEndOfLine(I)I

    move-result v0

    const/4 v7, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v7, 0x4

    invoke-direct {p0, v3, v5, v2}, Lcom/henrythompson/quoda/suggestions/WordsManager;->processLine(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v7, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x4

    const/4 v7, 0x2

    :cond_0
    nop

    return-void

    const/4 v7, 0x1
.end method

.method public processLine(Lcom/henrythompson/quoda/document/LineObject;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, p2, p3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/suggestions/WordsManager;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/henrythompson/quoda/suggestions/WordsManager;->processLine(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;Lcom/henrythompson/quoda/document/LineObject;)V

    const/4 v3, 0x1

    nop

    return-void

    const/4 v2, 0x4
.end method
