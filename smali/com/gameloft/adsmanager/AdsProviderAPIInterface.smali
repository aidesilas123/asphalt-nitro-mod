###### Class com.gameloft.adsmanager.AdsProviderAPIInterface (com.gameloft.adsmanager.AdsProviderAPIInterface)
.class public interface abstract Lcom/gameloft/adsmanager/AdsProviderAPIInterface;
.super Ljava/lang/Object;
.source "AdsProviderAPIInterface.java"


# virtual methods
.method public abstract OnBannerAvailable(Lcom/gameloft/adsmanager/Banner/BaseBannerObject;)V
.end method

.method public abstract OnBannerLoadError(ILjava/lang/String;)V
.end method

.method public abstract OnConfigurationFailed()V
.end method

.method public abstract OnConfigurationSucceeded()V
.end method

.method public abstract OnImpressionData(Ljava/lang/String;)V
.end method

.method public abstract OnIncentivizedAvailable(Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;)V
.end method

.method public abstract OnIncentivizedLoadError(ILjava/lang/String;)V
.end method

.method public abstract OnInterstitialAvailable(Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V
.end method

.method public abstract OnInterstitialLoadError(ILjava/lang/String;)V
.end method

.method public abstract OnOfferWallAvailable(Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;)V
.end method

.method public abstract OnOfferWallLoadError(ILjava/lang/String;)V
.end method

.method public abstract OnPauseGameAudio()V
.end method

.method public abstract OnResumeGameAudio()V
.end method

.method public abstract OnTapjoyCurrencyBalance(Ljava/lang/String;I)V
.end method
