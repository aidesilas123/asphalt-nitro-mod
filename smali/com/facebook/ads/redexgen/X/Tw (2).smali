###### Class com.facebook.ads.redexgen.X.C1383Tw (com.facebook.ads.redexgen.X.Tw)
.class public final Lcom/facebook/ads/redexgen/X/Tw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LB;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/LD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LimitLineProcessor"
.end annotation


# instance fields
.field public A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/LB;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LB;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/LB;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Tw;->A00:I

    return-void
.end method


# virtual methods
.method public final ADy(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A00:I

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/LB;->ADy(Ljava/lang/String;)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A00:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A00:I

    :cond_f
    return-void
.end method

.method public final flush()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/LB;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LB;->flush()V

    return-void
.end method
