###### Class com.facebook.ads.redexgen.X.C1117Jm (com.facebook.ads.redexgen.X.Jm)
.class public Lcom/facebook/ads/redexgen/X/Jm;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Jl;
    }
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/8F;

.field public final A01:Lcom/facebook/ads/redexgen/X/Jl;

.field public final A02:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jl;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Jm;-><init>(Lcom/facebook/ads/redexgen/X/Jl;Lcom/facebook/ads/redexgen/X/8F;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Jl;Lcom/facebook/ads/redexgen/X/8F;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jm;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jm;->A00:Lcom/facebook/ads/redexgen/X/8F;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Jm;->A02:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A00()Lcom/facebook/ads/redexgen/X/8F;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jm;->A00:Lcom/facebook/ads/redexgen/X/8F;

    return-object v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Jl;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jm;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jm;->A02:Ljava/lang/String;

    return-object v0
.end method
