.class public abstract Lorg/markdown4j/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# instance fields
.field protected idPlugin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "idPlugin"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/markdown4j/Plugin;->idPlugin:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public abstract emit(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public getIdPlugin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lorg/markdown4j/Plugin;->idPlugin:Ljava/lang/String;

    return-object v0
.end method
