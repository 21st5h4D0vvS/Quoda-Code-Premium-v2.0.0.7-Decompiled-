.class public Lorg/joni/bench/BenchGreedyBacktrack;
.super Lorg/joni/bench/AbstractBench;
.source "BenchGreedyBacktrack.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/joni/bench/AbstractBench;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5
    new-instance v0, Lorg/joni/bench/BenchGreedyBacktrack;

    invoke-direct {v0}, Lorg/joni/bench/BenchGreedyBacktrack;-><init>()V

    const-string v1, ".*_p"

    const-string v2, "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"

    const/16 v3, 0xa

    const v4, 0xf4240

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/joni/bench/BenchGreedyBacktrack;->bench(Ljava/lang/String;Ljava/lang/String;II)V

    .line 6
    return-void
.end method
