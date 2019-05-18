.class Lcom/github/rjeschke/txtmark/LinkRef;
.super Ljava/lang/Object;


# instance fields
.field public final isAbbrev:Z

.field public final link:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object p2, p0, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    const/4 v0, 0x4

    iput-boolean p3, p0, Lcom/github/rjeschke/txtmark/LinkRef;->isAbbrev:Z

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/LinkRef;->link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/github/rjeschke/txtmark/LinkRef;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method
