###### Class com.applovin.impl.sdk.l0 (com.applovin.impl.sdk.l0)
.class public final synthetic Lcom/applovin/impl/sdk/l0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/ae;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/ae;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/l0;->a:Lcom/applovin/impl/sdk/ae;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/l0;->a:Lcom/applovin/impl/sdk/ae;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ae;->e(Lcom/applovin/impl/sdk/ae;)V

    return-void
.end method
