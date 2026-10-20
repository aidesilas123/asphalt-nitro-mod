###### Class com.applovin.impl.sdk.a.p (com.applovin.impl.sdk.a.p)
.class public final synthetic Lcom/applovin/impl/sdk/a/p;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/a/f;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/a/f;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/a/p;->a:Lcom/applovin/impl/sdk/a/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/a/p;->a:Lcom/applovin/impl/sdk/a/f;

    invoke-static {v0}, Lcom/applovin/impl/sdk/a/f;->b(Lcom/applovin/impl/sdk/a/f;)V

    return-void
.end method
