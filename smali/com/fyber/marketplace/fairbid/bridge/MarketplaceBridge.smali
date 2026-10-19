###### Class com.fyber.marketplace.fairbid.bridge.MarketplaceBridge (com.fyber.marketplace.fairbid.bridge.MarketplaceBridge)
.class public abstract Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/marketplace/fairbid/impl/d;

    invoke-direct {v0}, Lcom/fyber/marketplace/fairbid/impl/d;-><init>()V

    sput-object v0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;->a:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentAudienceAppliesCoppa()V
    .registers 0

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->currentAudienceAppliesToCoppa()V

    return-void
.end method

.method public static currentAudienceIsAChild()V
    .registers 0

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->currentAudienceIsAChild()V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;
    .registers 4

    invoke-static {p0, p1}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->M:Lcom/fyber/inneractive/sdk/config/IAConfigManager;

    iput-object p2, p0, Lcom/fyber/inneractive/sdk/config/IAConfigManager;->t:Ljava/lang/String;

    if-eqz p3, :cond_b

    const/4 p0, 0x2

    goto :goto_c

    :cond_b
    const/4 p0, 0x5

    :goto_c
    sput p0, Lcom/fyber/inneractive/sdk/util/IAlog;->a:I

    sget-object p0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;->a:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceBridge;

    return-object p0
.end method

.method public static isChild()Z
    .registers 1

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->isCurrentUserAChild()Z

    move-result v0

    return v0
.end method
