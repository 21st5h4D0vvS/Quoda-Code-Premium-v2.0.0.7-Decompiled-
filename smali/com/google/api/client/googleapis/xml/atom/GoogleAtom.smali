.class public Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;
.super Ljava/lang/Object;
.source "GoogleAtom.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    }
.end annotation


# static fields
.field public static final ERROR_CONTENT_TYPE:Ljava/lang/String; = "application/vnd.google.gdata.error+xml"

.field public static final GD_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/g/2005"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method private static appendFeedFields(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .param p0, "fieldsBuf"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 127
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 128
    .local v0, "numFields":[I
    invoke-static {p0, p1, v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 129
    aget v2, v0, v3

    if-eqz v2, :cond_0

    .line 130
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_0
    const-string v2, "entry("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 134
    .local v1, "openParenIndex":I
    aput v3, v0, v3

    .line 135
    invoke-static {p0, p2, v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 136
    aget v2, v0, v3

    invoke-static {p0, v1, v2}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->updateFieldsBasedOnNumFields(Ljava/lang/StringBuilder;II)V

    .line 137
    return-void
.end method

.method private static appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V
    .locals 11
    .param p0, "fieldsBuf"    # Ljava/lang/StringBuilder;
    .param p2, "numFields"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/Class",
            "<*>;[I)V"
        }
    .end annotation

    .prologue
    .local p1, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 85
    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_0

    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cannot specify field mask for a Map or Collection class: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 89
    :cond_1
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v0

    .line 90
    .local v0, "classInfo":Lcom/google/api/client/util/ClassInfo;
    new-instance v7, Ljava/util/TreeSet;

    invoke-virtual {v0}, Lcom/google/api/client/util/ClassInfo;->getNames()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 91
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v2

    .line 92
    .local v2, "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->isFinal()Z

    move-result v7

    if-nez v7, :cond_2

    .line 95
    aget v7, p2, v9

    add-int/lit8 v7, v7, 0x1

    aput v7, p2, v9

    if-eq v7, v10, :cond_3

    .line 96
    const/16 v7, 0x2c

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    :cond_3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 101
    .local v1, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 103
    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-static {v7}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .end local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v1, Ljava/lang/Class;

    .line 106
    .restart local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v2}, Lcom/google/api/client/util/FieldInfo;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 108
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-eq v7, v8, :cond_2

    const-string v7, "text()"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    .line 112
    :cond_5
    const-class v7, Ljava/util/Collection;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 114
    new-array v6, v10, [I

    .line 115
    .local v6, "subNumFields":[I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 116
    .local v5, "openParenIndex":I
    const/16 v7, 0x28

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {p0, v1, v6}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 119
    aget v7, v6, v9

    invoke-static {p0, v5, v7}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->updateFieldsBasedOnNumFields(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 123
    .end local v1    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "fieldInfo":Lcom/google/api/client/util/FieldInfo;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "openParenIndex":I
    .end local v6    # "subNumFields":[I
    :cond_6
    return-void
.end method

.method public static computePatch(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 4
    .param p0, "patched"    # Ljava/lang/Object;
    .param p1, "original"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    invoke-direct {v0}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;-><init>()V

    .line 163
    .local v0, "fieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    invoke-static {v0, p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v1

    .line 164
    .local v1, "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v2, v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    if-eqz v2, :cond_0

    .line 165
    const-string v2, "@gd:fields"

    iget-object v3, v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/api/client/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_0
    return-object v1
.end method

.method private static computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;
    .locals 20
    .param p0, "fieldsMask"    # Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    .param p1, "patchedObject"    # Ljava/lang/Object;
    .param p2, "originalObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/api/client/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {}, Lcom/google/api/client/util/ArrayMap;->create()Lcom/google/api/client/util/ArrayMap;

    move-result-object v14

    .line 173
    .local v14, "result":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static/range {p1 .. p1}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v12

    .line 174
    .local v12, "patchedMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static/range {p2 .. p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v8

    .line 175
    .local v8, "originalMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 176
    .local v2, "fieldNames":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 177
    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 178
    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 179
    .local v5, "name":Ljava/lang/String;
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 180
    .local v9, "originalValue":Ljava/lang/Object;
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 181
    .local v13, "patchedValue":Ljava/lang/Object;
    if-eq v9, v13, :cond_0

    .line 184
    if-nez v9, :cond_2

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    .line 185
    .local v17, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    invoke-static/range {v17 .. v17}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 186
    if-eqz v9, :cond_1

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 189
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    .line 194
    if-eqz v13, :cond_0

    .line 195
    invoke-virtual {v14, v5, v13}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    .end local v17    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    goto :goto_1

    .line 197
    .restart local v17    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-class v18, Ljava/util/Collection;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 198
    if-eqz v9, :cond_5

    if-eqz v13, :cond_5

    move-object v7, v9

    .line 200
    check-cast v7, Ljava/util/Collection;

    .local v7, "originalCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object v11, v13

    .line 202
    check-cast v11, Ljava/util/Collection;

    .line 203
    .local v11, "patchedCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v15

    .line 204
    .local v15, "size":I
    invoke-interface {v11}, Ljava/util/Collection;->size()I

    move-result v18

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 206
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v15, :cond_4

    .line 207
    new-instance v16, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    invoke-direct/range {v16 .. v16}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;-><init>()V

    .line 208
    .local v16, "subFieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    move-object/from16 v0, v16

    invoke-static {v0, v13, v9}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    .line 209
    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 213
    .end local v16    # "subFieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    :cond_4
    if-eq v3, v15, :cond_0

    .line 219
    .end local v3    # "i":I
    .end local v7    # "originalCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v11    # "patchedCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v15    # "size":I
    :cond_5
    new-instance v18, Ljava/lang/UnsupportedOperationException;

    const-string v19, "not yet implemented: support for patching collections"

    invoke-direct/range {v18 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 206
    .restart local v3    # "i":I
    .restart local v7    # "originalCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v11    # "patchedCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v15    # "size":I
    .restart local v16    # "subFieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 222
    .end local v3    # "i":I
    .end local v7    # "originalCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v11    # "patchedCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v15    # "size":I
    .end local v16    # "subFieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    :cond_7
    if-nez v9, :cond_8

    .line 223
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    .line 224
    invoke-static {v13}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 225
    :cond_8
    if-nez v13, :cond_9

    .line 226
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_9
    new-instance v16, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;

    invoke-direct/range {v16 .. v16}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;-><init>()V

    .line 229
    .restart local v16    # "subFieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    move-object/from16 v0, v16

    invoke-static {v0, v13, v9}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->computePatchInternal(Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/api/client/util/ArrayMap;

    move-result-object v10

    .line 231
    .local v10, "patch":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->numDifferences:I

    .line 232
    .local v6, "numDifferences":I
    if-eqz v6, :cond_0

    .line 233
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v5, v1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;->append(Ljava/lang/String;Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;)V

    .line 234
    invoke-virtual {v14, v5, v10}, Lcom/google/api/client/util/ArrayMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 239
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "numDifferences":I
    .end local v9    # "originalValue":Ljava/lang/Object;
    .end local v10    # "patch":Lcom/google/api/client/util/ArrayMap;, "Lcom/google/api/client/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "patchedValue":Ljava/lang/Object;
    .end local v16    # "subFieldsMask":Lcom/google/api/client/googleapis/xml/atom/GoogleAtom$FieldsMask;
    .end local v17    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    return-object v14
.end method

.method public static getFeedFields(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "feedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "fieldsBuf":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->appendFeedFields(Ljava/lang/StringBuilder;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFieldsFor(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "dataClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v0, "fieldsBuf":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    new-array v1, v1, [I

    invoke-static {v0, p0, v1}, Lcom/google/api/client/googleapis/xml/atom/GoogleAtom;->appendFieldsFor(Ljava/lang/StringBuilder;Ljava/lang/Class;[I)V

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static updateFieldsBasedOnNumFields(Ljava/lang/StringBuilder;II)V
    .locals 1
    .param p0, "fieldsBuf"    # Ljava/lang/StringBuilder;
    .param p1, "openParenIndex"    # I
    .param p2, "numFields"    # I

    .prologue
    .line 141
    packed-switch p2, :pswitch_data_0

    .line 149
    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 151
    :goto_0
    return-void

    .line 143
    :pswitch_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 146
    :pswitch_1
    const/16 v0, 0x2f

    invoke-virtual {p0, p1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
