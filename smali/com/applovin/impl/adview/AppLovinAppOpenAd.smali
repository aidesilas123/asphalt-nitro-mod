###### Class com.applovin.impl.adview.AppLovinAppOpenAd (com.applovin.impl.adview.AppLovinAppOpenAd)
.class public Lcom/applovin/impl/adview/AppLovinAppOpenAd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final agP:Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .registers 3
    .param p1    # Lcom/applovin/sdk/AppLovinSdk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/adview/AppLovinAppOpenAd;->agP:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    return-void
.end method


# virtual methods
.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .registers 3
    .param p1    # Lcom/applovin/sdk/AppLovinAdClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinAppOpenAd;->agP:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .registers 3
    .param p1    # Lcom/applovin/sdk/AppLovinAdDisplayListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinAppOpenAd;->agP:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .registers 3
    .param p1    # Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinAppOpenAd;->agP:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    return-void
.end method

.method public show(Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3
    .param p1    # Lcom/applovin/sdk/AppLovinAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/applovin/impl/adview/AppLovinAppOpenAd;->agP:Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    invoke-interface {v0, p1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "AppLovinAppOpenAd{}"

    return-object v0
.end method
