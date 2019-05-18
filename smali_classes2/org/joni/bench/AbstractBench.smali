.class public abstract Lorg/joni/bench/AbstractBench;
.super Ljava/lang/Object;
.source "AbstractBench.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bench(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 16
    .param p1, "_reg"    # Ljava/lang/String;
    .param p2, "_str"    # Ljava/lang/String;
    .param p3, "warmup"    # I
    .param p4, "times"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 11
    .local v3, "reg":[B
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    .line 13
    .local v13, "str":[B
    new-instance v2, Lorg/joni/Regex;

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x0

    sget-object v7, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    sget-object v8, Lorg/joni/Syntax;->DEFAULT:Lorg/joni/Syntax;

    invoke-direct/range {v2 .. v8}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;Lorg/joni/Syntax;)V

    .line 15
    .local v2, "p":Lorg/joni/Regex;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::: /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ =~ \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " * "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_1

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 19
    .local v10, "before":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, p4

    if-ge v9, v0, :cond_0

    .line 20
    const/4 v4, 0x0

    array-length v5, v13

    invoke-virtual {v2, v13, v4, v5}, Lorg/joni/Regex;->matcher([BII)Lorg/joni/Matcher;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v13

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/joni/Matcher;->search(III)I

    .line 19
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v14, v4, v10

    .line 23
    .local v14, "time":J
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 25
    .end local v9    # "i":I
    .end local v10    # "before":J
    .end local v14    # "time":J
    :cond_1
    return-void
.end method

.method protected benchBestOf(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 18
    .param p1, "_reg"    # Ljava/lang/String;
    .param p2, "_str"    # Ljava/lang/String;
    .param p3, "warmup"    # I
    .param p4, "times"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 29
    .local v3, "reg":[B
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    .line 31
    .local v15, "str":[B
    new-instance v2, Lorg/joni/Regex;

    const/4 v4, 0x0

    array-length v5, v3

    const/4 v6, 0x0

    sget-object v7, Lorg/jcodings/specific/ASCIIEncoding;->INSTANCE:Lorg/jcodings/specific/ASCIIEncoding;

    sget-object v8, Lorg/joni/Syntax;->DEFAULT:Lorg/joni/Syntax;

    invoke-direct/range {v2 .. v8}, Lorg/joni/Regex;-><init>([BIIILorg/jcodings/Encoding;Lorg/joni/Syntax;)V

    .line 33
    .local v2, "p":Lorg/joni/Regex;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "::: /"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ =~ \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " * "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " times"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 35
    const-wide v12, 0x7fffffffffffffffL

    .line 37
    .local v12, "best":J
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_0
    move/from16 v0, p3

    if-ge v14, v0, :cond_2

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 39
    .local v10, "before":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, p4

    if-ge v9, v0, :cond_0

    .line 40
    const/4 v4, 0x0

    array-length v5, v15

    invoke-virtual {v2, v15, v4, v5}, Lorg/joni/Regex;->matcher([BII)Lorg/joni/Matcher;

    move-result-object v4

    const/4 v5, 0x0

    array-length v6, v15

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/joni/Matcher;->search(III)I

    .line 39
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 42
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v16, v4, v10

    .line 43
    .local v16, "time":J
    cmp-long v4, v16, v12

    if-gez v4, :cond_1

    .line 44
    move-wide/from16 v12, v16

    .line 46
    :cond_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 37
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 48
    .end local v9    # "i":I
    .end local v10    # "before":J
    .end local v16    # "time":J
    :cond_2
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    return-void
.end method
