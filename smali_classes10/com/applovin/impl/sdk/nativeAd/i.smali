###### Class com.applovin.impl.sdk.nativeAd.i (com.applovin.impl.sdk.nativeAd.i)
.class public final synthetic Lcom/applovin/impl/sdk/nativeAd/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/nativeAd/e;

.field public final synthetic b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/e;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/i;->a:Lcom/applovin/impl/sdk/nativeAd/e;

    iput-object p2, p0, Lcom/applovin/impl/sdk/nativeAd/i;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/i;->a:Lcom/applovin/impl/sdk/nativeAd/e;

    iget-object v1, p0, Lcom/applovin/impl/sdk/nativeAd/i;->b:Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/nativeAd/e;->d(Lcom/applovin/impl/sdk/nativeAd/e;Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;)V

    return-void
.end method
