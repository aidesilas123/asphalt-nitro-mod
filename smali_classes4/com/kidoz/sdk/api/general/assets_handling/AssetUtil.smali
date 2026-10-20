###### Class com.kidoz.sdk.api.general.assets_handling.AssetUtil (com.kidoz.sdk.api.general.assets_handling.AssetUtil)
.class public Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;
.super Ljava/lang/Object;
.source "AssetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;
    }
.end annotation


# static fields
.field private static final BANNER_ASSETS:Ljava/lang/String; = "banner"

.field private static final GLOBAL_STYLE_PARAMS:Ljava/lang/String; = "globalStyleParams"

.field private static final INTERSTITIAL_ASSETS:Ljava/lang/String; = "interstitial"

.field private static final PANEL_FAMILY_ASSETS:Ljava/lang/String; = "panelFamily"

.field private static final TAG:Ljava/lang/String; = "AssetUtil"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAssetFile(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_32

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    invoke-static {p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getInnerStoragePathIfPosible(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_32

    invoke-static {p1, v1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->downloadAndSaveFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    goto :goto_33

    :cond_32
    const/4 p0, 0x1

    :goto_33
    return p0
.end method

.method public static createAssetFile2(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_22

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFileName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getInnerStoragePathIfPosible(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_22

    invoke-static {p1, v1}, Lcom/kidoz/sdk/api/server_connect/BaseConnectionClient;->downloadAndSaveFile(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    goto :goto_23

    :cond_22
    const/4 p0, 0x1

    :goto_23
    return p0
.end method

.method private static createAssetFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_13

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method private static createAssetFileName2(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_28

    const-string v0, "/"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    return-object p0
.end method

.method public static deleteAssetFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getInnerStoragePathIfPosible(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_19
    return-void
.end method

.method public static deleteAssetFile2(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_19

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFileName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getInnerStoragePathIfPosible(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_19

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_19
    return-void
.end method

.method public static generateAssetFileImageList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Arr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_9d

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_9d

    if-eqz v1, :cond_9d

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_4a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_9d

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "webp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    const-string v4, "webP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    const-string v4, "WEBP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    goto :goto_82

    :cond_6f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_82
    :goto_82
    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/Utils;->isWebViewSupportWebP()Z

    move-result v4

    if-eqz v4, :cond_9a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    :goto_9a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    :cond_9d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a6
    return-object v0
.end method

.method public static getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    :try_start_3
    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    invoke-static {p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getInnerStoragePathIfPosible(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3b

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_27} :catch_33

    :try_start_27
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2b} :catch_30

    if-nez p0, :cond_2e

    goto :goto_3b

    :cond_2e
    move-object v0, p1

    goto :goto_3b

    :catch_30
    move-exception p0

    move-object v0, p1

    goto :goto_34

    :catch_33
    move-exception p0

    :goto_34
    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;)V

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public static getAssetFile2(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    :try_start_3
    invoke-static {p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFileName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SdkDeviceUtils;->getInnerStoragePathIfPosible(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_20

    :try_start_18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1f

    if-nez p0, :cond_1f

    goto :goto_20

    :catch_1f
    :cond_1f
    move-object v0, p1

    :catch_20
    :cond_20
    :goto_20
    return-object v0
.end method

.method public static loadAsset(Landroid/content/Context;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->generateAssetFileImageList(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_78

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_77

    const/4 v1, 0x1

    if-eqz p1, :cond_5e

    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->getAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    if-eqz v3, :cond_3e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 v3, 0x1

    goto :goto_68

    :cond_3e
    :goto_3e
    if-eqz v3, :cond_53

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_53

    if-eqz v4, :cond_53

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v1, :cond_53

    invoke-static {p0, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->deleteAssetFile(Landroid/content/Context;Ljava/lang/String;)V

    :cond_53
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    goto :goto_68

    :cond_5e
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->createAssetFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    :goto_68
    if-ne v3, v1, :cond_73

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move v2, v3

    goto :goto_78

    :cond_73
    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_c

    :cond_77
    move v2, v1

    :cond_78
    :goto_78
    return v2
.end method

.method public static parseAssets(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8

    const-string v0, "banner"

    const-string v1, "interstitial"

    const-string v2, "globalStyleParams"

    const/4 v3, 0x0

    if-eqz p0, :cond_5a

    if-eqz p1, :cond_5a

    :try_start_b
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v5, 0x1

    if-ne p1, v5, :cond_21

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/StyleParser;->parseGlobalStyleData(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p0

    :goto_1f
    move v3, p0

    goto :goto_5a

    :cond_21
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v5, :cond_30

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/StyleParser;->parseInterstitialData(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p0

    goto :goto_1f

    :cond_30
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v5, :cond_5a

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/StyleParser;->parseBannerData(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3e} :catch_3f

    goto :goto_1f

    :catch_3f
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to parse assets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    return v3
.end method

.method public static parseStyleAsync(Landroid/content/Context;Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;)V
    .registers 4

    new-instance v0, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask;-><init>(Landroid/content/Context;Lcom/kidoz/sdk/api/general/assets_handling/AssetUtil$ParserAsyncTask$IOnStyleParseListener;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 p1, 0x0

    const/16 v1, 0xb

    if-ge p0, v1, :cond_12

    new-array p0, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_19

    :cond_12
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_19
    return-void
.end method
