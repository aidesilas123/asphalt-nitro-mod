###### Class com.kidoz.sdk.api.general.utils.KidozParams (com.kidoz.sdk.api.general.utils.KidozParams)
.class public Lcom/kidoz/sdk/api/general/utils/KidozParams;
.super Ljava/lang/Object;
.source "KidozParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;
    }
.end annotation


# static fields
.field private static final ACTUAL_SDK_VERSION:Ljava/lang/String; = "actual_sdk_version"

.field private static final APP_SESSION_ID:Ljava/lang/String; = "appSessionID"

.field private static final APP_VERSION_CODE:Ljava/lang/String; = "app_version_code"

.field private static final APP_VERSION_NAME:Ljava/lang/String; = "app_version_name"

.field private static final AUTH_TOKEN:Ljava/lang/String; = "auth_token"

.field private static final CACHE_BUSTER:Ljava/lang/String; = "cb"

.field public static final CARRIER_NAME:Ljava/lang/String; = "carrier_name"

.field private static final DEVICE_HASH:Ljava/lang/String; = "device_hash"

.field private static final DEVICE_LANG:Ljava/lang/String; = "device_lang"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "device_type"

.field private static final DPI:Ljava/lang/String; = "dpi"

.field public static final EXTENSION_TYPE:Ljava/lang/String; = "ext"

.field public static final EXTENSION_VERSION:Ljava/lang/String; = "ext_version"

.field private static final MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field private static final MODEL:Ljava/lang/String; = "model"

.field public static final NETWORK_TYPE:Ljava/lang/String; = "network_type"

.field private static final OS_TYPE:Ljava/lang/String; = "os_type"

.field private static final OS_VERSION:Ljava/lang/String; = "os_version"

.field private static final OVERRIDE_WATERFALL_URL:Ljava/lang/String; = "waterfall_url"

.field private static final PACKAGE_ID:Ljava/lang/String; = "package_id"

.field private static final PUBLISHER_ID:Ljava/lang/String; = "publisher_id"

.field private static final RESOLUTION_HEIGHT:Ljava/lang/String; = "resolution_height"

.field private static final RESOLUTION_WIDTH:Ljava/lang/String; = "resolution_width"

.field private static final SCREEN_CATEGORY:Ljava/lang/String; = "screen_category"

.field private static final SCREEN_SIZE:Ljava/lang/String; = "screen_size"

.field private static final SDK_VERSION:Ljava/lang/String; = "sdk_version"

.field private static final STYLE_ID:Ljava/lang/String; = "style_id"

.field private static final WEBVIEW_VERSION:Ljava/lang/String; = "webview_version"

.field private static final WIDGET_TYPE:Ljava/lang/String; = "widget_type"


# instance fields
.field private mActualSdkVersion:Ljava/lang/String;

.field private mAppSessionId:Ljava/lang/String;

.field private mAppVersionCode:Ljava/lang/String;

.field private mAppVersionName:Ljava/lang/String;

.field private mAuthToken:Ljava/lang/String;

.field private mCachBuster:Ljava/lang/String;

.field private mCarrierName:Ljava/lang/String;

.field private mDeviceHash:Ljava/lang/String;

.field private mDeviceLang:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mDpi:Ljava/lang/String;

.field private mExtensionType:Ljava/lang/String;

.field private mExtensionVersion:Ljava/lang/String;

.field private mGid:Ljava/lang/String;

.field private mManufacturer:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNetworkType:Ljava/lang/String;

.field private mOsType:Ljava/lang/String;

.field private mOsVersion:Ljava/lang/String;

.field private mOverrideWaterfallUrl:Ljava/lang/String;

.field private mPackageId:Ljava/lang/String;

.field private mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPublisherId:Ljava/lang/String;

.field private mResolutionHeight:Ljava/lang/String;

.field private mResolutionWidth:Ljava/lang/String;

.field private mScreenCategory:Ljava/lang/String;

.field private mScreenSize:Ljava/lang/String;

.field private mSdkVersion:Ljava/lang/String;

