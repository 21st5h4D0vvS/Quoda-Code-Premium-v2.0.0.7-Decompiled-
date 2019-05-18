.class public Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/document/CacheHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheCommand"
.end annotation


# static fields
.field public static final COMMAND_ADD_DOCUMENT:I = 0x1

.field public static final COMMAND_DELETE_DOCUMENT:I = 0x2

.field public static final COMMAND_UPDATE_DOCUMENT:I


# instance fields
.field public mCommand:I

.field public mDocument:Lcom/henrythompson/quoda/document/Document;


# direct methods
.method public constructor <init>(ILcom/henrythompson/quoda/document/Document;)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mCommand:I

    const/4 v1, 0x2

    iput p1, p0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mCommand:I

    const/4 v1, 0x0

    iput-object p2, p0, Lcom/henrythompson/quoda/document/CacheHandler$CacheCommand;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x7
.end method
