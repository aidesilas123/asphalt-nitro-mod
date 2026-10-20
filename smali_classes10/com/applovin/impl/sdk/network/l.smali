###### Class com.applovin.impl.sdk.network.l (com.applovin.impl.sdk.network.l)
.class public final synthetic Lcom/applovin/impl/sdk/network/l;
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

    iput-object p1, p0, Lcom/applovin/impl/sdk/network/l;->a:Lcom/applovin/impl/sdk/network/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/network/l;->a:Lcom/applovin/impl/sdk/network/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/network/f;->g(Lcom/applovin/impl/sdk/network/f;)V

    return-void
.end method
