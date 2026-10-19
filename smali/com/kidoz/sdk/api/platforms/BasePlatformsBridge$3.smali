###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass3 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$3)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->loadInterstitialAd(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

.field final synthetic val$autoShowOnLoad:Z


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Z)V
    .registers 3

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iput-boolean p2, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->val$autoShowOnLoad:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;

    invoke-direct {v1, p0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3$1;-><init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$3;)V

    invoke-static {v0, v1}, Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAd;->load(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/interstitial/InterstitialAdCallback;)V

    return-void
.end method
