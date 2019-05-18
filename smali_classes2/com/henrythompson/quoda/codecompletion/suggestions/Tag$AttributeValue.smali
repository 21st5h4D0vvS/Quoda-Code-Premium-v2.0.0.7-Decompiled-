.class public Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/codecompletion/suggestions/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttributeValue"
.end annotation


# static fields
.field public static final TYPE_CHAR_ENCODING:I = 0x3

.field public static final TYPE_COLOR:I = 0x1

.field public static final TYPE_COLOR_PICKER_COMMAND:I = 0x4

.field public static final TYPE_LANG_CODE:I = 0x2

.field public static final TYPE_STRING:I


# instance fields
.field public TYPE:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->name:Ljava/lang/String;

    const/4 v0, 0x2

    iput p2, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->TYPE:I

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/codecompletion/suggestions/Tag$AttributeValue;->name:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x1
.end method
