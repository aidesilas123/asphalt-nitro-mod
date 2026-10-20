###### Class com.applovin.mediation.adapters.a (com.applovin.mediation.adapters.a)
.class public final synthetic Lcom/applovin/mediation/adapters/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/AppLovinAdapterAdViewListener;

.field public final synthetic b:Lcom/applovin/sdk/AppLovinAd;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/AppLovinAdapterAdViewListener;Lcom/applovin/sdk/AppLovinAd;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/mediation/adapters/a;->a:Lcom/applovin/mediation/adapters/AppLovinAdapterAdViewListener;

    iput-object p2, p0, Lcom/applovin/mediation/adapters/a;->b:Lcom/applovin/sdk/AppLovinAd;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/mediation/adapters/a;->a:Lcom/applovin/mediation/adapters/AppLovinAdapterAdViewListener;

    iget-object v1, p0, Lcom/applovin/mediation/adapters/a;->b:Lcom/applovin/sdk/AppLovinAd;

    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/AppLovinAdapterAdViewListener;->a(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method
