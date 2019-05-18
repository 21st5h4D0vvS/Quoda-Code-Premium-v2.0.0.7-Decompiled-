.class public Lcom/henrythompson/quoda/NewFileCreator;
.super Ljava/lang/Object;


# static fields
.field public static final TEMPLATE_NEW_BLANK:I = 0x0

.field public static final TEMPLATE_NEW_CSS:I = 0x8

.field public static final TEMPLATE_NEW_CS_CLASS:I = 0x9

.field public static final TEMPLATE_NEW_CS_ENUM:I = 0xb

.field public static final TEMPLATE_NEW_CS_INTERFACE:I = 0xa

.field public static final TEMPLATE_NEW_CS_STRUCT:I = 0xc

.field public static final TEMPLATE_NEW_HTML_4_01_s:I = 0x1

.field public static final TEMPLATE_NEW_HTML_4_01_t:I = 0x2

.field public static final TEMPLATE_NEW_HTML_5:I = 0x3

.field protected static final TEMPLATE_NEW_JAVA_CLASS:I = 0x13

.field protected static final TEMPLATE_NEW_JAVA_INTERFACE:I = 0x14

.field public static final TEMPLATE_NEW_JS:I = 0xd

.field public static final TEMPLATE_NEW_PHP:I = 0x10

.field public static final TEMPLATE_NEW_PYTHON_CLASS:I = 0x11

.field public static final TEMPLATE_NEW_PYTHON_CLASS_WITH_ARGS:I = 0x12

.field public static final TEMPLATE_NEW_VBS:I = 0xe

.field protected static final TEMPLATE_NEW_VISUAL_BASIC_CLASS:I = 0x15

.field protected static final TEMPLATE_NEW_VISUAL_BASIC_INTERFACE:I = 0x17

.field protected static final TEMPLATE_NEW_VISUAL_BASIC_MODULE:I = 0x16

.field public static final TEMPLATE_NEW_XHTML_1_1:I = 0x4

.field public static final TEMPLATE_NEW_XHTML_1_f:I = 0x5

.field public static final TEMPLATE_NEW_XHTML_1_s:I = 0x6

.field public static final TEMPLATE_NEW_XHTML_1_t:I = 0x7

.field public static final TEMPLATE_NEW_XML:I = 0xf

.field public static final TEMPLATE_WELCOME:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public static createNewFile(ILjava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v6, 0x5

    const/4 v2, 0x1

    move v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;ZILjava/lang/String;Landroid/content/Context;)V

    const/4 v6, 0x2

    nop

    return-void

    const/4 v6, 0x4
.end method

