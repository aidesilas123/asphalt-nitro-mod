###### Class com.facebook.ads.redexgen.X.C0946Cn (com.facebook.ads.redexgen.X.Cn)
.class public final Lcom/facebook/ads/redexgen/X/Cn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/WB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PesReader"
.end annotation


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/Cg;

.field public final A06:Lcom/facebook/ads/redexgen/X/Hg;

.field public final A07:Lcom/facebook/ads/redexgen/X/Ht;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Cg;Lcom/facebook/ads/redexgen/X/Ht;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Cn;->A05:Lcom/facebook/ads/redexgen/X/Cg;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Cn;->A07:Lcom/facebook/ads/redexgen/X/Ht;

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/Hg;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Hg;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    return-void
.end method

.method private A00()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A03:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hg;->A0F()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A02:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A00:I

    return-void
.end method

.method private A01()V
    .registers 11

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A01:J

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A03:Z

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v1, v0

    const/16 v9, 0x1e

    shl-long/2addr v1, v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    const/16 v8, 0xf

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v3, v0

    or-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v3, v0

    or-long/2addr v1, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A04:Z

    if-nez v0, :cond_78

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A02:Z

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v3, v0

    shl-long/2addr v3, v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    shl-int/2addr v0, v8

    int-to-long v5, v0

    or-long/2addr v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/Hg;->A04(I)I

    move-result v0

    int-to-long v5, v0

    or-long/2addr v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/Hg;->A08(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A07:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-virtual {v0, v3, v4}, Lcom/facebook/ads/redexgen/X/Ht;->A07(J)J

    iput-boolean v7, p0, Lcom/facebook/ads/redexgen/X/Cn;->A04:Z

    :cond_78
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A07:Lcom/facebook/ads/redexgen/X/Ht;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Ht;->A07(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A01:J

    :cond_80
    return-void
.end method


# virtual methods
.method public final A02()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A04:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A05:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cg;->AEv()V

    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/Hh;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/9d;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cn;->A00()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Hg;->A00:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A00:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Hh;->A0c([BII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A06:Lcom/facebook/ads/redexgen/X/Hg;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Hg;->A07(I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Cn;->A01()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Cn;->A05:Lcom/facebook/ads/redexgen/X/Cg;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/Cn;->A01:J

    const/4 v0, 0x1

    invoke-interface {v3, v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Cg;->ADj(JZ)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A05:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Cg;->A4O(Lcom/facebook/ads/redexgen/X/Hh;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Cn;->A05:Lcom/facebook/ads/redexgen/X/Cg;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Cg;->ADi()V

    return-void
.end method
