###### Class com.facebook.ads.redexgen.X.C9Q (com.facebook.ads.redexgen.X.9Q)
.class public final Lcom/facebook/ads/redexgen/X/9Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaSourceRefreshInfo"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/9z;

.field public final A01:Lcom/facebook/ads/redexgen/X/EY;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/EY;Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9Q;->A01:Lcom/facebook/ads/redexgen/X/EY;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9Q;->A00:Lcom/facebook/ads/redexgen/X/9z;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9Q;->A02:Ljava/lang/Object;

    return-void
.end method
