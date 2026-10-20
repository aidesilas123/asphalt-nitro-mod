###### Class com.kidoz.sdk.api.general.assets_handling.StringAssetsUtils (com.kidoz.sdk.api.general.assets_handling.StringAssetsUtils)
.class public Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;
.super Ljava/lang/Object;
.source "StringAssetsUtils.java"


# static fields
.field public static final PLD_TITLE_ACTIVATE:Ljava/lang/String; = "parentalLockDialogTitleActivate"

.field public static final PLD_TITLE_DEACTIVATE:Ljava/lang/String; = "parentalLockDialogTitleDeActivate"

.field public static final PLD_TITLE_FOR_GOOGLE_PLAY:Ljava/lang/String; = "parentalLockDialogTitleForGooglePlay"

.field public static final PLD_TITLE_GOOGLE_PLAY_GATE_NEW:Ljava/lang/String; = "parentalLockDialogMessageGooglePlayGateNew"

.field public static final PLD_TITLE_LOCK_ACTIVATED:Ljava/lang/String; = "parentalLockDialogLockActivatedTitle"

.field public static final PLD_TITLE_LOCK_ACTIVATION_NEW:Ljava/lang/String; = "parentalLockDialogMessageParentalLockActivationNew"

.field public static final PLD_TITLE_LOCK_DEACTIVATED:Ljava/lang/String; = "parentalLockDialogLockDeactivatedTitle"

.field public static final PLD_TITLE_LOCK_DEACTIVATION_NEW:Ljava/lang/String; = "parentalLockDialogMessageParentalLockDeactivationNew"

.field public static final PLD_TITLE_WRONG_SELECTION:Ljava/lang/String; = "parentalLockDialogWrongSelection"

.field public static final PLD_TITLE_WRONG_SELECTION_TRY_AGAIN:Ljava/lang/String; = "parentalLockDialogWrongSelectionTryAgain"

.field private static final TAG:Ljava/lang/String; = "StringAssetsUtils"

.field private static mLang:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

.method public static getLangString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->initStrings(Landroid/content/Context;)V

    sget-object p0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_16

    :cond_14
    const-string p0, ""

    :goto_16
    return-object p0
.end method

.method private static initStrings(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9e

    :cond_a
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->loadStringsFile(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1c

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_1c
    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogTitleActivate"

    const-string v2, "Activate\nParental Lock?"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogTitleDeActivate"

    const-string v2, "Deactivate\nParental Lock?"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogTitleForGooglePlay"

    const-string v2, "Parental Lock"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogWrongSelection"

    const-string v2, "Wrong selection..."

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogWrongSelectionTryAgain"

    const-string v2, "TRY AGAIN"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogLockActivatedTitle"

    const-string v2, "LOCK ACTIVATED"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogLockDeactivatedTitle"

    const-string v2, "LOCK DEACTIVATED"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogMessageParentalLockActivationNew"

    const-string v2, "To block external links solve the equation"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogMessageParentalLockDeactivationNew"

    const-string v2, "To enable external links solve the equation"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->mLang:Ljava/util/HashMap;

    const-string v1, "parentalLockDialogMessageGooglePlayGateNew"

    const-string v2, "Solve the equation to access content"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9e
    return-void
.end method

.method public static loadStringsFile(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "StringsFile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_7
    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object p0

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    :goto_19
    if-eqz v2, :cond_23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_19

    :cond_23
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2f} :catch_30

    goto :goto_4c

    :catch_30
    move-exception p0

    sget-object v0, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error when trying to load strings file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_4c
    return-object p0
.end method

.method public static parseStrings(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    if-eqz p1, :cond_36

    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_36

    const-string v0, "strings"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-static {p0, p1}, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->saveStringsFile(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    goto :goto_36

    :catch_1b
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to parse strings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    :goto_36
    const/4 p0, 0x0

    return p0
.end method

.method private static saveStringsFile(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "StringsFile"

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object p0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_29

    goto :goto_44

    :catch_29
    move-exception p0

    sget-object p1, Lcom/kidoz/sdk/api/general/assets_handling/StringAssetsUtils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when trying to create strings file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/kidoz/sdk/api/general/utils/SDKLogger;->printErrorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_44
    return-void
.end method
