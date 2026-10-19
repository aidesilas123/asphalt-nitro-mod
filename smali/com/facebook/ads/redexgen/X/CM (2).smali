###### Class com.facebook.ads.redexgen.X.CM (com.facebook.ads.redexgen.X.CM)
.class public final Lcom/facebook/ads/redexgen/X/CM;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/extractor/mp4/Track$Transformation;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A08:[J

.field public final A09:[J

.field public final A0A:[Lcom/facebook/ads/redexgen/X/CN;


# direct methods
.method public constructor <init>(IIJJJLcom/facebook/ads/internal/exoplayer2/thirdparty/Format;I[Lcom/facebook/ads/redexgen/X/CN;I[J[J)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/CM;->A00:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/CM;->A03:I

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/CM;->A06:J

    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/CM;->A05:J

    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/CM;->A04:J

    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/CM;->A07:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput p10, p0, Lcom/facebook/ads/redexgen/X/CM;->A02:I

    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:[Lcom/facebook/ads/redexgen/X/CN;

    iput p12, p0, Lcom/facebook/ads/redexgen/X/CM;->A01:I

    iput-object p13, p0, Lcom/facebook/ads/redexgen/X/CM;->A08:[J

    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/CM;->A09:[J

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/CN;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/CM;->A0A:[Lcom/facebook/ads/redexgen/X/CN;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    aget-object v0, v0, p1

    goto :goto_5
.end method
