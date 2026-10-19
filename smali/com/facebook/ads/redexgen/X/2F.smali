###### Class com.facebook.ads.redexgen.X.C2F (com.facebook.ads.redexgen.X.2F)
.class public final Lcom/facebook/ads/redexgen/X/2F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2E;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/2E;

.field public A01:Lcom/facebook/ads/redexgen/X/2E;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/facebook/ads/redexgen/X/2F;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 5

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/ads/redexgen/X/2F;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/2E;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/2E;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:Lcom/facebook/ads/redexgen/X/2E;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2E;

    invoke-direct {v0, p3, p4}, Lcom/facebook/ads/redexgen/X/2E;-><init>(D)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2F;->A02()V

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/2E;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:Lcom/facebook/ads/redexgen/X/2E;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/2E;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/2E;

    return-object v0
.end method

.method public final A02()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2E;->A06()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2E;->A06()V

    return-void
.end method

.method public final A03()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2E;->A07()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2E;->A07()V

    return-void
.end method

.method public final A04(DD)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A00:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/2E;->A08(DD)V

    return-void
.end method

.method public final A05(DD)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2F;->A01:Lcom/facebook/ads/redexgen/X/2E;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/2E;->A08(DD)V

    return-void
.end method
