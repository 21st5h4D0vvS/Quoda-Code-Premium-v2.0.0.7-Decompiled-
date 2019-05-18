.class public Lcom/henrythompson/quoda/filesystem/FilesystemException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mUserMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    iput-object p2, p0, Lcom/henrythompson/quoda/filesystem/FilesystemException;->mUserMessage:Ljava/lang/String;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public getUserMessage()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/FilesystemException;->mUserMessage:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x2
.end method