.method public static createNewFile(ILjava/lang/String;Landroid/content/Context;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v7, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getLinebreak()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    const-string v0, "\r"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v7, 0x1

    :goto_0
    const/4 v2, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getEncodingOpen()Ljava/lang/String;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;ZILjava/lang/String;Landroid/content/Context;)V

    const/4 v7, 0x1

    nop

    return-void

    const/4 v0, 0x0

    const/4 v7, 0x5

    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x4

    const/4 v3, 0x2

    goto :goto_0

    const/4 v2, 0x7

    const/4 v7, 0x7

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public static createNewFile(ILjava/lang/String;ZILjava/lang/String;Landroid/content/Context;)V
    .locals 16

    const/4 v11, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFilename(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    packed-switch p0, :pswitch_data_0

    const v2, 0x7f0c0009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    :goto_0
    :try_start_0
    invoke-virtual {v10}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v8, v2, [B

    invoke-virtual {v10, v8}, Ljava/io/InputStream;->read([B)I

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "Auto-Detect"

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p4, "utf-8"

    :cond_0
    new-instance v5, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x0

    const-string v3, "local"

    invoke-direct {v5, v2, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    new-instance v1, Lcom/henrythompson/quoda/document/Document;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct/range {v1 .. v7}, Lcom/henrythompson/quoda/document/Document;-><init>(ILjava/lang/String;Lcom/henrythompson/quoda/language/Language;Lcom/henrythompson/quoda/filesystem/FileObject;ZI)V

    invoke-virtual {v4, v1}, Lcom/henrythompson/quoda/language/Language;->getSuggestionsProvider(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setSuggestionsProvider(Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;)V

    new-instance v12, Lcom/henrythompson/quoda/snippet/SnippetParser;

    const-string v2, ""

    invoke-direct {v12, v13, v2, v1}, Lcom/henrythompson/quoda/snippet/SnippetParser;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v12}, Lcom/henrythompson/quoda/snippet/SnippetParser;->parse()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v15

    if-eqz v11, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2}, Lcom/henrythompson/quoda/document/Document;->setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Tabstop;I)V

    :goto_2
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/document/Document;->setSelection(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setScrollX(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setScrollY(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->addAndDisplayDocument(Lcom/henrythompson/quoda/document/Document;)V

    if-eqz p2, :cond_1

    const v2, 0x7f0d017a

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    nop

    return-void

    const/4 v9, 0x5

    :pswitch_0
    const/4 v11, 0x0

    const v2, 0x7f0c0021

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v0, 0x1

    :pswitch_1
    const v2, 0x7f0c0002

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v9, 0x3

    :pswitch_2
    const v2, 0x7f0c0009

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v9, 0x6

    :pswitch_3
    const v2, 0x7f0c0007

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v11, 0x2

    :pswitch_4
    const v2, 0x7f0c0008

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v7, 0x4

    :pswitch_5
    const v2, 0x7f0c0014

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v8, 0x3

    :pswitch_6
    const v2, 0x7f0c0015

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v5, 0x7

    :pswitch_7
    const v2, 0x7f0c0016

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v12, 0x5

    :pswitch_8
    const v2, 0x7f0c0017

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v2, 0x2

    :pswitch_9
    const v2, 0x7f0c000e

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v10, 0x3

    :pswitch_a
    const v2, 0x7f0c0003

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v4, 0x7

    :pswitch_b
    const v2, 0x7f0c0005

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v8, 0x2

    :pswitch_c
    const v2, 0x7f0c0004

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v2, 0x6

    :pswitch_d
    const v2, 0x7f0c0006

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v10, 0x5

    :pswitch_e
    const v2, 0x7f0c000a

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v13, 0x5

    :pswitch_f
    const v2, 0x7f0c000b

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v2, 0x3

    :pswitch_10
    const v2, 0x7f0c000c

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v6, 0x1

    :pswitch_11
    const v2, 0x7f0c0010

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v2, 0x6

    :pswitch_12
    const v2, 0x7f0c0018

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v2, 0x5

    :pswitch_13
    const v2, 0x7f0c000d

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v10, 0x6

    :pswitch_14
    const v2, 0x7f0c000e

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v14, 0x1

    :pswitch_15
    const v2, 0x7f0c000f

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v8, 0x6

    :pswitch_16
    const v2, 0x7f0c0011

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v8, 0x5

    :pswitch_17
    const v2, 0x7f0c0012

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v11, 0x6

    :pswitch_18
    const v2, 0x7f0c0013

    invoke-virtual {v14, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v10

    goto/16 :goto_0

    const/4 v14, 0x6

    :catch_0
    move-exception v9

    const-string v13, ""

    goto/16 :goto_1

    const/4 v8, 0x3

    :cond_2
    invoke-virtual {v15}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/document/Document;->setText(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setIsInSnippetMode(Z)V

    goto/16 :goto_2

    const/4 v7, 0x1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_f
        :pswitch_16
        :pswitch_18
        :pswitch_17
    .end packed-switch
.end method

.method public static createNewFile(ILjava/lang/String;ZLandroid/content/Context;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v7, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getLinebreak()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    const-string v0, "\r"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x4

    :goto_0
    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getEncodingOpen()Ljava/lang/String;

    move-result-object v4

    move v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;ZILjava/lang/String;Landroid/content/Context;)V

    const/4 v7, 0x1

    nop

    return-void

    const/4 v6, 0x0

    const/4 v7, 0x1

    :cond_0
    const-string v0, "\r\n"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    const/4 v3, 0x2

    goto :goto_0

    const/4 v3, 0x7

    const/4 v7, 0x3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    const/4 v0, 0x5
.end method
