###### Class com.facebook.ads.redexgen.X.C1600b0 (com.facebook.ads.redexgen.X.b0)
.class public final Lcom/facebook/ads/redexgen/X/b0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0V;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/0T;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/0T;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/b0;->A00:Lcom/facebook/ads/redexgen/X/0T;

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/0T;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/b0;->A00:Lcom/facebook/ads/redexgen/X/0T;

    return-object v0
.end method

.method public final A9x()Lcom/facebook/ads/redexgen/X/FS;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/FS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/FS;-><init>(Lcom/facebook/ads/redexgen/X/b0;)V

    return-object v0
.end method

.method public final A9y()Lcom/facebook/ads/redexgen/X/b2;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/b2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/b2;-><init>(Lcom/facebook/ads/redexgen/X/b0;)V

    return-object v0
.end method
