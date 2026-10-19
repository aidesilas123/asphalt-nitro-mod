###### Class com.json.adapters.custom.kidoz.KidozCustomRewardedVideo (com.ironsource.adapters.custom.kidoz.KidozCustomRewardedVideo)
.class public Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;
.super Lcom/ironsource/mediationsdk/adunit/adapter/BaseRewardedVideo;
.source "KidozCustomRewardedVideo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ironsource/mediationsdk/adunit/adapter/BaseRewardedVideo<",
        "Lcom/ironsource/adapters/custom/kidoz/KidozCustomAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "KidozCustomRewardedVideo"


# instance fields
.field private rewardedLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/BaseRewardedVideo;-><init>(Lcom/ironsource/mediationsdk/model/NetworkSettings;)V

    sget-object p1, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->TAG:Ljava/lang/String;

    const-string v0, "constructor"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z
    .registers 2

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->rewardedLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;->isAdLoaded()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public bridge synthetic loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 4

    check-cast p3, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    return-void
.end method

.method public loadAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .registers 5

    sget-object p1, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->TAG:Ljava/lang/String;

    const-string v0, "loadAd"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;

    invoke-direct {p1, p3}, Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;-><init>(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->rewardedLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;

    invoke-static {p2, p1}, Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAd;->load(Landroid/app/Activity;Lcom/kidoz/sdk/api/ads/fullscreen/rewarded/RewardedAdCallback;)V

    return-void
.end method

.method public bridge synthetic showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;)V
    .registers 3

    check-cast p2, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-virtual {p0, p1, p2}, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    return-void
.end method

.method public showAd(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V
    .registers 5

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->TAG:Ljava/lang/String;

    const-string v1, "showAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->isAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomRewardedVideo;->rewardedLifecycleHandler:Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;

    invoke-virtual {p1, p2}, Lcom/ironsource/adapters/custom/kidoz/utils/RewardedLifecycleHandler;->show(Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;)V

    goto :goto_1a

    :cond_13
    const/16 p1, 0x40e

    const-string v0, "Rewarded is not loaded"

    invoke-interface {p2, p1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdShowFailed(ILjava/lang/String;)V

    :goto_1a
    return-void
.end method
