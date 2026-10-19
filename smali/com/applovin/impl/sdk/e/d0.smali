###### Class com.applovin.impl.sdk.e.d0 (com.applovin.impl.sdk.e.d0)
.class public final synthetic Lcom/applovin/impl/sdk/e/d0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/e/q;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/e/q;Ljava/lang/Runnable;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/e/d0;->a:Lcom/applovin/impl/sdk/e/q;

    iput-object p2, p0, Lcom/applovin/impl/sdk/e/d0;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/d0;->a:Lcom/applovin/impl/sdk/e/q;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/d0;->b:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/e/q;->c(Lcom/applovin/impl/sdk/e/q;Ljava/lang/Runnable;)V

    return-void
.end method
