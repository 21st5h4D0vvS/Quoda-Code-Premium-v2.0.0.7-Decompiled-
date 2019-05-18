.class public Lorg/joni/bench/BenchSeveralRegexps;
.super Lorg/joni/bench/AbstractBench;
.source "BenchSeveralRegexps.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lorg/joni/bench/AbstractBench;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v5, 0x3d0900

    const/16 v4, 0xa

    .line 5
    const v0, 0xf4240

    .line 7
    .local v0, "BASE":I
    new-instance v1, Lorg/joni/bench/BenchSeveralRegexps;

    invoke-direct {v1}, Lorg/joni/bench/BenchSeveralRegexps;-><init>()V

    const-string v2, "a"

    const-string v3, " a"

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/joni/bench/BenchSeveralRegexps;->benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V

    .line 9
    new-instance v1, Lorg/joni/bench/BenchSeveralRegexps;

    invoke-direct {v1}, Lorg/joni/bench/BenchSeveralRegexps;-><init>()V

    const-string v2, ".*?="

    const-string v3, "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/joni/bench/BenchSeveralRegexps;->benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V

    .line 11
    new-instance v1, Lorg/joni/bench/BenchSeveralRegexps;

    invoke-direct {v1}, Lorg/joni/bench/BenchSeveralRegexps;-><init>()V

    const-string v2, "^(.*?)=(.*?);"

    const-string v3, "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/joni/bench/BenchSeveralRegexps;->benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V

    .line 13
    new-instance v1, Lorg/joni/bench/BenchSeveralRegexps;

    invoke-direct {v1}, Lorg/joni/bench/BenchSeveralRegexps;-><init>()V

    const-string v2, ".*_p"

    const-string v3, "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/joni/bench/BenchSeveralRegexps;->benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V

    .line 15
    new-instance v1, Lorg/joni/bench/BenchSeveralRegexps;

    invoke-direct {v1}, Lorg/joni/bench/BenchSeveralRegexps;-><init>()V

    const-string v2, ".*="

    const-string v3, "_petstore_session_id=1b341ffe23b5298676d535fcabd3d0d7; path=/"

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/joni/bench/BenchSeveralRegexps;->benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V

    .line 16
    return-void
.end method
