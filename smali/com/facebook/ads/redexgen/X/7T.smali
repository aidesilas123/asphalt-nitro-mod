###### Class com.facebook.ads.redexgen.X.C08377t (com.facebook.ads.redexgen.X.7t)
.class public final Lcom/facebook/ads/redexgen/X/7t;
.super Lcom/facebook/ads/redexgen/X/Ob;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7K;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7K;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:Lcom/facebook/ads/redexgen/X/7K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ob;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/75;)V
    .registers 6

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/7t;->A00:Lcom/facebook/ads/redexgen/X/7K;

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7K;->A02(Lcom/facebook/ads/redexgen/X/7K;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    const/4 v1, 0x0

    if-eq v2, v0, :cond_14

    const/4 v0, 0x1

    :goto_10
    invoke-static {v3, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/7K;->A09(Lcom/facebook/ads/redexgen/X/7K;Lcom/facebook/ads/redexgen/X/75;ZZ)V

    return-void

    :cond_14
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public final bridge synthetic A03(Lcom/facebook/ads/redexgen/X/8Y;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/75;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7t;->A00(Lcom/facebook/ads/redexgen/X/75;)V

    return-void
.end method
