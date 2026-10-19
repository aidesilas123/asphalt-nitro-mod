###### Class com.fyber.marketplace.fairbid.bridge.MarketplaceAdLoadError (com.fyber.marketplace.fairbid.bridge.MarketplaceAdLoadError)
.class public final enum Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

.field public static final enum b:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

.field public static final enum c:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

.field public static final enum d:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

.field public static final enum e:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

.field private static final synthetic f:[Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    const-string v1, "RESPONSE_VALIDATION_FAILED"

    const/4 v2, 0x0

    const-string v3, "Response validation failed"

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->a:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    new-instance v1, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    const-string v3, "FAILED_TO_PARSE_AD_CONTENT"

    const/4 v4, 0x1

    const-string v5, "Failed to parse ad content"

    invoke-direct {v1, v3, v4, v5}, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->b:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    new-instance v3, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    const-string v5, "FAILED_TO_LOAD_AD"

    const/4 v6, 0x2

    const-string v7, "Failed to load the ad "

    invoke-direct {v3, v5, v6, v7}, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->c:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    new-instance v5, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    const-string v7, "FMP_NOT_READY_TO_LOAD_ADS"

    const/4 v8, 0x3

    const-string v9, "FMP Configuration not available or invalid. Ads cannot be loaded"

    invoke-direct {v5, v7, v8, v9}, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->d:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    new-instance v7, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    const-string v9, "UNSUPPORTED_AD_TYPE"

    const/4 v10, 0x4

    const-string v11, "FMP does not know how to load the received creative type"

    invoke-direct {v7, v9, v10, v11}, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->e:Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->f:[Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->g:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;
    .registers 2

    const-class v0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    return-object p0
.end method

.method public static values()[Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;
    .registers 1

    sget-object v0, Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->f:[Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    invoke-virtual {v0}, [Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/marketplace/fairbid/bridge/MarketplaceAdLoadError;

    return-object v0
.end method
