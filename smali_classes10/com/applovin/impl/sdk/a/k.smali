###### Class com.applovin.impl.sdk.a.k (com.applovin.impl.sdk.a.k)
.class public final synthetic Lcom/applovin/impl/sdk/a/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/a/b;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/a/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/k;->a:Lcom/applovin/impl/sdk/a/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/k;->a:Lcom/applovin/impl/sdk/a/b;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/b;->g(Lcom/applovin/impl/sdk/a/b;)V

    return-void
.end method
