###### Class com.gameloft.adsmanager.IronSource.AnonymousClass2 (com.gameloft.adsmanager.IronSource$2)
.class Lcom/gameloft/adsmanager/IronSource$2;
.super Ljava/lang/Object;
.source "IronSource.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayInterstitialListener;


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

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClick(Ljava/lang/String;)V

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

.method public onAdClosed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v0, :cond_13

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_13
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    monitor-exit p1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter v0

    :try_start_3
    const-string v1, "IronSource.java"

    const-string v2, "Interstitial load error"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v2

    const-string p1, "IronSource.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interstitial failed to load with errorCode = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and errorMessage = ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-static {p1, v1, v3}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v1, p1, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_49
    move-exception p1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw p1
.end method

.method public onAdOpened(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnDisplay(Ljava/lang/String;)V

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

.method public onAdReady(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p1

    :try_start_3
    const-string v0, "IronSource.java"

    const-string v1, "Interstitial loaded"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialLoading:Z

    iget-boolean v1, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    if-nez v1, :cond_24

    new-instance v1, Lcom/gameloft/adsmanager/IronSourceInterstitial;

    iget-object v2, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialSdkLocation:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/gameloft/adsmanager/IronSourceInterstitial;-><init>(Lcom/gameloft/adsmanager/IronSource;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    invoke-virtual {v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialAvailable(Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V

    :cond_24
    monitor-exit p1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public onAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 9

    iget-object p2, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    monitor-enter p2

    :try_start_3
    const-string v0, "IronSource.java"

    const-string v1, "Interstitial show error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result p1

    const-string v2, "IronSource.java"

    const-string v3, "Interstitial failed to show with "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorCode = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") and errorMessage = ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    iget-object v1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iget-object v1, v1, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    if-eqz v1, :cond_4e

    iget-object v2, v1, Lcom/gameloft/adsmanager/IronSourceInterstitial;->sdkLocation:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;->OnShowError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    invoke-virtual {p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnResumeGameAudio()V

    :cond_4e
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSource$2;->this$0:Lcom/gameloft/adsmanager/IronSource;

    iput-boolean v0, p1, Lcom/gameloft/adsmanager/IronSource;->interstitialObjectCreated:Z

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gameloft/adsmanager/IronSource;->onScreenInterstitial:Lcom/gameloft/adsmanager/IronSourceInterstitial;

    monitor-exit p2

    return-void

    :catchall_57
    move-exception p1

    monitor-exit p2
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p1
.end method

.method public onAdShowSucceeded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method
