.class Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "GracePeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/filerequests/GracePeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/filerequests/GracePeriod;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->INSTANCE:Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 76
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 84
    :goto_0
    if-nez v1, :cond_1

    .line 85
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 80
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 81
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 82
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 87
    :cond_1
    const-string v3, "one_day"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 88
    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ONE_DAY:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .line 105
    .local v2, "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    :goto_1
    if-nez v0, :cond_2

    .line 106
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 107
    invoke-static {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 109
    :cond_2
    return-object v2

    .line 90
    .end local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    :cond_3
    const-string v3, "two_days"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->TWO_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .restart local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    goto :goto_1

    .line 93
    .end local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    :cond_4
    const-string v3, "seven_days"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 94
    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->SEVEN_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .restart local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    goto :goto_1

    .line 96
    .end local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    :cond_5
    const-string v3, "thirty_days"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 97
    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->THIRTY_DAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .restart local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    goto :goto_1

    .line 99
    .end local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    :cond_6
    const-string v3, "always"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 100
    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ALWAYS:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .restart local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    goto :goto_1

    .line 103
    .end local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
    :cond_7
    sget-object v2, Lcom/dropbox/core/v2/filerequests/GracePeriod;->OTHER:Lcom/dropbox/core/v2/filerequests/GracePeriod;

    .restart local v2    # "value":Lcom/dropbox/core/v2/filerequests/GracePeriod;
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
    .line 37
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/filerequests/GracePeriod;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/filerequests/GracePeriod;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/filerequests/GracePeriod;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 42
    sget-object v0, Lcom/dropbox/core/v2/filerequests/GracePeriod$1;->$SwitchMap$com$dropbox$core$v2$filerequests$GracePeriod:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/filerequests/GracePeriod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 67
    :goto_0
    return-void

    .line 44
    :pswitch_0
    const-string v0, "one_day"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :pswitch_1
    const-string v0, "two_days"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :pswitch_2
    const-string v0, "seven_days"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_3
    const-string v0, "thirty_days"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :pswitch_4
    const-string v0, "always"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
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
    .line 37
    check-cast p1, Lcom/dropbox/core/v2/filerequests/GracePeriod;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/filerequests/GracePeriod$Serializer;->serialize(Lcom/dropbox/core/v2/filerequests/GracePeriod;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
