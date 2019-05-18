.class public Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# static fields
.field public static final TYPE_EVENT:I = 0x1

.field public static final TYPE_PROPERTY:I = 0x0

.field public static final VALUE_CHAR_ENCODING:Ljava/lang/String; = "\ufffe"

.field public static final VALUE_LANG_CODE:Ljava/lang/String; = "\ufffd"


# instance fields
.field deprecated:Z

.field mandatory:Z

.field name:Ljava/lang/String;

.field type:I

.field values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public constructor <init>(Ljava/lang/String;ZI[Ljava/lang/String;Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->name:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean p2, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->mandatory:Z

    const/4 v3, 0x6

    iput p3, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->type:I

    const/4 v3, 0x4

    iput-boolean p5, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->deprecated:Z

    const/4 v3, 0x6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values:Ljava/util/ArrayList;

    const/4 v3, 0x5

    if-eqz p4, :cond_0

    const/4 v3, 0x4

    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_0

    const/4 v3, 0x2

    new-instance v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;-><init>(Ljava/lang/String;I)V

    const/4 v3, 0x2

    aget-object v2, p4, v0

    iput-object v2, v1, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->name:Ljava/lang/String;

    const/4 v3, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x5

    const/4 v3, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public addAttributeValue(Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v1, 0x6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values:Ljava/util/ArrayList;

    const/4 v1, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->name:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x2
.end method

.method public isDeprecated()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->deprecated:Z

    return v0

    const/4 v1, 0x3
.end method

.method public isMandatory()Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->mandatory:Z

    return v0

    const/4 v1, 0x1
.end method

.method public setDeprecated(Z)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->deprecated:Z

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setMandatory(Z)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->mandatory:Z

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->name:Ljava/lang/String;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    iput p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->type:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public type()I
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->type:I

    return v0

    const/4 v0, 0x6
.end method

.method public values()Ljava/util/ArrayList;
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

    const/4 v1, 0x5

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$Attribute;->values:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x0
.end method
