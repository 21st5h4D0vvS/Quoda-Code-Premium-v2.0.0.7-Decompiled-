.class public Lcom/henrythompson/quoda/tmlanguage/FormatString;
.super Ljava/lang/Object;


# instance fields
.field private mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mRaw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/tmlanguage/FormatString;->mRaw:Ljava/lang/String;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public getRawString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/tmlanguage/FormatString;->mRaw:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x0
.end method
