###### Class com.facebook.ads.redexgen.X.AnonymousClass23 (com.facebook.ads.redexgen.X.23)
.class public final Lcom/facebook/ads/redexgen/X/23;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/InterstitialAd;

.field public A02:Lcom/facebook/ads/InterstitialAdListener;

.field public A03:Lcom/facebook/ads/RewardData;

.field public A04:Lcom/facebook/ads/RewardedAdListener;

.field public A05:Ljava/lang/String;

.field public A06:Ljava/lang/String;

.field public A07:Ljava/lang/String;

.field public A08:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0A:Ljava/lang/String;

.field public final A0B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/InterstitialAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/InterstitialAd;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A09:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/23;->A0A:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/23;->A01:Lcom/facebook/ads/InterstitialAd;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A0B:Ljava/lang/ref/WeakReference;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/23;->A00:J

    return-void
.end method


# virtual methods
.method public final A00()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/23;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/InterstitialAd;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A01:Lcom/facebook/ads/InterstitialAd;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A0B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/InterstitialAd;

    goto :goto_4
.end method

.method public final A02()Lcom/facebook/ads/InterstitialAdListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A02:Lcom/facebook/ads/InterstitialAdListener;

    return-object v0
.end method

.method public final A03()Lcom/facebook/ads/RewardData;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A03:Lcom/facebook/ads/RewardData;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/RewardedAdListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A04:Lcom/facebook/ads/RewardedAdListener;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/YA;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A09:Lcom/facebook/ads/redexgen/X/YA;

    return-object v0
.end method

.method public final A06()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A05:Ljava/lang/String;

    return-object v0
.end method

.method public final A07()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A06:Ljava/lang/String;

    return-object v0
.end method

.method public final A08()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A07:Ljava/lang/String;

    return-object v0
.end method

.method public final A09()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A0A:Ljava/lang/String;

    return-object v0
.end method

.method public final A0A()Ljava/util/EnumSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A08:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final A0B(J)V
    .registers 3

    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/23;->A00:J

    return-void
.end method

.method public final A0C(Lcom/facebook/ads/InterstitialAd;)V
    .registers 3

    if-nez p1, :cond_b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/23;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A01:Lcom/facebook/ads/InterstitialAd;

    return-void
.end method

.method public final A0D(Lcom/facebook/ads/InterstitialAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A02:Lcom/facebook/ads/InterstitialAdListener;

    return-void
.end method

.method public final A0E(Lcom/facebook/ads/RewardData;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A03:Lcom/facebook/ads/RewardData;

    return-void
.end method

.method public final A0F(Lcom/facebook/ads/RewardedAdListener;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A04:Lcom/facebook/ads/RewardedAdListener;

    return-void
.end method

.method public final A0G(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A05:Ljava/lang/String;

    return-void
.end method

.method public final A0H(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A06:Ljava/lang/String;

    return-void
.end method

.method public final A0I(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A07:Ljava/lang/String;

    return-void
.end method

.method public final A0J(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/23;->A08:Ljava/util/EnumSet;

    return-void
.end method
