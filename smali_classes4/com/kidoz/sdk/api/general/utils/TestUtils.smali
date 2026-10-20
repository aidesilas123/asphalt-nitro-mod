###### Class com.kidoz.sdk.api.general.utils.TestUtils (com.kidoz.sdk.api.general.utils.TestUtils)
.class public Lcom/kidoz/sdk/api/general/utils/TestUtils;
.super Ljava/lang/Object;
.source "TestUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;
    }
.end annotation


# static fields
.field public static final API_URL_KEY:Ljava/lang/String; = "API_URL_KEY"

.field public static final MULTI_ENV_PREFS:Ljava/lang/String; = "MULTI_ENV_SHARED_PREFS_NAME"

.field public static final OFFER_IDS_PLACEHOLDER:Ljava/lang/String; = "{offer_id_placeholder}"

.field public static final TEST_WATERFALL_URL_KEY:Ljava/lang/String; = "TEST_WATERFALL_URL_KEY"

.field public static final WATERFALL_URL_KEY:Ljava/lang/String; = "WATERFALL_URL_KEY"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnvApiUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "API_URL_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "WATERFALL_URL_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "MULTI_ENV_SHARED_PREFS_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getTestWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "TEST_WATERFALL_URL_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isMultiEnv()Z
    .registers 1

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->isMultiEnv()Z

    move-result v0

    return v0
.end method

.method public static isTestApp()Z
    .registers 1

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->isMultiEnv()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/ConstantDef;->isTestApp()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public static setCampaignIds(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->setOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1c

    :cond_b
    sget-object v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    iget-object v0, v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->testWaterfallUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getTestWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "{offer_id_placeholder}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->setOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public static setEnvApiUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "API_URL_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setEnvironment(Landroid/content/Context;Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;)V
    .registers 3

    iget-object v0, p1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->envUrl:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->setEnvApiUrl(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->testWaterfallUrl:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->setTestWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static setEnvironment(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->fromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->setEnvironment(Landroid/content/Context;Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;)V

    return-void
.end method

.method public static setOverrideWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "WATERFALL_URL_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static setTestWaterfallUrl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils;->getSharedPreference(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "TEST_WATERFALL_URL_KEY"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
