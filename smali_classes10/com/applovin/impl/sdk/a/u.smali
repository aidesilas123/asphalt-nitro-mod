###### Class com.applovin.impl.sdk.a.u (com.applovin.impl.sdk.a.u)
.class public final synthetic Lcom/applovin/impl/sdk/a/u;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/a/g;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/a/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/u;->a:Lcom/applovin/impl/sdk/a/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/u;->a:Lcom/applovin/impl/sdk/a/g;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/g;->r(Lcom/applovin/impl/sdk/a/g;)V

    return-void
.end method
