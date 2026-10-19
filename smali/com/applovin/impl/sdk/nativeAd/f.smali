###### Class com.applovin.impl.sdk.nativeAd.f (com.applovin.impl.sdk.nativeAd.f)
.class public final synthetic Lcom/applovin/impl/sdk/nativeAd/f;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/f;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/f;->a:Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;->c(Lcom/applovin/impl/sdk/nativeAd/AppLovinVastMediaView$c;)V

    return-void
.end method
