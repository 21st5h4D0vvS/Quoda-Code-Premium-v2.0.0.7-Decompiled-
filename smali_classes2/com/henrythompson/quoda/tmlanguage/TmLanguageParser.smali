.class public Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;
.super Ljava/lang/Object;


# instance fields
.field private mIncludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/Include;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

.field private mRepository:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field private mRootDict:Lcom/dd/plist/NSDictionary;

.field private mWarnings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mIncludes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRepository:Ljava/util/ArrayList;

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private getInclude(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/Include;
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x2

    new-instance v0, Lcom/henrythompson/quoda/tmlanguage/Include;

    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    invoke-direct {v0, p1, v2}, Lcom/henrythompson/quoda/tmlanguage/Include;-><init>(Ljava/lang/String;Lcom/henrythompson/quoda/tmlanguage/TmLanguage;)V

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mIncludes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/tmlanguage/Include;

    const/4 v4, 0x3

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/tmlanguage/Include;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    :goto_0
    return-object v1

    const/4 v2, 0x6

    const/4 v4, 0x4

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mIncludes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    const/4 v4, 0x2

    goto :goto_0

    const/4 v0, 0x6
.end method

.method private parseBeginCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private parseBeginCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x0
.end method

.method private parseBeginEndRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;
    .locals 14

    const/4 v13, 0x5

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->ruleIsDisabled(Lcom/dd/plist/NSDictionary;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v7, v11

    const/4 v13, 0x1

    :cond_0
    :goto_0
    return-object v7

    const/4 v9, 0x0

    const/4 v13, 0x4

    :cond_1
    const-string v10, "begin"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x3

    const-string v10, "begin"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_7

    const/4 v13, 0x0

    const-string v10, "begin"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x2

    const-string v10, "end"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x2

    const-string v10, "end"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_9

    const/4 v13, 0x1

    const-string v10, "end"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    new-instance v7, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    invoke-direct {v7}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;-><init>()V

    const/4 v13, 0x6

    :try_start_0
    invoke-virtual {v7, v0}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setBeginPattern(Ljava/lang/String;)V

    const/4 v13, 0x1

    invoke-virtual {v7, v3}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setEndPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x6

    const-string v10, "patterns"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x3

    const-string v10, "patterns"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v5

    const/4 v13, 0x1

    instance-of v10, v5, Lcom/dd/plist/NSArray;

    if-eqz v10, :cond_b

    const/4 v13, 0x2

    check-cast v5, Lcom/dd/plist/NSArray;

    invoke-virtual {v5}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v6

    const/4 v13, 0x0

    invoke-direct {p0, v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parsePatterns([Lcom/dd/plist/NSObject;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v8

    const/4 v13, 0x4

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setPatterns(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v13, 0x1

    :cond_2
    :goto_1
    const-string v10, "name"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x1

    const-string v10, "name"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_c

    const/4 v13, 0x2

    const-string v10, "name"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x2

    new-instance v9, Lcom/henrythompson/quoda/tmlanguage/Scope;

    invoke-direct {v9, v4}, Lcom/henrythompson/quoda/tmlanguage/Scope;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x7

    invoke-virtual {v7, v9}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setName(Lcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v13, 0x5

    :cond_3
    :goto_2
    const-string v10, "contentName"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x4

    const-string v10, "contentName"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_d

    const/4 v13, 0x4

    const-string v10, "contentName"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x3

    new-instance v9, Lcom/henrythompson/quoda/tmlanguage/Scope;

    invoke-direct {v9, v1}, Lcom/henrythompson/quoda/tmlanguage/Scope;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x7

    invoke-virtual {v7, v9}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->setContentName(Lcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v13, 0x0

    :cond_4
    :goto_3
    const-string v10, "captures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x5

    const-string v10, "captures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSDictionary;

    if-eqz v10, :cond_e

    const/4 v13, 0x2

    const-string v10, "captures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v10, v7}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)V

    const/4 v13, 0x5

    :cond_5
    :goto_4
    const-string v10, "beginCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x1

    const-string v10, "beginCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSDictionary;

    if-eqz v10, :cond_f

    const/4 v13, 0x2

    const-string v10, "beginCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v10, v7}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseBeginCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)V

    const/4 v13, 0x4

    :cond_6
    :goto_5
    const-string v10, "endCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x5

    const-string v10, "endCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSDictionary;

    if-eqz v10, :cond_10

    const/4 v13, 0x2

    const-string v10, "endCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v10, v7}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseEndCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)V

    goto/16 :goto_0

    const/4 v5, 0x7

    const/4 v13, 0x1

    :cond_7
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found begin key with value which is not a String"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    const/4 v13, 0x2

    goto/16 :goto_0

    const/4 v4, 0x5

    const/4 v13, 0x2

    :cond_8
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found a begin/end rule without a begin key"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    const/4 v13, 0x7

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v13, 0x2

    :cond_9
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found end key with value which is not a String"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    const/4 v13, 0x4

    goto/16 :goto_0

    const/4 v12, 0x3

    const/4 v13, 0x2

    :cond_a
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found a begin/end rule without an end key"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    const/4 v13, 0x3

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v13, 0x0

    :catch_0
    move-exception v2

    const/4 v13, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v7, v11

    const/4 v13, 0x4

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v13, 0x2

    :cond_b
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Begin/While pattern was not an array as expected"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v1, 0x4

    const/4 v13, 0x2

    :cond_c
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found name key with value which is not a String"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    const/4 v4, 0x0

    const/4 v13, 0x1

    :cond_d
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found contentName key with value which is not a String"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    const/4 v1, 0x3

    const/4 v13, 0x2

    :cond_e
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found captures key with value which is not a Dictionary"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    const/4 v3, 0x2

    const/4 v13, 0x0

    :cond_f
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found beginCaptures key with value which is not a Dictionary"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    const/4 v10, 0x7

    const/4 v13, 0x1

    :cond_10
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found endCaptures key with value which is not a Dictionary"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    const/4 v8, 0x6
.end method

.method private parseBeginWhileRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;
    .locals 14

    const/4 v13, 0x5

    const/4 v11, 0x0

    const/4 v13, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->ruleIsDisabled(Lcom/dd/plist/NSDictionary;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v6, v11

    const/4 v13, 0x4

    :cond_0
    :goto_0
    return-object v6

    const/4 v2, 0x3

    const/4 v13, 0x5

    :cond_1
    const-string v10, "begin"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v13, 0x4

    const-string v10, "begin"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_7

    const/4 v13, 0x3

    const-string v10, "begin"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x3

    const-string v10, "while"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v13, 0x1

    const-string v10, "while"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_9

    const/4 v13, 0x7

    const-string v10, "while"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v9

    const/4 v13, 0x6

    new-instance v6, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    invoke-direct {v6}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;-><init>()V

    const/4 v13, 0x4

    :try_start_0
    invoke-virtual {v6, v0}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->setBeginPattern(Ljava/lang/String;)V

    const/4 v13, 0x6

    invoke-virtual {v6, v9}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->setWhilePattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v13, 0x6

    const-string v10, "patterns"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x2

    const-string v10, "patterns"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v4

    const/4 v13, 0x7

    instance-of v10, v4, Lcom/dd/plist/NSArray;

    if-eqz v10, :cond_b

    const/4 v13, 0x7

    check-cast v4, Lcom/dd/plist/NSArray;

    invoke-virtual {v4}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v5

    const/4 v13, 0x3

    invoke-direct {p0, v5}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parsePatterns([Lcom/dd/plist/NSObject;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v7

    const/4 v13, 0x3

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->setPatterns(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v13, 0x3

    :cond_2
    :goto_1
    const-string v10, "name"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v13, 0x4

    const-string v10, "name"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_c

    const/4 v13, 0x6

    const-string v10, "name"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x7

    new-instance v8, Lcom/henrythompson/quoda/tmlanguage/Scope;

    invoke-direct {v8, v3}, Lcom/henrythompson/quoda/tmlanguage/Scope;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x2

    invoke-virtual {v6, v8}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->setName(Lcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v13, 0x6

    :cond_3
    :goto_2
    const-string v10, "contentName"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v13, 0x7

    const-string v10, "contentName"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSString;

    if-eqz v10, :cond_d

    const/4 v13, 0x4

    const-string v10, "contentName"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSString;

    invoke-virtual {v10}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x3

    new-instance v8, Lcom/henrythompson/quoda/tmlanguage/Scope;

    invoke-direct {v8, v1}, Lcom/henrythompson/quoda/tmlanguage/Scope;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x4

    invoke-virtual {v6, v8}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->setContentName(Lcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v13, 0x4

    :cond_4
    :goto_3
    const-string v10, "captures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v13, 0x1

    const-string v10, "captures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSDictionary;

    if-eqz v10, :cond_e

    const/4 v13, 0x2

    const-string v10, "captures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v10, v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)V

    const/4 v13, 0x4

    :cond_5
    :goto_4
    const-string v10, "beginCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v13, 0x4

    const-string v10, "beginCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSDictionary;

    if-eqz v10, :cond_f

    const/4 v13, 0x4

    const-string v10, "beginCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v10, v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseBeginCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)V

    const/4 v13, 0x6

    :cond_6
    :goto_5
    const-string v10, "whileCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v13, 0x4

    const-string v10, "whileCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    instance-of v10, v10, Lcom/dd/plist/NSDictionary;

    if-eqz v10, :cond_10

    const/4 v13, 0x4

    const-string v10, "endCaptures"

    invoke-virtual {p1, v10}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v10

    check-cast v10, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v10, v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseWhileCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)V

    goto/16 :goto_0

    const/4 v9, 0x7

    const/4 v13, 0x2

    :cond_7
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found begin key with value which is not a String"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v11

    const/4 v13, 0x2

    goto/16 :goto_0

    const/4 v10, 0x4

    const/4 v13, 0x5

    :cond_8
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found a begin/while rule without a begin key"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v11

    const/4 v13, 0x3

    goto/16 :goto_0

    const/4 v6, 0x0

    const/4 v13, 0x6

    :cond_9
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found while key with value which is not a String"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v11

    const/4 v13, 0x1

    goto/16 :goto_0

    const/4 v7, 0x1

    const/4 v13, 0x7

    :cond_a
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Found a begin/while rule without a while key"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v11

    const/4 v13, 0x6

    goto/16 :goto_0

    const/4 v3, 0x2

    const/4 v13, 0x6

    :catch_0
    move-exception v2

    const/4 v13, 0x7

    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v11

    const/4 v13, 0x7

    goto/16 :goto_0

    const/4 v10, 0x0

    const/4 v13, 0x5

    :cond_b
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Begin/While pattern was not an array as expected"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    const/4 v4, 0x6

    const/4 v13, 0x7

    :cond_c
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found name key with value which is not a String"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    const/4 v4, 0x4

    const/4 v13, 0x2

    :cond_d
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found contentName key with value which is not a String"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    const/4 v9, 0x1

    const/4 v13, 0x3

    :cond_e
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found captures key with value which is not a Dictionary"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    const/4 v13, 0x1

    const/4 v13, 0x5

    :cond_f
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found beginCaptures key with value which is not a Dictionary"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    const/4 v12, 0x0

    const/4 v13, 0x1

    :cond_10
    iget-object v10, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v11, "Found whileCaptures key with value which is not a Dictionary"

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    const/4 v1, 0x0
.end method

.method private parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x4

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x7
.end method

.method private parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v4, v11, v10

    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v9

    instance-of v9, v9, Lcom/dd/plist/NSDictionary;

    if-nez v9, :cond_2

    iget-object v9, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Capture "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " is not a dictionary"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_0

    const/4 v9, 0x6

    :catch_0
    move-exception v3

    iget-object v9, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Illegal capture index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v4, 0x0

    :cond_1
    iget-object v9, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Capture "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has no associated dictionary"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v14, 0x1

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSDictionary;

    const-string v9, "name"

    invoke-virtual {v1, v9}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "name"

    invoke-virtual {v1, v9}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v9

    check-cast v9, Lcom/dd/plist/NSString;

    invoke-virtual {v9}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/henrythompson/quoda/tmlanguage/Scope;

    invoke-direct {v8, v5}, Lcom/henrythompson/quoda/tmlanguage/Scope;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v8}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->addCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V

    goto :goto_1

    const/4 v1, 0x2

    :cond_3
    const-string v9, "patterns"

    invoke-virtual {v1, v9}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "patterns"

    invoke-virtual {v1, v9}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v6

    instance-of v9, v6, Lcom/dd/plist/NSArray;

    if-eqz v9, :cond_4

    check-cast v6, Lcom/dd/plist/NSArray;

    invoke-virtual {v6}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parsePatterns([Lcom/dd/plist/NSObject;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v9}, Lcom/henrythompson/quoda/tmlanguage/CaptureSet;->addCapture(ILcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    goto/16 :goto_1

    const/4 v9, 0x2

    :cond_4
    iget-object v9, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v10, "CaptureSet pattern was not an array as expected"

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    nop

    return-void

    const/4 v13, 0x6
.end method

.method private parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/MatchRule;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/MatchRule;->getCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private parseEndCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;->getEndCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private parseInclude(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->ruleIsDisabled(Lcom/dd/plist/NSDictionary;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x6

    :goto_0
    return-object v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    :cond_0
    const-string v2, "include"

    invoke-virtual {p1, v2}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x6

    const-string v2, "include"

    invoke-virtual {p1, v2}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v2

    instance-of v2, v2, Lcom/dd/plist/NSString;

    if-eqz v2, :cond_1

    const/4 v4, 0x6

    const-string v1, "include"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSString;

    invoke-virtual {v1}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->getInclude(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/Include;

    move-result-object v1

    goto :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x0

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v3, "Expected include to be a string"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v1, 0x3

    const/4 v4, 0x0

    :cond_2
    iget-object v2, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v3, "Found an include rule without an include key"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v4, 0x3
.end method

.method private parseMatchRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/MatchRule;
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->ruleIsDisabled(Lcom/dd/plist/NSDictionary;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v6

    const/4 v8, 0x2

    :cond_0
    :goto_0
    return-object v3

    const/4 v3, 0x5

    const/4 v8, 0x5

    :cond_1
    const-string v5, "match"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v8, 0x3

    const-string v5, "match"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    instance-of v5, v5, Lcom/dd/plist/NSString;

    if-eqz v5, :cond_3

    const/4 v8, 0x6

    const-string v5, "match"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    check-cast v5, Lcom/dd/plist/NSString;

    invoke-virtual {v5}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    new-instance v3, Lcom/henrythompson/quoda/tmlanguage/MatchRule;

    invoke-direct {v3}, Lcom/henrythompson/quoda/tmlanguage/MatchRule;-><init>()V

    const/4 v8, 0x4

    :try_start_0
    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/tmlanguage/MatchRule;->setPattern(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x3

    const-string v5, "name"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v8, 0x1

    const-string v5, "name"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    instance-of v5, v5, Lcom/dd/plist/NSString;

    if-eqz v5, :cond_5

    const/4 v8, 0x0

    const-string v5, "name"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    check-cast v5, Lcom/dd/plist/NSString;

    invoke-virtual {v5}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    new-instance v4, Lcom/henrythompson/quoda/tmlanguage/Scope;

    invoke-direct {v4, v1}, Lcom/henrythompson/quoda/tmlanguage/Scope;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Lcom/henrythompson/quoda/tmlanguage/MatchRule;->addCapture(ILcom/henrythompson/quoda/tmlanguage/Scope;)V

    const/4 v8, 0x4

    :cond_2
    :goto_1
    const-string v5, "captures"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v8, 0x0

    const-string v5, "captures"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    instance-of v5, v5, Lcom/dd/plist/NSDictionary;

    if-eqz v5, :cond_6

    const/4 v8, 0x6

    const-string v5, "captures"

    invoke-virtual {p1, v5}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    check-cast v5, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v5, v3}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/MatchRule;)V

    goto :goto_0

    const/4 v6, 0x4

    const/4 v8, 0x2

    :cond_3
    iget-object v5, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v7, "Found match key with value which is not a String"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    const/4 v8, 0x1

    goto/16 :goto_0

    const/4 v0, 0x4

    const/4 v8, 0x7

    :cond_4
    iget-object v5, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v7, "Found a match rule without a match key"

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    const/4 v8, 0x1

    goto/16 :goto_0

    const/4 v7, 0x2

    const/4 v8, 0x5

    :catch_0
    move-exception v0

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    const/4 v8, 0x6

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v8, 0x3

    :cond_5
    iget-object v5, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v6, "Found name key with value which is not a String"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v0, 0x2

    const/4 v8, 0x5

    :cond_6
    iget-object v5, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v6, "Found captures key with value which is not a Dictionary"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    const/4 v8, 0x0
.end method

.method private parseMetadata()Lcom/henrythompson/quoda/tmlanguage/TmLanguage;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "name"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "name"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSString;

    invoke-virtual {v12}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v7

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "scopeName"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "scopeName"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSString;

    invoke-virtual {v12}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v10

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "uuid"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "uuid"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSString;

    invoke-virtual {v12}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "keyEquivalent"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "keyEquivalent"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSString;

    invoke-virtual {v12}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v6

    :cond_0
    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "foldingStartMarker"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "foldingStartMarker"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSString;

    invoke-virtual {v12}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "foldingStopMarker"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "foldingStopMarker"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSString;

    invoke-virtual {v12}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v4

    :cond_2
    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v13, "fileTypes"

    invoke-virtual {v12, v13}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSArray;

    invoke-virtual {v12}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v2

    if-eqz v2, :cond_6

    array-length v12, v2

    new-array v1, v12, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    array-length v12, v2

    if-ge v5, v12, :cond_7

    aget-object v0, v2, v5

    check-cast v0, Lcom/dd/plist/NSString;

    invoke-virtual {v0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    const/4 v11, 0x2

    :cond_3
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Language files must provide a \"name\" key and value"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_4
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Language files must provide a \"scopeName\" key and value"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_5
    new-instance v12, Ljava/lang/Exception;

    const-string v13, "Language files must provide a \"uuid\" key and value"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    iget-object v12, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The grammar "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " has no associated file extensions"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    new-array v1, v12, [Ljava/lang/String;

    :cond_7
    new-instance v9, Lcom/henrythompson/quoda/tmlanguage/RootRule;

    invoke-direct {v9, v10}, Lcom/henrythompson/quoda/tmlanguage/RootRule;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    invoke-direct {v8, v7, v11, v9}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/henrythompson/quoda/tmlanguage/RootRule;)V

    invoke-virtual {v8, v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->setKeyEquivalent(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->setFileTypes([Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->setFoldingStartMarker(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->setFoldingStopMarker(Ljava/lang/String;)V

    return-object v8

    const/4 v14, 0x2
.end method

.method private parsePatterns([Lcom/dd/plist/NSObject;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-direct {v0}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parsePatterns([Lcom/dd/plist/NSObject;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v1, 0x0

    return-object v0

    const/4 v1, 0x7
.end method

.method private parsePatterns([Lcom/dd/plist/NSObject;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v5, 0x3

    if-eqz p1, :cond_1

    const/4 v5, 0x0

    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p1, v1

    const/4 v5, 0x6

    instance-of v3, v0, Lcom/dd/plist/NSDictionary;

    if-eqz v3, :cond_0

    const/4 v5, 0x6

    check-cast v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->addRule(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V

    const/4 v5, 0x6

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v3, 0x2

    const/4 v5, 0x4

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v4, "Invalid pattern dictionary found and ignored"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v0, 0x4

    const/4 v5, 0x6

    :cond_1
    nop

    return-void

    const/4 v5, 0x5
.end method

.method private parseRepository(Lcom/dd/plist/NSDictionary;)V
    .locals 14

    invoke-virtual {p1}, Lcom/dd/plist/NSDictionary;->allKeys()[Ljava/lang/String;

    move-result-object v3

    array-length v10, v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_6

    aget-object v2, v3, v9

    invoke-virtual {p1, v2}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    instance-of v11, v1, Lcom/dd/plist/NSDictionary;

    if-eqz v11, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/dd/plist/NSDictionary;

    const-string v11, "repository"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "repository"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v11

    instance-of v11, v11, Lcom/dd/plist/NSDictionary;

    if-eqz v11, :cond_2

    const-string v11, "repository"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v8

    check-cast v8, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseRepository(Lcom/dd/plist/NSDictionary;)V

    :cond_0
    :goto_1
    const-string v11, "match"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "begin"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "end"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "while"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "include"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_1
    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    const/4 v1, 0x3

    :cond_2
    iget-object v11, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v12, "Repository was not a dictionary as expected"

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v11, 0x1

    :cond_3
    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->setRepositoryReference(Ljava/lang/String;)V

    new-instance v5, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-direct {v5}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;-><init>()V

    invoke-virtual {v4}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;->getRepositoryReference()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->setRepositoryReference(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->addRule(Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;)V

    iget-object v11, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRepository:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v6, 0x3

    :cond_4
    const-string v11, "patterns"

    invoke-virtual {v0, v11}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v7

    check-cast v7, Lcom/dd/plist/NSArray;

    new-instance v6, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    invoke-direct {v6}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;-><init>()V

    invoke-virtual {v7}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v11

    invoke-direct {p0, v11, v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parsePatterns([Lcom/dd/plist/NSObject;Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    invoke-virtual {v6, v2}, Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;->setRepositoryReference(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRepository:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v0, 0x6

    :cond_5
    iget-object v11, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Repository item with name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not a dictionary"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v11, 0x3

    :cond_6
    nop

    return-void

    const/4 v12, 0x5
.end method

.method private parseRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->ruleIsDisabled(Lcom/dd/plist/NSDictionary;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    :goto_0
    return-object v0

    const/4 v2, 0x0

    const/4 v3, 0x5

    :cond_0
    const-string v1, "match"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseMatchRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/MatchRule;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x6

    const/4 v3, 0x7

    :cond_1
    const-string v1, "begin"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "end"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseBeginEndRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/BeginEndRule;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x6

    const/4 v3, 0x6

    :cond_2
    const-string v1, "begin"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "while"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseBeginWhileRule(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x0

    const/4 v3, 0x6

    :cond_3
    const-string v1, "include"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseInclude(Lcom/dd/plist/NSDictionary;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRule;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x1

    const/4 v3, 0x7

    :cond_4
    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    const-string v2, "A pattern without a match, begin/end, begin/while or include was found and ignored"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v2, 0x0
.end method

.method private parseWhileCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    invoke-virtual {p2}, Lcom/henrythompson/quoda/tmlanguage/BeginWhileRule;->getWhileCaptureSet()Lcom/henrythompson/quoda/tmlanguage/CaptureSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseCaptures(Lcom/dd/plist/NSDictionary;Lcom/henrythompson/quoda/tmlanguage/CaptureSet;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private ruleIsDisabled(Lcom/dd/plist/NSDictionary;)Z
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x0

    const-string v1, "disabled"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    const-string v1, "disabled"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    instance-of v1, v1, Lcom/dd/plist/NSString;

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    const-string v1, "disabled"

    invoke-virtual {p1, v1}, Lcom/dd/plist/NSDictionary;->get(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v1

    check-cast v1, Lcom/dd/plist/NSString;

    invoke-virtual {v1}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x1

    :goto_0
    return v1

    const/4 v2, 0x1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v1, 0x6
.end method

.method private warningsToLogcat()V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v5, 0x1

    const-string v2, "TmLanguageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v4, 0x6

    const/4 v5, 0x3

    :cond_0
    nop

    return-void

    const/4 v4, 0x4
.end method


# virtual methods
.method public parse(Ljava/io/InputStream;)Lcom/henrythompson/quoda/tmlanguage/TmLanguage;
    .locals 10

    const/4 v9, 0x1

    const/4 v9, 0x7

    :try_start_0
    invoke-static {p1}, Lcom/dd/plist/PropertyListParser;->parse(Ljava/io/InputStream;)Lcom/dd/plist/NSObject;

    move-result-object v6

    check-cast v6, Lcom/dd/plist/NSDictionary;

    iput-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const/4 v9, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseMetadata()Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    move-result-object v6

    iput-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->getRootRule()Lcom/henrythompson/quoda/tmlanguage/RootRule;

    move-result-object v3

    const/4 v9, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v7, "repository"

    invoke-virtual {v6, v7}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v9, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v7, "repository"

    invoke-virtual {v6, v7}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    const/4 v9, 0x3

    instance-of v6, v1, Lcom/dd/plist/NSDictionary;

    if-eqz v6, :cond_1

    const/4 v9, 0x4

    check-cast v1, Lcom/dd/plist/NSDictionary;

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parseRepository(Lcom/dd/plist/NSDictionary;)V

    const/4 v9, 0x3

    :cond_0
    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    iget-object v7, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRepository:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Lcom/henrythompson/quoda/tmlanguage/TmLanguage;->setRepository(Ljava/util/ArrayList;)V

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v7, "patterns"

    invoke-virtual {v6, v7}, Lcom/dd/plist/NSDictionary;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v9, 0x7

    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mRootDict:Lcom/dd/plist/NSDictionary;

    const-string v7, "patterns"

    invoke-virtual {v6, v7}, Lcom/dd/plist/NSDictionary;->objectForKey(Ljava/lang/String;)Lcom/dd/plist/NSObject;

    move-result-object v1

    const/4 v9, 0x2

    instance-of v6, v1, Lcom/dd/plist/NSArray;

    if-eqz v6, :cond_2

    const/4 v9, 0x2

    check-cast v1, Lcom/dd/plist/NSArray;

    invoke-virtual {v1}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v2

    const/4 v9, 0x1

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->parsePatterns([Lcom/dd/plist/NSObject;)Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;

    move-result-object v4

    const/4 v9, 0x5

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/tmlanguage/RootRule;->addChildRules(Lcom/henrythompson/quoda/tmlanguage/SyntaxRuleSet;)V

    const/4 v9, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->warningsToLogcat()V

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->mLanguage:Lcom/henrythompson/quoda/tmlanguage/TmLanguage;

    const/4 v9, 0x2

    :goto_0
    return-object v6

    const/4 v7, 0x7

    const/4 v9, 0x5

    :cond_1
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Expected repository to be a dictionary"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x0

    :catch_0
    move-exception v0

    const/4 v9, 0x2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x6

    const-string v6, "TmLanguageParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parsing Language File due to exception with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nStack Trace:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nWith Warnings: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/tmlanguage/TmLanguageParser;->warningsToLogcat()V

    const/4 v9, 0x3

    const/4 v6, 0x0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v9, 0x2

    :cond_2
    :try_start_1
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Object with key \"patterns\" was not an array as expected"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    const/4 v9, 0x3

    :cond_3
    new-instance v6, Ljava/lang/Exception;

    const-string v7, "No patterns array found"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method
