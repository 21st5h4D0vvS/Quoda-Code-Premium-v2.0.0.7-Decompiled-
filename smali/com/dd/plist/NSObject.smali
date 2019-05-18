.class public abstract Lcom/dd/plist/NSObject;
.super Ljava/lang/Object;
.source "NSObject.java"


# static fields
.field static final ASCII_LINE_LENGTH:I = 0x50

.field static final INDENT:Ljava/lang/String; = "\t"

.field static final NEWLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static wrap([Ljava/lang/Object;)Lcom/dd/plist/NSArray;
    .locals 3
    .param p0, "value"    # [Ljava/lang/Object;

    .prologue
    .line 201
    new-instance v0, Lcom/dd/plist/NSArray;

    array-length v2, p0

    invoke-direct {v0, v2}, Lcom/dd/plist/NSArray;-><init>(I)V

    .line 202
    .local v0, "arr":Lcom/dd/plist/NSArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 203
    aget-object v2, p0, v1

    invoke-static {v2}, Lcom/dd/plist/NSObject;->wrap(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dd/plist/NSArray;->setValue(ILcom/dd/plist/NSObject;)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-object v0
.end method

.method public static wrap([B)Lcom/dd/plist/NSData;
    .locals 1
    .param p0, "value"    # [B

    .prologue
    .line 190
    new-instance v0, Lcom/dd/plist/NSData;

    invoke-direct {v0, p0}, Lcom/dd/plist/NSData;-><init>([B)V

    return-object v0
.end method

.method public static wrap(Ljava/util/Date;)Lcom/dd/plist/NSDate;
    .locals 1
    .param p0, "value"    # Ljava/util/Date;

    .prologue
    .line 180
    new-instance v0, Lcom/dd/plist/NSDate;

    invoke-direct {v0, p0}, Lcom/dd/plist/NSDate;-><init>(Ljava/util/Date;)V

    return-object v0
.end method

.method public static wrap(Ljava/util/Map;)Lcom/dd/plist/NSDictionary;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dd/plist/NSDictionary;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/dd/plist/NSDictionary;

    invoke-direct {v0}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 217
    .local v0, "dict":Lcom/dd/plist/NSDictionary;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/dd/plist/NSObject;->wrap(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    goto :goto_0

    .line 219
    .end local v2    # "key":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static wrap(D)Lcom/dd/plist/NSNumber;
    .locals 2
    .param p0, "value"    # D

    .prologue
    .line 160
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, p0, p1}, Lcom/dd/plist/NSNumber;-><init>(D)V

    return-object v0
.end method

.method public static wrap(J)Lcom/dd/plist/NSNumber;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 150
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, p0, p1}, Lcom/dd/plist/NSNumber;-><init>(J)V

    return-object v0
.end method

.method public static wrap(Z)Lcom/dd/plist/NSNumber;
    .locals 1
    .param p0, "value"    # Z

    .prologue
    .line 170
    new-instance v0, Lcom/dd/plist/NSNumber;

    invoke-direct {v0, p0}, Lcom/dd/plist/NSNumber;-><init>(Z)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;)Lcom/dd/plist/NSObject;
    .locals 10
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 255
    if-nez p0, :cond_0

    .line 256
    const/4 p0, 0x0

    .line 309
    .end local p0    # "o":Ljava/lang/Object;
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    :goto_0
    return-object p0

    .line 258
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    instance-of v8, p0, Lcom/dd/plist/NSObject;

    if-eqz v8, :cond_1

    .line 259
    check-cast p0, Lcom/dd/plist/NSObject;

    goto :goto_0

    .line 261
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 262
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-class v8, Ljava/lang/Boolean;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 263
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Lcom/dd/plist/NSObject;->wrap(Z)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto :goto_0

    .line 265
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_2
    const-class v8, Ljava/lang/Integer;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 266
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/dd/plist/NSObject;->wrap(J)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto :goto_0

    .line 268
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_3
    const-class v8, Ljava/lang/Long;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 269
    check-cast p0, Ljava/lang/Long;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/dd/plist/NSObject;->wrap(J)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto :goto_0

    .line 271
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_4
    const-class v8, Ljava/lang/Short;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 272
    check-cast p0, Ljava/lang/Short;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/dd/plist/NSObject;->wrap(J)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto :goto_0

    .line 274
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_5
    const-class v8, Ljava/lang/Byte;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 275
    check-cast p0, Ljava/lang/Byte;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    int-to-long v8, v8

    invoke-static {v8, v9}, Lcom/dd/plist/NSObject;->wrap(J)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto :goto_0

    .line 277
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_6
    const-class v8, Ljava/lang/Float;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 278
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Lcom/dd/plist/NSObject;->wrap(D)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto/16 :goto_0

    .line 280
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_7
    const-class v8, Ljava/lang/Double;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 281
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/dd/plist/NSObject;->wrap(D)Lcom/dd/plist/NSNumber;

    move-result-object p0

    goto/16 :goto_0

    .line 283
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_8
    const-class v8, Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 284
    check-cast p0, Ljava/lang/String;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/dd/plist/NSObject;->wrap(Ljava/lang/String;)Lcom/dd/plist/NSString;

    move-result-object p0

    goto/16 :goto_0

    .line 286
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_9
    const-class v8, Ljava/util/Date;

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 287
    check-cast p0, Ljava/util/Date;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Lcom/dd/plist/NSObject;->wrap(Ljava/util/Date;)Lcom/dd/plist/NSDate;

    move-result-object p0

    goto/16 :goto_0

    .line 289
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_a
    const-class v8, [B

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 290
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [B

    invoke-static {p0}, Lcom/dd/plist/NSObject;->wrap([B)Lcom/dd/plist/NSData;

    move-result-object p0

    goto/16 :goto_0

    .line 292
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_b
    const-class v8, [Ljava/lang/Object;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 293
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "o":Ljava/lang/Object;
    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/dd/plist/NSObject;->wrap([Ljava/lang/Object;)Lcom/dd/plist/NSArray;

    move-result-object p0

    goto/16 :goto_0

    .line 295
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_c
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v6, p0

    .line 296
    check-cast v6, Ljava/util/Map;

    .line 297
    .local v6, "map":Ljava/util/Map;
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 298
    .local v5, "keys":Ljava/util/Set;
    new-instance v2, Lcom/dd/plist/NSDictionary;

    invoke-direct {v2}, Lcom/dd/plist/NSDictionary;-><init>()V

    .line 299
    .local v2, "dict":Lcom/dd/plist/NSDictionary;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 300
    .local v4, "key":Ljava/lang/Object;
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 301
    .local v7, "val":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7}, Lcom/dd/plist/NSObject;->wrap(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/dd/plist/NSDictionary;->put(Ljava/lang/String;Lcom/dd/plist/NSObject;)Lcom/dd/plist/NSObject;

    goto :goto_1

    .end local v4    # "key":Ljava/lang/Object;
    .end local v7    # "val":Ljava/lang/Object;
    :cond_d
    move-object p0, v2

    .line 303
    goto/16 :goto_0

    .line 305
    .end local v2    # "dict":Lcom/dd/plist/NSDictionary;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "keys":Ljava/util/Set;
    .end local v6    # "map":Ljava/util/Map;
    :cond_e
    const-class v8, Ljava/util/Collection;

    invoke-virtual {v8, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v1, p0

    .line 306
    check-cast v1, Ljava/util/Collection;

    .line 307
    .local v1, "coll":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/dd/plist/NSObject;->wrap([Ljava/lang/Object;)Lcom/dd/plist/NSArray;

    move-result-object p0

    goto/16 :goto_0

    .line 309
    .end local v1    # "coll":Ljava/util/Collection;
    :cond_f
    invoke-static {p0}, Lcom/dd/plist/NSObject;->wrapSerialized(Ljava/lang/Object;)Lcom/dd/plist/NSData;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static wrap(Ljava/util/Set;)Lcom/dd/plist/NSSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dd/plist/NSSet;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    new-instance v4, Lcom/dd/plist/NSSet;

    invoke-direct {v4}, Lcom/dd/plist/NSSet;-><init>()V

    .line 231
    .local v4, "set":Lcom/dd/plist/NSSet;
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 232
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lcom/dd/plist/NSObject;->wrap(Ljava/lang/Object;)Lcom/dd/plist/NSObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/dd/plist/NSSet;->addObject(Lcom/dd/plist/NSObject;)V

    .line 231
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    return-object v4
.end method

.method public static wrap(Ljava/lang/String;)Lcom/dd/plist/NSString;
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Lcom/dd/plist/NSString;

    invoke-direct {v0, p0}, Lcom/dd/plist/NSString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static wrapSerialized(Ljava/lang/Object;)Lcom/dd/plist/NSData;
    .locals 6
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 322
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 323
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 324
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 325
    new-instance v3, Lcom/dd/plist/NSData;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/dd/plist/NSData;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 326
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v1

    .line 327
    .local v1, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The given object of class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " could not be serialized and stored in a NSData object."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method assignIDs(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 0
    .param p1, "out"    # Lcom/dd/plist/BinaryPropertyListWriter;

    .prologue
    .line 73
    invoke-virtual {p1, p0}, Lcom/dd/plist/BinaryPropertyListWriter;->assignID(Lcom/dd/plist/NSObject;)V

    .line 74
    return-void
.end method

.method indent(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 130
    const-string v1, "\t"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method protected abstract toASCII(Ljava/lang/StringBuilder;I)V
.end method

.method protected abstract toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
.end method

.method abstract toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toJavaObject()Ljava/lang/Object;
    .locals 18

    .prologue
    .line 347
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSArray;

    if-eqz v15, :cond_0

    .line 348
    check-cast p0, Lcom/dd/plist/NSArray;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/NSArray;->getArray()[Lcom/dd/plist/NSObject;

    move-result-object v2

    .line 349
    .local v2, "arrayA":[Lcom/dd/plist/NSObject;
    array-length v15, v2

    new-array v3, v15, [Ljava/lang/Object;

    .line 350
    .local v3, "arrayB":[Ljava/lang/Object;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v15, v2

    if-ge v6, v15, :cond_2

    .line 351
    aget-object v15, v2, v6

    invoke-virtual {v15}, Lcom/dd/plist/NSObject;->toJavaObject()Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v3, v6

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 354
    .end local v2    # "arrayA":[Lcom/dd/plist/NSObject;
    .end local v3    # "arrayB":[Ljava/lang/Object;
    .end local v6    # "i":I
    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_0
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSDictionary;

    if-eqz v15, :cond_3

    .line 355
    check-cast p0, Lcom/dd/plist/NSDictionary;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/NSDictionary;->getHashMap()Ljava/util/HashMap;

    move-result-object v4

    .line 356
    .local v4, "hashMapA":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/dd/plist/NSObject;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v15

    invoke-direct {v5, v15}, Ljava/util/HashMap;-><init>(I)V

    .line 357
    .local v5, "hashMapB":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 358
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/dd/plist/NSObject;

    invoke-virtual {v15}, Lcom/dd/plist/NSObject;->toJavaObject()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v5, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v8    # "key":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .line 403
    .end local v4    # "hashMapA":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/dd/plist/NSObject;>;"
    .end local v5    # "hashMapB":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-object v3

    .line 361
    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_3
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSSet;

    if-eqz v15, :cond_6

    .line 362
    check-cast p0, Lcom/dd/plist/NSSet;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/NSSet;->getSet()Ljava/util/Set;

    move-result-object v13

    .line 364
    .local v13, "setA":Ljava/util/Set;, "Ljava/util/Set<Lcom/dd/plist/NSObject;>;"
    instance-of v15, v13, Ljava/util/LinkedHashSet;

    if-eqz v15, :cond_4

    .line 365
    new-instance v14, Ljava/util/LinkedHashSet;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 369
    .local v14, "setB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :goto_3
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/dd/plist/NSObject;

    .line 370
    .local v12, "o":Lcom/dd/plist/NSObject;
    invoke-virtual {v12}, Lcom/dd/plist/NSObject;->toJavaObject()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 367
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "o":Lcom/dd/plist/NSObject;
    .end local v14    # "setB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_4
    new-instance v14, Ljava/util/TreeSet;

    invoke-direct {v14}, Ljava/util/TreeSet;-><init>()V

    .restart local v14    # "setB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    goto :goto_3

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    move-object v3, v14

    .line 372
    goto :goto_2

    .line 373
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v13    # "setA":Ljava/util/Set;, "Ljava/util/Set<Lcom/dd/plist/NSObject;>;"
    .end local v14    # "setB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_6
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSNumber;

    if-eqz v15, :cond_9

    move-object/from16 v9, p0

    .line 374
    check-cast v9, Lcom/dd/plist/NSNumber;

    .line 375
    .local v9, "num":Lcom/dd/plist/NSNumber;
    invoke-virtual {v9}, Lcom/dd/plist/NSNumber;->type()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 391
    invoke-virtual {v9}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_2

    .line 377
    :pswitch_0
    invoke-virtual {v9}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v10

    .line 378
    .local v10, "longVal":J
    const-wide/32 v16, 0x7fffffff

    cmp-long v15, v10, v16

    if-gtz v15, :cond_7

    const-wide/32 v16, -0x80000000

    cmp-long v15, v10, v16

    if-gez v15, :cond_8

    .line 379
    :cond_7
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_2

    .line 381
    :cond_8
    invoke-virtual {v9}, Lcom/dd/plist/NSNumber;->intValue()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2

    .line 385
    .end local v10    # "longVal":J
    :pswitch_1
    invoke-virtual {v9}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_2

    .line 388
    :pswitch_2
    invoke-virtual {v9}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto/16 :goto_2

    .line 394
    .end local v9    # "num":Lcom/dd/plist/NSNumber;
    :cond_9
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSString;

    if-eqz v15, :cond_a

    .line 395
    check-cast p0, Lcom/dd/plist/NSString;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/NSString;->getContent()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 396
    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_a
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSData;

    if-eqz v15, :cond_b

    .line 397
    check-cast p0, Lcom/dd/plist/NSData;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/NSData;->bytes()[B

    move-result-object v3

    goto/16 :goto_2

    .line 398
    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_b
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/NSDate;

    if-eqz v15, :cond_c

    .line 399
    check-cast p0, Lcom/dd/plist/NSDate;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/NSDate;->getDate()Ljava/util/Date;

    move-result-object v3

    goto/16 :goto_2

    .line 400
    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_c
    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/dd/plist/UID;

    if-eqz v15, :cond_d

    .line 401
    check-cast p0, Lcom/dd/plist/UID;

    .end local p0    # "this":Lcom/dd/plist/NSObject;
    invoke-virtual/range {p0 .. p0}, Lcom/dd/plist/UID;->getBytes()[B

    move-result-object v3

    goto/16 :goto_2

    .restart local p0    # "this":Lcom/dd/plist/NSObject;
    :cond_d
    move-object/from16 v3, p0

    .line 403
    goto/16 :goto_2

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method abstract toXML(Ljava/lang/StringBuilder;I)V
.end method

.method public toXMLPropertyList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "xml":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, "<!DOCTYPE plist PUBLIC \"-//Apple//DTD PLIST 1.0//EN\" \"http://www.apple.com/DTDs/PropertyList-1.0.dtd\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v1, "<plist version=\"1.0\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/dd/plist/NSObject;->toXML(Ljava/lang/StringBuilder;I)V

    .line 96
    sget-object v1, Lcom/dd/plist/NSObject;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "</plist>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
