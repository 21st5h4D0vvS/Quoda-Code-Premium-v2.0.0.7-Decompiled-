.class public Lcom/henrythompson/quoda/language/RubyLanguage;
.super Lcom/henrythompson/quoda/language/Language;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/language/Language;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getBlockCommentEnd()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    const-string v0, "=end"

    return-object v0

    const/4 v0, 0x5
.end method

.method public getBlockCommentStart()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    const-string v0, "=begin"

    return-object v0

    const/4 v1, 0x2
.end method

.method public getLineComment()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    const-string v0, "#"

    return-object v0

    const/4 v0, 0x3
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    const-string v0, "ruby"

    return-object v0

    const/4 v1, 0x4
.end method

.method getNewStylerObject()Lcom/henrythompson/quoda/language/LanguageStyler;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/language/RubyStyler;

    invoke-direct {v0}, Lcom/henrythompson/quoda/language/RubyStyler;-><init>()V

    return-object v0

    const/4 v1, 0x7
.end method
