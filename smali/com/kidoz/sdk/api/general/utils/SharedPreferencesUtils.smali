###### Class com.kidoz.sdk.api.general.utils.SharedPreferencesUtils (com.kidoz.sdk.api.general.utils.SharedPreferencesUtils)
.class public Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;
.super Ljava/lang/Object;
.source "SharedPreferencesUtils.java"


# static fields
.field private static final SDK_SHARED_PREFERENCES_FILE_NAME:Ljava/lang/String; = "SDK_SHARED_PREFERENCES_FILE_NAME"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    const-string v0, "SDK_SHARED_PREFERENCES_FILE_NAME"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static hasBooleanSharedPreferencesData(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    :try_start_5
    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    move v0, p0

    :catch_e
    :cond_e
    return v0
.end method

.method public static loadBooleanValue(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    :try_start_5
    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    move v0, p0

    :catch_e
    :cond_e
    return v0
.end method

.method public static loadLongValue(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 4

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static loadStringValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    :try_start_5
    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_e

    move-object v0, p0

    :catch_e
    :cond_e
    return-object v0
.end method

.method public static removeSharedPreferencesData(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_12

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_12
    return-void
.end method

.method public static saveBooleanValue(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3

    if-eqz p0, :cond_12

    :try_start_2
    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p1, :cond_12

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method

.method public static saveLongValue(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 4

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static saveStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_12

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/SharedPreferencesUtils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p1, :cond_12

    :try_start_8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_12} :catch_12

    :catch_12
    :cond_12
    return-void
.end method