.field private mStyleId:Ljava/lang/String;

.field private mWebviewVersion:Ljava/lang/String;

.field private mWidgetType:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$000(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mPublisherId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$100(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAuthToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$200(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mPackageId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$300(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mSdkVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$400(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mActualSdkVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$500(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOsVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$600(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOsType:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$700(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mExtensionType:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$800(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mExtensionVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$900(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mNetworkType:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1000(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAppVersionCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1100(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAppVersionName:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1200(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDeviceType:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1300(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDeviceLang:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1400(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mWebviewVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1500(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDeviceHash:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1600(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mResolutionHeight:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1700(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mResolutionWidth:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1800(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mScreenSize:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$1900(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDpi:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2000(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mScreenCategory:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2100(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mManufacturer:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2200(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mModel:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2300(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mCarrierName:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2400(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mWidgetType:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2500(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mCachBuster:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2600(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mStyleId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2700(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAppSessionId:Ljava/lang/String;

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;->access$2800(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOverrideWaterfallUrl:Ljava/lang/String;

    invoke-direct {p0}, Lcom/kidoz/sdk/api/general/utils/KidozParams;->buildParamsMap()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;Lcom/kidoz/sdk/api/general/utils/KidozParams$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kidoz/sdk/api/general/utils/KidozParams;-><init>(Lcom/kidoz/sdk/api/general/utils/KidozParams$ParamBuilder;)V

    return-void
.end method

.method private buildParamsMap()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mPublisherId:Ljava/lang/String;

    const-string v2, "publisher_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAuthToken:Ljava/lang/String;

    const-string v2, "auth_token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mPackageId:Ljava/lang/String;

    const-string v2, "package_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mSdkVersion:Ljava/lang/String;

    const-string v2, "sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mActualSdkVersion:Ljava/lang/String;

    const-string v2, "actual_sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOsVersion:Ljava/lang/String;

    const-string v2, "os_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOsType:Ljava/lang/String;

    const-string v2, "os_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mExtensionType:Ljava/lang/String;

    const-string v2, "ext"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mExtensionVersion:Ljava/lang/String;

    const-string v2, "ext_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mNetworkType:Ljava/lang/String;

    const-string v2, "network_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAppVersionCode:Ljava/lang/String;

    const-string v2, "app_version_code"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAppVersionName:Ljava/lang/String;

    const-string v2, "app_version_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDeviceType:Ljava/lang/String;

    const-string v2, "device_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDeviceLang:Ljava/lang/String;

    const-string v2, "device_lang"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mWebviewVersion:Ljava/lang/String;

    const-string v2, "webview_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDeviceHash:Ljava/lang/String;

    const-string v2, "device_hash"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mResolutionHeight:Ljava/lang/String;

    const-string v2, "resolution_height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mResolutionWidth:Ljava/lang/String;

    const-string v2, "resolution_width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mScreenSize:Ljava/lang/String;

    const-string v2, "screen_size"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mDpi:Ljava/lang/String;

    const-string v2, "dpi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mScreenCategory:Ljava/lang/String;

    const-string v2, "screen_category"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mManufacturer:Ljava/lang/String;

    const-string v2, "manufacturer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mModel:Ljava/lang/String;

    const-string v2, "model"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mCarrierName:Ljava/lang/String;

    const-string v2, "carrier_name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mWidgetType:Ljava/lang/String;

    const-string v2, "widget_type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mCachBuster:Ljava/lang/String;

    const-string v2, "cb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mStyleId:Ljava/lang/String;

    const-string v2, "style_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mAppSessionId:Ljava/lang/String;

    const-string v2, "appSessionID"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isTestApp()Z

    move-result v0

    if-eqz v0, :cond_118

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOverrideWaterfallUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_118

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mOverrideWaterfallUrl:Ljava/lang/String;

    const-string v2, "waterfall_url"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_118
    return-void
.end method


# virtual methods
.method public getParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/kidoz/sdk/api/general/utils/KidozParams;->mParamsMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
