###### Class com.facebook.ads.redexgen.X.JD (com.facebook.ads.redexgen.X.JD)
.class public final Lcom/facebook/ads/redexgen/X/JD;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityRecord"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(III)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/JD;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/JD;->A01:I

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/facebook/ads/redexgen/X/JB;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/JD;-><init>(III)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/JD;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/JD;->A00:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/JD;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/JD;->A02:I

    return p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/JD;)I
    .registers 1

    iget p0, p0, Lcom/facebook/ads/redexgen/X/JD;->A01:I

    return p0
.end method
