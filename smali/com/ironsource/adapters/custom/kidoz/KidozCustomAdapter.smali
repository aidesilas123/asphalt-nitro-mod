###### Class com.json.adapters.custom.kidoz.KidozCustomAdapter (com.ironsource.adapters.custom.kidoz.KidozCustomAdapter)
.class public Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;
.super Lcom/ironsource/mediationsdk/adunit/adapter/BaseAdapter;
.source "KidozCustomAdapter.java"


# static fields
.field public static final PUBLISHER_ID_KEY:Ljava/lang/String; = "publisherId"

.field public static final TAG:Ljava/lang/String; = "KidozCustomAdapter"

.field public static final TOKEN_KEY:Ljava/lang/String; = "token"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.2.0"

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozSDKInfo;->SDK_VERSION_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 8

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;->TAG:Ljava/lang/String;

    const-string v1, "KidozCustomAdapter init called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/kidoz/sdk/api/KidozSDK;->isInitialised()Z

    move-result v1

    if-nez v1, :cond_5c

    const-string v1, "publisherId"

    invoke-virtual {p1, v1}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KidozCustomAdapter publisherId::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " token::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "ironsource"

    const-string v2, "1.2.0"

    invoke-static {v0, v2}, Lcom/kidoz/sdk/api/KidozSDK;->setExtension(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;

    invoke-direct {v0, p0, p3}, Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter$1;-><init>(Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V

    invoke-static {v0}, Lcom/kidoz/sdk/api/KidozSDK;->setSDKListener(Lcom/kidoz/sdk/api/interfaces/SDKEventListener;)V

    invoke-static {p2, v1, p1}, Lcom/kidoz/sdk/api/KidozSDK;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_66

    :cond_54
    const/16 p1, 0x3ea

    const-string p2, "Missing Publisher Id or Token"

    invoke-interface {p3, p1, p2}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitFailed(ILjava/lang/String;)V

    goto :goto_66

    :cond_5c
    const-string p1, "KidozCustomAdapter Already initialized"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_66

    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    :cond_66
    :goto_66
    return-void
.end method
