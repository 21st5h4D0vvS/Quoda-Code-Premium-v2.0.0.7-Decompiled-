.class public Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;
.super Ljava/lang/Object;


# static fields
.field private static final mHTMLCharacterEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final mHTMLColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final mHTMLGlobalAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final mHTMLGlobalEventAttributes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public static final mHTMLLanguageCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;",
            ">;"
        }
    .end annotation
.end field

.field public static final mHTMLTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLTags:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLColors:Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    const/4 v1, 0x7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public constructor <init>()V
    .locals 14

    const/4 v13, 0x7

    const/4 v12, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v13, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v13, 0x6

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;

    invoke-direct {v0}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;-><init>()V

    sget-object v1, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLTags:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/codecompletion/HtmlCodeCompletionHandlerLoader;->load(Ljava/util/ArrayList;)V

    const/4 v13, 0x5

    :cond_0
    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v13, 0x4

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onblur"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onchange"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "oncontextmenu"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onfocus"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onformchange"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onforminput"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "oninput"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "oninvalid"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onreset"

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onselect"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onsubmit"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onkeydown"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onkeypress"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onkeyup"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onclick"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondblclick"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondrag"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondragend"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondragenter"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondragleave"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondragover"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondragstart"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondrag"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onmousedown"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onmousemove"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onmouseout"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onmouseover"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onmouseup"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onmousewheel"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onscroll"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onabort"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "oncanplay"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "oncanplaythrough"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ondurationchange"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onemptied"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onended"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onerror"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onloadeddata"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onloadedmetadata"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onloadstart"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onpause"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onplay"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onplaying"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onprogress"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onratechange"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onreadystatechange"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onseeked"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onseeking"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onstalled"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onsuspend"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "ontimeupdate"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onvolumechange"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "onwaiting"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    :cond_1
    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "accesskey"

    move v7, v2

    move v8, v2

    move-object v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "class"

    move v7, v2

    move v8, v2

    move-object v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "contenteditable"

    new-array v9, v12, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v9, v2

    const-string v1, "false"

    aput-object v1, v9, v3

    const-string v1, "inherit"

    aput-object v1, v9, v11

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "contextmenu"

    move v7, v2

    move v8, v2

    move-object v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "dir"

    new-array v9, v12, [Ljava/lang/String;

    const-string v1, "ltr"

    aput-object v1, v9, v2

    const-string v1, "rtl"

    aput-object v1, v9, v3

    const-string v1, "auto"

    aput-object v1, v9, v11

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "draggable"

    new-array v9, v12, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v9, v2

    const-string v1, "false"

    aput-object v1, v9, v3

    const-string v1, "auto"

    aput-object v1, v9, v11

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "dropzone"

    new-array v9, v12, [Ljava/lang/String;

    const-string v1, "copy"

    aput-object v1, v9, v2

    const-string v1, "move"

    aput-object v1, v9, v3

    const-string v1, "link"

    aput-object v1, v9, v11

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "hidden"

    new-array v9, v3, [Ljava/lang/String;

    const-string v1, "hidden"

    aput-object v1, v9, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "id"

    move v7, v2

    move v8, v2

    move-object v9, v4

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "lang"

    new-array v9, v3, [Ljava/lang/String;

    const-string v1, "\ufffd"

    aput-object v1, v9, v2

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v5, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v6, "spellcheck"

    new-array v9, v11, [Ljava/lang/String;

    const-string v1, "true"

    aput-object v1, v9, v2

    const-string v1, "false"

    aput-object v1, v9, v3

    move v7, v2

    move v8, v2

    move v10, v2

    invoke-direct/range {v5 .. v10}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "style"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v6, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    new-instance v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const-string v1, "tabindex"

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;-><init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    :cond_2
    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "quot"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "amp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "gt"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ls"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "nbsp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "iexcl"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "cent"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "pound"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "curren"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "yen"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "brvbar"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sect"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "uml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "copy"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ordf"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "laquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "not"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "shy"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "reg"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "macr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "deg"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "plusmn"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sup2"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sup3"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "acute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "micro"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "para"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "middot"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "cedil"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sup1"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ordm"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "requo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "frac14"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "frac12"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "frac34"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "iquest"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Agrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Aacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Acirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Atilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Auml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Aring"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "AElig"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ccedil"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Egrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Eacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ecirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Euml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Igrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Iacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Icirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Iuml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ETH"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ntilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ograve"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Oacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ocirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Otilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ouml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "times"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "slash"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ugrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Uacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Ucirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Uuml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Yacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "THORN"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "szlig"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "agrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "aacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "acirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "atilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "auml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "aring"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "aelig"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ccedil"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "egrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "eacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ecirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "euml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "igrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "iacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "icirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "iuml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "eth"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ntilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ograve"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "oacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ocirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "otilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ouml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "divide"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "oslash"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ugrave"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "uacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ucirc"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "uuml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "yacute"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "thorn"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "yuml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "OElig"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "oelig"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Scaron"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "scaron"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Yuml"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "fnof"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "circ"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "tilde"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Alpha"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Beta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Gamma"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Delta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Epsilon"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Zeta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Eta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Theta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Iota"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Kappa"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Lambda"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Mu"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Nu"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Xi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Omicron"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Pi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Rho"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Sigma"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Tau"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Upsilon"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Phi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Chi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Psi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Omega"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "alpha"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "beta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "gamma"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "delta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "epsilon"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "zeta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "eta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "theta"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "iota"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "kappa"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lambda"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "mu"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "nu"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "xi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "omicron"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "pi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rho"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sigma"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "tau"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "upsilon"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "phi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "chi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "psi"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "omega"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "thetasym"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "upsih"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "piv"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ensp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "emso"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "thinsp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "zwnj"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "zwj"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lrm"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rlm"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ndash"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "mdash"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lsquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rsquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sbquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ldquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rdquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "bdquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "dagger"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Dagger"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "bull"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "hellip"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "permil"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "prime"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "Prime"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lsaquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rsaquo"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "oline"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "frasl"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "euro"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "image"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "weierp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "real"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "trade"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "alefsym"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "larr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "uarr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rarr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "darr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "harr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "crarr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lArr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "uArr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rArr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "dArr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "hArr"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "forall"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "part"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "exist"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "empty"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "nabla"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "isin"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "notin"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ni"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "prod"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sum"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "minus"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lowast"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "radic"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "prop"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "infin"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ang"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "and"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "or"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "cap"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "cup"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "int"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "there4"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sim"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "cong"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "asymp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ne"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "equiv"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "le"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "ge"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sub"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sup"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "nsub"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sube"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "supe"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "oplus"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "otimes"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "perp"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "sdot"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lceil"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rceil"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lfloor"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rfloor"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "lang"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "rang"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "loz"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "spades"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "clubs"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "hearts"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;

    const-string v2, "diams"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    :cond_3
    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ab"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "aa"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "af"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sq"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "am"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ar"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "an"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "hy"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "as"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ay"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "az"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ba"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "eu"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "bn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "dz"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "bh"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "bi"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "br"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "bg"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "my"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "be"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "km"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ca"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "zh"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "co"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "hr"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "cs"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "da"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "nl"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "en"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "eo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "et"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "fo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "fa"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "fj"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "fi"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "fr"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "fy"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "gl"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "gd"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "gv"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ka"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "de"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "el"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "kl"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "gn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "gu"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ht"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ha"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "he"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "iw"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "hi"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "hu"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "is"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "io"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "id"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "in"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ia"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ie"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "iu"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ik"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ga"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "it"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ja"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "jv"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "kn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ks"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "kk"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "rw"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ky"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "rn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ko"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ku"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "lo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "la"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "lv"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "li"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ln"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "lt"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mk"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mg"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ms"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ml"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mt"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mi"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mr"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "mn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "na"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ne"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "no"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "oc"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "or"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "om"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ps"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "pl"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "pt"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "pa"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "qu"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "rm"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ro"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ru"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sm"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sg"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sa"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sr"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sh"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "st"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sn"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ii"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sd"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "si"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ss"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sk"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sl"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "so"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "es"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "su"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sw"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "sv"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tl"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tg"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ta"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tt"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "te"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x1

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "th"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "bo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ti"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "to"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ts"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tr"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tk"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "tw"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ug"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "uk"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ur"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "uz"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "vi"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "vo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "wa"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "cy"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "wo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "xh"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "yi"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "ji"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x4

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "yo"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const-string v2, "zu"

    invoke-direct {v1, v2, v11}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    :cond_4
    nop

    return-void

    const/4 v6, 0x0
.end method


# virtual methods
.method public getCharacterEntities()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/CharacterEntity;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x3

    const/4 v1, 0x5

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLCharacterEntities:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x0
.end method

.method public getCompleteAttributeForTag(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x7

    const/4 v5, 0x5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->attributes()[Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v5, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->attributes()[Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    move-result-object v2

    const/4 v5, 0x1

    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    const/4 v5, 0x4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v4, 0x3

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->supportsHTML5EventAttributes()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v5, 0x6

    sget-object v3, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalEventAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const/4 v5, 0x5

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v2, 0x7

    const/4 v5, 0x5

    :cond_1
    invoke-virtual {p1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->supportsHTML5GlobalAttributes()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v5, 0x1

    sget-object v3, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLGlobalAttributes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;

    const/4 v5, 0x7

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v0, 0x1

    const/4 v5, 0x0

    :cond_2
    return-object v1

    const/4 v2, 0x1
.end method

.method public getCompleteAttributeForTag(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x2

    invoke-virtual {p0, p1}, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->getHTMLTagByName(Ljava/lang/String;)Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->getCompleteAttributeForTag(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public getHTMLTagByName(Ljava/lang/String;)Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x1

    sget-object v2, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLTags:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x6

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;

    const/4 v4, 0x6

    invoke-virtual {v1}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v1

    const/4 v1, 0x3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    const/4 v4, 0x6
.end method

.method public getLanguageCodes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x7

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLLanguageCodes:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x3

    sget-object v0, Lcom/henrythompson/quoda/codecompletion/AutoCompleteItemsList;->mHTMLTags:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x0
.end method
