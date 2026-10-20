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
