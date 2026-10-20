###### Class com.applovin.impl.sdk.utils.g1 (com.applovin.impl.sdk.utils.g1)
.class public final synthetic Lcom/applovin/impl/sdk/utils/g1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

.field public final synthetic b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/utils/g1;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

    iput-object p2, p0, Lcom/applovin/impl/sdk/utils/g1;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/g1;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/utils/g1;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/utils/m;->I(Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdEventListener;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAd;)V

    return-void
.end method
