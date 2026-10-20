###### Class com.facebook.ads.redexgen.X.C1331Rv (com.facebook.ads.redexgen.X.Rv)
.class public final Lcom/facebook/ads/redexgen/X/Rv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final A06:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .registers 10
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A06:I

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A05:Ljava/lang/String;

    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    iput-wide p2, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:J

    mul-long/2addr p4, v0

    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:J

    mul-long/2addr v0, p6

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A02:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:J

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:J

    return-void
.end method


# virtual methods
.method public final A00()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:J

    return-wide v0
.end method

.method public final A01()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:J

    return-wide v0
.end method

.method public final A02()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A02:J

    return-wide v0
.end method

.method public final A03()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:J

    return-wide v0
.end method

.method public final A04()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:J

    return-wide v0
.end method

.method public final A05()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final A06(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A00:J

    return-void
.end method

.method public final A07(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A01:J

    return-void
.end method

.method public final A08(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A02:J

    return-void
.end method

.method public final A09(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/Rv;->A03:J

    return-void
.end method

.method public final A0A(J)V
    .registers 5

    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Rv;->A04:J

    return-void
.end method
