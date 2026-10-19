###### Class com.facebook.ads.redexgen.X.C1412Uz (com.facebook.ads.redexgen.X.Uz)
.class public final Lcom/facebook/ads/redexgen/X/Uz;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Gb;


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/GZ;

.field public final A02:Lcom/facebook/ads/redexgen/X/Gb;

.field public final A03:Lcom/facebook/ads/redexgen/X/Gb;

.field public final A04:Lcom/facebook/ads/redexgen/X/H2;

.field public final A05:Lcom/facebook/ads/redexgen/X/H4;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/GZ;ILcom/facebook/ads/redexgen/X/H4;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uz;->A04:Lcom/facebook/ads/redexgen/X/H2;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Uz;->A01:Lcom/facebook/ads/redexgen/X/GZ;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:I

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/Uz;->A05:Lcom/facebook/ads/redexgen/X/H4;

    return-void
.end method

.method private final A00()Lcom/facebook/ads/redexgen/X/V0;
    .registers 9

    new-instance v1, Lcom/facebook/ads/redexgen/X/V0;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uz;->A04:Lcom/facebook/ads/redexgen/X/H2;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A03:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gb;->A4U()Lcom/facebook/ads/redexgen/X/Gc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gb;->A4U()Lcom/facebook/ads/redexgen/X/Gc;

    move-result-object v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uz;->A01:Lcom/facebook/ads/redexgen/X/GZ;

    if-eqz v0, :cond_20

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GZ;->createDataSink()Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v5

    :goto_18
    iget v6, p0, Lcom/facebook/ads/redexgen/X/Uz;->A00:I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/Uz;->A05:Lcom/facebook/ads/redexgen/X/H4;

    invoke-direct/range {v1 .. v7}, Lcom/facebook/ads/redexgen/X/V0;-><init>(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/Gc;Lcom/facebook/ads/redexgen/X/Ga;ILcom/facebook/ads/redexgen/X/H4;)V

    return-object v1

    :cond_20
    const/4 v5, 0x0

    goto :goto_18
.end method


# virtual methods
.method public final bridge synthetic A4U()Lcom/facebook/ads/redexgen/X/Gc;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uz;->A00()Lcom/facebook/ads/redexgen/X/V0;

    move-result-object v0

    return-object v0
.end method
