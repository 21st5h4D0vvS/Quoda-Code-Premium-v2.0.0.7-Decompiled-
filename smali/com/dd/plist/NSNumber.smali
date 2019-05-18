.class public Lcom/dd/plist/NSNumber;
.super Lcom/dd/plist/NSObject;
.source "NSNumber.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dd/plist/NSObject;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final BOOLEAN:I = 0x2

.field public static final INTEGER:I = 0x0

.field public static final REAL:I = 0x1


# instance fields
.field private boolValue:Z

.field private doubleValue:D

.field private longValue:J

.field private type:I


# direct methods
.method public constructor <init>(D)V
    .locals 3
    .param p1, "d"    # D

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 150
    iput-wide p1, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    double-to-long v0, p1

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 152
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 130
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 132
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "l"    # J

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 140
    iput-wide p1, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, p1

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 141
    const/4 v0, 0x0

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 98
    if-nez p1, :cond_0

    .line 99
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "The given string is null and cannot be parsed as number."

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 102
    .local v4, "l":J
    iput-wide v4, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v8, v4

    iput-wide v8, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 103
    const/4 v7, 0x0

    iput v7, p0, Lcom/dd/plist/NSNumber;->type:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v4    # "l":J
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 106
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 107
    iget-wide v8, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/dd/plist/NSNumber;->longValue:J

    .line 108
    const/4 v7, 0x1

    iput v7, p0, Lcom/dd/plist/NSNumber;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v1

    .line 111
    .local v1, "ex2":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "yes"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v3, v6

    :cond_2
    iput-boolean v3, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    .line 112
    iget-boolean v3, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "false"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, "no"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 113
    new-instance v3, Ljava/lang/Exception;

    const-string v6, "not a boolean"

    invoke-direct {v3, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 117
    :catch_2
    move-exception v2

    .line 118
    .local v2, "ex3":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v6, "The given string neither represents a double, an int nor a boolean value."

    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v2    # "ex3":Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x2

    :try_start_3
    iput v3, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 116
    iget-boolean v3, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-eqz v3, :cond_4

    const-wide/16 v6, 0x1

    :goto_1
    iput-wide v6, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v6, v6

    iput-wide v6, p0, Lcom/dd/plist/NSNumber;->doubleValue:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    goto :goto_1
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 160
    iput-boolean p1, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    .line 161
    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 163
    return-void

    .line 161
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "type"    # I

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/dd/plist/NSObject;-><init>()V

    .line 71
    packed-switch p2, :pswitch_data_0

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Type argument is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :pswitch_0
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-double v0, v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 85
    :goto_0
    iput p2, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 86
    return-void

    .line 77
    :pswitch_1
    invoke-static {p1}, Lcom/dd/plist/BinaryPropertyListParser;->parseDouble([B)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    .line 78
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public boolValue()Z
    .locals 4

    .prologue
    .line 210
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 211
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, -0x1

    .line 399
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v2

    .line 401
    .local v2, "x":D
    instance-of v8, p1, Lcom/dd/plist/NSNumber;

    if-eqz v8, :cond_3

    move-object v0, p1

    .line 402
    check-cast v0, Lcom/dd/plist/NSNumber;

    .line 403
    .local v0, "num":Lcom/dd/plist/NSNumber;
    invoke-virtual {v0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v4

    .line 404
    .local v4, "y":D
    cmpg-double v8, v2, v4

    if-gez v8, :cond_1

    .line 409
    .end local v0    # "num":Lcom/dd/plist/NSNumber;
    .end local v4    # "y":D
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 404
    .restart local v0    # "num":Lcom/dd/plist/NSNumber;
    .restart local v4    # "y":D
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    cmpl-double v1, v2, v4

    if-nez v1, :cond_2

    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_0

    .line 405
    .end local v0    # "num":Lcom/dd/plist/NSNumber;
    .end local v4    # "y":D
    :cond_3
    instance-of v8, p1, Ljava/lang/Number;

    if-eqz v8, :cond_0

    .line 406
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    .line 407
    .restart local v4    # "y":D
    cmpg-double v8, v2, v4

    if-ltz v8, :cond_0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_4

    move v1, v6

    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_0
.end method

.method public doubleValue()D
    .locals 2

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 264
    instance-of v2, p1, Lcom/dd/plist/NSNumber;

    if-nez v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 265
    check-cast v0, Lcom/dd/plist/NSNumber;

    .line 266
    .local v0, "n":Lcom/dd/plist/NSNumber;
    iget v2, p0, Lcom/dd/plist/NSNumber;->type:I

    iget v3, v0, Lcom/dd/plist/NSNumber;->type:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->longValue:J

    iget-wide v4, v0, Lcom/dd/plist/NSNumber;->longValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    iget-wide v4, v0, Lcom/dd/plist/NSNumber;->doubleValue:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    iget-boolean v3, v0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public floatValue()F
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    double-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 271
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    .line 272
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->longValue:J

    iget-wide v4, p0, Lcom/dd/plist/NSNumber;->longValue:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 273
    mul-int/lit8 v1, v0, 0x25

    iget-wide v2, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/dd/plist/NSNumber;->doubleValue:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 274
    mul-int/lit8 v2, v0, 0x25

    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 275
    return v0

    .line 274
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public intValue()I
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    long-to-int v0, v0

    return v0
.end method

.method public isBoolean()Z
    .locals 2

    .prologue
    .line 183
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInteger()Z
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReal()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 201
    iget v1, p0, Lcom/dd/plist/NSNumber;->type:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 222
    iget-wide v0, p0, Lcom/dd/plist/NSNumber;->longValue:J

    return-wide v0
.end method

.method protected toASCII(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "ascii"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    .line 365
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 366
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-eqz v0, :cond_0

    const-string v0, "YES"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :goto_1
    return-void

    .line 366
    :cond_0
    const-string v0, "NO"

    goto :goto_0

    .line 368
    :cond_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected toASCIIGnuStep(Ljava/lang/StringBuilder;I)V
    .locals 1
    .param p1, "ascii"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    .line 375
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    return-void

    .line 377
    :pswitch_0
    const-string v0, "<*I"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 383
    :pswitch_1
    const-string v0, "<*R"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 389
    :pswitch_2
    iget-boolean v0, p0, Lcom/dd/plist/NSNumber;->boolValue:Z

    if-eqz v0, :cond_0

    .line 390
    const-string v0, "<*BY>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 392
    :cond_0
    const-string v0, "<*BN>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method toBinary(Lcom/dd/plist/BinaryPropertyListWriter;)V
    .locals 7
    .param p1, "out"    # Lcom/dd/plist/BinaryPropertyListWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x13

    const/16 v0, 0x8

    .line 325
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 355
    :goto_0
    return-void

    .line 327
    :pswitch_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 328
    invoke-virtual {p1, v6}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 329
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0xff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    .line 331
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 332
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 333
    :cond_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xffff

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 334
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 335
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 337
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 338
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 340
    :cond_3
    invoke-virtual {p1, v6}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 341
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->writeBytes(JI)V

    goto :goto_0

    .line 346
    :pswitch_1
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    .line 347
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/dd/plist/BinaryPropertyListWriter;->writeDouble(D)V

    goto :goto_0

    .line 351
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    :cond_4
    invoke-virtual {p1, v0}, Lcom/dd/plist/BinaryPropertyListWriter;->write(I)V

    goto/16 :goto_0

    .line 325
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    packed-switch v0, :pswitch_data_0

    .line 292
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :pswitch_1
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method toXML(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "xml"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    .prologue
    .line 299
    invoke-virtual {p0, p1, p2}, Lcom/dd/plist/NSNumber;->indent(Ljava/lang/StringBuilder;I)V

    .line 300
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    packed-switch v0, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 302
    :pswitch_0
    const-string v0, "<integer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 304
    const-string v0, "</integer>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :pswitch_1
    const-string v0, "<real>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 310
    const-string v0, "</real>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    :pswitch_2
    invoke-virtual {p0}, Lcom/dd/plist/NSNumber;->boolValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string v0, "<true/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_0
    const-string v0, "<false/>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public type()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/dd/plist/NSNumber;->type:I

    return v0
.end method
