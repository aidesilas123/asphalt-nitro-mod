###### Class com.facebook.ads.redexgen.X.C6W (com.facebook.ads.redexgen.X.6W)
.class public final Lcom/facebook/ads/redexgen/X/6W;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z


# direct methods
.method public constructor <init>(ZII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/6W;->A02:Z

    iput p2, p0, Lcom/facebook/ads/redexgen/X/6W;->A01:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/6W;->A00:I

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A00:I

    return v0
.end method

.method public final A01()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A01:I

    return v0
.end method

.method public final A02()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6W;->A02:Z

    return v0
.end method
