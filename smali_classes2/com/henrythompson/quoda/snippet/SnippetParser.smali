.class public Lcom/henrythompson/quoda/snippet/SnippetParser;
.super Ljava/lang/Object;


# instance fields
.field private mDocument:Lcom/henrythompson/quoda/document/Document;

.field private mIndex:I

.field private mLimit:I

.field private mRaw:Ljava/lang/String;

.field private mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    const/4 v4, 0x1

    new-instance v0, Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/snippet/Tabstop;->setTabIndex(I)V

    const/4 v4, 0x7

    iput-object p3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    const-string v1, "\r\n|\r|\n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    const/4 v4, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    const-string v1, "]]\\>"

    const-string v2, "]]>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    const/4 v4, 0x1

    nop

    return-void

    const/4 v4, 0x7
.end method

.method private getEnvironmentVariableValue(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/snippet/Tabstop;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const-string v17, "FILENAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    return-object v6

    const/4 v2, 0x0

    :cond_1
    const-string v17, "FILENAME_NO_EXTENSION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v6

    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    const-string v17, "."

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    const/4 v9, 0x2

    :cond_2
    const-string v17, "FILEPATH"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    const/4 v10, 0x5

    :cond_3
    move-object v6, v7

    goto :goto_0

    const/4 v13, 0x0

    :cond_4
    const-string v17, "BASE_URL"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v14

    const-string v17, "\uffff"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    const/4 v13, 0x1

    :cond_5
    move-object v6, v14

    goto :goto_0

    const/4 v4, 0x7

    :cond_6
    const-string v17, "SELECTED_TEXT"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v17

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionEnd()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/4 v6, 0x0

    goto/16 :goto_0

    const/4 v11, 0x6

    :cond_7
    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v17

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v18

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionEnd()I

    move-result v19

    invoke-interface/range {v17 .. v19}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v13, 0x4

    :cond_8
    const-string v17, "SELECTED_WORD"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v9

    move/from16 v16, v9

    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_9

    sub-int v17, v9, v8

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v17

    if-eqz v17, :cond_b

    :cond_9
    move v15, v9

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    add-int v17, v9, v8

    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_a
    move/from16 v0, v16

    invoke-interface {v12, v0, v15}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v6, 0x0

    :cond_b
    add-int/lit8 v16, v16, -0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    const/4 v12, 0x0

    :cond_c
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    const/4 v4, 0x3

    :cond_d
    const-string v17, "NOW"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_e

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v4, 0x5

    :cond_e
    :try_start_0
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto/16 :goto_0

    const/4 v5, 0x3

    :catch_0
    move-exception v5

    const/4 v6, 0x0

    goto/16 :goto_0

    const/4 v9, 0x5

    :cond_f
    const-string v17, "UPPERCASE_START"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    const-string v17, "\\$[0-9]+"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v13, Lcom/henrythompson/quoda/snippet/UppercaseStartSnippet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v11}, Lcom/henrythompson/quoda/snippet/UppercaseStartSnippet;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    :cond_10
    :goto_3
    const/4 v6, 0x0

    goto/16 :goto_0

    const/4 v0, 0x3

    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_12

    const-string v6, ""

    goto/16 :goto_0

    const/4 v1, 0x2

    :cond_12
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v8, 0x3

    :cond_13
    const-string v17, "TO_UPPERCASE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    const-string v17, "\\$[0-9]+"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_14

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v13, Lcom/henrythompson/quoda/snippet/UppercaseSnippet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v11}, Lcom/henrythompson/quoda/snippet/UppercaseSnippet;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto :goto_3

    const/4 v10, 0x6

    :cond_14
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_15

    const-string v6, ""

    goto/16 :goto_0

    const/4 v10, 0x4

    :cond_15
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v1, 0x6

    :cond_16
    const-string v17, "LOWERCASE_START"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_19

    const-string v17, "\\$[0-9]+"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v13, Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v11}, Lcom/henrythompson/quoda/snippet/LowercaseStartSnippet;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto/16 :goto_3

    const/4 v5, 0x7

    :cond_17
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_18

    const-string v6, ""

    goto/16 :goto_0

    const/4 v6, 0x0

    :cond_18
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v2, 0x7

    :cond_19
    const-string v17, "TO_LOWERCASE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const-string v17, "\\$[0-9]+"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    new-instance v13, Lcom/henrythompson/quoda/snippet/LowercaseSnippet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-direct {v13, v0, v11}, Lcom/henrythompson/quoda/snippet/LowercaseSnippet;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto/16 :goto_3

    const/4 v13, 0x7

    :cond_1a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1b

    const-string v6, ""

    goto/16 :goto_0

    const/4 v9, 0x3

    :cond_1b
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v11, 0x2

    :cond_1c
    const-string v17, "CURRENT_LINE"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v8, 0x3

    :cond_1d
    const-string v17, "CURSOR_POSITION"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    const/4 v6, 0x3
