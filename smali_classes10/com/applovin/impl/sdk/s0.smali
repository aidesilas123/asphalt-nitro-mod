###### Class com.applovin.impl.sdk.s0 (com.applovin.impl.sdk.s0)
.class public final synthetic Lcom/applovin/impl/sdk/s0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/g;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/s0;->a:Lcom/applovin/impl/sdk/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/s0;->a:Lcom/applovin/impl/sdk/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/g;->k(Lcom/applovin/impl/sdk/g;)V

    return-void
.end method
