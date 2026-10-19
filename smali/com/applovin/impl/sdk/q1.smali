###### Class com.applovin.impl.sdk.q1 (com.applovin.impl.sdk.q1)
.class public final synthetic Lcom/applovin/impl/sdk/q1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/q;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/q;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/q1;->a:Lcom/applovin/impl/sdk/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/q1;->a:Lcom/applovin/impl/sdk/q;

    invoke-static {v0}, Lcom/applovin/impl/sdk/q;->i(Lcom/applovin/impl/sdk/q;)V

    return-void
.end method
