###### Class com.facebook.ads.redexgen.X.AA (com.facebook.ads.redexgen.X.AA)
.class public final Lcom/facebook/ads/redexgen/X/AA;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A01:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/AA;->A02:I

    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/AB;
    .registers 6

    iget v4, p0, Lcom/facebook/ads/redexgen/X/AA;->A00:I

    iget v3, p0, Lcom/facebook/ads/redexgen/X/AA;->A01:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/AA;->A02:I

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/AB;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/AB;-><init>(IIILcom/facebook/ads/redexgen/X/A9;)V

    return-object v0
.end method
