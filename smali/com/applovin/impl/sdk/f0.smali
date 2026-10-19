###### Class com.applovin.impl.sdk.f0 (com.applovin.impl.sdk.f0)
.class public final synthetic Lcom/applovin/impl/sdk/f0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/applovin/impl/sdk/EventServiceImpl;

.field public final synthetic b:Lcom/applovin/impl/sdk/s;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/s;Ljava/util/Map;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/sdk/f0;->a:Lcom/applovin/impl/sdk/EventServiceImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/f0;->b:Lcom/applovin/impl/sdk/s;

    iput-object p3, p0, Lcom/applovin/impl/sdk/f0;->c:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/applovin/impl/sdk/f0;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/f0;->a:Lcom/applovin/impl/sdk/EventServiceImpl;

    iget-object v1, p0, Lcom/applovin/impl/sdk/f0;->b:Lcom/applovin/impl/sdk/s;

    iget-object v2, p0, Lcom/applovin/impl/sdk/f0;->c:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/applovin/impl/sdk/f0;->d:Z

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/EventServiceImpl;->b(Lcom/applovin/impl/sdk/EventServiceImpl;Lcom/applovin/impl/sdk/s;Ljava/util/Map;Z)V

    return-void
.end method
