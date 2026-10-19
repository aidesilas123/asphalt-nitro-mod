###### Class com.gameloft.adsmanager.IronSource.AnonymousClass3 (com.gameloft.adsmanager.IronSource$3)
.class Lcom/gameloft/adsmanager/IronSource$3;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayRewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSource;->Configure(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gameloft/adsmanager/IronSource;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSource;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdAvailable(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->incentivizedAvailability:Z

    const-string v0, "IronSource.java"

    const-string v1, "Rewarded-onAdAvailable"

    const-string v2, "Incentivized availabillity changed to true"

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public onAdClicked(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object p2, p2, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz p2, :cond_e

    iget-object v0, p2, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnClick(Ljava/lang/String;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception p2

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p2
.end method

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_13
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    monitor-exit p1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnDisplay(Ljava/lang/String;)V

    :cond_e
    monitor-exit p1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 6

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object p2, p2, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz p2, :cond_11

    iget-object v0, p2, Lcom/gameloft/adsmanager/IronSourceIncentivized;->UUID:Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p2, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnReward(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_11
    monitor-exit p1

    return-void

    :catchall_13
    move-exception p2

    monitor-exit p1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p2
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 9

    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p2

    :try_start_3
    const-string v0, "IronSource.java"

    const-string v1, "Incentivized show error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    const-string v2, "IronSource.java"

    const-string v3, "Incentivized failed to show with "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") and errorMessage = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    if-eqz p1, :cond_4e

    iget-object v2, p1, Lcom/gameloft/adsmanager/IronSourceIncentivized;->sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;->OnShowError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_4e
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iput-boolean v0, p1, Lcom/gameloft/adsmanager/IronSource;->incentivizedObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenIncentivized:Lcom/gameloft/adsmanager/IronSourceIncentivized;

    monitor-exit p2

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p2
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public onAdUnavailable()V
    .registers 5

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource$3;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/adsmanager/IronSource;->incentivizedAvailability:Z

    const-string v1, "IronSource.java"

    const-string v2, "Rewarded-onAdUnavailable"

    const-string v3, "Incentivized availabillity changed to false"

    invoke-static {v1, v2, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
