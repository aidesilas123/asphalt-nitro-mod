###### Class com.fyber.inneractive.sdk.config.w (com.fyber.inneractive.sdk.config.w)
.class public Lcom/fyber/inneractive/sdk/config/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/fyber/inneractive/sdk/config/v;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    goto :goto_1b

    :catch_f
    move-exception p0

    invoke-static {p0}, Lcom/fyber/inneractive/sdk/util/q;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    new-array p0, v0, [Ljava/lang/Object;

    const-string v2, "Advertising ID is not available. Please add Google Play Services library (v 4.0+) to improve your ad targeting. (relevant for devices running Android API 2.3 and above)"

    invoke-static {v2, p0}, Lcom/fyber/inneractive/sdk/util/IAlog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    :goto_1b
    check-cast p1, Lcom/fyber/inneractive/sdk/config/l;

    monitor-enter p1

    :try_start_1e
    iget-object v2, p1, Lcom/fyber/inneractive/sdk/config/l;->b:Lcom/fyber/inneractive/sdk/config/l$c;

    iput-object v1, v2, Lcom/fyber/inneractive/sdk/config/l$c;->a:Ljava/lang/String;

    iput-boolean p0, v2, Lcom/fyber/inneractive/sdk/config/l$c;->b:Z

    iput-boolean v0, v2, Lcom/fyber/inneractive/sdk/config/l$c;->c:Z
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_28

    monitor-exit p1

    return-void

    :catchall_28
    move-exception p0

    monitor-exit p1

    throw p0
.end method
