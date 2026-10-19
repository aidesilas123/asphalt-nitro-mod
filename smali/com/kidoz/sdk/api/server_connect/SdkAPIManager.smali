###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager (com.kidoz.sdk.api.server_connect.SdkAPIManager)
.class public Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;
.super Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;
.source "SdkAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;
    }
.end annotation


# static fields
.field private static final GET_CONTENT:Ljava/lang/String; = "getContent"

.field private static final INIT_SDK_CONFIGURATION:Ljava/lang/String; = "initSDK"

.field private static final JSON:Ljava/lang/String; = "JSON"

.field public static final METHOD_NAME:Ljava/lang/String; = "method_name"

.field private static final REQUEST_FORMAT:Ljava/lang/String; = "resFormat"

.field private static final SEND_KIDOZ_EVENTS_TO_SERVER:Ljava/lang/String; = "SendKidozEventsToServer"

.field private static final TAG:Ljava/lang/String; = "com.kidoz.sdk.api.server_connect.SdkAPIManager"

.field private static final WATERFALL:Ljava/lang/String; = "waterfall"

.field private static mSdkInstnace:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeveloperLogging:Z

.field private mPackageName:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSessionId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->initConnectionClient(Landroid/content/Context;)V

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_18
    iput-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->generateRequestHash(Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mDeveloperLogging:Z

    return p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSessionId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateRequestHash(Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2b
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/EncoderUtils;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;
    .registers 2

    sget-object v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSdkInstnace:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-direct {v0, p0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSdkInstnace:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    :cond_b
    sget-object p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSdkInstnace:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    return-object p0
.end method

.method private getSessionId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSessionId:Ljava/lang/String;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kidoz/sdk/api/general/utils/Utils;->getSessionId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSessionId:Ljava/lang/String;

    :cond_c
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-static {p0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->getSdkApiInstance(Landroid/content/Context;)Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    move-result-object p0

    invoke-direct {p0, p1, p2, p3}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->setProperties(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setProperties(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    sput-object p1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mPublicherId:Ljava/lang/String;

    sput-object p2, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mDeveloperLogging:Z

    return-void
.end method


# virtual methods
.method public callGetURL(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->SEND_EVENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    iget-boolean v8, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mDeveloperLogging:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    return-void
.end method

.method public getCountryCode(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "key"

    const-string v1, "Xg4VFb!7P$_p87Eq+7-t&X=VPHw3P&yL"

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->POST:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->GET_COUNTRY_CODE:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    iget-boolean v8, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->mDeveloperLogging:Z

    const-string v2, "http://accounts.kidoz.net/api/cc"

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    return-void
.end method

.method public initSdk(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "Lcom/kidoz/sdk/api/general/utils/PropertiesObj;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "method_name"

    const-string v2, "initSDK"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;-><init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->setGeneralParams(Landroid/content/Context;Landroid/content/ContentValues;Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V

    return-void
.end method

.method public loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "Lcom/kidoz/sdk/api/structure/ContentData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "method_name"

    const-string v2, "getContent"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;-><init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->setGeneralParams(Landroid/content/Context;Landroid/content/ContentValues;Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V

    return-void
.end method

.method public loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/kidoz/sdk/api/server_connect/ApiResultCallback<",
            "Lcom/kidoz/sdk/api/structure/ContentData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "method_name"

    const-string v2, "waterfall"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p1

    move-object v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;-><init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->setGeneralParams(Landroid/content/Context;Landroid/content/ContentValues;Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V

    return-void
.end method

.method public sendKidozEventsToServerNotAsync(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/ResultData;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/kidoz/sdk/api/server_connect/ResultData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "methodName"

    const-string v2, "SendKidozEventsToServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_d
    const-string v2, "KidozEventsLogAsJson"

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "resFormat"

    const-string v2, "JSON"

    invoke-virtual {v0, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "https://analytics.kidoz.net/parents/KidozRestMobile.php"

    invoke-static {p1, v0}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->makePostConnection(Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_46

    invoke-static {p1}, Lcom/kidoz/events/EventBulk;->parseResultSuccsessStatus(Ljava/lang/String;)Lcom/kidoz/sdk/api/server_connect/ResultData;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_2d

    move-object v1, p1

    goto :goto_46

    :catch_2d
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n IO Exception On Event send request! \n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_46
    :goto_46
    return-object v1
.end method

.method public setGeneralParams(Landroid/content/Context;Landroid/content/ContentValues;Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V
    .registers 11

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->isUiThread()Z

    move-result v4

    new-instance v6, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;-><init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;Landroid/content/Context;ZLcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method
