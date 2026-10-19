###### Class com.facebook.ads.redexgen.X.C0933Br (com.facebook.ads.redexgen.X.Br)
.class public final Lcom/facebook/ads/redexgen/X/Br;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Wr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MasterElement"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:I

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Br;->A01:J

    return-void
.end method

.method public synthetic constructor <init>(IJLcom/facebook/ads/redexgen/X/Bp;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Br;-><init>(IJ)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Br;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/Br;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Br;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Br;->A01:J

    return-wide v0
.end method
