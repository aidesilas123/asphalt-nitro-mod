###### Class com.facebook.ads.redexgen.X.AbstractC0964Dl (com.facebook.ads.redexgen.X.Dl)
.class public abstract Lcom/facebook/ads/redexgen/X/Dl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/XS;
.implements Lcom/facebook/ads/redexgen/X/9s;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Lcom/facebook/ads/redexgen/X/9t;

.field public A04:Lcom/facebook/ads/redexgen/X/Et;

.field public A05:Z

.field public A06:Z

.field public A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

.field public final A08:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A08:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A05:Z

    return-void
.end method

.method public static A0x(Lcom/facebook/ads/redexgen/X/BK;Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/BK<",
            "*>;",
            "Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/BK;->A46(Lcom/facebook/ads/internal/exoplayer2/thirdparty/drm/DrmInitData;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0y()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A00:I

    return v0
.end method

.method public final A0z(J)I
    .registers 6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A02:J

    sub-long/2addr p1, v0

    invoke-interface {v2, p1, p2}, Lcom/facebook/ads/redexgen/X/Et;->AFd(J)I

    move-result v0

    return v0
.end method

.method public final A10(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I
    .registers 11

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Et;->AEC(Lcom/facebook/ads/redexgen/X/9X;Lcom/facebook/ads/redexgen/X/XE;Z)I

    move-result v6

    const/4 v1, -0x4

    if-ne v6, v1, :cond_21

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/Ap;->A04()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    if-eqz v0, :cond_17

    :goto_16
    return v1

    :cond_17
    const/4 v1, -0x3

    goto :goto_16

    :cond_19
    iget-wide v2, p2, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A02:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Lcom/facebook/ads/redexgen/X/XE;->A00:J

    goto :goto_3c

    :cond_21
    const/4 v0, -0x5

    if-ne v6, v0, :cond_3c

    iget-object v5, p1, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iget-wide v3, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3c

    iget-wide v2, v5, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0G:J

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A02:J

    add-long/2addr v2, v0

    invoke-virtual {v5, v2, v3}, Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;->A0H(J)Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    move-result-object v0

    iput-object v0, p1, Lcom/facebook/ads/redexgen/X/9X;->A00:Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    :cond_3c
    :goto_3c
    return v6
.end method

.method public final A11()Lcom/facebook/ads/redexgen/X/9t;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A03:Lcom/facebook/ads/redexgen/X/9t;

    return-object v0
.end method

.method public A12()V
    .registers 1

    return-void
.end method

.method public A13()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public A14()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public A15(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public A16(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public final A18()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A05:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Et;->A90()Z

    move-result v0

    goto :goto_6
.end method

.method public final A19()[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    return-object v0
.end method

.method public final A53()V
    .registers 4

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne v2, v0, :cond_16

    :goto_6
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A12()V

    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final A5Q(Lcom/facebook/ads/redexgen/X/9t;[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Et;JZJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    const/4 v1, 0x1

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A03:Lcom/facebook/ads/redexgen/X/9t;

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    invoke-virtual {p0, p6}, Lcom/facebook/ads/redexgen/X/Dl;->A16(Z)V

    invoke-virtual {p0, p2, p3, p7, p8}, Lcom/facebook/ads/redexgen/X/Dl;->AEd([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Et;J)V

    invoke-virtual {p0, p4, p5, p6}, Lcom/facebook/ads/redexgen/X/Dl;->A15(JZ)V

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final A6D()Lcom/facebook/ads/redexgen/X/9s;
    .registers 1

    return-object p0
.end method

.method public A7F()Lcom/facebook/ads/redexgen/X/HY;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final A7t()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    return v0
.end method

.method public final A7w()Lcom/facebook/ads/redexgen/X/Et;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    return-object v0
.end method

.method public final A83()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A08:I

    return v0
.end method

.method public A8L(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    return-void
.end method

.method public final A8Q()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A05:Z

    return v0
.end method

.method public final A8n()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    return v0
.end method

.method public final AA5()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Et;->AA2()V

    return-void
.end method

.method public final AEd([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;Lcom/facebook/ads/redexgen/X/Et;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Dl;->A04:Lcom/facebook/ads/redexgen/X/Et;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A05:Z

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A07:[Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;

    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Dl;->A02:J

    invoke-virtual {p0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/Dl;->A17([Lcom/facebook/ads/internal/exoplayer2/thirdparty/Format;J)V

    return-void
.end method

.method public final AEn(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A05:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Dl;->A15(JZ)V

    return-void
.end method

.method public final AFE()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A06:Z

    return-void
.end method

.method public final AFH(I)V
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A00:I

    return-void
.end method

.method public AFv()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final start()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_f

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A13()V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final stop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9K;
        }
    .end annotation

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v2, v0, :cond_10

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Dl;->A01:I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Dl;->A14()V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method
