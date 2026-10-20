###### Class com.applovin.mediation.nativeAds.b (com.applovin.mediation.nativeAds.b)
.class public final synthetic Lcom/applovin/mediation/nativeAds/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/mediation/nativeAds/b;->a:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/mediation/nativeAds/b;->a:Lcom/applovin/mediation/nativeAds/MaxNativeAdView;

    invoke-static {v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAdView;->d(Lcom/applovin/mediation/nativeAds/MaxNativeAdView;)V

    return-void
.end method
