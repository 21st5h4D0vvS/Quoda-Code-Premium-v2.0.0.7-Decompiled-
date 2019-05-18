.class Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "EventCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/teamlog/EventCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/teamlog/EventCategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventCategory;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 314
    const/4 v0, 0x1

    .line 315
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 323
    :goto_0
    if-nez v1, :cond_1

    .line 324
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 319
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 320
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 321
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 326
    :cond_1
    const-string v3, "account_capture"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 327
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->ACCOUNT_CAPTURE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .line 422
    .local v2, "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :goto_1
    if-nez v0, :cond_2

    .line 423
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 424
    invoke-static {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 426
    :cond_2
    return-object v2

    .line 329
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_3
    const-string v3, "administration"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 330
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->ADMINISTRATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 332
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_4
    const-string v3, "apps"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 333
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->APPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 335
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_5
    const-string v3, "authentication"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 336
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->AUTHENTICATION:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 338
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_6
    const-string v3, "comments"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 339
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->COMMENTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 341
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_7
    const-string v3, "content_access"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 342
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->CONTENT_ACCESS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 344
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_8
    const-string v3, "devices"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 345
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 347
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_9
    const-string v3, "device_approvals"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 348
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->DEVICE_APPROVALS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 350
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_a
    const-string v3, "domains"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 351
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->DOMAINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 353
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_b
    const-string v3, "emm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 354
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->EMM:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 356
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_c
    const-string v3, "errors"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 357
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->ERRORS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto :goto_1

    .line 359
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_d
    const-string v3, "files"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 360
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 362
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_e
    const-string v3, "file_operations"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 363
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_OPERATIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 365
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_f
    const-string v3, "file_requests"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 366
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->FILE_REQUESTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 368
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_10
    const-string v3, "groups"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 369
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->GROUPS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 371
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_11
    const-string v3, "logins"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 372
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->LOGINS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 374
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_12
    const-string v3, "members"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 375
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->MEMBERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 377
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_13
    const-string v3, "paper"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 378
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->PAPER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 380
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_14
    const-string v3, "passwords"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 381
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->PASSWORDS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 383
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_15
    const-string v3, "reports"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 384
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->REPORTS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 386
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_16
    const-string v3, "sessions"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 387
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SESSIONS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 389
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_17
    const-string v3, "shared_files"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 390
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FILES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 392
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_18
    const-string v3, "shared_folders"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 393
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 395
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_19
    const-string v3, "shared_links"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 396
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARED_LINKS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 398
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_1a
    const-string v3, "sharing"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 399
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 401
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_1b
    const-string v3, "sharing_policies"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 402
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SHARING_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 404
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_1c
    const-string v3, "sso"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 405
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->SSO:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 407
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_1d
    const-string v3, "team_folders"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 408
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_FOLDERS:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 410
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_1e
    const-string v3, "team_policies"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 411
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_POLICIES:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 413
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_1f
    const-string v3, "team_profile"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 414
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TEAM_PROFILE:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 416
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_20
    const-string v3, "tfa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 417
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->TFA:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1

    .line 420
    .end local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    :cond_21
    sget-object v2, Lcom/dropbox/core/v2/teamlog/EventCategory;->OTHER:Lcom/dropbox/core/v2/teamlog/EventCategory;

    .restart local v2    # "value":Lcom/dropbox/core/v2/teamlog/EventCategory;
    goto/16 :goto_1
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
    .line 172
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/teamlog/EventCategory;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/teamlog/EventCategory;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 177
    sget-object v0, Lcom/dropbox/core/v2/teamlog/EventCategory$1;->$SwitchMap$com$dropbox$core$v2$teamlog$EventCategory:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/teamlog/EventCategory;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 303
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 179
    :pswitch_0
    const-string v0, "account_capture"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_1
    const-string v0, "administration"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_2
    const-string v0, "apps"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :pswitch_3
    const-string v0, "authentication"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :pswitch_4
    const-string v0, "comments"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_5
    const-string v0, "content_access"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_6
    const-string v0, "devices"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_7
    const-string v0, "device_approvals"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_8
    const-string v0, "domains"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_9
    const-string v0, "emm"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_a
    const-string v0, "errors"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_b
    const-string v0, "files"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_c
    const-string v0, "file_operations"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :pswitch_d
    const-string v0, "file_requests"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :pswitch_e
    const-string v0, "groups"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :pswitch_f
    const-string v0, "logins"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :pswitch_10
    const-string v0, "members"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :pswitch_11
    const-string v0, "paper"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :pswitch_12
    const-string v0, "passwords"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :pswitch_13
    const-string v0, "reports"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_14
    const-string v0, "sessions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :pswitch_15
    const-string v0, "shared_files"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :pswitch_16
    const-string v0, "shared_folders"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 271
    :pswitch_17
    const-string v0, "shared_links"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 275
    :pswitch_18
    const-string v0, "sharing"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 279
    :pswitch_19
    const-string v0, "sharing_policies"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 283
    :pswitch_1a
    const-string v0, "sso"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 287
    :pswitch_1b
    const-string v0, "team_folders"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    :pswitch_1c
    const-string v0, "team_policies"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 295
    :pswitch_1d
    const-string v0, "team_profile"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    :pswitch_1e
    const-string v0, "tfa"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
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
    .line 172
    check-cast p1, Lcom/dropbox/core/v2/teamlog/EventCategory;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/teamlog/EventCategory$Serializer;->serialize(Lcom/dropbox/core/v2/teamlog/EventCategory;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
