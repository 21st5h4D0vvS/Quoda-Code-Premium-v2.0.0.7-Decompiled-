.class public Lcom/henrythompson/quoda/language/CssLanguage;
.super Lcom/henrythompson/quoda/language/Language;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/Language;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public getBlockCommentEnd()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    const-string v0, "*/"

    return-object v0

    const/4 v0, 0x7
.end method

.method public getBlockCommentStart()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    const-string v0, "/*"

    return-object v0

    const/4 v1, 0x3
.end method

.method public getLineComment()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x5
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    const-string v0, "css"

    return-object v0

    const/4 v1, 0x6
.end method

.method getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/language/CssStyler;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/CssStyler;-><init>()V

    return-object v0

    const/4 v0, 0x1
.end method
