###### Class com.json.mediationsdk.ads.nativead.c (com.ironsource.mediationsdk.ads.nativead.c)
.class public final synthetic Lcom/ironsource/mediationsdk/ads/nativead/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/mediationsdk/ads/nativead/c;->a:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/ads/nativead/c;->a:Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;->j(Lcom/ironsource/mediationsdk/ads/nativead/LevelPlayNativeAd;)V

    return-void
.end method
