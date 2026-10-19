###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass6.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$6$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerClosed()V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerImpression()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerLoaded()V

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-boolean v1, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->val$autoShowOnLoad:Z

    if-eqz v1, :cond_12

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->showBannerAd()V

    :cond_12
    return-void
.end method

.method public onAdShown()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$6;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onBannerShown()V

    return-void
.end method
