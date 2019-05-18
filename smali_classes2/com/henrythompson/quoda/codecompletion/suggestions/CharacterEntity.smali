.class public Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;
.super Lcom/henrythompson/quoda/codecompletion/suggestions/AutoSuggestionItem;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/codecompletion/suggestions/AutoSuggestionItem;-><init>()V

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;->name:Ljava/lang/String;

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;->name:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x2
.end method
