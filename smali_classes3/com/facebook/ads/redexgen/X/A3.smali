###### Class com.facebook.ads.redexgen.X.A3 (com.facebook.ads.redexgen.X.A3)
.class public final Lcom/facebook/ads/redexgen/X/A3;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTime"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:Lcom/facebook/ads/redexgen/X/9z;

.field public final A06:Lcom/facebook/ads/redexgen/X/EW;


# direct methods
.method public constructor <init>(JLcom/facebook/ads/redexgen/X/9z;ILcom/facebook/ads/redexgen/X/EW;JJJ)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/A3;->A03:J

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/A3;->A05:Lcom/facebook/ads/redexgen/X/9z;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/A3;->A00:I

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/A3;->A06:Lcom/facebook/ads/redexgen/X/EW;

    iput-wide p6, p0, Lcom/facebook/ads/redexgen/X/A3;->A02:J

    iput-wide p8, p0, Lcom/facebook/ads/redexgen/X/A3;->A01:J

    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/A3;->A04:J

    return-void
.end method
