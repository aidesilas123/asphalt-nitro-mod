###### Class com.facebook.ads.redexgen.X.C9T (com.facebook.ads.redexgen.X.9T)
.class public final Lcom/facebook/ads/redexgen/X/9T;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SeekPosition"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:J

.field public final A02:Lcom/facebook/ads/redexgen/X/9z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9z;IJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9T;->A02:Lcom/facebook/ads/redexgen/X/9z;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/9T;->A00:I

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/9T;->A01:J

    return-void
.end method
