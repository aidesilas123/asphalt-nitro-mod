###### Class com.facebook.ads.redexgen.X.C1025Fu (com.facebook.ads.redexgen.X.Fu)
.class public final Lcom/facebook/ads/redexgen/X/Fu;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:F

.field public final A03:F

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    const/high16 v7, -0x80000000

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Fu;-><init>(Ljava/lang/String;FFIIFIF)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FFIIFIF)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Fu;->A07:Ljava/lang/String;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Fu;->A01:F

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Fu;->A00:F

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Fu;->A05:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Fu;->A04:I

    iput p6, p0, Lcom/facebook/ads/redexgen/X/Fu;->A03:F

    iput p7, p0, Lcom/facebook/ads/redexgen/X/Fu;->A06:I

    iput p8, p0, Lcom/facebook/ads/redexgen/X/Fu;->A02:F

    return-void
.end method
