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

###### Class com.kidoz.sdk.api.general.utils.TestUtils.Environments (com.kidoz.sdk.api.general.utils.TestUtils$Environments)
.class public final enum Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;
.super Ljava/lang/Enum;
.source "TestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kidoz/sdk/api/general/utils/TestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

.field public static final enum dev:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

.field public static final enum ext_qa:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

.field public static final enum production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

.field public static final enum qa:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;


# instance fields
.field envUrl:Ljava/lang/String;

.field label:Ljava/lang/String;

.field testWaterfallUrl:Ljava/lang/String;

.field waterfallUrl:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->qa:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->ext_qa:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->dev:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 15

    new-instance v7, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const-string v1, "production"

    const/4 v2, 0x0

    const-string v3, "Prod"

    const-string v4, "https://sdk-api.kidoz.net"

    const-string v5, "https://vast.kidoz.net"

    const-string v6, "https://prebid-adapter.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const-string v9, "qa"

    const/4 v10, 0x1

    const-string v11, "QA"

    const-string v12, "https://sdk-api-test.kidoz.net"

    const-string v13, "https://vast-test.kidoz.net"

    const-string v14, "https://prebid-adapter-test.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->qa:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const-string v2, "ext_qa"

    const/4 v3, 0x2

    const-string v4, "Ext. QA"

    const-string v5, "https://sdk-api-utest.kidoz.net"

    const-string v6, "https://vast-utest.kidoz.net"

    const-string v7, "https://prebid-adapter-utest.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->ext_qa:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    new-instance v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    const-string v9, "dev"

    const/4 v10, 0x3

    const-string v11, "Dev"

    const-string v12, "https://sdk-api.devenv.kidoz.net"

    const-string v13, "https://devenv.kidoz.net/"

    const-string v14, "https://prebid-adapter.devenv.kidoz.net/api/test-waterfall?offer_id={offer_id_placeholder}&"

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->dev:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->$values()[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    move-result-object v0

    sput-object v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->$VALUES:[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->label:Ljava/lang/String;

    iput-object p4, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->envUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->waterfallUrl:Ljava/lang/String;

    iput-object p6, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->testWaterfallUrl:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;
    .registers 1

    :try_start_0
    invoke-static {p0}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    sget-object p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->production:Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    return-object p0
.end method

.method public static getEnvLabels()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->values()[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_19

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;
    .registers 2

    const-class v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    return-object p0
.end method

.method public static values()[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;
    .registers 1

    sget-object v0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->$VALUES:[Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    invoke-virtual {v0}, [Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;

    return-object v0
.end method


# virtual methods
.method public getEnvUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->envUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getTestWaterfallUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/general/utils/TestUtils$Environments;->testWaterfallUrl:Ljava/lang/String;

    return-object v0
.end method
