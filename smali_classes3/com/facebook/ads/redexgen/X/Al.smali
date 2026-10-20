###### Class com.facebook.ads.redexgen.X.C0905Al (com.facebook.ads.redexgen.X.Al)
.class public final Lcom/facebook/ads/redexgen/X/Al;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/UI;


# instance fields
.field public A00:Lcom/facebook/ads/NativeAdBase;

.field public A01:Lcom/facebook/ads/NativeAdListener;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/NativeAdListener;Lcom/facebook/ads/NativeAdBase;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Al;->A01:Lcom/facebook/ads/NativeAdListener;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Al;->A00:Lcom/facebook/ads/NativeAdBase;

    return-void
.end method


# virtual methods
.method public final AAN()V
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/UE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UE;-><init>(Lcom/facebook/ads/redexgen/X/Al;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jz;->A00(Lcom/facebook/ads/redexgen/X/Jv;)V

    return-void
.end method

.method public final AAR()V
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/UF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UF;-><init>(Lcom/facebook/ads/redexgen/X/Al;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jz;->A00(Lcom/facebook/ads/redexgen/X/Jv;)V

    return-void
.end method

.method public final ABH(Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/UH;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/UH;-><init>(Lcom/facebook/ads/redexgen/X/Al;Lcom/facebook/ads/redexgen/X/JG;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jz;->A00(Lcom/facebook/ads/redexgen/X/Jv;)V

    return-void
.end method

.method public final ABy()V
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/UD;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UD;-><init>(Lcom/facebook/ads/redexgen/X/Al;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jz;->A00(Lcom/facebook/ads/redexgen/X/Jv;)V

    return-void
.end method

.method public final AC3()V
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/UG;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UG;-><init>(Lcom/facebook/ads/redexgen/X/Al;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jz;->A00(Lcom/facebook/ads/redexgen/X/Jv;)V

    return-void
.end method
