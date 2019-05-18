.class public Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;,
        Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;
    }
.end annotation


# instance fields
.field attrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation
.end field

.field description:Ljava/lang/String;

.field globalattrs:Z

.field globalevents:Z

.field isblock:Z

.field isdeprecated:Z

.field isvoid:Z

.field lookupurl:Ljava/lang/String;

.field name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->globalevents:Z

    const/4 v1, 0x6

    iput-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->globalattrs:Z

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public addAttribute(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->attrs:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->attrs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->attrs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public attributes()[Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x5
.end method

.method public description()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->description:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x2
.end method

.method public getAttributes()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->attrs:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x6
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->name:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method

.method public isBlockLevel()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isblock:Z

    return v0

    const/4 v0, 0x2
.end method

.method public isDeprecated()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isdeprecated:Z

    return v0

    const/4 v1, 0x4
.end method

.method public isVoid()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isvoid:Z

    return v0

    const/4 v0, 0x5
.end method

.method public lookupURL()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->lookupurl:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x7
.end method

.method public setBlockLevel(Z)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isblock:Z

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setDeprecated(Z)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isdeprecated:Z

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->description:Ljava/lang/String;

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setLookupUrl(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->lookupurl:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->name:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setSupportsHtml5EventAttributes(Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->globalevents:Z

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setSupportsHtml5GlobalAttributes(Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->globalattrs:Z

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setVoid(Z)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->isvoid:Z

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public supportsHTML5EventAttributes()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->globalevents:Z

    return v0

    const/4 v0, 0x5
.end method

.method public supportsHTML5GlobalAttributes()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;->globalattrs:Z

    return v0

    const/4 v0, 0x0
.end method
