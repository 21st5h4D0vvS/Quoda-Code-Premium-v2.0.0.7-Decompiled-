.class Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;
.super Ljava/lang/Object;
.source "DefaultCredentialProvider.java"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;
    }
.end annotation


# static fields
.field static final APP_ENGINE_CREDENTIAL_CLASS:Ljava/lang/String; = "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

.field static final CLOUDSDK_CONFIG_DIRECTORY:Ljava/lang/String; = "gcloud"

.field static final CREDENTIAL_ENV_VAR:Ljava/lang/String; = "GOOGLE_APPLICATION_CREDENTIALS"

.field static final HELP_PERMALINK:Ljava/lang/String; = "https://developers.google.com/accounts/docs/application-default-credentials"

.field static final WELL_KNOWN_CREDENTIALS_FILE:Ljava/lang/String; = "application_default_credentials.json"


# instance fields
.field private cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

.field private checkedAppEngine:Z

.field private checkedComputeEngine:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 61
    iput-boolean v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedAppEngine:Z

    .line 62
    iput-boolean v1, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedComputeEngine:Z

    .line 64
    return-void
.end method

.method private final getDefaultCredentialUnsynchronized(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 12
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "credential":Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    const-string v7, "GOOGLE_APPLICATION_CREDENTIALS"

    invoke-virtual {p0, v7}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "credentialsPath":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 106
    const/4 v3, 0x0

    .line 108
    .local v3, "credentialsStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "credentialsFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 111
    :cond_0
    new-instance v7, Ljava/io/IOException;

    const-string v8, "File does not exist."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v1    # "credentialsFile":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 119
    .local v5, "e":Ljava/io/IOException;
    :goto_0
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Error reading credential file from environment variable %s, value \'%s\': %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "GOOGLE_APPLICATION_CREDENTIALS"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v5}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->exceptionWithCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v7

    check-cast v7, Ljava/io/IOException;

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v7

    .line 113
    .restart local v1    # "credentialsFile":Ljava/io/File;
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .local v4, "credentialsStream":Ljava/io/InputStream;
    :try_start_3
    invoke-static {v4, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/security/AccessControlException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 125
    if-eqz v4, :cond_3

    .line 126
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 132
    .end local v1    # "credentialsFile":Ljava/io/File;
    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    .line 133
    invoke-direct {p0}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getWellKnownCredentialsFile()Ljava/io/File;

    move-result-object v6

    .line 135
    .local v6, "wellKnownFileLocation":Ljava/io/File;
    :try_start_4
    invoke-virtual {p0, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->fileExists(Ljava/io/File;)Z
    :try_end_4
    .catch Ljava/security/AccessControlException; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    if-eqz v7, :cond_4

    .line 136
    const/4 v3, 0x0

    .line 138
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    :try_start_5
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :try_start_6
    invoke-static {v4, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->fromStream(Ljava/io/InputStream;Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v0

    .line 145
    if-eqz v4, :cond_4

    .line 146
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/security/AccessControlException; {:try_start_7 .. :try_end_7} :catch_3

    .line 156
    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .end local v6    # "wellKnownFileLocation":Ljava/io/File;
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->tryGetAppEngineCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 161
    :cond_5
    if-nez v0, :cond_6

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->tryGetComputeCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    .line 164
    :cond_6
    return-object v0

    .line 122
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    :catch_1
    move-exception v7

    .line 125
    :goto_4
    if-eqz v3, :cond_3

    .line 126
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 140
    .restart local v6    # "wellKnownFileLocation":Ljava/io/File;
    :catch_2
    move-exception v5

    .line 141
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Error reading credential file from location %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 145
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :goto_6
    if-eqz v3, :cond_7

    .line 146
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_7
    throw v7
    :try_end_9
    .catch Ljava/security/AccessControlException; {:try_start_9 .. :try_end_9} :catch_3

    .line 150
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    :catch_3
    move-exception v7

    goto :goto_3

    .line 145
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_6

    .line 140
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_5

    .line 125
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .end local v6    # "wellKnownFileLocation":Ljava/io/File;
    .restart local v1    # "credentialsFile":Ljava/io/File;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catchall_3
    move-exception v7

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_1

    .line 122
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catch_5
    move-exception v7

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto :goto_4

    .line 115
    .end local v3    # "credentialsStream":Ljava/io/InputStream;
    .restart local v4    # "credentialsStream":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    move-object v3, v4

    .end local v4    # "credentialsStream":Ljava/io/InputStream;
    .restart local v3    # "credentialsStream":Ljava/io/InputStream;
    goto/16 :goto_0
.end method

.method private final getWellKnownCredentialsFile()Ljava/io/File;
    .locals 7

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 169
    .local v1, "cloudConfigPath":Ljava/io/File;
    const-string v5, "os.name"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .local v4, "os":Ljava/lang/String;
    const-string v5, "windows"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 171
    new-instance v0, Ljava/io/File;

    const-string v5, "APPDATA"

    invoke-virtual {p0, v5}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getEnv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "appDataPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "cloudConfigPath":Ljava/io/File;
    const-string v5, "gcloud"

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .end local v0    # "appDataPath":Ljava/io/File;
    .restart local v1    # "cloudConfigPath":Ljava/io/File;
    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v5, "application_default_credentials.json"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    .local v3, "credentialFilePath":Ljava/io/File;
    return-object v3

    .line 174
    .end local v3    # "credentialFilePath":Ljava/io/File;
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v5, "user.home"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".config"

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .local v2, "configPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1    # "cloudConfigPath":Ljava/io/File;
    const-string v5, "gcloud"

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v1    # "cloudConfigPath":Ljava/io/File;
    goto :goto_0
.end method

.method private final tryGetAppEngineCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 6
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 212
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedAppEngine:Z

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 229
    :goto_0
    return-object v2

    .line 215
    :cond_0
    iput-boolean v4, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedAppEngine:Z

    .line 218
    :try_start_0
    const-string v2, "com.google.api.client.googleapis.extensions.appengine.auth.oauth2.AppIdentityCredential$AppEngineCredentialWrapper"

    invoke-virtual {p0, v2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 219
    .local v1, "credentialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lcom/google/api/client/http/HttpTransport;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-class v5, Lcom/google/api/client/json/JsonFactory;

    aput-object v5, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 221
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const/4 v4, 0x1

    aput-object p2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v1    # "credentialClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    :goto_1
    move-object v2, v3

    .line 229
    goto :goto_0

    .line 226
    :catch_1
    move-exception v2

    goto :goto_1

    .line 225
    :catch_2
    move-exception v2

    goto :goto_1

    .line 224
    :catch_3
    move-exception v2

    goto :goto_1

    .line 223
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method private final tryGetComputeCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 3
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-boolean v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedComputeEngine:Z

    if-eqz v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-object v1

    .line 238
    :cond_1
    invoke-static {p1}, Lcom/google/api/client/googleapis/auth/oauth2/OAuth2Utils;->runningOnComputeEngine(Lcom/google/api/client/http/HttpTransport;)Z

    move-result v0

    .line 239
    .local v0, "runningOnComputeEngine":Z
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->checkedComputeEngine:Z

    .line 240
    if-eqz v0, :cond_0

    .line 241
    new-instance v1, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;

    invoke-direct {v1, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider$ComputeGoogleCredential;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)V

    goto :goto_0
.end method


# virtual methods
.method fileExists(Ljava/io/File;)Z
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method final getDefaultCredential(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;
    .locals 5
    .param p1, "transport"    # Lcom/google/api/client/http/HttpTransport;
    .param p2, "jsonFactory"    # Lcom/google/api/client/json/JsonFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->getDefaultCredentialUnsynchronized(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/oauth2/DefaultCredentialProvider;->cachedCredential:Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    monitor-exit p0

    return-object v0

    .line 89
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    new-instance v0, Ljava/io/IOException;

    const-string v1, "The Application Default Credentials are not available. They are available if running in Google Compute Engine. Otherwise, the environment variable %s must be defined pointing to a file defining the credentials. See %s for more information."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "GOOGLE_APPLICATION_CREDENTIALS"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "https://developers.google.com/accounts/docs/application-default-credentials"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getEnv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-static {p1, p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
