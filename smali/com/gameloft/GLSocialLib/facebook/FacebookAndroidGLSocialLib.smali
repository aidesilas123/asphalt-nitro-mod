###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib)
.class public Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;
    }
.end annotation


# static fields
.field private static final K_GAPI_APPLICATION_FIELD:Ljava/lang/String; = "application"

.field private static final K_GAPI_APP_REQUESTS:Ljava/lang/String; = "me/apprequests"

.field private static final K_GAPI_CAN_POST_FIELD:Ljava/lang/String; = "can_post"

.field private static final K_GAPI_CAPTION_FIELD:Ljava/lang/String; = "caption"

.field private static final K_GAPI_CATEGORY_FIELD:Ljava/lang/String; = "category"

.field private static final K_GAPI_COMMENTS_FIELD:Ljava/lang/String; = "comments"

.field private static final K_GAPI_CONTENT_TYPE_FIELD:Ljava/lang/String; = "contentType"

.field private static final K_GAPI_COVER_FIELD:Ljava/lang/String; = "cover"

.field private static final K_GAPI_CREATED_TIME_FIELD:Ljava/lang/String; = "created_time"

.field private static final K_GAPI_DATA_FIELD:Ljava/lang/String; = "data"

.field private static final K_GAPI_DESCRIPTION_FIELD:Ljava/lang/String; = "description"

.field private static final K_GAPI_FEED_PATH:Ljava/lang/String; = "/feed"

.field private static final K_GAPI_FIELDS:Ljava/lang/String; = "fields"

.field private static final K_GAPI_FIRST_NAME_FIELD:Ljava/lang/String; = "first_name"

.field private static final K_GAPI_FRIENDS_PATH:Ljava/lang/String; = "/friends"

.field private static final K_GAPI_FROM_FIELD:Ljava/lang/String; = "from"

.field private static final K_GAPI_IDS_PATH:Ljava/lang/String; = "?ids="

.field private static final K_GAPI_ID_FIELD:Ljava/lang/String; = "id"

.field private static final K_GAPI_LAST_NAME_FIELD:Ljava/lang/String; = "last_name"

.field private static final K_GAPI_LIKES_FIELD:Ljava/lang/String; = "likes"

.field private static final K_GAPI_LIKES_PATH:Ljava/lang/String; = "/likes"

.field private static final K_GAPI_LIMIT_FIELD:Ljava/lang/String; = "limit"

.field private static final K_GAPI_LINK_FIELD:Ljava/lang/String; = "link"

.field private static final K_GAPI_MESSAGE_FIELD:Ljava/lang/String; = "message"

.field private static final K_GAPI_ME_PATH:Ljava/lang/String; = "me"

.field private static final K_GAPI_NAME_FIELD:Ljava/lang/String; = "name"

.field private static final K_GAPI_OFFSET_FIELD:Ljava/lang/String; = "offset"

.field private static final K_GAPI_PHOTOS_PATH:Ljava/lang/String; = "/photos"

.field private static final K_GAPI_PICTURE_FIELD:Ljava/lang/String; = "picture"

.field private static final K_GAPI_PRIVACY_FIELD:Ljava/lang/String; = "privacy"

.field private static final K_GAPI_PUBLISH_TIME_FIELD:Ljava/lang/String; = "publish_time"

.field private static final K_GAPI_TALKING_ABOUT_COUNT_FIELD:Ljava/lang/String; = "talking_about_count"

.field private static final K_GAPI_TITLE_FIELD:Ljava/lang/String; = "title"

.field private static final K_GAPI_VIDEOS_PATH:Ljava/lang/String; = "/videos"

.field private static final K_GAPI_WEBSITE_FIELD:Ljava/lang/String; = "website"

.field private static final K_USER_FRIENDS_PERMISSION:Ljava/lang/String; = "user_friends"

.field public static final LIKE_REQUEST_CODE:I = 0xfad1

