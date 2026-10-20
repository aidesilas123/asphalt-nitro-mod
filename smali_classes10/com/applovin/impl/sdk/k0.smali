###### Class com.applovin.impl.sdk.k0 (com.applovin.impl.sdk.k0)
.class public final synthetic Lcom/applovin/impl/sdk/k0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/ae;

.field public final synthetic b:Lcom/applovin/impl/sdk/network/i;

.field public final synthetic c:Lcom/applovin/sdk/AppLovinPostbackListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/ae;Lcom/applovin/impl/sdk/network/i;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/k0;->a:Lcom/applovin/impl/sdk/ae;

    iput-object p2, p0, Lcom/applovin/impl/sdk/k0;->b:Lcom/applovin/impl/sdk/network/i;

    iput-object p3, p0, Lcom/applovin/impl/sdk/k0;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/k0;->a:Lcom/applovin/impl/sdk/ae;

    iget-object v1, p0, Lcom/applovin/impl/sdk/k0;->b:Lcom/applovin/impl/sdk/network/i;

    iget-object v2, p0, Lcom/applovin/impl/sdk/k0;->c:Lcom/applovin/sdk/AppLovinPostbackListener;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/ae;->d(Lcom/applovin/impl/sdk/ae;Lcom/applovin/impl/sdk/network/i;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    return-void
.end method
