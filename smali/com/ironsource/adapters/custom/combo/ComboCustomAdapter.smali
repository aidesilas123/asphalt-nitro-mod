###### Class com.json.adapters.custom.combo.ComboCustomAdapter (com.ironsource.adapters.custom.combo.ComboCustomAdapter)
.class public Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;
.super Lcom/ironsource/mediationsdk/adunit/adapter/BaseAdapter;
.source "ComboCustomAdapter.java"


# static fields
.field static interstitialAdListenerMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;",
            ">;"
        }
    .end annotation
.end field

.field static rewardedVideoAdListenerMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/BaseAdapter;-><init>()V

    return-void
.end method

.method public static AdClicked(ILjava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    :try_start_3
    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClicked()V

    goto :goto_1d

    :cond_f
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdClicked()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static AdLoadFailed(ILjava/lang/String;I)V
    .registers 7

    const/4 v0, 0x2

    if-eq p2, v0, :cond_8

    :try_start_3
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v1, 0x40f

    goto :goto_c

    :cond_8
    sget-object p2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v1, 0x486

    :goto_c
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v2, :cond_1c

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0, p2, v1, v3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    goto :goto_29

    :cond_1c
    if-ne p0, v0, :cond_29

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0, p2, v1, v3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_29

    :catch_29
    :cond_29
    :goto_29
    return-void
.end method

.method public static AdRewarded(ILjava/lang/String;)V
    .registers 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    :try_start_3
    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdRewarded()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method

.method public static AdShowFailed(ILjava/lang/String;I)V
    .registers 5

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x40f

    if-ne p0, p2, :cond_12

    :try_start_6
    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0, v1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowFailed(ILjava/lang/String;)V

    goto :goto_20

    :cond_12
    const/4 p2, 0x2

    if-ne p0, p2, :cond_20

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0, v1, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdShowFailed(ILjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_20} :catch_20

    :catch_20
    :cond_20
    :goto_20
    return-void
.end method

.method public static AdWasClosed(ILjava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    :try_start_3
    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdClosed()V

    goto :goto_1d

    :cond_f
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdClosed()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static AdWasLoaded(ILjava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    :try_start_3
    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdLoadSuccess()V

    goto :goto_1d

    :cond_f
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1d

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdLoadSuccess()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1d} :catch_1d

    :catch_1d
    :cond_1d
    :goto_1d
    return-void
.end method

.method public static AdWillShow(ILjava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1a

    :try_start_3
    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdOpened()V

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->interstitialAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/InterstitialAdListener;->onAdShowSuccess()V

    goto :goto_33

    :cond_1a
    const/4 v0, 0x2

    if-ne p0, v0, :cond_33

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdOpened()V

    sget-object p0, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->rewardedVideoAdListenerMap:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;

    invoke-interface {p0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/RewardedVideoAdListener;->onAdShowSuccess()V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_33} :catch_33

    :catch_33
    :cond_33
    :goto_33
    return-void
.end method

.method static HideAd(I)V
    .registers 1

    :try_start_0
    invoke-static {p0}, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->nativeHideAd(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :catch_8
    :goto_8
    return-void
.end method

.method static IsAdLoaded(ILjava/lang/String;)Z
    .registers 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->nativeIsAdLoaded(ILjava/lang/String;)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method static LoadAd(ILjava/lang/String;)V
    .registers 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->nativeLoadAd(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :catch_8
    :goto_8
    return-void
.end method

.method static ShowLoadedAd(ILjava/lang/String;)V
    .registers 2

    :try_start_0
    invoke-static {p0, p1}, Lcom/ironsource/adapters/custom/combo/ComboCustomAdapter;->nativeShowLoadedAd(ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :catch_8
    :goto_8
    return-void
.end method

.method static native nativeHideAd(I)V
.end method

.method static native nativeIsAdLoaded(ILjava/lang/String;)Z
.end method

.method static native nativeLoadAd(ILjava/lang/String;)V
.end method

.method static native nativeShowLoadedAd(ILjava/lang/String;)V
.end method


# virtual methods
.method public getAdapterVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public getNetworkSDKVersion()Ljava/lang/String;
    .registers 2

    const-string v0, "1.0.0"

    return-object v0
.end method

.method public init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V
    .registers 4

    invoke-interface {p3}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;->onInitSuccess()V

    return-void
.end method
