.class Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "SharingLinkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 68
    const/4 v0, 0x1

    .line 69
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 77
    :goto_0
    if-nez v1, :cond_1

    .line 78
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 73
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 74
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 75
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 80
    :cond_1
    const-string v3, "default_private"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 81
    sget-object v2, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->DEFAULT_PRIVATE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    .line 92
    .local v2, "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    :goto_1
    if-nez v0, :cond_2

    .line 93
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 94
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 96
    :cond_2
    return-object v2

    .line 83
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    :cond_3
    const-string v3, "default_public"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 84
    sget-object v2, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->DEFAULT_PUBLIC:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    goto :goto_1

    .line 86
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    :cond_4
    const-string v3, "only_private"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 87
    sget-object v2, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->ONLY_PRIVATE:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    goto :goto_1

    .line 90
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    :cond_5
    sget-object v2, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->OTHER:Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$1;->$SwitchMap$com$dropbox$core$v2$teamlog$SharingLinkPolicy:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const-string v0, "default_private"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :pswitch_1
    const-string v0, "default_public"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_2
    const-string v0, "only_private"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 38
    check-cast p1, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/SharingLinkPolicy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
