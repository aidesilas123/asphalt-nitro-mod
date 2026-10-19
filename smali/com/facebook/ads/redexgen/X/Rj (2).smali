###### Class com.facebook.ads.redexgen.X.C1319Rj (com.facebook.ads.redexgen.X.Rj)
.class public final Lcom/facebook/ads/redexgen/X/Rj;
.super Lcom/facebook/ads/redexgen/X/4u;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lw;


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1R;

.field public A01:Lcom/facebook/ads/redexgen/X/Qa;

.field public A02:Lcom/facebook/ads/redexgen/X/Qb;

.field public A03:Lcom/facebook/ads/redexgen/X/Qb;

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:I

.field public final A08:Landroid/util/SparseBooleanArray;

.field public final A09:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0A:Lcom/facebook/ads/redexgen/X/97;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "av2tITPhYKbVn20ukUfJR25ELbcgjHbj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "MLeLe181lhP7dC21QqjxU1VDKV9lNkzJ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XUmY4VBJ2tlJWKlPJ7YkBdCsKtcC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bK6oHsXedskfaWsjnVeS6YyvP0sRA20b"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BhCeFQN4dHt9z3MLE3p7bnIzhrf86Cw8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mLW9T0fP2Q5Hob07hRXsv0QUH1fN4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "pNzPXZ5fcby2PvmlRsfUzns43oHDF5Mi"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "3YktW7BrcDIc4Xw2f2zdWv5xFETbHIAE"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/97;Landroid/util/SparseBooleanArray;Lcom/facebook/ads/redexgen/X/Qb;IIIILcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1R;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/4u;-><init>(Landroid/view/View;)V

    iput-object p8, p0, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A08:Landroid/util/SparseBooleanArray;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A04:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Rj;->A05:I

    iput p6, p0, Lcom/facebook/ads/redexgen/X/Rj;->A06:I

    iput p7, p0, Lcom/facebook/ads/redexgen/X/Rj;->A07:I

    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/1R;

    return-void
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Rj;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A08:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/1R;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A00:Lcom/facebook/ads/redexgen/X/1R;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/Qb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A02:Lcom/facebook/ads/redexgen/X/Qb;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Rj;)Lcom/facebook/ads/redexgen/X/Qb;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/Qb;

    return-object p0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/LN;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PC;)V
    .registers 14

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A08:Landroid/util/SparseBooleanArray;

    move-object v5, p4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PC;->A02()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/Qb;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0V()V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Rj;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x45

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rj;->A0B:[Ljava/lang/String;

    const-string v1, "iteeE4SnfkkyQnEAEqI0za4snrHpWaXy"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/Qb;

    :cond_34
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PC;->A04()Ljava/util/Map;

    move-result-object v7

    new-instance v2, Lcom/facebook/ads/redexgen/X/Rl;

    move-object v3, p0

    move-object v6, p1

    move-object v8, p2

    move-object v4, p3

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Rl;-><init>(Lcom/facebook/ads/redexgen/X/Rj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PC;Lcom/facebook/ads/redexgen/X/If;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/LN;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Qa;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A01:Lcom/facebook/ads/redexgen/X/Qa;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A09:Lcom/facebook/ads/redexgen/X/YA;

    const/16 v0, 0xa

    new-instance v1, Lcom/facebook/ads/redexgen/X/Qb;

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/facebook/ads/redexgen/X/Qb;-><init>(Landroid/view/View;ILjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/Qb;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0Y(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/Qb;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qb;->A0W(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A03:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Qb;->A0X(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {v0, p0, v5}, Lcom/facebook/ads/redexgen/X/Rk;-><init>(Lcom/facebook/ads/redexgen/X/Rj;Lcom/facebook/ads/redexgen/X/PC;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->setOnAssetsLoadedListener(Lcom/facebook/ads/redexgen/X/ON;)V

    return-void
.end method


# virtual methods
.method public final A0l(Lcom/facebook/ads/redexgen/X/PC;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/LN;Ljava/lang/String;)V
    .registers 11

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A02()I

    move-result v4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    const v1, -0x5f000010

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/97;->setTag(ILjava/lang/Object;)V

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A04:I

    const/4 v0, -0x2

    new-instance v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    if-nez v4, :cond_ab

    iget v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A05:I

    :goto_1c
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A07:I

    add-int/lit8 v0, v0, -0x1

    if-lt v4, v0, :cond_a7

    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A05:I

    :goto_24
    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A08()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->setIsVideo(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/97;->A17()Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/97;->setVideoPlaceholderUrl(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {p3, v3}, Lcom/facebook/ads/redexgen/X/6Q;->A0S(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->setVideoUrl(Ljava/lang/String;)V

    :goto_61
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/97;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A06()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1K;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/97;->setAdTitleAndDescription(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A03()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/97;->setCTAInfo(Lcom/facebook/ads/redexgen/X/1N;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PC;->A04()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/97;->A19(Ljava/util/Map;)V

    invoke-direct {p0, p2, p4, p5, p1}, Lcom/facebook/ads/redexgen/X/Rj;->A0A(Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/LN;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/PC;)V

    return-void

    :cond_a1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/97;->setImageUrl(Ljava/lang/String;)V

    goto :goto_61

    :cond_a7
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Rj;->A06:I

    goto/16 :goto_24

    :cond_ab
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Rj;->A06:I

    goto/16 :goto_1c
.end method

.method public final AF5(Lcom/facebook/ads/redexgen/X/NR;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Sk;->setAdDetailsClickListener(Lcom/facebook/ads/redexgen/X/NR;)V

    return-void
.end method

.method public final AF7()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rj;->A0A:Lcom/facebook/ads/redexgen/X/97;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sk;->A12()V

    return-void
.end method