.end method

.method private parseCodeCompletionSuggestions(Lcom/henrythompson/quoda/snippet/Tabstop;I)V
    .locals 7

    const/4 v6, 0x7

    const/16 v5, 0x7c

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v3, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v2

    const/4 v6, 0x1

    if-nez v2, :cond_0

    const/4 v6, 0x6

    new-instance v2, Lcom/henrythompson/quoda/snippet/Tabstop;

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {v2, v3}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v6, 0x4

    invoke-virtual {v2, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->setTabIndex(I)V

    const/4 v6, 0x5

    :cond_0
    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->clearParts()V

    const/4 v6, 0x7

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v6, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v6, 0x5

    :cond_1
    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    const/4 v6, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v6, 0x6

    const/16 v3, 0x2c

    if-eq v0, v3, :cond_2

    if-ne v0, v5, :cond_4

    const/4 v6, 0x1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->addCodeCompletion(Ljava/lang/String;)V

    const/4 v6, 0x6

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v6, 0x1

    :goto_0
    if-eq v0, v5, :cond_3

    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-lt v3, v4, :cond_1

    const/4 v6, 0x0

    :cond_3
    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v6, 0x6

    :goto_1
    const/16 v3, 0x7d

    if-eq v0, v3, :cond_5

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    const/4 v4, 0x6

    const/4 v6, 0x6

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    const/4 v1, 0x5

    const/4 v6, 0x1

    :cond_5
    nop

    return-void

    const/4 v3, 0x5
.end method

.method private parseEnvironmentVariableDefaultValue(Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 8

    const/4 v7, 0x5

    const/16 v6, 0x7d

    const/16 v5, 0x24

    const/4 v7, 0x1

    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v3, v4, :cond_5

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v7, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x4

    :goto_0
    if-eq v0, v6, :cond_4

    const/4 v7, 0x7

    if-ne v0, v5, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    const/4 v7, 0x3

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x2

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v7, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v7, 0x6

    goto :goto_0

    const/4 v1, 0x7

    const/4 v7, 0x3

    :cond_1
    const/16 v3, 0x5c

    if-ne v0, v3, :cond_3

    const/4 v7, 0x7

    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v3, v4, :cond_3

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_2

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_3

    const/4 v7, 0x5

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v7, 0x2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x7

    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v3, v4, :cond_4

    const/4 v7, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    const/4 v3, 0x1

    const/4 v7, 0x1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    const/4 v7, 0x2

    :cond_5
    nop

    return-void

    const/4 v2, 0x3
.end method

.method private parseTabStopBrace(Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 13

    const/4 v12, 0x4

    const/4 v12, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v12, 0x5

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_0

    const/4 v12, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    const/4 v10, 0x7

    const/4 v12, 0x2

    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v12, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    :goto_1
    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_1

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v12, 0x1

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v12, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v12, 0x6

    const/4 v12, 0x7

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v12, 0x2

    :cond_2
    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v12, 0x3

    const/16 v10, 0x5c

    if-ne v0, v10, :cond_3

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_3

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x7d

    if-ne v10, v11, :cond_3

    const/4 v12, 0x2

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    const/4 v12, 0x1

    :cond_3
    const/16 v10, 0x3a

    if-eq v0, v10, :cond_4

    const/16 v10, 0x7d

    if-eq v0, v10, :cond_4

    const/16 v10, 0x7c

    if-ne v0, v10, :cond_2

    const/4 v12, 0x5

    :cond_4
    const/16 v10, 0x7d

    if-ne v0, v10, :cond_7

    const/4 v12, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v10, v6}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v5

    const/4 v12, 0x6

    if-nez v5, :cond_5

    const/4 v12, 0x1

    new-instance v5, Lcom/henrythompson/quoda/snippet/Tabstop;

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {v5, v10}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v12, 0x0

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/Tabstop;->setTabIndex(I)V

    const/4 v12, 0x0

    :cond_5
    invoke-virtual {p1, v5}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v12, 0x3

    :cond_6
    :goto_2
    nop

    return-void

    const/4 v6, 0x5

    const/4 v12, 0x2

    :cond_7
    const/16 v10, 0x3a

    if-ne v0, v10, :cond_8

    const/4 v12, 0x0

    invoke-direct {p0, p1, v6}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseTabstopDefaultValue(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    goto :goto_2

    const/4 v4, 0x4

    const/4 v12, 0x3

    :cond_8
    const/16 v10, 0x7c

    if-ne v0, v10, :cond_6

    const/4 v12, 0x7

    invoke-direct {p0, p1, v6}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseCodeCompletionSuggestions(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    goto :goto_2

    const/4 v2, 0x7

    const/4 v12, 0x5

    :cond_9
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v12, 0x6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    const/4 v1, 0x0

    const/4 v12, 0x2

    :cond_a
    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    const/4 v12, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v12, 0x4

    if-eqz v1, :cond_d

    const/16 v10, 0x5c

    if-ne v0, v10, :cond_d

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_d

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x29

    if-ne v10, v11, :cond_d

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v12, 0x1

    :goto_3
    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_c

    if-nez v1, :cond_b

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5f

    if-eq v10, v11, :cond_a

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x28

    if-eq v10, v11, :cond_a

    :cond_b
    if-nez v1, :cond_a

    const/4 v12, 0x3

    :cond_c
    :goto_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    :goto_5
    const/16 v10, 0x7d

    if-eq v0, v10, :cond_11

    const/16 v10, 0x3a

    if-eq v0, v10, :cond_11

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_11

    const/4 v12, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    const/4 v12, 0x1

    const/4 v12, 0x3

    :cond_d
    if-nez v1, :cond_e

    const/16 v10, 0x28

    if-ne v0, v10, :cond_e

    const/4 v12, 0x1

    const/4 v1, 0x1

    goto :goto_3

    const/4 v9, 0x0

    const/4 v12, 0x0

    :cond_e
    if-eqz v1, :cond_f

    const/16 v10, 0x29

    if-ne v0, v10, :cond_f

    const/4 v12, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x2

    goto :goto_4

    const/4 v0, 0x4

    const/4 v12, 0x4

    :cond_f
    if-eqz v1, :cond_10

    const/4 v12, 0x3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    const/4 v4, 0x6

    const/4 v12, 0x3

    :cond_10
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    const/4 v1, 0x1

    const/4 v12, 0x7

    :cond_11
    const/16 v10, 0x7d

    if-ne v0, v10, :cond_14

    const/4 v12, 0x4

    invoke-direct {p0, v8, v3, p1}, Lcom/henrythompson/quoda/snippet/SnippetParser;->getEnvironmentVariableValue(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/snippet/Tabstop;)Ljava/lang/Object;

    move-result-object v7

    const/4 v12, 0x0

    if-nez v7, :cond_12

    const/4 v12, 0x7

    const-string v7, ""

    const/4 v12, 0x3

    :cond_12
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_13

    const/4 v12, 0x0

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    goto/16 :goto_2

    const/4 v2, 0x0

    const/4 v12, 0x7

    :cond_13
    instance-of v10, v7, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v10, :cond_6

    const/4 v12, 0x0

    check-cast v7, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto/16 :goto_2

    const/4 v1, 0x1

    const/4 v12, 0x2

    :cond_14
    const/16 v10, 0x3a

    if-ne v0, v10, :cond_6

    const/4 v12, 0x6

    invoke-direct {p0, v8, v3, p1}, Lcom/henrythompson/quoda/snippet/SnippetParser;->getEnvironmentVariableValue(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/snippet/Tabstop;)Ljava/lang/Object;

    move-result-object v7

    const/4 v12, 0x3

    if-nez v7, :cond_15

    const/4 v12, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseEnvironmentVariableDefaultValue(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto/16 :goto_2

    const/4 v11, 0x5

    const/4 v12, 0x3

    :cond_15
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_16

    const/4 v12, 0x2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    goto/16 :goto_2

    const/4 v5, 0x7

    const/4 v12, 0x3

    :cond_16
    instance-of v10, v7, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v10, :cond_6

    const/4 v12, 0x5

    check-cast v7, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto/16 :goto_2

    const/4 v6, 0x6
.end method

.method private parseTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)V
    .locals 14

    const/16 v13, 0x29

    const/16 v12, 0x28

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v10, 0x7b

    if-ne v0, v10, :cond_1

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseTabStopBrace(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v11, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_2

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v8, 0x6

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v10, v5}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/henrythompson/quoda/snippet/Tabstop;

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {v6, v10}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    invoke-virtual {v6, v5}, Lcom/henrythompson/quoda/snippet/Tabstop;->setTabIndex(I)V

    :cond_3
    invoke-virtual {p1, v6}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto :goto_0

    const/4 v4, 0x3

    :cond_4
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v10

    if-eqz v10, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :cond_5
    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v1, :cond_9

    const/16 v10, 0x5c

    if-ne v0, v10, :cond_9

    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_9

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v13, :cond_9

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    iget v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v10, v11, :cond_7

    if-nez v1, :cond_6

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5f

    if-eq v10, v11, :cond_5

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v11, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v10, v12, :cond_5

    :cond_6
    if-nez v1, :cond_5

    :cond_7
    :goto_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v8, v3, p1}, Lcom/henrythompson/quoda/snippet/SnippetParser;->getEnvironmentVariableValue(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/snippet/Tabstop;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_8

    const-string v7, ""

    :cond_8
    instance-of v10, v7, Ljava/lang/String;

    if-eqz v10, :cond_d

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v11, 0x5

    :cond_9
    if-nez v1, :cond_a

    if-ne v0, v12, :cond_a

    const/4 v1, 0x1

    goto :goto_2

    const/4 v4, 0x6

    :cond_a
    if-eqz v1, :cond_b

    if-ne v0, v13, :cond_b

    const/4 v1, 0x0

    goto :goto_3

    const/4 v7, 0x7

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    const/4 v1, 0x4

    :cond_c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    const/4 v6, 0x1

    :cond_d
    instance-of v10, v7, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v10, :cond_0

    check-cast v7, Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {p1, v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto/16 :goto_0

    const/4 v5, 0x6
.end method

.method private parseTabstopDefaultValue(Lcom/henrythompson/quoda/snippet/Tabstop;I)V
    .locals 9

    const/4 v8, 0x6

    const/16 v7, 0x7d

    const/16 v6, 0x24

    const/4 v8, 0x7

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v4, v5, :cond_6

    const/4 v8, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v8, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v4, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStop(I)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v2

    const/4 v8, 0x3

    if-nez v2, :cond_0

    const/4 v8, 0x4

    new-instance v2, Lcom/henrythompson/quoda/snippet/Tabstop;

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {v2, v4}, Lcom/henrythompson/quoda/snippet/Tabstop;-><init>(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v8, 0x1

    invoke-virtual {v2, p2}, Lcom/henrythompson/quoda/snippet/Tabstop;->setTabIndex(I)V

    const/4 v8, 0x6

    :cond_0
    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->clearParts()V

    const/4 v8, 0x2

    invoke-virtual {p1, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v8, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x6

    :goto_0
    if-eq v0, v7, :cond_5

    const/4 v8, 0x0

    if-ne v0, v6, :cond_2

    const/4 v8, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v8, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    const/4 v8, 0x2

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v8, 0x7

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    const/4 v8, 0x4

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v4, v5, :cond_5

    const/4 v8, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    const/4 v2, 0x7

    const/4 v8, 0x7

    :cond_2
    const/16 v4, 0x5c

    if-ne v0, v4, :cond_4

    const/4 v8, 0x3

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v4, v5, :cond_4

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_3

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_4

    const/4 v8, 0x6

    :cond_3
    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v8, 0x3

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v4, v5, :cond_5

    const/4 v8, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    const/4 v8, 0x0

    const/4 v8, 0x0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_6

    const/4 v8, 0x3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x4

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    const/4 v8, 0x3

    :cond_6
    nop

    return-void

    const/4 v6, 0x5
.end method


# virtual methods
.method public parse()Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/16 v5, 0x24

    const/4 v7, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    :goto_0
    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mLimit:I

    if-ge v3, v4, :cond_4

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v7, 0x7

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_1

    const/4 v7, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRaw:Ljava/lang/String;

    iget v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v5, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    :goto_1
    iget v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mIndex:I

    goto :goto_0

    const/4 v0, 0x7

    const/4 v7, 0x7

    :cond_0
    add-int/lit8 v3, v0, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v1, 0x2

    const/4 v7, 0x3

    :cond_1
    if-ne v0, v5, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v7, 0x4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    const/4 v7, 0x7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x4

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {p0, v3}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parseTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)V

    goto :goto_1

    const/4 v6, 0x1

    const/4 v7, 0x4

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    const/4 v6, 0x0

    const/4 v7, 0x6

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->addPart(Ljava/lang/String;)V

    const/4 v7, 0x6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x7

    :cond_5
    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetParser;->mRoot:Lcom/henrythompson/quoda/snippet/Tabstop;

    return-object v3

    const/4 v4, 0x5
.end method
