###### Class com.kidoz.sdk.api.platforms.BasePlatformsBridge.AnonymousClass4.AnonymousClass1 (com.kidoz.sdk.api.platforms.BasePlatformsBridge$4$1)
.class Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;
.super Ljava/lang/Object;
.source "BasePlatformsBridge.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;


# direct methods
.method constructor <init>(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;)V
    .registers 2

    iput-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V
    .registers 2

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedClosed()V

    return-void
.end method

.method public bridge synthetic onAdClosed(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->onAdClosed(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToLoad::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlatformsBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdFailedToShow::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BasePlatformsBridge"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    const-string v0, "BasePlatformsBridge"

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedImpression()V

    return-void
.end method

.method public onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V
    .registers 4

    const-string v0, "BasePlatformsBridge"

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-static {v0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->access$302(Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedLoaded()V

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-boolean v0, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->val$autoShowOnLoad:Z

    if-eqz v0, :cond_20

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->showRewarded()V

    :cond_20
    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->onAdLoaded(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V

    return-void
.end method

.method public onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V
    .registers 3

    const-string p1, "BasePlatformsBridge"

    const-string v0, "onAdShown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object p1, p1, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewardedShown()V

    return-void
.end method

.method public bridge synthetic onAdShown(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;

    invoke-virtual {p0, p1}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->onAdShown(Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;)V

    return-void
.end method

.method public onRewardReceived()V
    .registers 2

    iget-object v0, p0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4$1;->this$1:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;

    iget-object v0, v0, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge$4;->this$0:Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/platforms/BasePlatformsBridge;->onRewarded()V

    return-void
.end method
