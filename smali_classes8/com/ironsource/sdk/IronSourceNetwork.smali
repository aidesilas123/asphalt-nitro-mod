###### Class com.json.sdk.IronSourceNetwork (com.ironsource.sdk.IronSourceNetwork)
.class public Lcom/ironsource/sdk/IronSourceNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ironsource/a8;

.field private static b:Lcom/ironsource/ca;

.field private static c:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_11

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Call initSDK first"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized applyConsentInfo(Lorg/json/JSONObject;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_12

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    if-nez p0, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    :try_start_d
    invoke-interface {v1, p0}, Lcom/ironsource/a8;->a(Lorg/json/JSONObject;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_13

    invoke-static {p1}, Lcom/ironsource/p6;->a(Lorg/json/JSONObject;)Lcom/ironsource/d4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/d4;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p0, p2, p3, p4}, Lcom/ironsource/p6;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/ironsource/m6;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/ironsource/o6;->a(Lcom/ironsource/d4;Lcom/ironsource/m6;)V

    :cond_13
    return-void
.end method

.method public static declared-synchronized destroyAd(Lcom/ironsource/s7;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0}, Lcom/ironsource/c8;->b(Lcom/ironsource/s7;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getControllerManager()Lcom/ironsource/sdk/controller/e;
    .registers 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1}, Lcom/ironsource/a8;->a()Lcom/ironsource/sdk/controller/e;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInitListener()Lcom/ironsource/ca;
    .registers 1

    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;

    return-object v0
.end method

.method public static declared-synchronized getOfferWallCredits(Lcom/ironsource/da;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0}, Lcom/ironsource/c8;->a(Lcom/ironsource/da;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRawToken(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/uc;->d()Lcom/ironsource/uc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/uc;->c(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getToken(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/uc;->d()Lcom/ironsource/uc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/uc;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initOfferWall(Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/da;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/c8;->a(Ljava/util/Map;Lcom/ironsource/da;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "IronSourceNetwork"

    const-string p1, "applicationKey is NULL"

    invoke-static {p0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_4f

    monitor-exit v0

    return-void

    :cond_12
    :try_start_12
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    if-nez v1, :cond_4d

    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->setInitSDKParams(Ljava/util/Map;)V

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_4f

    :try_start_1d
    const-string v2, "events"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0, v1, p2, p1, p3}, Lcom/ironsource/sdk/IronSourceNetwork;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_27
    .catchall {:try_start_1d .. :try_end_26} :catchall_4f

    goto :goto_42

    :catch_27
    move-exception p3

    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to init event tracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "IronSourceNetwork"

    invoke-static {v1, p3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    invoke-static {p0, p1, p2}, Lcom/ironsource/u7;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/a8;

    move-result-object p0

    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    sget-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->c:Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_4d
    .catchall {:try_start_28 .. :try_end_4d} :catchall_4f

    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized isAdAvailableForInstance(Lcom/ironsource/s7;)Z
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    if-nez v1, :cond_a

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_a
    :try_start_a
    invoke-interface {v1, p0}, Lcom/ironsource/c8;->a(Lcom/ironsource/s7;)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_10

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAd(Lcom/ironsource/s7;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/s7;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/c8;->a(Lcom/ironsource/s7;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadAdView(Landroid/app/Activity;Lcom/ironsource/s7;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/s7;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/c8;->b(Landroid/app/Activity;Lcom/ironsource/s7;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static onPause(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p0}, Lcom/ironsource/a8;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .registers 2

    sget-object v0, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-interface {v0, p0}, Lcom/ironsource/a8;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public static declared-synchronized release(Landroid/app/Activity;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    invoke-interface {v1, p0}, Lcom/ironsource/a8;->a(Landroid/app/Activity;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_e

    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setInitListener(Lcom/ironsource/ca;)V
    .registers 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->b:Lcom/ironsource/ca;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showAd(Landroid/app/Activity;Lcom/ironsource/s7;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ironsource/s7;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0, p1, p2}, Lcom/ironsource/c8;->a(Landroid/app/Activity;Lcom/ironsource/s7;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized showOfferWall(Landroid/app/Activity;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/sdk/IronSourceNetwork;->a()V

    sget-object v1, Lcom/ironsource/sdk/IronSourceNetwork;->a:Lcom/ironsource/a8;

    invoke-interface {v1, p0, p1}, Lcom/ironsource/c8;->a(Landroid/app/Activity;Ljava/util/Map;)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateConsentInfo(Lorg/json/JSONObject;)V
    .registers 2

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    sput-object p0, Lcom/ironsource/sdk/IronSourceNetwork;->c:Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/ironsource/sdk/IronSourceNetwork;->applyConsentInfo(Lorg/json/JSONObject;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized updateMetadata(Lorg/json/JSONObject;)V
    .registers 3

    const-class v0, Lcom/ironsource/sdk/IronSourceNetwork;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/ironsource/uc;->d()Lcom/ironsource/uc;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ironsource/uc;->b(Lorg/json/JSONObject;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0

    throw p0
.end method
