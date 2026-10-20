###### Class com.json.adapters.admob.banner.AdMobNativeBannerViewBinder (com.ironsource.adapters.admob.banner.AdMobNativeBannerViewBinder)
.class public Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;
.super Ljava/lang/Object;
.source "AdMobNativeBannerViewBinder.java"


# instance fields
.field private mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

.field private mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

.field private mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private populateAdvertiserView()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_advertiser:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setAdvertiserView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getAdvertiser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    :cond_27
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private populateBodyView()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_body:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setBodyView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    :cond_27
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private populateCallToActionView()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_call_to_action:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->shouldHideCallToAction()Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_30

    :cond_1d
    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setCallToActionView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_35

    :cond_30
    :goto_30
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method private populateHeadlineView()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_headline:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setHeadlineView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getHeadline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2c

    :cond_27
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method private populateIconView()V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_app_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_48

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setIconView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getIcon()Lcom/google/android/gms/ads/nativead/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getIconView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_48

    :cond_3d
    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->getIconView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_48
    :goto_48
    return-void
.end method

.method private populateMediaView()V
    .registers 6

    iget-object v0, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    sget v1, Lcom/ironsource/adapters/admob/R$id;->ad_media:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/nativead/MediaView;

    if-eqz v0, :cond_47

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v1

    const/16 v2, 0x8

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/ads/MediaContent;->hasVideoContent()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-virtual {v1}, Lcom/ironsource/adapters/admob/banner/NativeTemplateType;->shouldHideVideoContent()Z

    move-result v1

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    iget-object v4, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setMediaView(Lcom/google/android/gms/ads/nativead/MediaView;)V

    iget-object v4, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    invoke-virtual {v4}, Lcom/google/android/gms/ads/nativead/NativeAd;->getMediaContent()Lcom/google/android/gms/ads/MediaContent;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/nativead/MediaView;->setMediaContent(Lcom/google/android/gms/ads/MediaContent;)V

    if-eqz v1, :cond_3f

    goto :goto_40

    :cond_3f
    const/4 v2, 0x0

    :goto_40
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_47

    :cond_44
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_47
    :goto_47
    return-void
.end method

.method private populateView()V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateIconView()V

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateHeadlineView()V

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateAdvertiserView()V

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateBodyView()V

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateMediaView()V

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateCallToActionView()V

    return-void
.end method


# virtual methods
.method public bindView(Lcom/google/android/gms/ads/nativead/NativeAd;Lcom/google/android/gms/ads/nativead/NativeAdView;Lcom/ironsource/adapters/admob/banner/NativeTemplateType;)V
    .registers 4

    iput-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    iput-object p1, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mNativeAd:Lcom/google/android/gms/ads/nativead/NativeAd;

    iput-object p3, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mTemplateType:Lcom/ironsource/adapters/admob/banner/NativeTemplateType;

    invoke-direct {p0}, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->populateView()V

    iget-object p2, p0, Lcom/ironsource/adapters/admob/banner/AdMobNativeBannerViewBinder;->mAdView:Lcom/google/android/gms/ads/nativead/NativeAdView;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/nativead/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/nativead/NativeAd;)V

    return-void
.end method
