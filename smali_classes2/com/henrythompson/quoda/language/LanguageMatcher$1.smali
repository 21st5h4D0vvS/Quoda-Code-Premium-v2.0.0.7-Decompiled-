.class synthetic Lcom/henrythompson/quoda/language/LanguageMatcher$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/language/LanguageMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->values()[Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    :try_start_0
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Function:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_11

    :goto_0
    :try_start_1
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Class:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_10

    :goto_1
    :try_start_2
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Comment:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_f

    :goto_2
    :try_start_3
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Escape:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Invalid:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_d

    :goto_4
    :try_start_5
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Keyword:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_c

    :goto_5
    :try_start_6
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->LangConst:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_b

    :goto_6
    :try_start_7
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->NormalText:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_a

    :goto_7
    :try_start_8
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Number:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_9

    :goto_8
    :try_start_9
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Operator:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_8

    :goto_9
    :try_start_a
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Preprocessor:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_7

    :goto_a
    :try_start_b
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->String:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_6

    :goto_b
    :try_start_c
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->TagAttribute:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    :try_start_d
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->TagBrace:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4

    :goto_d
    :try_start_e
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->TagName:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_3

    :goto_e
    :try_start_f
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Type:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_2

    :goto_f
    :try_start_10
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->UserConst:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_1

    :goto_10
    :try_start_11
    sget-object v0, Lcom/henrythompson/quoda/language/LanguageMatcher$1;->$SwitchMap$com$henrythompson$quoda$language$LanguageMatcher$Style:[I

    sget-object v1, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->Variable:Lcom/henrythompson/quoda/language/LanguageMatcher$Style;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/LanguageMatcher$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_0

    :goto_11
    nop

    return-void

    const/4 v0, 0x0

    :catch_0
    move-exception v0

    goto :goto_11

    const/4 v0, 0x1

    :catch_1
    move-exception v0

    goto :goto_10

    const/4 v1, 0x6

    :catch_2
    move-exception v0

    goto :goto_f

    const/4 v0, 0x7

    :catch_3
    move-exception v0

    goto :goto_e

    const/4 v1, 0x3

    :catch_4
    move-exception v0

    goto :goto_d

    const/4 v3, 0x0

    :catch_5
    move-exception v0

    goto :goto_c

    const/4 v3, 0x3

    :catch_6
    move-exception v0

    goto :goto_b

    const/4 v0, 0x6

    :catch_7
    move-exception v0

    goto :goto_a

    const/4 v0, 0x0

    :catch_8
    move-exception v0

    goto :goto_9

    const/4 v2, 0x3

    :catch_9
    move-exception v0

    goto/16 :goto_8

    const/4 v3, 0x1

    :catch_a
    move-exception v0

    goto/16 :goto_7

    const/4 v0, 0x3

    :catch_b
    move-exception v0

    goto/16 :goto_6

    const/4 v1, 0x1

    :catch_c
    move-exception v0

    goto/16 :goto_5

    const/4 v3, 0x1

    :catch_d
    move-exception v0

    goto/16 :goto_4

    const/4 v2, 0x1

    :catch_e
    move-exception v0

    goto/16 :goto_3

    const/4 v1, 0x1

    :catch_f
    move-exception v0

    goto/16 :goto_2

    const/4 v2, 0x4

    :catch_10
    move-exception v0

    goto/16 :goto_1

    const/4 v3, 0x2

    :catch_11
    move-exception v0

    goto/16 :goto_0

    const/4 v3, 0x5
.end method
