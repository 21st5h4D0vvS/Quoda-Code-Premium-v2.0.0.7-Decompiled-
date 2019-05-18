.class synthetic Lcom/github/rjeschke/txtmark/Emitter$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/rjeschke/txtmark/Emitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

.field static final synthetic $SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x4

    invoke-static {}, Lcom/github/rjeschke/txtmark/MarkToken;->values()[Lcom/github/rjeschke/txtmark/MarkToken;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    :try_start_0
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->IMAGE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_23

    :goto_0
    :try_start_1
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->LINK:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_22

    :goto_1
    :try_start_2
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_21

    :goto_2
    :try_start_3
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->EM_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_20

    :goto_3
    :try_start_4
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_STAR:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1f

    :goto_4
    :try_start_5
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRONG_UNDERSCORE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1e

    :goto_5
    :try_start_6
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->STRIKE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1d

    :goto_6
    :try_start_7
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->SUPER:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1c

    :goto_7
    :try_start_8
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_SINGLE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1b

    :goto_8
    :try_start_9
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->CODE_DOUBLE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1a

    :goto_9
    :try_start_a
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->HTML:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_19

    :goto_a
    :try_start_b
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->ENTITY:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_18

    :goto_b
    :try_start_c
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LINK_OPEN:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_17

    :goto_c
    :try_start_d
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_COPY:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_16

    :goto_d
    :try_start_e
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_REG:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_15

    :goto_e
    :try_start_f
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_TRADE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_14

    :goto_f
    :try_start_10
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_NDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_13

    :goto_10
    :try_start_11
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_MDASH:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_12

    :goto_11
    :try_start_12
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_HELLIP:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_11

    :goto_12
    :try_start_13
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_10

    :goto_13
    :try_start_14
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_RAQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_f

    :goto_14
    :try_start_15
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_RDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_e

    :goto_15
    :try_start_16
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->X_LDQUO:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_d

    :goto_16
    :try_start_17
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$MarkToken:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/MarkToken;->ESCAPE:Lcom/github/rjeschke/txtmark/MarkToken;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/MarkToken;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_c

    const/4 v3, 0x0

    :goto_17
    invoke-static {}, Lcom/github/rjeschke/txtmark/BlockType;->values()[Lcom/github/rjeschke/txtmark/BlockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    :try_start_18
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->RULER:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_b

    :goto_18
    :try_start_19
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_a

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->XML:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_9

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->HEADLINE:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_8

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_7

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->CODE:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_6

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_5

    :goto_1e
    :try_start_1f
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->BLOCKQUOTE:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_4

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_3

    :goto_20
    :try_start_21
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_2

    :goto_21
    :try_start_22
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1

    :goto_22
    :try_start_23
    sget-object v0, Lcom/github/rjeschke/txtmark/Emitter$1;->$SwitchMap$com$github$rjeschke$txtmark$BlockType:[I

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->PLUGIN:Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v1}, Lcom/github/rjeschke/txtmark/BlockType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_0

    :goto_23
    nop

    return-void

    const/4 v1, 0x5

    :catch_0
    move-exception v0

    goto :goto_23

    const/4 v3, 0x6

    :catch_1
    move-exception v0

    goto :goto_22

    const/4 v1, 0x4

    :catch_2
    move-exception v0

    goto :goto_21

    const/4 v2, 0x3

    :catch_3
    move-exception v0

    goto :goto_20

    const/4 v2, 0x7

    :catch_4
    move-exception v0

    goto :goto_1f

    const/4 v2, 0x3

    :catch_5
    move-exception v0

    goto :goto_1e

    const/4 v3, 0x1

    :catch_6
    move-exception v0

    goto :goto_1d

    const/4 v3, 0x4

    :catch_7
    move-exception v0

    goto :goto_1c

    const/4 v2, 0x3

    :catch_8
    move-exception v0

    goto :goto_1b

    const/4 v3, 0x0

    :catch_9
    move-exception v0

    goto/16 :goto_1a

    const/4 v0, 0x4

    :catch_a
    move-exception v0

    goto/16 :goto_19

    const/4 v2, 0x1

    :catch_b
    move-exception v0

    goto/16 :goto_18

    const/4 v3, 0x6

    const/4 v3, 0x6

    :catch_c
    move-exception v0

    goto/16 :goto_17

    const/4 v0, 0x7

    :catch_d
    move-exception v0

    goto/16 :goto_16

    const/4 v3, 0x4

    :catch_e
    move-exception v0

    goto/16 :goto_15

    const/4 v0, 0x7

    :catch_f
    move-exception v0

    goto/16 :goto_14

    const/4 v1, 0x7

    :catch_10
    move-exception v0

    goto/16 :goto_13

    const/4 v0, 0x2

    :catch_11
    move-exception v0

    goto/16 :goto_12

    const/4 v0, 0x1

    :catch_12
    move-exception v0

    goto/16 :goto_11

    const/4 v2, 0x0

    :catch_13
    move-exception v0

    goto/16 :goto_10

    const/4 v0, 0x2

    :catch_14
    move-exception v0

    goto/16 :goto_f

    const/4 v1, 0x2

    :catch_15
    move-exception v0

    goto/16 :goto_e

    const/4 v3, 0x7

    :catch_16
    move-exception v0

    goto/16 :goto_d

    const/4 v3, 0x1

    :catch_17
    move-exception v0

    goto/16 :goto_c

    const/4 v2, 0x1

    :catch_18
    move-exception v0

    goto/16 :goto_b

    const/4 v2, 0x1

    :catch_19
    move-exception v0

    goto/16 :goto_a

    const/4 v0, 0x6

    :catch_1a
    move-exception v0

    goto/16 :goto_9

    const/4 v0, 0x7

    :catch_1b
    move-exception v0

    goto/16 :goto_8

    const/4 v2, 0x6

    :catch_1c
    move-exception v0

    goto/16 :goto_7

    const/4 v0, 0x4

    :catch_1d
    move-exception v0

    goto/16 :goto_6

    const/4 v3, 0x0

    :catch_1e
    move-exception v0

    goto/16 :goto_5

    const/4 v2, 0x7

    :catch_1f
    move-exception v0

    goto/16 :goto_4

    const/4 v1, 0x3

    :catch_20
    move-exception v0

    goto/16 :goto_3

    const/4 v1, 0x3

    :catch_21
    move-exception v0

    goto/16 :goto_2

    const/4 v0, 0x6

    :catch_22
    move-exception v0

    goto/16 :goto_1

    const/4 v2, 0x3

    :catch_23
    move-exception v0

    goto/16 :goto_0

    const/4 v1, 0x3
.end method
