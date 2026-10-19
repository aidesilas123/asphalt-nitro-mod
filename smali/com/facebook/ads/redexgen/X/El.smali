###### Class com.facebook.ads.redexgen.X.C0990El (com.facebook.ads.redexgen.X.El)
.class public final Lcom/facebook/ads/redexgen/X/El;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaLoadData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:J

.field public final A04:J

.field public final A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A06:Ljava/lang/Object;


# direct methods
.method public constructor <init>(IILcom/facebook/ads/internal/exoplayer2/thirdparty/Format;ILjava/lang/Object;JJ)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/El;->A00:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/El;->A02:I

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/El;->A01:I

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/El;->A06:Ljava/lang/Object;

    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/El;->A04:J

    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/El;->A03:J

    return-void
.end method
