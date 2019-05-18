.class public Lcom/henrythompson/quoda/UndoStack$TextChange;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/UndoStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextChange"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a063ed769b815dL


# instance fields
.field public newText:Ljava/lang/String;

.field public oldText:Ljava/lang/String;

.field public start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public clone()Lcom/henrythompson/quoda/UndoStack$TextChange;
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x4

    new-instance v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v2, 0x7

    iget v1, p0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iput v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    const/4 v2, 0x4

    return-object v0

    const/4 v0, 0x4
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/UndoStack$TextChange;->clone()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v0

    return-object v0

    const/4 v0, 0x3
.end method
