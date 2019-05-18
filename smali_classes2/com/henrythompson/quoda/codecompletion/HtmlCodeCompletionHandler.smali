.class public Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;
.super Lcom/henrythompson/quoda/codecompletion/CodeCompletionHandler;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation


# static fields
.field private static mAttributeIcon:Landroid/graphics/drawable/Drawable;

.field private static mAttributeValueColorIcon:Landroid/graphics/drawable/Drawable;

.field private static mAttributeValueColorPickerIcon:Landroid/graphics/drawable/Drawable;

.field private static mAttributeValueIcon:Landroid/graphics/drawable/Drawable;

.field private static mTagIcon:Landroid/graphics/drawable/Drawable;

.field private static mTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionHandler;-><init>()V

    const/4 v3, 0x2

    sget-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTags:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v3, 0x7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTags:Ljava/util/ArrayList;

    const/4 v3, 0x6

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;

    invoke-direct {v1}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;-><init>()V

    sget-object v2, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->load(Ljava/util/ArrayList;)V

    const/4 v3, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v3, 0x7

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTagIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x4

    const v1, 0x7f0700d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x6

    const v1, 0x7f0700d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x6

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorPickerIcon:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x1

    :cond_0
    nop

    return-void

    const/4 v3, 0x3
.end method

