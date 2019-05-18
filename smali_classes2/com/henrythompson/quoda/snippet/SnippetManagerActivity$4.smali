.class Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/henrythompson/quoda/ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$4;->this$0:Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public compare(Lcom/henrythompson/quoda/ListItem;Lcom/henrythompson/quoda/ListItem;)I
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    const-string v4, "Folder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    :goto_0
    return v4

    const/4 v3, 0x7

    const/4 v5, 0x3

    :cond_0
    const-string v4, "Folder"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v5, 0x4

    const/4 v4, -0x1

    goto :goto_0

    const/4 v0, 0x6

    const/4 v5, 0x6

    :cond_1
    const-string v4, "Folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    const/4 v4, 0x1

    goto :goto_0

    const/4 v3, 0x7

    const/4 v5, 0x3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    const/4 v5, 0x6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x0

    check-cast p1, Lcom/henrythompson/quoda/ListItem;

    check-cast p2, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {p0, p1, p2}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$4;->compare(Lcom/henrythompson/quoda/ListItem;Lcom/henrythompson/quoda/ListItem;)I

    move-result v0

    return v0

    const/4 v1, 0x6
.end method
