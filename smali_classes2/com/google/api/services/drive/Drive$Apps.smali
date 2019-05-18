.class public Lcom/google/api/services/drive/Drive$Apps;
.super Ljava/lang/Object;
.source "Drive.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/drive/Drive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Apps"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/services/drive/Drive$Apps$List;,
        Lcom/google/api/services/drive/Drive$Apps$Get;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/api/services/drive/Drive;


# direct methods
.method public constructor <init>(Lcom/google/api/services/drive/Drive;)V
    .locals 0

    .prologue
    .line 337
    iput-object p1, p0, Lcom/google/api/services/drive/Drive$Apps;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Apps$Get;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    new-instance v0, Lcom/google/api/services/drive/Drive$Apps$Get;

    invoke-direct {v0, p0, p1}, Lcom/google/api/services/drive/Drive$Apps$Get;-><init>(Lcom/google/api/services/drive/Drive$Apps;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Apps;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 353
    return-object v0
.end method

.method public list()Lcom/google/api/services/drive/Drive$Apps$List;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    new-instance v0, Lcom/google/api/services/drive/Drive$Apps$List;

    invoke-direct {v0, p0}, Lcom/google/api/services/drive/Drive$Apps$List;-><init>(Lcom/google/api/services/drive/Drive$Apps;)V

    .line 456
    iget-object v1, p0, Lcom/google/api/services/drive/Drive$Apps;->this$0:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v1, v0}, Lcom/google/api/services/drive/Drive;->initialize(Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;)V

    .line 457
    return-object v0
.end method
