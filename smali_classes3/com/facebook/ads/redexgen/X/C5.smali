###### Class com.facebook.ads.redexgen.X.C5 (com.facebook.ads.redexgen.X.C5)
.class public final Lcom/facebook/ads/redexgen/X/C5;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/C6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TkhdData"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:J


# direct methods
.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:J

    iput p4, p0, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/C5;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/C5;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/C5;->A01:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/C5;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/C5;->A02:J

    return-wide v0
.end method
