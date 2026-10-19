###### Class com.json.adapters.custom.kidoz.utils.BannerLifecycleHandler (com.ironsource.adapters.custom.kidoz.utils.BannerLifecycleHandler)
.class public Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;
.super Ljava/lang/Object;
.source "BannerLifecycleHandler.java"

# interfaces
.implements Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

.field private mActivity:Landroid/app/Activity;

.field private final mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ironsource/adapters/custom/kidoz/KidozCustomBanner;->TAG:Ljava/lang/String;

    iput-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private synthetic lambda$closeAd$1()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->hide()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iput-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method private synthetic lambda$loadAd$0()V
    .registers 3

    new-instance v0, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    iget-object v1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setLayoutWithoutShowing()V

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-virtual {v0, p0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->setKidozBannerListener(Lcom/kidoz/sdk/api/ads/banner/BannerAdCallback;)V

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->load()V

    return-void
.end method

.method private synthetic lambda$onAdLoaded$2()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-virtual {v0}, Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;->show()V

    return-void
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public synthetic a()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->lambda$closeAd$1()V

    return-void
.end method

.method public synthetic b()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->lambda$loadAd$0()V

    return-void
.end method

.method public synthetic c()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->lambda$onAdLoaded$2()V

    return-void
.end method

.method public closeAd()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "closeAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ironsource/adapters/custom/kidoz/utils/c;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/custom/kidoz/utils/c;-><init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadAd()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "loadAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ironsource/adapters/custom/kidoz/utils/a;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/custom/kidoz/utils/a;-><init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdClosed()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "Banner onAdClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAdFailedToLoad(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailedToLoad::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onAdFailedToShow(Lcom/kidoz/sdk/api/general/KidozError;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdFailedToShow::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_AD_EXPIRED:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getErrorCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/kidoz/sdk/api/general/KidozError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public onAdImpression()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdImpression"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdOpened()V

    return-void
.end method

.method public onAdLoaded()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdLoaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/ironsource/adapters/custom/kidoz/utils/b;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/custom/kidoz/utils/b;-><init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V

    invoke-direct {p0, v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdShown()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->TAG:Ljava/lang/String;

    const-string v1, "onAdShown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {v1}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->convertDpToPixel(F)F

    move-result v1

    float-to-int v1, v1

    const/high16 v2, 0x42480000    # 50.0f

    invoke-static {v2}, Lcom/kidoz/sdk/api/general/utils/ScreenUtils;->convertDpToPixel(F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->mIronSourceListener:Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;

    iget-object v2, p0, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->bannerView:Lcom/kidoz/sdk/api/ads/banner/KidozBannerView;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/mediationsdk/adunit/adapter/listener/BannerAdListener;->onAdLoadSuccess(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

###### Class com.json.adapters.custom.kidoz.utils.a (com.ironsource.adapters.custom.kidoz.utils.a)
.class public final synthetic Lcom/ironsource/adapters/custom/kidoz/utils/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/a;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/a;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-virtual {v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->b()V

    return-void
.end method

###### Class com.json.adapters.custom.kidoz.utils.b (com.ironsource.adapters.custom.kidoz.utils.b)
.class public final synthetic Lcom/ironsource/adapters/custom/kidoz/utils/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/b;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/b;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-virtual {v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->c()V

    return-void
.end method

###### Class com.json.adapters.custom.kidoz.utils.c (com.ironsource.adapters.custom.kidoz.utils.c)
.class public final synthetic Lcom/ironsource/adapters/custom/kidoz/utils/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/adapters/custom/kidoz/utils/c;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/adapters/custom/kidoz/utils/c;->a:Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;

    invoke-virtual {v0}, Lcom/ironsource/adapters/custom/kidoz/utils/BannerLifecycleHandler;->a()V

    return-void
.end method
