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

###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass1 (com.kidoz.sdk.api.server_connect.SdkAPIManager$1)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->loadContent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$styleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/ContentValues;)V
    .registers 14

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$styleId:Ljava/lang/String;

    const-string v1, "style_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$widgetType:Ljava/lang/String;

    const-string v1, "widget_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    invoke-static {v2, p1, v0, v1, v3}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$000(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$context:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/api/sdk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v6, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_SDK_CONTENT:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    iget-object v9, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$1;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v10

    const/4 v8, 0x1

    const/4 v11, 0x0

    move-object v7, p1

    invoke-virtual/range {v2 .. v11}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass2 (com.kidoz.sdk.api.server_connect.SdkAPIManager$2)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->loadWaterfall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

.field final synthetic val$rewarded:Ljava/lang/String;

.field final synthetic val$styleId:Ljava/lang/String;

.field final synthetic val$widgetType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 7

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$styleId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$widgetType:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$rewarded:Ljava/lang/String;

    iput-object p5, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    iput-object p6, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/ContentValues;)V
    .registers 12

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$styleId:Ljava/lang/String;

    const-string v1, "style_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$widgetType:Ljava/lang/String;

    const-string v1, "widget_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$rewarded:Ljava/lang/String;

    const-string v1, "is_rewarded"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "ts"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    invoke-static {v2, p1, v0, v1, v3}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$000(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isTestApp()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    goto :goto_91

    :cond_63
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->WATERFALL_DOMAIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->WATERFALL_URL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->LOAD_WATERFALL:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iget-object v8, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$2;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v8}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    :goto_91
    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass3 (com.kidoz.sdk.api.server_connect.SdkAPIManager$3)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->initSdk(Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/Context;Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;)V
    .registers 4

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/content/ContentValues;)V
    .registers 13

    :try_start_0
    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    invoke-virtual {v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->getEnvUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getEnvApiUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/api/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "initSDK"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v5, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v9

    const/4 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v1 .. v10}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V

    goto :goto_78

    :cond_3f
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$context:Landroid/content/Context;

    const-string v2, "https://sdk-api.kidoz.net/api/initSDK"

    sget-object v3, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;->GET:Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;

    sget-object v4, Lcom/kidoz/sdk/api/server_connect/SdkRequestType;->VALIDATE_SDK:Lcom/kidoz/sdk/api/server_connect/SdkRequestType;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-static {v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$100(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Z

    move-result v8

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v9}, Lcom/kidoz/sdk/api/server_connect/BaseAPIManager;->startServerConnection(Landroid/content/Context;Ljava/lang/String;Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient$CONNECTION_TYPE;Lcom/kidoz/sdk/api/server_connect/SdkRequestType;Landroid/content/ContentValues;ILcom/kidoz/sdk/api/server_connect/ApiResultCallback;ZZ)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_55} :catch_56

    goto :goto_78

    :catch_56
    move-exception p1

    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to validateSDK: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$3;->val$resultCallback:Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;

    invoke-interface {p1}, Lcom/kidoz/sdk/api/server_connect/ApiResultCallback;->onFailed()V

    :goto_78
    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass4 (com.kidoz.sdk.api.server_connect.SdkAPIManager$4)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;
.super Ljava/lang/Thread;
.source "SdkAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->setGeneralParams(Landroid/content/Context;Landroid/content/ContentValues;Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

.field final synthetic val$contentValues:Landroid/content/ContentValues;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$getParamsCallback:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;

.field final synthetic val$isUiThread:Z


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;Landroid/content/ContentValues;Landroid/content/Context;ZLcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;)V
    .registers 6

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    iput-object p2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$isUiThread:Z

    iput-object p5, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$getParamsCallback:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, ""

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    sget-object v2, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mPublicherId:Ljava/lang/String;

    const-string v3, "publisher_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v2}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$300(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_lang"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getIsTablet(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_35

    const-string v2, "2"

    goto :goto_37

    :cond_35
    const-string v2, "1"

    :goto_37
    const-string v4, "device_type"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    iget-object v2, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->this$0:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;

    invoke-static {v2}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$400(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "device_hash"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v2, "omidpn"

    const-string v4, "kidoznet"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    const-string v4, "omidpv"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v2, "version"

    const-string v4, "4"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v2, "sdk_version"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    const-string v4, "actual_sdk_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v2, "os_type"

    const-string v4, "android"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "os_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->EXTENSION_TYPE:Ljava/lang/String;

    const-string v4, "ext"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    sget-object v2, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->EXTENSION_VERSION:Ljava/lang/String;

    const-string v4, "ext_version"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    sget-object v2, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->mSecurityToken:Ljava/lang/String;

    const-string v4, "access_token"

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_f0

    const-string v4, "Chrome"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f0

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f0

    array-length v4, v1

    if-lez v4, :cond_f0

    aget-object v1, v1, v2

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f0

    array-length v4, v1

    if-le v4, v3, :cond_f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v1, v3

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_f2

    :cond_f0
    const-string v1, "w"

    :goto_f2
    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v4, "webview_version"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_f9
    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v4, "resolution_height"

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v4, "resolution_width"

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v3, "screen_size"

    iget-object v4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->getDeviceScreenSizeInInches(Landroid/content/Context;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v3, "dpi"

    iget-object v4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v3, "screen_category"

    iget-object v4, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_15a} :catch_15a

    :catch_15a
    :try_start_15a
    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v3, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_170} :catch_175

    :try_start_170
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_172
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_172} :catch_173

    goto :goto_193

    :catch_173
    move-exception v1

    goto :goto_177

    :catch_175
    move-exception v1

    move-object v2, v0

    :goto_177
    invoke-static {}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error when trying to get app version name and code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_193
    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v3, "app_version_code"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v2, "app_version_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1a1
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v1, "manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    const-string v1, "model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1b3} :catch_1b4

    goto :goto_1be

    :catch_1b4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KIDOZ"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1be
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->getCarrierName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "carrier_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$isUiThread:Z

    if-eqz v0, :cond_1ee

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;-><init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1f7

    :cond_1ee
    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$getParamsCallback:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;

    if-eqz v0, :cond_1f7

    iget-object v1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    invoke-interface {v0, v1}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;->onResult(Landroid/content/ContentValues;)V

    :cond_1f7
    :goto_1f7
    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.server_connect.SdkAPIManager$4$1)
.class Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;->this$1:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4$1;->this$1:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;

    iget-object v1, v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$getParamsCallback:Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;

    if-eqz v1, :cond_b

    iget-object v0, v0, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$4;->val$contentValues:Landroid/content/ContentValues;

    invoke-interface {v1, v0}, Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;->onResult(Landroid/content/ContentValues;)V

    :cond_b
    return-void
.end method

###### Class com.kidoz.sdk.api.server_connect.SdkAPIManager.GetParamsCallback (com.kidoz.sdk.api.server_connect.SdkAPIManager$GetParamsCallback)
.class public interface abstract Lcom/kidoz/sdk/api/server_connect/SdkAPIManager$GetParamsCallback;
.super Ljava/lang/Object;
.source "SdkAPIManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/server_connect/SdkAPIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetParamsCallback"
.end annotation


# virtual methods
.method public abstract onResult(Landroid/content/ContentValues;)V
.end method
