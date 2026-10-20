###### Class com.fyber.inneractive.sdk.dv.b (com.fyber.inneractive.sdk.dv.b)
.class public Lcom/fyber/inneractive/sdk/dv/b;
.super Lcom/fyber/inneractive/sdk/flow/h;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/dv/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/inneractive/sdk/flow/h<",
        "Lcom/fyber/inneractive/sdk/dv/f;",
        "Lcom/fyber/inneractive/sdk/dv/a;",
        ">;",
        "Lcom/fyber/inneractive/sdk/dv/d;"
    }
.end annotation


# instance fields
.field public final m:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/flow/h;-><init>()V

    const-string v0, "com.google.android.gms.ads.InterstitialAd"

    invoke-static {v0}, Lcom/fyber/inneractive/sdk/util/l;->a(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/inneractive/sdk/dv/b;->m:Z

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/a;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/dv/a;->a()V

    :cond_9
    invoke-super {p0}, Lcom/fyber/inneractive/sdk/flow/h;->a()V

    return-void
.end method

.method public b()V
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    if-eqz v0, :cond_9

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/a;

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/dv/a;->a()V

    :cond_9
    invoke-super {p0}, Lcom/fyber/inneractive/sdk/flow/h;->b()V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()V
    .registers 9

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    if-eqz v0, :cond_e5

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/f;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/e;->s:Lcom/fyber/inneractive/sdk/dv/g;

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->a:Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/fyber/inneractive/sdk/external/InneractiveAdRequest;->getMuteVideo()Z

    move-result v0

    :try_start_12
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setAppMuted(Z)V

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    goto :goto_1b

    :cond_19
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1b
    invoke-static {v0}, Lcom/google/android/gms/ads/MobileAds;->setAppVolume(F)V
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_1e

    :catchall_1e
    :cond_1e
    iget-object v0, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v0, Lcom/fyber/inneractive/sdk/dv/f;

    iget-object v1, v0, Lcom/fyber/inneractive/sdk/response/e;->n:Lcom/fyber/inneractive/sdk/config/enums/UnitDisplayType;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/response/e;->s:Lcom/fyber/inneractive/sdk/dv/g;

    iget-object v0, v0, Lcom/fyber/inneractive/sdk/dv/g;->a:Lcom/google/android/gms/ads/query/QueryInfo;

    sget-object v2, Lcom/fyber/inneractive/sdk/dv/b$a;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_72

    const/4 v3, 0x2

    if-eq v1, v3, :cond_62

    const/4 v3, 0x3

    if-eq v1, v3, :cond_62

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3e

    const/4 v1, 0x0

    goto :goto_95

    :cond_3e
    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/dv/b;->m:Z

    if-eqz v1, :cond_52

    new-instance v1, Lcom/fyber/inneractive/sdk/dv/rewarded/a;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->g()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/h;->g:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/dv/rewarded/a;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    goto :goto_95

    :cond_52
    new-instance v1, Lcom/fyber/inneractive/sdk/dv/rewarded/b;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->g()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/h;->g:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/dv/rewarded/b;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    goto :goto_95

    :cond_62
    new-instance v1, Lcom/fyber/inneractive/sdk/dv/banner/a;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->g()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/h;->g:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/dv/banner/a;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    goto :goto_95

    :cond_72
    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/dv/b;->m:Z

    if-eqz v1, :cond_86

    new-instance v1, Lcom/fyber/inneractive/sdk/dv/interstitial/b;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->g()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/h;->g:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/dv/interstitial/b;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    goto :goto_95

    :cond_86
    new-instance v1, Lcom/fyber/inneractive/sdk/dv/interstitial/c;

    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/flow/h;->g()Lcom/fyber/inneractive/sdk/config/b0;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/h;->g:Lcom/fyber/inneractive/sdk/config/global/s;

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v5, Lcom/fyber/inneractive/sdk/dv/f;

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/inneractive/sdk/dv/interstitial/c;-><init>(Lcom/fyber/inneractive/sdk/config/b0;Lcom/fyber/inneractive/sdk/config/global/s;Lcom/fyber/inneractive/sdk/dv/f;)V

    :goto_95
    iput-object v1, p0, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    if-eqz v0, :cond_e1

    if-eqz v1, :cond_e1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    if-eqz v1, :cond_e1

    :try_start_9f
    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V
    :try_end_a4
    .catchall {:try_start_9f .. :try_end_a4} :catchall_dd

    :try_start_a4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setAdString"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v4, Lcom/fyber/inneractive/sdk/dv/f;

    iget-object v4, v4, Lcom/fyber/inneractive/sdk/dv/f;->J:Ljava/lang/String;

    aput-object v4, v2, v7

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_c2} :catch_c3
    .catchall {:try_start_a4 .. :try_end_c2} :catchall_dd

    goto :goto_d1

    :catch_c3
    :try_start_c3
    new-instance v2, Lcom/google/android/gms/ads/query/AdInfo;

    iget-object v3, p0, Lcom/fyber/inneractive/sdk/flow/h;->b:Lcom/fyber/inneractive/sdk/response/e;

    check-cast v3, Lcom/fyber/inneractive/sdk/dv/f;

    iget-object v3, v3, Lcom/fyber/inneractive/sdk/dv/f;->J:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/ads/query/AdInfo;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/AdRequest$Builder;->setAdInfo(Lcom/google/android/gms/ads/query/AdInfo;)Lcom/google/android/gms/ads/AdRequest$Builder;

    :goto_d1
    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/flow/h;->c:Lcom/fyber/inneractive/sdk/flow/q;

    check-cast v1, Lcom/fyber/inneractive/sdk/dv/a;

    invoke-virtual {v1, v0, p0}, Lcom/fyber/inneractive/sdk/dv/a;->a(Lcom/google/android/gms/ads/AdRequest;Lcom/fyber/inneractive/sdk/dv/d;)V
    :try_end_dc
    .catchall {:try_start_c3 .. :try_end_dc} :catchall_dd

    goto :goto_e8

    :catchall_dd
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/dv/b;->l()V

    goto :goto_e8

    :cond_e1
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/dv/b;->l()V

    goto :goto_e8

    :cond_e5
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/dv/b;->l()V

    :goto_e8
    return-void
.end method

.method public l()V
    .registers 4

    new-instance v0, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;

    sget-object v1, Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;->SDK_INTERNAL_ERROR:Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;

    sget-object v2, Lcom/fyber/inneractive/sdk/flow/g;->NETWORK_ERROR:Lcom/fyber/inneractive/sdk/flow/g;

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;-><init>(Lcom/fyber/inneractive/sdk/external/InneractiveErrorCode;Lcom/fyber/inneractive/sdk/flow/g;)V

    invoke-virtual {p0, v0}, Lcom/fyber/inneractive/sdk/flow/h;->a(Lcom/fyber/inneractive/sdk/external/InneractiveInfrastructureError;)V

    return-void
.end method
