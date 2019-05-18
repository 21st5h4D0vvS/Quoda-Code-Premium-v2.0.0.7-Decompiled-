.class final enum Lcom/github/rjeschke/txtmark/BlockType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/rjeschke/txtmark/BlockType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum BLOCKQUOTE:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum CODE:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum FENCED_CODE:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum HEADLINE:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum NONE:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum PLUGIN:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum RULER:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

.field public static final enum XML:Lcom/github/rjeschke/txtmark/BlockType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x3

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x6

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "BLOCKQUOTE"

    invoke-direct {v0, v1, v4}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->BLOCKQUOTE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "CODE"

    invoke-direct {v0, v1, v5}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->CODE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x7

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "FENCED_CODE"

    invoke-direct {v0, v1, v6}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "HEADLINE"

    invoke-direct {v0, v1, v7}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->HEADLINE:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x6

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "LIST_ITEM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x5

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "ORDERED_LIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x5

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "PARAGRAPH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x0

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "RULER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->RULER:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x1

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "UNORDERED_LIST"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x3

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "XML"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->XML:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x6

    new-instance v0, Lcom/github/rjeschke/txtmark/BlockType;

    const-string v1, "PLUGIN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/github/rjeschke/txtmark/BlockType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->PLUGIN:Lcom/github/rjeschke/txtmark/BlockType;

    const/4 v8, 0x1

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/github/rjeschke/txtmark/BlockType;

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->NONE:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->BLOCKQUOTE:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->CODE:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->FENCED_CODE:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/github/rjeschke/txtmark/BlockType;->HEADLINE:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->LIST_ITEM:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->ORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->PARAGRAPH:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->RULER:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->UNORDERED_LIST:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->XML:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/github/rjeschke/txtmark/BlockType;->PLUGIN:Lcom/github/rjeschke/txtmark/BlockType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/github/rjeschke/txtmark/BlockType;->$VALUES:[Lcom/github/rjeschke/txtmark/BlockType;

    nop

    return-void

    const/4 v3, 0x4
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/rjeschke/txtmark/BlockType;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    const-class v0, Lcom/github/rjeschke/txtmark/BlockType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/rjeschke/txtmark/BlockType;

    return-object v0

    const/4 v0, 0x0
.end method

.method public static values()[Lcom/github/rjeschke/txtmark/BlockType;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    sget-object v0, Lcom/github/rjeschke/txtmark/BlockType;->$VALUES:[Lcom/github/rjeschke/txtmark/BlockType;

    invoke-virtual {v0}, [Lcom/github/rjeschke/txtmark/BlockType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/rjeschke/txtmark/BlockType;

    return-object v0

    const/4 v0, 0x4
.end method
