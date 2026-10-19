###### Class com.facebook.ads.redexgen.X.C0996Er (com.facebook.ads.redexgen.X.Er)
.class public final Lcom/facebook/ads/redexgen/X/Er;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Vf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AllocationNode"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Er;

.field public A01:Lcom/facebook/ads/redexgen/X/GT;

.field public A02:Z

.field public final A03:J

.field public final A04:J


# direct methods
.method public constructor <init>(JI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Er;->A04:J

    int-to-long v0, p3

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A03:J

    return-void
.end method


# virtual methods
.method public final A00(J)I
    .registers 5

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A04:J

    sub-long/2addr p1, v0

    long-to-int v1, p1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/GT;->A00:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/Er;
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    return-object v0
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/GT;Lcom/facebook/ads/redexgen/X/Er;)V
    .registers 4

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Er;->A01:Lcom/facebook/ads/redexgen/X/GT;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Er;->A00:Lcom/facebook/ads/redexgen/X/Er;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Er;->A02:Z

    return-void
.end method
