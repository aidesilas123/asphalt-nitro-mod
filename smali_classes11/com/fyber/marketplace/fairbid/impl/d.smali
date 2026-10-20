###### Class com.fyber.marketplace.fairbid.impl.d (com.fyber.marketplace.fairbid.impl.d)
.class public Lcom/fyber/marketplace/fairbid/impl/d;
.super Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;
.source "SourceFile"


# instance fields
.field public final b:Lcom/fyber/marketplace/fairbid/impl/b;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;-><init>()V

    new-instance v0, Lcom/fyber/marketplace/fairbid/impl/b;

    new-instance v1, Lcom/fyber/inneractive/sdk/serverapi/b;

    invoke-static {}, Lcom/fyber/inneractive/sdk/config/global/s;->b()Lcom/fyber/inneractive/sdk/config/global/s;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fyber/inneractive/sdk/serverapi/b;-><init>(Lcom/fyber/inneractive/sdk/config/global/s;)V

    invoke-direct {v0, v1}, Lcom/fyber/marketplace/fairbid/impl/b;-><init>(Lcom/fyber/inneractive/sdk/serverapi/c;)V

    iput-object v0, p0, Lcom/fyber/marketplace/fairbid/impl/d;->b:Lcom/fyber/marketplace/fairbid/impl/b;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/marketplace/fairbid/impl/d;->c:Z

    return-void
.end method