.field public static final LOGIN_REQUEST_CODE:I = 0xface

.field public static final REQUEST_REQUEST_CODE:I = 0xfad2

.field public static final SHARE_REQUEST_CODE:I = 0xfacf

.field private static m_context:Landroid/content/Context;

.field private static s_callbackManager:Lcom/facebook/CallbackManager;

.field private static s_gameRequestCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/widget/GameRequestDialog$Result;",
            ">;"
        }
    .end annotation
.end field

.field private static s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

.field private static s_loginCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/login/LoginResult;",
            ">;"
        }
    .end annotation
.end field

.field private static s_requestCallback:Lcom/facebook/GraphRequest$Callback;

.field private static s_shareCallback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    const-string p3, "FacebookAndroidGLSocialLib: In constructor"

    invoke-static {p3}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    sput-object p2, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_context:Landroid/content/Context;

    sput-object p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    return-void
.end method

.method public static CanPresentShareDialog()Z
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: CanPresentShareDialog"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/widget/ShareDialog;

    sget-object v2, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object v2, v2, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    sget-object v2, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/share/widget/ShareDialog;->canShow(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)Z

    move-result v0

    return v0
.end method

.method public static DeleteGameRequest(Ljava/lang/String;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: DeleteGameRequest"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->DELETE:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method private static FetchDeferredAppLinkData()V
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: FetchDeferredAppLinkData"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object v0, v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static GetAccessToken()Ljava/lang/String;
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: GetAccessToken"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/String;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static GetGameRequests()V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: GetUserGameRequests"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v1, "me/apprequests"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static GetUid()Ljava/lang/String;
    .registers 1

    const-string v0, "FacebookAndroidGLSocialLib: GetUid"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v0, ""

    return-object v0

    :cond_e
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static HandleGraphApiResponse(Lcom/facebook/GraphResponse;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: HandleGraphApiResponse"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    if-nez p0, :cond_d

    const-string p0, "FacebookAndroidGLSocialLib: GraphApi response is null"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_d
    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FacebookAndroidGLSocialLib: "

    if-eqz p0, :cond_32

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorUserMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_49
    invoke-virtual {p0}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_55

    const-string p0, "FacebookAndroidGLSocialLib: GraphApi JSON object is null"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    goto :goto_5c

    :cond_55
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    :goto_5c
    return-void
.end method

.method private static HasDeclinedPermission(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: HasDeclinedPermission"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private static HasGrantedPermission(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: HasGrantedPermission"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public static HasPermission(Ljava/lang/String;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: HasPermission"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_11

    const-string p0, "Active session null"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->HasGrantedPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isDataAccessExpired()Z

    move-result v0

    if-nez v0, :cond_23

    const-string p0, "approved"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    goto :goto_3c

    :cond_23
    if-eqz v1, :cond_2b

    const-string p0, "expired"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    goto :goto_3c

    :cond_2b
    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->HasDeclinedPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_37

    const-string p0, "declined"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    goto :goto_3c

    :cond_37
    const-string p0, "not asked"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public static HasPermissionInternal(Ljava/lang/String;)I
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: HasPermissionInternal"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_d

    const/4 p0, -0x1

    return p0

    :cond_d
    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->HasGrantedPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->HasDeclinedPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    const/4 p0, 0x2

    return p0
.end method

.method public static Init()V
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: Init"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setAutoInitEnabled(Z)V

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->FetchDeferredAppLinkData()V

    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v1

    sput-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_callbackManager:Lcom/facebook/CallbackManager;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->setAutoLogAppEventsEnabled(Z)V

    invoke-static {}, Lcom/facebook/FacebookSdk;->fullyInitialize()V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_24

    const-string v0, "Init Finished - Can do silent login"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    goto :goto_29

    :cond_24
    const-string v0, "Init Finished - Can\'t do silent login"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    :goto_29
    return-void
.end method

.method public static IsLoggedIn()Z
    .registers 1

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static Login(Ljava/lang/String;)V
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: Login"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->LoginInternal(Ljava/util/List;)V

    return-void
.end method

.method private static LoginInternal(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FacebookAndroidGLSocialLib: LoginInternal"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object v0, v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$5;

    invoke-direct {v1, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static Logout()V
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: Logout"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object v0, v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$1;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static PostOpenGraphAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "FacebookAndroidGLSocialLib: PostOpenGraphAction"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "me/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->POST:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-static {p0, p1, p2}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static PostPhotoToWallWithoutDialog([BLjava/lang/String;)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: PostPhotoToWallWithoutDialog"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_12

    const-string v0, "FacebookAndroidGLSocialLib: Bitmap is nil"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "picture"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "message"

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->POST:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string p1, "me/photos"

    invoke-static {p1, v0, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static PostToWall(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: PostToWall"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: link: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/facebook/share/model/ShareContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object p0

    check-cast p0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {p0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object p0

    if-eqz p1, :cond_31

    sget-object p1, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    goto :goto_33

    :cond_31
    sget-object p1, Lcom/facebook/share/widget/ShareDialog$Mode;->AUTOMATIC:Lcom/facebook/share/widget/ShareDialog$Mode;

    :goto_33
    invoke-static {p0, p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->ShareLinkInternal(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    return-void
.end method

.method public static ReauthorizePermissions()V
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: ReauthorizePermissions"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object v0, v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$2;

    invoke-direct {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static RegisterGameRequestResponse(Lcom/facebook/share/widget/GameRequestDialog;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: RegisterGameRequestResponse"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_gameRequestCallback:Lcom/facebook/FacebookCallback;

    if-nez v0, :cond_10

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$8;

    invoke-direct {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$8;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_gameRequestCallback:Lcom/facebook/FacebookCallback;

    :cond_10
    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_callbackManager:Lcom/facebook/CallbackManager;

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_gameRequestCallback:Lcom/facebook/FacebookCallback;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private static RegisterLoginResponse()V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: RegisterLoginResponse"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_loginCallback:Lcom/facebook/FacebookCallback;

    if-nez v0, :cond_10

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$4;

    invoke-direct {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$4;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_loginCallback:Lcom/facebook/FacebookCallback;

    :cond_10
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_callbackManager:Lcom/facebook/CallbackManager;

    sget-object v2, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_loginCallback:Lcom/facebook/FacebookCallback;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method private static RegisterShareResponse(Lcom/facebook/share/widget/ShareDialog;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: RegisterShareResponse"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_shareCallback:Lcom/facebook/FacebookCallback;

    if-nez v0, :cond_10

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$6;

    invoke-direct {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$6;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_shareCallback:Lcom/facebook/FacebookCallback;

    :cond_10
    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_callbackManager:Lcom/facebook/CallbackManager;

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_shareCallback:Lcom/facebook/FacebookCallback;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method public static RequestAppDetails()V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: RequestAppDetails"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "FacebookAndroidGLSocialLib: Access token invalid"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-static {v0, v1, v2}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestAppId()V
    .registers 1

    const-string v0, "FacebookAndroidGLSocialLib: RequestAppId"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, "FacebookAndroidGLSocialLib: Access token invalid"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_11
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    return-void
.end method

.method public static RequestCoverImage()V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: RequestCoverImage"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "cover"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v2, "me"

    invoke-static {v2, v0, v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestFriendLikes(Ljava/lang/String;)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: RequestFriendLikes"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/likes"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "can_post,created_time,cover,description,id,link,name,talking_about_count,website,category"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-static {p0, v0, v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestFriendsData(III)V
    .registers 5

    const-string v0, "FacebookAndroidGLSocialLib: RequestFriendsData(III)"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picture.type(square).height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ").width("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id,name,first_name,last_name,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "offset"

    invoke-virtual {v0, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "limit"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string p1, "me/friends"

    invoke-static {p1, v0, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestFriendsData(Ljava/lang/String;I)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: RequestFriendsData(SI)"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "picture.type(square).height("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ").width("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id,name,first_name,last_name,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-static {p0, v0, p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestFriendsIDs(I)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: RequestFriendsIDs"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "limit"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v1, "me/friends"

    invoke-static {v1, v0, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestFriendsName(Ljava/lang/String;)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: RequestFriendsName"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?ids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "id,name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-static {p0, v0, v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestName()V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: RequestName"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fields"

    const-string v2, "name,first_name,last_name"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v2, "me"

    invoke-static {v2, v0, v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static RequestPermissions(Ljava/lang/String;)V
    .registers 2

    const-string v0, "FacebookAndroidGLSocialLib: RequestPermissions"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->LoginInternal(Ljava/util/List;)V

    return-void
.end method

.method public static RequestPicture(Ljava/lang/String;)V
    .registers 4

    const-string v0, "FacebookAndroidGLSocialLib: RequestPicture"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "picture.type("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fields"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v1, "me"

    invoke-static {v1, v0, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void
.end method

.method public static SendGameRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string p4, "FacebookAndroidGLSocialLib: SendGameRequest"

    invoke-static {p4}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance p4, Lcom/facebook/share/model/GameRequestContent$Builder;

    invoke-direct {p4}, Lcom/facebook/share/model/GameRequestContent$Builder;-><init>()V

    invoke-virtual {p4, p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->setMessage(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/facebook/share/model/GameRequestContent$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_26

    const-string p2, ","

    invoke-virtual {p0, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setRecipients(Ljava/util/List;)Lcom/facebook/share/model/GameRequestContent$Builder;

    goto :goto_2b

    :cond_26
    sget-object p0, Lcom/facebook/share/model/GameRequestContent$Filters;->APP_NON_USERS:Lcom/facebook/share/model/GameRequestContent$Filters;

    invoke-virtual {p1, p0}, Lcom/facebook/share/model/GameRequestContent$Builder;->setFilters(Lcom/facebook/share/model/GameRequestContent$Filters;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :goto_2b
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_34

    invoke-virtual {p1, p3}, Lcom/facebook/share/model/GameRequestContent$Builder;->setData(Ljava/lang/String;)Lcom/facebook/share/model/GameRequestContent$Builder;

    :cond_34
    invoke-virtual {p1}, Lcom/facebook/share/model/GameRequestContent$Builder;->build()Lcom/facebook/share/model/GameRequestContent;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->SendGameRequestInternal(Lcom/facebook/share/model/GameRequestContent;)V

    return-void
.end method

.method private static SendGameRequestInternal(Lcom/facebook/share/model/GameRequestContent;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: SendGameRequestInternal"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object v0, v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;

    invoke-direct {v1, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;-><init>(Lcom/facebook/share/model/GameRequestContent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static ShareLinkInternal(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
    .registers 3

    const-string p1, "FacebookAndroidGLSocialLib: ShareLinkInternal"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object p1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    iget-object p1, p1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;

    invoke-direct {v0, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;-><init>(Lcom/facebook/share/model/ShareContent;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V
    .registers 9

    const-string v0, "FacebookAndroidGLSocialLib: StartGraphApiRequest"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_requestCallback:Lcom/facebook/GraphRequest$Callback;

    if-nez v0, :cond_10

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$10;

    invoke-direct {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$10;-><init>()V

    sput-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_requestCallback:Lcom/facebook/GraphRequest$Callback;

    :cond_10
    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$11;->$SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_49

    const/4 v0, 0x2

    if-eq p2, v0, :cond_37

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2c

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-static {p2, p0, v0}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    goto :goto_53

    :cond_2c
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-static {p2, p0, v0}, Lcom/facebook/GraphRequest;->newDeleteObjectRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    goto :goto_53

    :cond_37
    new-instance p2, Lcom/facebook/GraphRequest;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    sget-object v5, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_requestCallback:Lcom/facebook/GraphRequest$Callback;

    move-object v0, p2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    move-object p0, p2

    goto :goto_53

    :cond_49
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object p2

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_requestCallback:Lcom/facebook/GraphRequest$Callback;

    invoke-static {p2, p0, v0}, Lcom/facebook/GraphRequest;->newGraphPathRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object p0

    :goto_53
    if-eqz p1, :cond_58

    invoke-virtual {p0, p1}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    :cond_58
    invoke-virtual {p0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    return-void
.end method

.method public static UploadVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "FacebookAndroidGLSocialLib: UploadVideo"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "File does not exist!"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "Title must be defined!"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void

    :cond_22
    const/high16 p0, 0x10000000

    :try_start_24
    invoke-static {v0, p0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_28} :catch_5c

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "title"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "description"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_49

    const-string p0, "privacy"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_49
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_54

    const-string p0, "contentType"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_54
    sget-object p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->POST:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string p1, "me/videos"

    invoke-static {p1, v1, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V

    return-void

    :catch_5c
    const-string p0, "File not found!"

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterLoginResponse()V

    return-void
.end method

.method static synthetic access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_instance:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/widget/ShareDialog;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterShareResponse(Lcom/facebook/share/widget/ShareDialog;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/widget/GameRequestDialog;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterGameRequestResponse(Lcom/facebook/share/widget/GameRequestDialog;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/GraphResponse;)V
    .registers 1

    invoke-static {p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->HandleGraphApiResponse(Lcom/facebook/GraphResponse;)V

    return-void
.end method

.method public static native nativeOnFBDataLoad(Ljava/lang/String;)V
.end method

.method public static native nativeOnFBDialogDidComplete()V
.end method

.method public static native nativeOnFBDialogDidNotComplete()V
.end method

.method public static native nativeOnFBFailWithError(Ljava/lang/String;)V
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    const-string v0, "FacebookAndroidGLSocialLib: onActivityResult"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: requestCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: resultCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->s_callbackManager:Lcom/facebook/CallbackManager;

    if-eqz v0, :cond_35

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    goto :goto_3a

    :cond_35
    const-string p1, "FacebookAndroidGLSocialLib: CallbackManager is invalid and onActivityResult can\'t be handled"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Fatal_Error(Ljava/lang/String;)V

    :goto_3a
    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass1 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$1)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$1;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->Logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->logOut()V

    const-string v0, "Logged out successfully"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass10 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$10)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$10;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->StartGraphApiRequest(Ljava/lang/String;Landroid/os/Bundle;Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 3

    const-string v0, "FacebookAndroidGLSocialLib: StartGraphApiRequest - onCompleted"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$600(Lcom/facebook/GraphResponse;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass11 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$11)
.class synthetic Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$11;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->values()[Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$11;->$SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION:[I

    :try_start_9
    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$11;->$SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION:[I

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->POST:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$11;->$SwitchMap$com$gameloft$GLSocialLib$facebook$FacebookAndroidGLSocialLib$GAPI_OPERATION:[I

    sget-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->DELETE:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass2 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$2)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$2;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->ReauthorizePermissions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$000()V

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->reauthorizeDataAccess(Landroid/app/Activity;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass3 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$3)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->FetchDeferredAppLinkData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;

    invoke-direct {v1, p0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;-><init>(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;)V

    invoke-static {v0, v1}, Lcom/facebook/applinks/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Lcom/facebook/applinks/AppLinkData$CompletionHandler;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass3.AnonymousClass1 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$3$1)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/applinks/AppLinkData$CompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;


# direct methods
.method constructor <init>(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3$1;->this$0:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeferredAppLinkDataFetched(Lcom/facebook/applinks/AppLinkData;)V
    .registers 3

    if-eqz p1, :cond_f

    const-string v0, "FacebookAndroidGLSocialLib: onDeferredAppLinkDataFetched has appLinkData"

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/applinks/AppLinkData;->getTargetUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    goto :goto_14

    :cond_f
    const-string p1, "FacebookAndroidGLSocialLib: onDeferredAppLinkDataFetched no appLinkData"

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/ConsoleAndroidGLSocialLib;->Log_Debug(Ljava/lang/String;)V

    :goto_14
    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass4 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$4)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$4;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterLoginResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidNotComplete()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: RegisterLoginResponse with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidComplete()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$4;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass5 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$5)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$5;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->LoginInternal(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$permissions:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$5;->val$permissions:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$000()V

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$300()Landroid/content/Context;

    move-result-object v0

    const-string v1, "uimode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    sget-object v1, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/login/LoginManager;->setLoginBehavior(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    :cond_1f
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$5;->val$permissions:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->logInWithReadPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass6 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$6)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$6;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterShareResponse(Lcom/facebook/share/widget/ShareDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidNotComplete()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: RegisterShareResponse with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidComplete()V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$6;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass7 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$7)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->ShareLinkInternal(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Lcom/facebook/share/model/ShareContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/model/ShareContent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;->val$content:Lcom/facebook/share/model/ShareContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/facebook/share/widget/ShareDialog;

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$400(Lcom/facebook/share/widget/ShareDialog;)V

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$7;->val$content:Lcom/facebook/share/model/ShareContent;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass8 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$8)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$8;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->RegisterGameRequestResponse(Lcom/facebook/share/widget/GameRequestDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/share/widget/GameRequestDialog$Result;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 1

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDialogDidNotComplete()V

    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: RegisterGameRequestResponse with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/share/widget/GameRequestDialog$Result;->getRequestRecipients()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    :cond_1d
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "to"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBDataLoad(Ljava/lang/String;)V
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_2f

    goto :goto_48

    :catch_2f
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookAndroidGLSocialLib: RegisterGameRequestResponse with error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->nativeOnFBFailWithError(Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/facebook/share/widget/GameRequestDialog$Result;

    invoke-virtual {p0, p1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$8;->onSuccess(Lcom/facebook/share/widget/GameRequestDialog$Result;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.AnonymousClass9 (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$9)
.class Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;
.super Ljava/lang/Object;
.source "FacebookAndroidGLSocialLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->SendGameRequestInternal(Lcom/facebook/share/model/GameRequestContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$requestContent:Lcom/facebook/share/model/GameRequestContent;


# direct methods
.method constructor <init>(Lcom/facebook/share/model/GameRequestContent;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;->val$requestContent:Lcom/facebook/share/model/GameRequestContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Lcom/facebook/share/widget/GameRequestDialog;

    invoke-static {}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$100()Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$200(Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/share/widget/GameRequestDialog;-><init>(Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;->access$500(Lcom/facebook/share/widget/GameRequestDialog;)V

    iget-object v1, p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$9;->val$requestContent:Lcom/facebook/share/model/GameRequestContent;

    invoke-virtual {v0, v1}, Lcom/facebook/internal/FacebookDialogBase;->show(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib.GAPI_OPERATION (com.gameloft.GLSocialLib.facebook.FacebookAndroidGLSocialLib$GAPI_OPERATION)
.class final enum Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;
.super Ljava/lang/Enum;
.source "FacebookAndroidGLSocialLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "GAPI_OPERATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

.field public static final enum DELETE:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

.field public static final enum GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

.field public static final enum POST:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->GET:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    new-instance v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->POST:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    new-instance v3, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const-string v5, "DELETE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->DELETE:Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->$VALUES:[Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;
    .registers 2

    const-class v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    return-object p0
.end method

.method public static values()[Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;
    .registers 1

    sget-object v0, Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->$VALUES:[Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    invoke-virtual {v0}, [Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gameloft/GLSocialLib/facebook/FacebookAndroidGLSocialLib$GAPI_OPERATION;

    return-object v0
.end method