.method private getTagCompletions(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;
    .locals 37
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;"
        }
    .end annotation

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-eq v8, v9, :cond_1

    :cond_0
    :goto_0
    return-object v25

    const/4 v1, 0x4

    :cond_1
    const/4 v8, 0x1

    move/from16 v0, p2

    if-lt v0, v8, :cond_2

    add-int/lit8 v8, p2, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v26

    if-lez p2, :cond_2

    const/16 v8, 0x3e

    move/from16 v0, v26

    if-eq v0, v8, :cond_0

    const/16 v8, 0x2f

    move/from16 v0, v26

    if-eq v0, v8, :cond_0

    :cond_2
    if-eqz p2, :cond_0

    const/16 v31, 0x1

    const/16 v24, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_3

    const/16 v24, 0x1

    const/16 v31, 0x2

    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move/from16 v0, v31

    if-ge v0, v8, :cond_4

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v31, v31, 0x1

    goto :goto_1

    const/4 v8, 0x1

    :cond_4
    if-nez v24, :cond_9

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    :goto_2
    move/from16 v0, v31

    move/from16 v1, p2

    if-lt v0, v1, :cond_f

    move/from16 v33, p2

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v8

    move/from16 v0, v33

    if-le v0, v8, :cond_5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v33

    :cond_5
    if-gez v33, :cond_6

    const/16 v33, 0x0

    :cond_6
    const/4 v8, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v32

    sget-object v8, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, -0x1

    mul-int/lit8 v8, p2, -0x1

    add-int/lit8 v5, v8, 0x1

    if-eqz v24, :cond_a

    const-string v8, "/"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ">"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x2

    :cond_8
    :goto_4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v10, v31, 0x1

    if-le v8, v10, :cond_e

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v10, 0x2f

    if-ne v8, v10, :cond_e

    add-int/lit8 v8, v31, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v10, 0x3e

    if-ne v8, v10, :cond_e

    sub-int v6, v31, p2

    :goto_5
    new-instance v2, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    sget-object v8, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTagIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct/range {v2 .. v8}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    const/4 v5, 0x3

    :cond_9
    const/4 v8, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v8, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_2

    const/4 v3, 0x4

    :cond_a
    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->isMandatory()Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "=\"\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v7, :cond_b

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v5

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v7, v10, 0x3

    goto :goto_6

    const/4 v6, 0x4

    :cond_c
    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isVoid()Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, ">"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v7, :cond_8

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x1

    goto/16 :goto_4

    const/4 v14, 0x7

    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "></"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ">"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v7, :cond_8

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x1

    goto/16 :goto_4

    const/4 v12, 0x4

    :cond_e
    sub-int v6, v31, p2

    goto/16 :goto_5

    const/4 v9, 0x7

    :cond_f
    if-nez v24, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->getTagForName(Ljava/lang/String;)Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    move-result-object v29

    if-eqz v29, :cond_0

    move/from16 v23, v31

    const/16 v28, 0x0

    move/from16 v22, v23

    :goto_7
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v21

    packed-switch v28, :pswitch_data_0

    :cond_10
    :goto_8
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    const/4 v2, 0x3

    :pswitch_0
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_10

    move/from16 v22, v23

    const/16 v28, 0x1

    goto :goto_8

    const/4 v8, 0x2

    :pswitch_1
    const/16 v8, 0x3d

    move/from16 v0, v21

    if-ne v0, v8, :cond_11

    const/16 v28, 0x3

    :cond_11
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-eqz v8, :cond_10

    const/16 v28, 0x2

    goto :goto_8

    const/4 v0, 0x5

    :pswitch_2
    const/16 v8, 0x3d

    move/from16 v0, v21

    if-ne v0, v8, :cond_13

    const/16 v28, 0x3

    :cond_12
    :goto_9
    :pswitch_3
    const/16 v8, 0x22

    move/from16 v0, v21

    if-ne v0, v8, :cond_15

    const/16 v28, 0x4

    goto :goto_8

    const/4 v10, 0x5

    :cond_13
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_14

    move/from16 v22, v23

    const/16 v28, 0x1

    goto :goto_9

    const/4 v14, 0x2

    :cond_14
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_12

    move/from16 v22, v23

    const/16 v28, 0x0

    goto :goto_9

    const/4 v5, 0x3

    :cond_15
    const/16 v8, 0x27

    move/from16 v0, v21

    if-ne v0, v8, :cond_16

    const/16 v28, 0x5

    goto :goto_8

    const/4 v2, 0x6

    :cond_16
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_17

    const/16 v28, 0x6

    goto :goto_8

    const/4 v1, 0x4

    :cond_17
    move/from16 v22, v23

    const/16 v28, 0x0

    goto :goto_8

    const/4 v4, 0x5

    :pswitch_4
    const/16 v8, 0x22

    move/from16 v0, v21

    if-ne v0, v8, :cond_10

    const/16 v28, 0x0

    goto :goto_8

    const/4 v1, 0x3

    :pswitch_5
    const/16 v8, 0x27

    move/from16 v0, v21

    if-ne v0, v8, :cond_10

    const/16 v28, 0x0

    goto :goto_8

    const/4 v4, 0x0

    :pswitch_6
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_10

    const/16 v28, 0x0

    goto/16 :goto_8

    const/4 v13, 0x5

    :cond_18
    if-nez v28, :cond_19

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_a
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\"\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v7, v8, 0x2

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeIcon:Landroid/graphics/drawable/Drawable;

    move-object v10, v4

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    const/4 v5, 0x0

    :cond_19
    const/4 v8, 0x1

    move/from16 v0, v28

    if-eq v0, v8, :cond_1a

    const/4 v8, 0x2

    move/from16 v0, v28

    if-ne v0, v8, :cond_1f

    :cond_1a
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v22

    :goto_b
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_b

    const/4 v12, 0x1

    :cond_1b
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    sub-int v5, v22, p2

    :goto_c
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move/from16 v0, v23

    if-ge v0, v8, :cond_1c

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_1e

    :cond_1c
    sub-int v6, p2, v23

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_1d
    :goto_d
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "=\"\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x2

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeIcon:Landroid/graphics/drawable/Drawable;

    move-object v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    const/4 v10, 0x7

    :cond_1e
    add-int/lit8 v23, v23, 0x1

    goto :goto_c

    const/4 v3, 0x5

    :cond_1f
    const/4 v8, 0x3

    move/from16 v0, v28

    if-ne v0, v8, :cond_25

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v22

    :goto_e
    add-int/lit8 v8, p2, -0x1

    move/from16 v0, v23

    if-ge v0, v8, :cond_20

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_e

    const/4 v13, 0x6

    :cond_20
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_21
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_21

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_22
    :goto_f
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    if-nez v8, :cond_23

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueIcon:Landroid/graphics/drawable/Drawable;

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    const/4 v13, 0x2

    :cond_23
    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_24

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorIcon:Landroid/graphics/drawable/Drawable;

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    const/4 v10, 0x6

    :cond_24
    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_22

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorPickerIcon:Landroid/graphics/drawable/Drawable;

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    const/4 v12, 0x7

    :cond_25
    const/4 v8, 0x4

    move/from16 v0, v28

    if-ne v0, v8, :cond_33

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v22

    :goto_10
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_26

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_10

    const/4 v8, 0x6

    :cond_26
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :goto_11
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-eq v8, v9, :cond_27

    add-int/lit8 v23, v23, 0x1

    goto :goto_11

    const/4 v3, 0x4

    :cond_27
    sub-int v5, v23, p2

    add-int/lit8 v23, v23, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_12

    const/4 v8, 0x5

    :cond_28
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v6, -0x1

    :goto_13
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move/from16 v0, v23

    if-ge v0, v8, :cond_29

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_2d

    sub-int v8, v23, p2

    add-int/lit8 v6, v8, 0x1

    :cond_29
    :goto_14
    if-gez v23, :cond_2a

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v23, v8, -0x1

    :cond_2a
    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_2b
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_2b

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_2c
    :goto_15
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2b

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_31

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    const/4 v13, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorPickerIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    const/4 v12, 0x5

    :cond_2d
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_2e

    sub-int v6, v23, p2

    goto :goto_14

    const/4 v11, 0x6

    :cond_2e
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_2f

    sub-int v6, v23, p2

    goto/16 :goto_14

    const/4 v14, 0x7

    :cond_2f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v9, v23, 0x1

    if-le v8, v9, :cond_30

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_30

    add-int/lit8 v8, v23, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_30

    sub-int v6, v23, p2

    goto/16 :goto_14

    const/4 v1, 0x0

    :cond_30
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_13

    const/4 v12, 0x7

    :cond_31
    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    if-nez v8, :cond_32

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    const/4 v1, 0x1

    :cond_32
    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2c

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_15

    const/4 v8, 0x3

    :cond_33
    const/4 v8, 0x5

    move/from16 v0, v28

    if-ne v0, v8, :cond_41

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v22

    :goto_16
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_34

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_16

    const/4 v13, 0x3

    :cond_34
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-eq v8, v9, :cond_35

    add-int/lit8 v23, v23, 0x1

    goto :goto_17

    const/4 v14, 0x5

    :cond_35
    sub-int v5, v23, p2

    add-int/lit8 v23, v23, 0x1

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    :goto_18
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_36

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_18

    const/4 v10, 0x6

    :cond_36
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v6, -0x1

    :goto_19
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move/from16 v0, v23

    if-ge v0, v8, :cond_37

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_3b

    sub-int v8, v23, p2

    add-int/lit8 v6, v8, 0x1

    :cond_37
    :goto_1a
    if-gez v23, :cond_38

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v23, v8, -0x1

    :cond_38
    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_39
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_39

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_3a
    :goto_1b
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_39

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3f

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    const/4 v13, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorPickerIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    const/4 v9, 0x1

    :cond_3b
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_3c

    sub-int v6, v23, p2

    goto :goto_1a

    const/4 v3, 0x5

    :cond_3c
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_3d

    sub-int v6, v23, p2

    goto/16 :goto_1a

    const/4 v11, 0x5

    :cond_3d
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 v9, v23, 0x1

    if-le v8, v9, :cond_3e

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_3e

    add-int/lit8 v8, v23, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_3e

    sub-int v6, v23, p2

    goto/16 :goto_1a

    const/4 v11, 0x3

    :cond_3e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_19

    const/4 v8, 0x3

    :cond_3f
    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3a

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    if-nez v8, :cond_40

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    const/4 v9, 0x5

    :cond_40
    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3a

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    const/4 v8, 0x4

    :cond_41
    const/4 v8, 0x6

    move/from16 v0, v28

    if-ne v0, v8, :cond_4b

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v22

    :goto_1c
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-eqz v8, :cond_42

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_1c

    const/4 v3, 0x7

    :cond_42
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    :goto_1d
    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    const/16 v9, 0x3d

    if-eq v8, v9, :cond_43

    add-int/lit8 v23, v23, 0x1

    goto :goto_1d

    const/4 v3, 0x2

    :cond_43
    add-int/lit8 v23, v23, 0x1

    sub-int v5, v23, p2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1e
    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_44

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v23, v23, 0x1

    goto :goto_1e

    const/4 v7, 0x3

    :cond_44
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_1f
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move/from16 v0, v23

    if-ge v0, v8, :cond_45

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v8

    if-nez v8, :cond_48

    :cond_45
    sub-int v6, v23, p2

    invoke-virtual/range {v29 .. v29}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getAttributes()Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :cond_46
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->getName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-virtual {v15}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    :cond_47
    :goto_20
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_46

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_49

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "-1"

    const/4 v13, 0x0

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorPickerIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    const/4 v12, 0x3

    :cond_48
    add-int/lit8 v23, v23, 0x1

    goto :goto_1f

    const/4 v9, 0x6

    :cond_49
    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_47

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v5

    add-int/lit8 v7, v8, 0x2

    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    if-nez v8, :cond_4a

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    const/4 v13, 0x1

    :cond_4a
    move-object/from16 v0, v34

    iget v8, v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_47

    new-instance v8, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v14, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mAttributeValueColorIcon:Landroid/graphics/drawable/Drawable;

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;-><init>(Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_20

    const/4 v7, 0x5

    :cond_4b
    const/16 v25, 0x0

    goto/16 :goto_0

    const/4 v8, 0x1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getTagForName(Ljava/lang/String;)Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x0

    sget-object v1, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->mTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x7

    :goto_0
    return-object v0

    const/4 v3, 0x1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x4
.end method


# virtual methods
.method public getCodeCompletions(Lcom/henrythompson/quoda/document/Document;Landroid/text/Editable;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/document/Document;",
            "Landroid/text/Editable;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/CodeCompletionListItem;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x6

    const/4 v5, 0x5

    invoke-virtual {p1, p3}, Lcom/henrythompson/quoda/document/Document;->getContextSpanAt(I)Lcom/henrythompson/quoda/styler/ContextSpan;

    move-result-object v2

    const/4 v5, 0x7

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->TYPE:I

    if-nez v3, :cond_1

    const/4 v5, 0x2

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    sub-int v1, p3, v3

    const/4 v5, 0x2

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    if-ltz v3, :cond_1

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    if-ltz v3, :cond_1

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    if-gt v3, v4, :cond_1

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-gt v3, v4, :cond_1

    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    iget v4, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    if-le v3, v4, :cond_1

    const/4 v5, 0x1

    iget v0, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    const/4 v5, 0x7

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v0, v3, :cond_0

    const/4 v5, 0x0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v5, 0x5

    :cond_0
    iget v3, v2, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandler;->getTagCompletions(Ljava/lang/CharSequence;I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x3

    :goto_0
    return-object v3

    const/4 v1, 0x3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    const/4 v2, 0x3
.end method
