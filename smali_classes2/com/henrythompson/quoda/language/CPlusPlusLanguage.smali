.class public Lcom/henrythompson/quoda/language/CPlusPlusLanguage;
.super Lcom/henrythompson/quoda/language/Language;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/Language;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public getBlockCommentEnd()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    const-string v0, "*/"

    return-object v0

    const/4 v0, 0x2
.end method

.method public getBlockCommentStart()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    const-string v0, "/*"

    return-object v0

    const/4 v0, 0x2
.end method

.method public getLineComment()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    const-string v0, "//"

    return-object v0

    const/4 v0, 0x7
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    const-string v0, "c++"

    return-object v0

    const/4 v0, 0x1
.end method

.method getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/language/CPlusPlusStyler;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/CPlusPlusStyler;-><init>()V

    return-object v0

    const/4 v0, 0x1
.end method
