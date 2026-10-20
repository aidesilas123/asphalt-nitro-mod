###### Class com.facebook.ads.redexgen.X.C4A (com.facebook.ads.redexgen.X.4A)
.class public final Lcom/facebook/ads/redexgen/X/4A;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/EG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveInfo"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:Lcom/facebook/ads/redexgen/X/4u;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4u;IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4A;->A04:Lcom/facebook/ads/redexgen/X/4u;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/4A;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/4A;->A01:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/4A;->A02:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/4A;->A03:I

    return-void
.end method
