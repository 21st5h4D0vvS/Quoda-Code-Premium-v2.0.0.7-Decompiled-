.class Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "TimeUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/TimeUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/TimeUnit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 90
    const/4 v0, 0x1

    .line 91
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 99
    :goto_0
    if-nez v1, :cond_1

    .line 100
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 96
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 97
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 102
    :cond_1
    const-string v3, "milliseconds"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MILLISECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .line 129
    .local v2, "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :goto_1
    if-nez v0, :cond_2

    .line 130
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 131
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 133
    :cond_2
    return-object v2

    .line 105
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_3
    const-string v3, "seconds"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 106
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->SECONDS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 108
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_4
    const-string v3, "minutes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 109
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MINUTES:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 111
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_5
    const-string v3, "hours"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 112
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->HOURS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 114
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_6
    const-string v3, "days"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 115
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->DAYS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 117
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_7
    const-string v3, "weeks"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 118
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->WEEKS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 120
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_8
    const-string v3, "months"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 121
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->MONTHS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 123
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_9
    const-string v3, "years"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 124
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->YEARS:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    goto :goto_1

    .line 127
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
    :cond_a
    sget-object v2, Lcom/dropbox/core/v2/teamlog/TimeUnit;->OTHER:Lcom/dropbox/core/v2/teamlog/TimeUnit;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/TimeUnit;
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
    .line 40
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/TimeUnit;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/TimeUnit;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/TimeUnit;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lcom/dropbox/core/v2/teamlog/TimeUnit$1;->$SwitchMap$com$dropbox$core$v2$teamlog$TimeUnit:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/TimeUnit;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 79
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 47
    :pswitch_0
    const-string v0, "milliseconds"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :pswitch_1
    const-string v0, "seconds"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :pswitch_2
    const-string v0, "minutes"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_3
    const-string v0, "hours"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :pswitch_4
    const-string v0, "days"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :pswitch_5
    const-string v0, "weeks"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_6
    const-string v0, "months"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_7
    const-string v0, "years"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
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
    .line 40
    check-cast p1, Lcom/dropbox/core/v2/teamlog/TimeUnit;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/TimeUnit$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/TimeUnit;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
