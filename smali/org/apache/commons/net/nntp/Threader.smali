.class public Lorg/apache/commons/net/nntp/Threader;
.super Ljava/lang/Object;
.source "Threader.java"


# instance fields
.field private bogusIdCount:I

.field private idTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/commons/net/nntp/ThreadContainer;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lorg/apache/commons/net/nntp/ThreadContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    return-void
.end method

.method private buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V
    .locals 13
    .param p1, "threadable"    # Lorg/apache/commons/net/nntp/Threadable;

    .prologue
    const/4 v12, 0x0

    .line 98
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadId()Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "id":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 103
    .local v0, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v0, :cond_0

    .line 104
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v9, :cond_4

    .line 105
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<Bogus-id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lorg/apache/commons/net/nntp/Threader;->bogusIdCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    const/4 v0, 0x0

    .line 115
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .end local v0    # "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-direct {v0}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 117
    .restart local v0    # "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    iput-object p1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 118
    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_1
    const/4 v3, 0x0

    .line 125
    .local v3, "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-interface {p1}, Lorg/apache/commons/net/nntp/Threadable;->messageThreadReferences()[Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "references":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v9, v7

    if-ge v1, v9, :cond_5

    .line 127
    aget-object v6, v7, v1

    .line 128
    .local v6, "refString":Ljava/lang/String;
    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 131
    .local v5, "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v5, :cond_2

    .line 132
    new-instance v5, Lorg/apache/commons/net/nntp/ThreadContainer;

    .end local v5    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    invoke-direct {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 133
    .restart local v5    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v9, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v9, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_2
    if-eqz v3, :cond_3

    iget-object v9, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v9, :cond_3

    if-eq v3, v5, :cond_3

    invoke-virtual {v5, v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 144
    iput-object v3, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 145
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 146
    iput-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 148
    :cond_3
    move-object v3, v5

    .line 126
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 110
    .end local v1    # "i":I
    .end local v3    # "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v5    # "ref":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v6    # "refString":Ljava/lang/String;
    .end local v7    # "references":[Ljava/lang/String;
    :cond_4
    iput-object p1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_0

    .line 154
    .restart local v1    # "i":I
    .restart local v3    # "parentRef":Lorg/apache/commons/net/nntp/ThreadContainer;
    .restart local v7    # "references":[Ljava/lang/String;
    :cond_5
    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_6

    invoke-virtual {v0, v3}, Lorg/apache/commons/net/nntp/ThreadContainer;->findChild(Lorg/apache/commons/net/nntp/ThreadContainer;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 156
    :cond_6
    const/4 v3, 0x0

    .line 161
    :cond_7
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v9, :cond_b

    .line 164
    const/4 v4, 0x0

    .local v4, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v8, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 165
    .local v8, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_2
    if-eqz v8, :cond_8

    .line 167
    if-ne v8, v0, :cond_9

    .line 171
    :cond_8
    if-nez v8, :cond_a

    .line 172
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Didnt find "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in parent"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 166
    :cond_9
    move-object v4, v8

    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 180
    :cond_a
    if-nez v4, :cond_d

    .line 181
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v9, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 185
    :goto_3
    iput-object v12, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 186
    iput-object v12, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 190
    .end local v4    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v8    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_b
    if-eqz v3, :cond_c

    .line 191
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 192
    iget-object v9, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 193
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 195
    :cond_c
    return-void

    .line 183
    .restart local v4    # "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    .restart local v8    # "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_d
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v9, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3
.end method

.method private findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;
    .locals 7

    .prologue
    .line 202
    new-instance v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v3}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 203
    .local v3, "root":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 205
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 207
    .local v2, "key":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 208
    .local v0, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v4, :cond_0

    .line 209
    iget-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v4, :cond_1

    .line 210
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "c.next is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 212
    :cond_1
    iget-object v4, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v4, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 213
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 216
    .end local v0    # "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v2    # "key":Ljava/lang/Object;
    :cond_2
    return-object v3
.end method

.method private gatherSubjects()V
    .locals 14

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, "count":I
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v0, "c":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v0, :cond_0

    .line 288
    add-int/lit8 v1, v1, 0x1

    .line 287
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_0

    .line 291
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    int-to-double v10, v1

    const-wide v12, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v10, v12

    double-to-int v10, v10

    const v11, 0x3f666666    # 0.9f

    invoke-direct {v7, v10, v11}, Ljava/util/HashMap;-><init>(IF)V

    .line 292
    .local v7, "subjectTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lorg/apache/commons/net/nntp/ThreadContainer;>;"
    const/4 v1, 0x0

    .line 294
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_1
    if-eqz v0, :cond_6

    .line 295
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 300
    .local v9, "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v9, :cond_1

    .line 301
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 303
    :cond_1
    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "subj":Ljava/lang/String;
    if-eqz v6, :cond_2

    const-string v10, ""

    if-ne v6, v10, :cond_3

    .line 294
    :cond_2
    :goto_2
    iget-object v0, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 308
    :cond_3
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 317
    .local v3, "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eqz v3, :cond_5

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_4

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_5

    :cond_4
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_2

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_2

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-nez v10, :cond_2

    .line 323
    :cond_5
    invoke-virtual {v7, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 329
    .end local v3    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v6    # "subj":Ljava/lang/String;
    .end local v9    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    :cond_6
    if-nez v1, :cond_7

    .line 416
    :goto_3
    return-void

    .line 335
    :cond_7
    const/4 v4, 0x0

    .local v4, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v0, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 336
    .local v5, "rest":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_4
    if-eqz v0, :cond_14

    .line 338
    iget-object v9, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 341
    .restart local v9    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    if-nez v9, :cond_8

    .line 342
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v9, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 344
    :cond_8
    invoke-interface {v9}, Lorg/apache/commons/net/nntp/Threadable;->simplifiedSubject()Ljava/lang/String;

    move-result-object v6

    .line 347
    .restart local v6    # "subj":Ljava/lang/String;
    if-eqz v6, :cond_9

    const-string v10, ""

    if-ne v6, v10, :cond_a

    .line 337
    :cond_9
    :goto_5
    move-object v4, v0

    move-object v0, v5

    if-nez v5, :cond_13

    const/4 v5, 0x0

    :goto_6
    goto :goto_4

    .line 350
    :cond_a
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 352
    .restart local v3    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-eq v3, v0, :cond_9

    .line 357
    if-nez v4, :cond_b

    .line 358
    iget-object v10, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v11, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v11, v10, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 361
    :goto_7
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 363
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_f

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v10, :cond_f

    .line 366
    iget-object v8, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 367
    .local v8, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_8
    if-eqz v8, :cond_c

    iget-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v10, :cond_c

    .line 368
    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_8

    .line 360
    .end local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_b
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_7

    .line 370
    .restart local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_c
    if-eqz v8, :cond_d

    .line 371
    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 374
    :cond_d
    iget-object v8, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    :goto_9
    if-eqz v8, :cond_e

    .line 375
    iput-object v3, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 374
    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_9

    .line 377
    :cond_e
    const/4 v10, 0x0

    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 410
    .end local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_a
    move-object v0, v4

    goto :goto_5

    .line 378
    :cond_f
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_10

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-eqz v10, :cond_11

    iget-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v10}, Lorg/apache/commons/net/nntp/Threadable;->subjectIsReply()Z

    move-result v10

    if-nez v10, :cond_11

    .line 384
    :cond_10
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 385
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 386
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    .line 390
    :cond_11
    new-instance v2, Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {v2}, Lorg/apache/commons/net/nntp/ThreadContainer;-><init>()V

    .line 391
    .local v2, "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    iput-object v10, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 392
    iget-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v10, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 394
    iget-object v8, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 395
    .restart local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_b
    if-eqz v8, :cond_12

    .line 397
    iput-object v2, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 396
    iget-object v8, v8, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_b

    .line 399
    :cond_12
    const/4 v10, 0x0

    iput-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 400
    const/4 v10, 0x0

    iput-object v10, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 402
    iput-object v3, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 403
    iput-object v3, v2, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 406
    iput-object v0, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 407
    iput-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_a

    .line 337
    .end local v2    # "newc":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v3    # "old":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v8    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_13
    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto/16 :goto_6

    .line 413
    .end local v6    # "subj":Ljava/lang/String;
    .end local v9    # "threadable":Lorg/apache/commons/net/nntp/Threadable;
    :cond_14
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 414
    const/4 v7, 0x0

    .line 416
    goto/16 :goto_3
.end method

.method private pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V
    .locals 6
    .param p1, "parent"    # Lorg/apache/commons/net/nntp/ThreadContainer;

    .prologue
    .line 225
    const/4 v3, 0x0

    .local v3, "prev":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v0, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v0, "container":Lorg/apache/commons/net/nntp/ThreadContainer;
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 226
    .local v2, "next":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_0
    if-eqz v0, :cond_8

    .line 232
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_2

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_2

    .line 233
    if-nez v3, :cond_1

    .line 234
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 239
    :goto_1
    move-object v0, v3

    .line 227
    :cond_0
    :goto_2
    move-object v3, v0

    .line 228
    move-object v0, v2

    .line 229
    if-nez v0, :cond_7

    const/4 v2, 0x0

    :goto_3
    goto :goto_0

    .line 236
    :cond_1
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_1

    .line 243
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_3

    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_6

    .line 250
    :cond_3
    iget-object v1, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 253
    .local v1, "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    if-nez v3, :cond_4

    .line 254
    iput-object v1, p1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 260
    :goto_4
    move-object v4, v1

    .local v4, "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_5
    iget-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_5

    .line 261
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 260
    iget-object v4, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_5

    .line 256
    .end local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_4
    iput-object v1, v3, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_4

    .line 263
    .restart local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_5
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->parent:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 264
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    iput-object v5, v4, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 268
    move-object v2, v1

    .line 271
    move-object v0, v3

    .line 272
    goto :goto_2

    .end local v1    # "kids":Lorg/apache/commons/net/nntp/ThreadContainer;
    .end local v4    # "tail":Lorg/apache/commons/net/nntp/ThreadContainer;
    :cond_6
    iget-object v5, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_0

    .line 275
    invoke-direct {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    goto :goto_2

    .line 229
    :cond_7
    iget-object v2, v0, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_3

    .line 278
    :cond_8
    return-void
.end method


# virtual methods
.method public thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/commons/net/nntp/Threadable;>;"
    const/4 v4, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-object v4

    .line 61
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    .line 64
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/net/nntp/Threadable;

    .line 65
    .local v3, "t":Lorg/apache/commons/net/nntp/Threadable;
    invoke-interface {v3}, Lorg/apache/commons/net/nntp/Threadable;->isDummy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 66
    invoke-direct {p0, v3}, Lorg/apache/commons/net/nntp/Threader;->buildContainer(Lorg/apache/commons/net/nntp/Threadable;)V

    goto :goto_1

    .line 69
    .end local v3    # "t":Lorg/apache/commons/net/nntp/Threadable;
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->findRootSet()Lorg/apache/commons/net/nntp/ThreadContainer;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    .line 70
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 71
    iput-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->idTable:Ljava/util/HashMap;

    .line 73
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-direct {p0, v5}, Lorg/apache/commons/net/nntp/Threader;->pruneEmptyContainers(Lorg/apache/commons/net/nntp/ThreadContainer;)V

    .line 75
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->reverseChildren()V

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/net/nntp/Threader;->gatherSubjects()V

    .line 78
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-eqz v5, :cond_3

    .line 79
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "root node has a next:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v1, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    .local v1, "r":Lorg/apache/commons/net/nntp/ThreadContainer;
    :goto_2
    if-eqz v1, :cond_5

    .line 82
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    if-nez v5, :cond_4

    .line 83
    iget-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    invoke-interface {v5}, Lorg/apache/commons/net/nntp/Threadable;->makeDummy()Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v5

    iput-object v5, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    .line 81
    :cond_4
    iget-object v1, v1, Lorg/apache/commons/net/nntp/ThreadContainer;->next:Lorg/apache/commons/net/nntp/ThreadContainer;

    goto :goto_2

    .line 86
    :cond_5
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    if-nez v5, :cond_6

    move-object v2, v4

    .line 87
    .local v2, "result":Lorg/apache/commons/net/nntp/Threadable;
    :goto_3
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    invoke-virtual {v5}, Lorg/apache/commons/net/nntp/ThreadContainer;->flush()V

    .line 88
    iput-object v4, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    move-object v4, v2

    .line 90
    goto/16 :goto_0

    .line 86
    .end local v2    # "result":Lorg/apache/commons/net/nntp/Threadable;
    :cond_6
    iget-object v5, p0, Lorg/apache/commons/net/nntp/Threader;->root:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v5, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->child:Lorg/apache/commons/net/nntp/ThreadContainer;

    iget-object v2, v5, Lorg/apache/commons/net/nntp/ThreadContainer;->threadable:Lorg/apache/commons/net/nntp/Threadable;

    goto :goto_3
.end method

.method public thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/apache/commons/net/nntp/Threadable;",
            ">;)",
            "Lorg/apache/commons/net/nntp/Threadable;"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<+Lorg/apache/commons/net/nntp/Threadable;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/lang/Iterable;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method

.method public thread([Lorg/apache/commons/net/nntp/Threadable;)Lorg/apache/commons/net/nntp/Threadable;
    .locals 1
    .param p1, "messages"    # [Lorg/apache/commons/net/nntp/Threadable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 430
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/nntp/Threader;->thread(Ljava/util/List;)Lorg/apache/commons/net/nntp/Threadable;

    move-result-object v0

    return-object v0
.end method
