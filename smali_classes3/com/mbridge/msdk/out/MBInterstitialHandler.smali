###### Class com.mbridge.msdk.out.MBInterstitialHandler (com.mbridge.msdk.out.MBInterstitialHandler)
.class public Lcom/mbridge/msdk/out/MBInterstitialHandler;
.super Ljava/lang/Object;
.source "MBInterstitialHandler.java"


# instance fields
.field private mController:Lcom/mbridge/msdk/interstitial/c/a;

.field private unitId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/mbridge/msdk/interstitial/c/a;

    invoke-direct {v0}, Lcom/mbridge/msdk/interstitial/c/a;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    :cond_e
    if-eqz p2, :cond_33

    const-string v0, "unit_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->unitId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/af;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/interstitial/c/a;->a(Landroid/content/Context;Ljava/util/Map;)Z

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_4b

    if-eqz p1, :cond_4b

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/controller/b;->b(Landroid/content/Context;)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public getCreativeIdWithUnitId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/c/a;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/c/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const-string v0, ""

    return-object v0
.end method

.method public preload()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/c/a;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public setInterstitialListener(Lcom/mbridge/msdk/out/InterstitialListener;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/interstitial/c/a;->a(Lcom/mbridge/msdk/out/InterstitialListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public show()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/out/MBInterstitialHandler;->mController:Lcom/mbridge/msdk/interstitial/c/a;

    invoke-virtual {v0}, Lcom/mbridge/msdk/interstitial/c/a;->d()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method
