###### Class com.applovin.impl.sdk.network.m (com.applovin.impl.sdk.network.m)
.class public final synthetic Lcom/applovin/impl/sdk/network/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/network/f;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/network/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/m;->a:Lcom/applovin/impl/sdk/network/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/m;->a:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/f;->h(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method
