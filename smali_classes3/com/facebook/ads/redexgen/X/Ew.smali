###### Class com.facebook.ads.redexgen.X.C1001Ew (com.facebook.ads.redexgen.X.Ew)
.class public final Lcom/facebook/ads/redexgen/X/Ew;
.super Lcom/facebook/ads/redexgen/X/a9;
.source ""


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1r;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/a9;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1r;)V

    return-void
.end method

.method private A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/a6;
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/a6;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/a6;-><init>(Lcom/facebook/ads/redexgen/X/Ew;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Ew;)V
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/a9;->A0H()V

    return-void
.end method


# virtual methods
.method public final A0F()Lcom/facebook/ads/redexgen/X/1C;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aj;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aj;->A09()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final A0L()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A01:Lcom/facebook/ads/redexgen/X/0o;

    check-cast v0, Lcom/facebook/ads/redexgen/X/aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aj;->A0B()Z

    return-void
.end method

.method public final A0N(Lcom/facebook/ads/redexgen/X/0o;Lcom/facebook/ads/redexgen/X/8F;Lcom/facebook/ads/redexgen/X/8D;Lcom/facebook/ads/redexgen/X/1s;)V
    .registers 17

    move-object v4, p1

    check-cast v4, Lcom/facebook/ads/redexgen/X/aj;

    new-instance v3, Lcom/facebook/ads/redexgen/X/a7;

    move-object/from16 v7, p4

    invoke-direct {v3, p0, v7, v4}, Lcom/facebook/ads/redexgen/X/a7;-><init>(Lcom/facebook/ads/redexgen/X/Ew;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/aj;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/a9;->A0E()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8G;->A05()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/a9;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Ew;->A00(Ljava/lang/Runnable;)Lcom/facebook/ads/redexgen/X/a6;

    move-result-object v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/1r;->A0A:Ljava/util/EnumSet;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/1r;->A04:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/1r;->A05:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a9;->A07:Lcom/facebook/ads/redexgen/X/1r;

    iget-object v11, v0, Lcom/facebook/ads/redexgen/X/1r;->A02:Lcom/facebook/ads/RewardData;

    invoke-virtual/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/aj;->A0A(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/0y;Lcom/facebook/ads/redexgen/X/1s;Ljava/util/EnumSet;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/RewardData;)V

    return-void
.end method
