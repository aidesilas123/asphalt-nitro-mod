###### Class com.facebook.ads.redexgen.X.U5 (com.facebook.ads.redexgen.X.U5)
.class public final Lcom/facebook/ads/redexgen/X/U5;
.super Lcom/facebook/ads/redexgen/X/Jm;
.source ""


# instance fields
.field public final A00:I

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8F;)V
    .registers 6

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jl;->A03:Lcom/facebook/ads/redexgen/X/Jl;

    const/4 v0, 0x0

    invoke-direct {p0, v1, p3, v0}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/redexgen/X/Jl;Lcom/facebook/ads/redexgen/X/8F;Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Lcom/facebook/ads/redexgen/X/8F;
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Jm;->A00()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v0

    return-object v0
.end method

.method public final A03()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A00:I

    return v0
.end method

.method public final A04()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/U5;->A01:Ljava/lang/String;

    return-object v0
.end method
