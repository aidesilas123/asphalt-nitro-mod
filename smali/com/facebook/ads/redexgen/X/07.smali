###### Class com.facebook.ads.redexgen.X.AnonymousClass07 (com.facebook.ads.redexgen.X.07)
.class public final Lcom/facebook/ads/redexgen/X/07;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/07;->A00:I

    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/07;->A01:I

    return-object p0
.end method

.method public final A02(Z)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/07;->A02:Z

    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/07;->A03:Z

    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/07;->A04:Z

    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/08;
    .registers 7

    new-instance v0, Lcom/facebook/ads/redexgen/X/08;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/07;->A00:I

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/07;->A02:Z

    iget v3, p0, Lcom/facebook/ads/redexgen/X/07;->A01:I

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/07;->A03:Z

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/07;->A04:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/08;-><init>(IZIZZ)V

    return-object v0
.end method
