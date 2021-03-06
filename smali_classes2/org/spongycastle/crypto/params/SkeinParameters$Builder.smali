.class public Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
.super Ljava/lang/Object;
.source "SkeinParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/params/SkeinParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 156
    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 4
    .param p1, "paramsMap"    # Ljava/util/Hashtable;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 160
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 161
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 164
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/params/SkeinParameters;)V
    .locals 4
    .param p1, "params"    # Lorg/spongycastle/crypto/params/SkeinParameters;

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    .line 170
    invoke-static {p1}, Lorg/spongycastle/crypto/params/SkeinParameters;->access$000(Lorg/spongycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 171
    .local v1, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 174
    .local v0, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/crypto/params/SkeinParameters;->access$000(Lorg/spongycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/spongycastle/crypto/params/SkeinParameters;
    .locals 3

    .prologue
    .line 290
    new-instance v0, Lorg/spongycastle/crypto/params/SkeinParameters;

    iget-object v1, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;Lorg/spongycastle/crypto/params/SkeinParameters$1;)V

    return-object v0
.end method

.method public set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # [B

    .prologue
    const/4 v1, 0x4

    .line 193
    if-nez p2, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    if-eqz p1, :cond_2

    if-le p1, v1, :cond_1

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_2

    .line 200
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_2
    if-ne p1, v1, :cond_3

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter type 4 is reserved for internal use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-object p0
.end method

.method public setKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "key"    # [B

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeyIdentifier([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "keyIdentifier"    # [B

    .prologue
    .line 273
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNonce([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "nonce"    # [B

    .prologue
    .line 281
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 7
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "emailAddress"    # Ljava/lang/String;
    .param p3, "distinguisher"    # Ljava/lang/String;

    .prologue
    .line 243
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 244
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 245
    .local v3, "out":Ljava/io/OutputStreamWriter;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "YYYYMMDD"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 246
    .local v2, "format":Ljava/text/DateFormat;
    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 247
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 249
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v3, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 252
    const/16 v4, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 254
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "format":Ljava/text/DateFormat;
    .end local v3    # "out":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Byte I/O failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPersonalisation([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "personalisation"    # [B

    .prologue
    .line 224
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey([B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;
    .locals 1
    .param p1, "publicKey"    # [B

    .prologue
    .line 265
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/spongycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/spongycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method
