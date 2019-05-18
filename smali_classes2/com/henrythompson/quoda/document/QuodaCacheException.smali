.class public Lcom/henrythompson/quoda/document/QuodaCacheException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/document/QuodaCacheException;->mMessage:Ljava/lang/String;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/QuodaCacheException;->mMessage:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x1
.end method
