###### Class com.applovin.impl.sdk.s1 (com.applovin.impl.sdk.s1)
.class public final synthetic Lcom/applovin/impl/sdk/s1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/t;

.field public final synthetic b:Lcom/applovin/impl/sdk/ad/e;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/t;Lcom/applovin/impl/sdk/ad/e;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/s1;->a:Lcom/applovin/impl/sdk/t;

    iput-object p2, p0, Lcom/applovin/impl/sdk/s1;->b:Lcom/applovin/impl/sdk/ad/e;

    iput-object p3, p0, Lcom/applovin/impl/sdk/s1;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/s1;->a:Lcom/applovin/impl/sdk/t;

    iget-object v1, p0, Lcom/applovin/impl/sdk/s1;->b:Lcom/applovin/impl/sdk/ad/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/s1;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/t;->h(Lcom/applovin/impl/sdk/t;Lcom/applovin/impl/sdk/ad/e;Landroid/content/Context;)V

    return-void
.end method
