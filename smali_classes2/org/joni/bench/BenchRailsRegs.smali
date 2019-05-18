.class public Lorg/joni/bench/BenchRailsRegs;
.super Lorg/joni/bench/AbstractBench;
.source "BenchRailsRegs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/joni/bench/AbstractBench;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 5
    const/16 v2, 0x16

    new-array v1, v2, [[Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "a.*?[b-z]{2,4}aaaaaa"

    aput-object v4, v2, v3

    const-string v4, "afdgdsgderaabxxaaaaaaaaaaaaaaaaaaaaaaaa"

    aput-object v4, v2, v9

    aput-object v2, v1, v3

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "://"

    aput-object v4, v2, v3

    const-string v4, "/shop/viewCategory.shtml?category=DOGS"

    aput-object v4, v2, v9

    aput-object v2, v1, v9

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "^\\w+\\://[^/]+(/.*|$)$"

    aput-object v4, v2, v3

    const-string v4, "/shop/viewCategory.shtml?category=DOGS"

    aput-object v4, v2, v9

    aput-object v2, v1, v6

    const/4 v2, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/4 v2, 0x4

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/shop/signonForm\\.shtml/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/4 v2, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/shop/newAccountForm\\.shtml/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/4 v2, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/shop/newAccount\\.shtml/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/4 v2, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/shop/viewCart\\.shtml/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/shop/index\\.shtml/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x9

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A/shop/viewCategory\\.shtml/?\\Z"

    aput-object v5, v4, v3

    const-string v5, "/shop/viewCategory.shtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    new-array v2, v6, [Ljava/lang/String;

    const-string v4, "\\A(?:::)?([A-Z]\\w*(?:::[A-Z]\\w*)*)\\z"

    aput-object v4, v2, v3

    const-string v4, "CategoriesController"

    aput-object v4, v2, v9

    aput-object v2, v1, v10

    const/16 v2, 0xb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\Ainsert"

    aput-object v5, v4, v3

    const-string v5, "SELECT * FROM sessions WHERE (session_id = \'1b341ffe23b5298676d535fcabd3d0d7\')  LIMIT 1"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0xc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\A\\(?\\s*(select|show)"

    aput-object v5, v4, v3

    const-string v5, "SELECT * FROM sessions WHERE (session_id = \'1b341ffe23b5298676d535fcabd3d0d7\')  LIMIT 1"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0xd

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, ".*?\n"

    aput-object v5, v4, v3

    const-string v5, "1b341ffe23b5298676d535fcabd3d0d7"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0xe

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "^find_(all_by|by)_([_a-zA-Z]\\w*)$"

    aput-object v5, v4, v3

    const-string v5, "find_by_string_id"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0xf

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "\\.rjs$"

    aput-object v5, v4, v3

    const-string v5, "categories/show.rhtml"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x10

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "^[-a-z]+://"

    aput-object v5, v4, v3

    const-string v5, "petstore.css"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x11

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "^get$"

    aput-object v5, v4, v3

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x12

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "^post$"

    aput-object v5, v4, v3

    const-string v5, ""

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x13

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "^[^:]+"

    aput-object v5, v4, v3

    const-string v5, "www.example.com"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x14

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "(=|\\?|_before_type_cast)$"

    aput-object v5, v4, v3

    const-string v5, "updated_on"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    const/16 v2, 0x15

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "^(.*?)=(.*?);"

    aput-object v5, v4, v3

    const-string v5, "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"

    aput-object v5, v4, v9

    aput-object v4, v1, v2

    .line 27
    .local v1, "regexps":[[Ljava/lang/String;
    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v1, v2

    .line 28
    .local v0, "reg":[Ljava/lang/String;
    new-instance v5, Lorg/joni/bench/BenchRailsRegs;

    invoke-direct {v5}, Lorg/joni/bench/BenchRailsRegs;-><init>()V

    aget-object v6, v0, v3

    aget-object v7, v0, v9

    const v8, 0xf4240

    invoke-virtual {v5, v6, v7, v10, v8}, Lorg/joni/bench/BenchRailsRegs;->benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v0    # "reg":[Ljava/lang/String;
    :cond_0
    return-void
.end method
