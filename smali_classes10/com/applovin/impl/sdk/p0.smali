###### Class com.applovin.impl.sdk.p0 (com.applovin.impl.sdk.p0)
.class public final synthetic Lcom/applovin/impl/sdk/p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/c;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/p0;->a:Lcom/applovin/impl/sdk/c;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/p0;->a:Lcom/applovin/impl/sdk/c;

    invoke-static {v0}, Lcom/applovin/impl/sdk/c;->b(Lcom/applovin/impl/sdk/c;)V

    return-void
.end method
