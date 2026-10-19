###### Class com.facebook.ads.redexgen.X.MR (com.facebook.ads.redexgen.X.MR)
.class public abstract Lcom/facebook/ads/redexgen/X/MR;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/2I;

.field public A02:Lcom/facebook/ads/redexgen/X/2J;

.field public A03:Lcom/facebook/ads/redexgen/X/2K;

.field public final A04:Lcom/facebook/ads/redexgen/X/2G;

.field public final A05:Lcom/facebook/ads/redexgen/X/YA;

.field public final A06:Lcom/facebook/ads/redexgen/X/If;

.field public final A07:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A08:Lcom/facebook/ads/redexgen/X/Lu;

.field public final A09:Ljava/lang/String;

.field public final A0A:Lcom/facebook/ads/redexgen/X/1X;

.field public final A0B:Lcom/facebook/ads/redexgen/X/MT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/MR;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1X;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/Lt;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1X;Lcom/facebook/ads/redexgen/X/Lu;Lcom/facebook/ads/redexgen/X/Lt;)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/2I;->A04:Lcom/facebook/ads/redexgen/X/2I;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Lcom/facebook/ads/redexgen/X/2K;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TP;-><init>(Lcom/facebook/ads/redexgen/X/MR;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A0B:Lcom/facebook/ads/redexgen/X/MT;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MR;->A06:Lcom/facebook/ads/redexgen/X/If;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/MR;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/MR;->A07:Lcom/facebook/ads/redexgen/X/Lt;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/MR;->A09:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/MR;->A0A:Lcom/facebook/ads/redexgen/X/1X;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2H;->A00(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/2G;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Lcom/facebook/ads/redexgen/X/2G;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/MR;)I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    return v1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/MR;)I
    .registers 3

    iget v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    return v1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/2G;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A04:Lcom/facebook/ads/redexgen/X/2G;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/2I;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/MR;Lcom/facebook/ads/redexgen/X/2I;)Lcom/facebook/ads/redexgen/X/2I;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    return-object p1
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/2J;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/2K;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Lcom/facebook/ads/redexgen/X/2K;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/Lt;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A07:Lcom/facebook/ads/redexgen/X/Lt;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/MR;)Lcom/facebook/ads/redexgen/X/Lu;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/MR;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/MR;->A09:Ljava/lang/String;

    return-object p0
.end method

.method private A0B()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A0A()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MR;->A06:Lcom/facebook/ads/redexgen/X/If;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/If;->A9F(Ljava/lang/String;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A03()V

    :cond_1a
    return-void
.end method

.method private A0C()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Lcom/facebook/ads/redexgen/X/2K;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2J;->A05()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0L()V

    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/2K;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2J;->A08(Lcom/facebook/ads/redexgen/X/2I;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/MR;->A0N(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2I;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A05:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/0v;->A01(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/0v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0v;->A0L()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0P()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0B()V

    :cond_1e
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/2K;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MR;->A03:Lcom/facebook/ads/redexgen/X/2K;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A00:I

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2J;->A09(Lcom/facebook/ads/redexgen/X/2I;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A01:Lcom/facebook/ads/redexgen/X/2I;

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/MR;->A0O(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2I;)V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/MR;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0B()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/MR;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0C()V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/MR;Lcom/facebook/ads/redexgen/X/2K;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MR;->A0E(Lcom/facebook/ads/redexgen/X/2K;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/MR;Lcom/facebook/ads/redexgen/X/2K;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/MR;->A0D(Lcom/facebook/ads/redexgen/X/2K;)V

    return-void
.end method


# virtual methods
.method public final A0J()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0B()V

    return-void
.end method

.method public final A0K()V
    .registers 4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/MR;->A09:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A06:Lcom/facebook/ads/redexgen/X/If;

    new-instance v1, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/2J;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/2J;-><init>(Lcom/facebook/ads/redexgen/X/In;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/MR;->A02:Lcom/facebook/ads/redexgen/X/2J;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/MR;->A08:Lcom/facebook/ads/redexgen/X/Lu;

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lu;->ACJ(Z)V

    :cond_18
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;->A0C()V

    return-void
.end method

.method public abstract A0L()V
.end method

.method public abstract A0M()V
.end method

.method public abstract A0N(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2I;)V
.end method

.method public abstract A0O(Lcom/facebook/ads/redexgen/X/2K;Lcom/facebook/ads/redexgen/X/2I;)V
.end method

.method public abstract A0P()Z
.end method
