###### Class com.gameloft.adsmanager.BaseAdsProvider (com.gameloft.adsmanager.BaseAdsProvider)
.class public Lcom/gameloft/adsmanager/BaseAdsProvider;
.super Ljava/lang/Object;
.source "BaseAdsProvider.java"

# interfaces
.implements Lcom/gameloft/adsmanager/AdsProviderAPIInterface;
.implements Lcom/gameloft/adsmanager/AdsProviderInterface;


# instance fields
.field private m_handleToNative:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    return-void
.end method

.method private native NativeOnBannerAvailable(JLcom/gameloft/adsmanager/Banner/BaseBannerObject;)V
.end method

.method private native NativeOnBannerClicked(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnBannerClosed(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnBannerLoadError(JILjava/lang/String;)V
.end method

.method private native NativeOnBannerOnScreen(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnBannerRefreshed(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnBannerShowError(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnConfigurationFailed(J)V
.end method

.method private native NativeOnConfigurationSucceeded(J)V
.end method

.method private native NativeOnImpressionData(JLjava/lang/String;)V
.end method

.method private native NativeOnIncentivizedAvailable(JLcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;)V
.end method

.method private native NativeOnIncentivizedClicked(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnIncentivizedClosed(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnIncentivizedLoadError(JILjava/lang/String;)V
.end method

.method private native NativeOnIncentivizedOnScreen(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnIncentivizedReward(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnIncentivizedShowError(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnInterstitialAvailable(JLcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V
.end method

.method private native NativeOnInterstitialClicked(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnInterstitialClosed(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnInterstitialLoadError(JILjava/lang/String;)V
.end method

.method private native NativeOnInterstitialOnScreen(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnInterstitialShowError(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnOfferWallAvailable(JLcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;)V
.end method

.method private native NativeOnOfferWallClicked(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnOfferWallClosed(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnOfferWallLoadError(JILjava/lang/String;)V
.end method

.method private native NativeOnOfferWallOnScreen(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnOfferWallShowError(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native NativeOnPauseGameAudio(J)V
.end method

.method private native NativeOnResumeGameAudio(J)V
.end method

.method private native NativeOnTapjoyCurrencyBalance(JLjava/lang/String;I)V
.end method


# virtual methods
.method public CheckTapjoyCurrencyBalance()V
    .registers 1

    return-void
.end method

.method public GetTestDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eq v1, v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TEST DEVICE ID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseAdsProvider.java"

    const-string v4, "GetTestDevices"

    invoke-static {v3, v4, v2}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_3f
    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->GetTestDevicesFromFile()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public GetTestDevicesFromFile()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Add your device Test ID to this file for testing AdMob :"

    const-string v1, "GetTestDevicesFromFile"

    const-string v2, "BaseAdsProvider.java"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "/testdevices.txt"

    :try_start_d
    sget-object v5, Lcom/gameloft/adsmanager/AdsManager;->mainActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_35
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_53

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TEST DEVICE IDs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v1, v8}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_53
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_59} :catch_65
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_59} :catch_5a

    goto :goto_8f

    :catch_5a
    move-exception v5

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8f

    :catch_65
    :try_start_65
    new-instance v5, Ljava/io/FileWriter;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    new-instance v6, Ljava/io/BufferedWriter;

    invoke-direct {v6, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_8d} :catch_8e

    goto :goto_8f

    :catch_8e
    nop

    :goto_8f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    return-object v3
.end method

.method public OnBannerAvailable(Lcom/gameloft/adsmanager/Banner/BaseBannerObject;)V
    .registers 4

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerAvailable(JLcom/gameloft/adsmanager/Banner/BaseBannerObject;)V

    return-void
.end method

.method public OnBannerClicked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerClicked(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnBannerClosed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerClosed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnBannerLoadError(ILjava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerLoadError(JILjava/lang/String;)V

    return-void
.end method

.method public OnBannerOnScreen(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerOnScreen(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnBannerRefreshed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerRefreshed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnBannerShowError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-wide v1, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnBannerShowError(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnConfigurationFailed()V
    .registers 3

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnConfigurationFailed(J)V

    return-void
.end method

.method public OnConfigurationSucceeded()V
    .registers 3

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnConfigurationSucceeded(J)V

    return-void
.end method

.method public OnImpressionData(Ljava/lang/String;)V
    .registers 4

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnImpressionData(JLjava/lang/String;)V

    return-void
.end method

.method public OnIncentivizedAvailable(Lcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;)V
    .registers 4

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedAvailable(JLcom/gameloft/adsmanager/Incentivized/BaseIncentivizedObject;)V

    return-void
.end method

.method public OnIncentivizedClicked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedClicked(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnIncentivizedClosed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedClosed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnIncentivizedLoadError(ILjava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedLoadError(JILjava/lang/String;)V

    return-void
.end method

.method public OnIncentivizedOnScreen(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedOnScreen(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnIncentivizedReward(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12

    iget-wide v1, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedReward(JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnIncentivizedShowError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-wide v1, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnIncentivizedShowError(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnInterstitialAvailable(Lcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V
    .registers 4

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnInterstitialAvailable(JLcom/gameloft/adsmanager/Interstitial/BaseInterstitialObject;)V

    return-void
.end method

.method public OnInterstitialClicked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnInterstitialClicked(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnInterstitialClosed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnInterstitialClosed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnInterstitialLoadError(ILjava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnInterstitialLoadError(JILjava/lang/String;)V

    return-void
.end method

.method public OnInterstitialOnScreen(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnInterstitialOnScreen(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnInterstitialShowError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-wide v1, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnInterstitialShowError(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOfferWallAvailable(Lcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;)V
    .registers 4

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnOfferWallAvailable(JLcom/gameloft/adsmanager/OfferWall/BaseOfferWallObject;)V

    return-void
.end method

.method public OnOfferWallClicked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnOfferWallClicked(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOfferWallClosed(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnOfferWallClosed(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOfferWallLoadError(ILjava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnOfferWallLoadError(JILjava/lang/String;)V

    return-void
.end method

.method public OnOfferWallOnScreen(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnOfferWallOnScreen(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnOfferWallShowError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 10

    iget-wide v1, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnOfferWallShowError(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public OnPauseGameAudio()V
    .registers 3

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnPauseGameAudio(J)V

    return-void
.end method

.method public OnResumeGameAudio()V
    .registers 3

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnResumeGameAudio(J)V

    return-void
.end method

.method public OnTapjoyCurrencyBalance(Ljava/lang/String;I)V
    .registers 5

    iget-wide v0, p0, Lcom/gameloft/adsmanager/BaseAdsProvider;->m_handleToNative:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/gameloft/adsmanager/BaseAdsProvider;->NativeOnTapjoyCurrencyBalance(JLjava/lang/String;I)V

    return-void
.end method

.method public RequestBanner()V
    .registers 1

    return-void
.end method

.method public RequestBannerInternal()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->RequestBanner()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    const-string v1, "BaseAdsProvider.java"

    const-string v2, "RequestBannerInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x22b8

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnBannerLoadError(ILjava/lang/String;)V

    :goto_13
    return-void
.end method

.method public RequestIncentivized()V
    .registers 1

    return-void
.end method

.method public RequestIncentivizedInternal()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->RequestIncentivized()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    const-string v1, "BaseAdsProvider.java"

    const-string v2, "RequestIncentivizedInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x22b8

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnIncentivizedLoadError(ILjava/lang/String;)V

    :goto_13
    return-void
.end method

.method public RequestInterstitial()V
    .registers 1

    return-void
.end method

.method public RequestInterstitialInternal()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->RequestInterstitial()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    const-string v1, "BaseAdsProvider.java"

    const-string v2, "RequestInterstitialInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x22b8

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnInterstitialLoadError(ILjava/lang/String;)V

    :goto_13
    return-void
.end method

.method public RequestOfferWall()V
    .registers 1

    return-void
.end method

.method public RequestOfferWallInternal()V
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Lcom/gameloft/adsmanager/BaseAdsProvider;->RequestOfferWall()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception v0

    const-string v1, "BaseAdsProvider.java"

    const-string v2, "RequestOfferWallInternal"

    invoke-static {v1, v2, v0}, Lcom/gameloft/adsmanager/JavaUtils;->LogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v0, 0x22b8

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/gameloft/adsmanager/BaseAdsProvider;->OnOfferWallLoadError(ILjava/lang/String;)V

    :goto_13
    return-void
.end method

.method protected getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p1, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_29

    :catch_1e
    const-string p1, "BaseAdsProvider.java"

    const-string v0, "GetTestDevices"

    const-string v1, "Cannot get test device id"

    invoke-static {p1, v0, v1}, Lcom/gameloft/adsmanager/JavaUtils;->AdsManagerLogWarning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    :goto_29
    return-object p1
.end method
