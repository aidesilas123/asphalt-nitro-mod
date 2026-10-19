###### Class com.gameloft.adsmanager.IronSourceBanner.AnonymousClass1.C02061 (com.gameloft.adsmanager.IronSourceBanner$1$1)
.class Lcom/gameloft/adsmanager/IronSourceBanner$1$1;
.super Ljava/lang/Object;
.source "IronSourceBanner.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/LevelPlayBannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/adsmanager/IronSourceBanner$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;


# direct methods
.method constructor <init>(Lcom/gameloft/adsmanager/IronSourceBanner$1;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object v0, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/gameloft/adsmanager/Banner/BaseBannerObject;->OnClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLeftApplication(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 7

    const-string v0, "IronSourceBanner.java"

    const-string v1, "Banner load error"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Banner failed to load with errorCode= ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") and message= ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {p1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->val$sdkLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerLoadError(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {p1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/gameloft/adsmanager/IronSource;->bannerObject:Lcom/gameloft/adsmanager/IronSourceBanner;

    return-void
.end method

.method public onAdLoaded(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 4

    const-string p1, "IronSourceBanner.java"

    const-string v0, "Banner loaded"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object p1, p1, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-static {p1}, Lcom/gameloft/adsmanager/IronSourceBanner;->access$100(Lcom/gameloft/adsmanager/IronSourceBanner;)Lcom/gameloft/adsmanager/IronSource;

    move-result-object p1

    iget-object v0, p0, Lcom/gameloft/adsmanager/IronSourceBanner$1$1;->this$1:Lcom/gameloft/adsmanager/IronSourceBanner$1;

    iget-object v0, v0, Lcom/gameloft/adsmanager/IronSourceBanner$1;->this$0:Lcom/gameloft/adsmanager/IronSourceBanner;

    invoke-virtual {p1, v0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerAvailable(Lcom/gameloft/adsmanager/Banner/BaseBannerObject;)V

    return-void
.end method

.method public onAdScreenDismissed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method

.method public onAdScreenPresented(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdInfo;)V
    .registers 2

    return-void
.end method
