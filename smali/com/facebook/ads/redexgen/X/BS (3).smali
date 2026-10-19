###### Class com.facebook.ads.redexgen.X.BS (com.facebook.ads.redexgen.X.BS)
.class public final Lcom/facebook/ads/redexgen/X/BS;
.super Lcom/facebook/ads/redexgen/X/Vn;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/ET;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/ExtractorMediaSource$EventListenerWrapper;,
        Lcom/facebook/ads/redexgen/X/Vi;,
        Lcom/facebook/ads/internal/exoplayer2/thirdparty/source/ExtractorMediaSource$EventListener;
    }
.end annotation


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:I

.field public final A03:I

.field public final A04:Landroid/net/Uri;

.field public final A05:Lcom/facebook/ads/redexgen/X/Bd;

.field public final A06:Lcom/facebook/ads/redexgen/X/Gb;

.field public final A07:Ljava/lang/Object;

.field public final A08:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/Bd;ILjava/lang/String;ILjava/lang/Object;)V
    .registers 10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Vn;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:Landroid/net/Uri;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/BS;->A06:Lcom/facebook/ads/redexgen/X/Gb;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/Bd;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/BS;->A03:I

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/BS;->A08:Ljava/lang/String;

    iput p6, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/BS;->A07:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/Bd;ILjava/lang/String;ILjava/lang/Object;Lcom/facebook/ads/redexgen/X/EU;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/facebook/ads/redexgen/X/BS;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gb;Lcom/facebook/ads/redexgen/X/Bd;ILjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private A00(JZ)V
    .registers 11

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Z

    new-instance v1, Lcom/facebook/ads/redexgen/X/Ve;

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Z

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/BS;->A07:Ljava/lang/Object;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ve;-><init>(JZZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vn;->A01(Lcom/facebook/ads/redexgen/X/9z;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final A02()V
    .registers 1

    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/XT;Z)V
    .registers 6

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/BS;->A00(JZ)V

    return-void
.end method

.method public final A4g(Lcom/facebook/ads/redexgen/X/EW;Lcom/facebook/ads/redexgen/X/GU;)Lcom/facebook/ads/redexgen/X/Vg;
    .registers 14

    iget v0, p1, Lcom/facebook/ads/redexgen/X/EW;->A02:I

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/BT;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/BS;->A04:Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A06:Lcom/facebook/ads/redexgen/X/Gb;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Gb;->A4U()Lcom/facebook/ads/redexgen/X/Gc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A05:Lcom/facebook/ads/redexgen/X/Bd;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Bd;->A4Y()[Lcom/facebook/ads/redexgen/X/Ba;

    move-result-object v4

    iget v5, p0, Lcom/facebook/ads/redexgen/X/BS;->A03:I

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Vn;->A00(Lcom/facebook/ads/redexgen/X/EW;)Lcom/facebook/ads/redexgen/X/Ej;

    move-result-object v6

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/BS;->A08:Ljava/lang/String;

    iget v10, p0, Lcom/facebook/ads/redexgen/X/BS;->A02:I

    move-object v7, p0

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/facebook/ads/redexgen/X/BT;-><init>(Landroid/net/Uri;Lcom/facebook/ads/redexgen/X/Gc;[Lcom/facebook/ads/redexgen/X/Ba;ILcom/facebook/ads/redexgen/X/Ej;Lcom/facebook/ads/redexgen/X/ET;Lcom/facebook/ads/redexgen/X/GU;Ljava/lang/String;I)V

    return-object v1

    :cond_28
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final AA4()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final ACy(JZ)V
    .registers 7

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v1

    if-nez v0, :cond_b

    iget-wide p1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    :cond_b
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/BS;->A00:J

    cmp-long v0, v1, p1

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/BS;->A01:Z

    if-ne v0, p3, :cond_16

    return-void

    :cond_16
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/BS;->A00(JZ)V

    return-void
.end method

.method public final AET(Lcom/facebook/ads/redexgen/X/Vg;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/redexgen/X/BT;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/BT;->A0R()V

    return-void
.end method
