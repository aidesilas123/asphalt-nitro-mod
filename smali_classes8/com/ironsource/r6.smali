###### Class com.json.r6 (com.ironsource.r6)
.class public final synthetic Lcom/ironsource/r6;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/o9;

.field public final synthetic b:Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

.field public final synthetic c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/o9;Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/o9;

    iput-object p2, p0, Lcom/ironsource/r6;->b:Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

    iput-object p3, p0, Lcom/ironsource/r6;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/r6;->a:Lcom/ironsource/o9;

    iget-object v1, p0, Lcom/ironsource/r6;->b:Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;

    iget-object v2, p0, Lcom/ironsource/r6;->c:Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;

    invoke-static {v0, v1, v2}, Lcom/ironsource/o9;->g0(Lcom/ironsource/o9;Lcom/ironsource/mediationsdk/ads/nativead/AdapterNativeAdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/nativead/AdapterNativeAdViewBinder;)V

    return-void
.end method
