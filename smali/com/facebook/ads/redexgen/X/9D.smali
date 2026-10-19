###### Class com.facebook.ads.redexgen.X.C9D (com.facebook.ads.redexgen.X.9D)
.class public final Lcom/facebook/ads/redexgen/X/9D;
.super Lcom/facebook/ads/redexgen/X/Sy;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/MB;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Lcom/facebook/ads/redexgen/X/YA;

.field public A03:Lcom/facebook/ads/redexgen/X/Kn;

.field public A04:Lcom/facebook/ads/redexgen/X/Ls;

.field public A05:Lcom/facebook/ads/redexgen/X/PS;

.field public A06:Lcom/facebook/ads/redexgen/X/JT;

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Nf;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Ng;

.field public final A0C:Lcom/facebook/ads/redexgen/X/RX;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Jb;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QUFYIN7o4MSHfMbcaqgxGqdg8oING"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Qixa92rp7KQSHPhBId3L5m9SXc6gxNRP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TUKhftCqFUFv9xNbjbPA3CLhBIkdW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "aNiMBj1VMT3xct4Co4hWzqTsg"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QYSCqyZ4CS"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VjIbmM2G6pRRrYhuKIf6SOzC6eQUF7eo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KFJXOgKoK7JNlCBWMf"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "dachHr6cLZKwbIDqTeRsc0FgbmZCJ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9D;->A08()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Nz;)V
    .registers 13

    const/4 v2, 0x0

    move-object v4, p1

    invoke-direct {p0, v4, v2}, Lcom/facebook/ads/redexgen/X/Sy;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A08:Z

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A07:Z

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0K(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A01:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A05()V

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nz;->A09()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v9

    iput-object v9, p0, Lcom/facebook/ads/redexgen/X/9D;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nz;->A05()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A07()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Np;->A00(Lcom/facebook/ads/redexgen/X/YA;Landroid/view/ViewGroup;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/9D;->A01(Lcom/facebook/ads/redexgen/X/Nz;)Lcom/facebook/ads/redexgen/X/RX;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->bringToFront()V

    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/9D;->A02(Lcom/facebook/ads/redexgen/X/Nz;)Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v7

    iput-object v7, p0, Lcom/facebook/ads/redexgen/X/9D;->A0D:Lcom/facebook/ads/redexgen/X/Jb;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A13()V

    nop

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9D;->A02:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Nz;->A06()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/PS;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/PS;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A05:Lcom/facebook/ads/redexgen/X/PS;

    new-instance v10, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v10, p0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    iput-object v10, p0, Lcom/facebook/ads/redexgen/X/9D;->A0A:Lcom/facebook/ads/redexgen/X/Nf;

    new-instance v3, Lcom/facebook/ads/redexgen/X/Ng;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v8

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/Ng;-><init>(Lcom/facebook/ads/redexgen/X/Nz;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/RX;Lcom/facebook/ads/redexgen/X/Jb;Lcom/facebook/ads/redexgen/X/NR;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/Nf;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/9D;->A0B:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A19(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_af

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/RX;->getVideoImplView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1A(Landroid/content/Context;)Z

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/O1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O1;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NO;->A00(Landroid/view/View;ZLandroid/view/View$OnClickListener;)V

    :cond_af
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/9D;)Lcom/facebook/ads/redexgen/X/Ls;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    return-object p0
.end method

.method private A01(Lcom/facebook/ads/redexgen/X/Nz;)Lcom/facebook/ads/redexgen/X/RX;
    .registers 9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A02()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A08()Lcom/facebook/ads/redexgen/X/Ls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A12(Lcom/facebook/ads/redexgen/X/Ls;)I

    move-result v6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A03()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    sget v5, Lcom/facebook/ads/redexgen/X/Sy;->A0D:I

    sget v2, Lcom/facebook/ads/redexgen/X/Sy;->A0D:I

    sget v1, Lcom/facebook/ads/redexgen/X/Sy;->A0D:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sy;->A0D:I

    invoke-virtual {v3, v5, v2, v1, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    sget v1, Lcom/facebook/ads/redexgen/X/Sy;->A0E:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sy;->A0E:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/facebook/ads/redexgen/X/Sy;->A0C:I

    const/4 v0, 0x0

    invoke-virtual {v2, v0, v6, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xb

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v4, v1}, Lcom/facebook/ads/redexgen/X/9D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/RX;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v4
.end method

.method private A02(Lcom/facebook/ads/redexgen/X/Nz;)Lcom/facebook/ads/redexgen/X/Jb;
    .registers 8

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Nz;->A0A()Lcom/facebook/ads/redexgen/X/Jb;

    move-result-object v5

    sget v0, Lcom/facebook/ads/redexgen/X/Sy;->A09:I

    const/4 v4, -0x1

    invoke-virtual {v5, v4, v0}, Lcom/facebook/ads/redexgen/X/Jb;->A06(II)V

    sget v3, Lcom/facebook/ads/redexgen/X/Sy;->A0H:I

    sget v2, Lcom/facebook/ads/redexgen/X/Sy;->A0H:I

    sget v1, Lcom/facebook/ads/redexgen/X/Sy;->A0H:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sy;->A0H:I

    invoke-virtual {v5, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jb;->setPadding(IIII)V

    sget v0, Lcom/facebook/ads/redexgen/X/Sy;->A0G:I

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v5, v1}, Lcom/facebook/ads/redexgen/X/9D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v5
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xd

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K2;->A0E()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0d(Lcom/facebook/ads/redexgen/X/Pk;)V

    :cond_16
    return-void
.end method

.method private A05()V
    .registers 6

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarHeight()I

    move-result v0

    neg-int v3, v0

    const/4 v2, 0x0

    const/16 v1, 0x190

    new-instance v0, Lcom/facebook/ads/redexgen/X/JT;

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/JT;-><init>(Landroid/view/View;III)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Lcom/facebook/ads/redexgen/X/JT;

    return-void
.end method

.method private A06()V
    .registers 10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDataBundle()Lcom/facebook/ads/redexgen/X/aS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getAdEventManager()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/Im;->A0r:Lcom/facebook/ads/redexgen/X/Im;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0O()Z

    move-result v0

    if-nez v0, :cond_22

    return-void

    :cond_22
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0T(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0H(Landroid/view/View;)V

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0D:Lcom/facebook/ads/redexgen/X/Jb;

    aput-object v0, v2, v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0B:Lcom/facebook/ads/redexgen/X/Ng;

    const/4 v5, 0x2

    aput-object v0, v2, v5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Landroid/view/View;

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/LV;->A0Z([Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0L(Landroid/view/View;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9D;->A05:Lcom/facebook/ads/redexgen/X/PS;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCtaButton()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_6c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_6c
    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const-string v1, "FxfG3zWETYKhpCEsP1aqGpvXk"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v7, v4}, Lcom/facebook/ads/redexgen/X/PS;->A03(Lcom/facebook/ads/redexgen/X/T3;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Landroid/view/View;

    sget-object v1, Lcom/facebook/ads/redexgen/X/O2;->A00:[I

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/facebook/ads/redexgen/X/PR;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PR;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v2, -0x1

    packed-switch v0, :pswitch_data_120

    :goto_8d
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0G()Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1O;->A00()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_d7

    iput-boolean v6, p0, Lcom/facebook/ads/redexgen/X/9D;->A07:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    if-eqz v0, :cond_ae

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressImmediate(F)V

    :cond_ae
    new-instance v2, Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0G()Lcom/facebook/ads/redexgen/X/1O;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1O;->A00()J

    move-result-wide v0

    long-to-int v3, v0

    const/high16 v4, 0x41a00000    # 20.0f

    const-wide/16 v5, 0x14

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v8, Lcom/facebook/ads/redexgen/X/Sv;

    invoke-direct {v8, p0}, Lcom/facebook/ads/redexgen/X/Sv;-><init>(Lcom/facebook/ads/redexgen/X/9D;)V

    invoke-direct/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Kn;-><init>(IFJLandroid/os/Handler;Lcom/facebook/ads/redexgen/X/Km;)V

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/9D;->A03:Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Kn;->A08()Z

    :cond_d7
    return-void

    :pswitch_d8
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/NR;->setVisibility(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sy;->A12(Lcom/facebook/ads/redexgen/X/Ls;)I

    move-result v0

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NR;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/9D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8d

    :pswitch_fe
    new-array v1, v6, [Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/NR;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/LV;->A0Z([Landroid/view/View;)V

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/facebook/ads/redexgen/X/Sy;->A0F:I

    sget v2, Lcom/facebook/ads/redexgen/X/Sy;->A0F:I

    sget v1, Lcom/facebook/ads/redexgen/X/Sy;->A0F:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sy;->A0F:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A00:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/9D;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8d

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_d8
        :pswitch_fe
    .end packed-switch
.end method

.method private A07()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A06:Lcom/facebook/ads/redexgen/X/JT;

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/JT;->A3U(ZZ)V

    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdDetailsAnimation()Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/JT;->A3U(ZZ)V

    :cond_16
    return-void
.end method

.method public static A08()V
    .registers 1

    const/16 v0, 0x49

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/9D;->A0F:[B

    return-void

    :array_a
    .array-data 1
        -0x35t
        -0x3ct
        -0x27t
        -0x38t
        -0x1et
        -0x2at
        -0x29t
        -0x3ct
        -0x2bt
        -0x29t
        -0x34t
        -0x2ft
        -0x36t
        -0x1et
        -0x3ct
        -0x2ft
        -0x34t
        -0x30t
        -0x3ct
        -0x29t
        -0x34t
        -0x2et
        -0x2ft
        -0x2at
        -0x1et
        -0x2dt
        -0x31t
        -0x3ct
        -0x24t
        -0x38t
        -0x39t
        -0x33t
        -0x30t
        -0x2ct
        -0x3at
        -0x20t
        -0x2dt
        -0x3at
        -0x28t
        -0x3et
        -0x2dt
        -0x3bt
        -0x20t
        -0x2ct
        -0x3ct
        -0x2dt
        -0x3at
        -0x3at
        -0x31t
        -0x20t
        -0x2ct
        -0x37t
        -0x30t
        -0x28t
        -0x31t
        -0x35t
        -0x4bt
        -0x39t
        -0x2dt
        -0x47t
        -0x3et
        -0x48t
        -0x2dt
        -0x49t
        -0x4bt
        -0x3at
        -0x48t
        -0x2dt
        -0x39t
        -0x44t
        -0x3dt
        -0x35t
        -0x3et
    .end array-data
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/9D;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A08:Z

    return p1
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/9D;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/9D;->A07:Z

    return p1
.end method


# virtual methods
.method public final A0B(Lcom/facebook/ads/redexgen/X/75;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nv;->A0B(Lcom/facebook/ads/redexgen/X/75;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A06()V

    return-void
.end method

.method public final A0C(Lcom/facebook/ads/redexgen/X/71;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Nv;->A0C(Lcom/facebook/ads/redexgen/X/71;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/P7;->A00()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getDuration()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    if-eqz v0, :cond_45

    const/16 v3, 0xbb8

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_2b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2b
    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const-string v1, "xiBnzSw2W6K3rvYkwdUGMYXv5m3ZqRWR"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v4, v3, :cond_45

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K2;->A0J()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K2;->A0F()V

    :cond_45
    return-void
.end method

.method public final A0u()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nv;->A0u()V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A04()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A04:Lcom/facebook/ads/redexgen/X/Ls;

    return-void
.end method

.method public final A0z(Lcom/facebook/ads/redexgen/X/1D;Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 10

    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Sy;->A0z(Lcom/facebook/ads/redexgen/X/1D;Ljava/lang/String;DLandroid/os/Bundle;)V

    if-nez p5, :cond_a

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const/4 v2, 0x0

    const/16 v1, 0x1f

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A07()V

    :cond_1d
    const/16 v2, 0x37

    const/16 v1, 0x12

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9D;->A06()V

    :cond_30
    const/16 v2, 0x1f

    const/16 v1, 0x18

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_66

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/9D;->A0B:Lcom/facebook/ads/redexgen/X/Ng;

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x12

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x33

    if-eq v1, v0, :cond_57

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_57
    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const-string v1, "jjtMTZWEM7Dg1szUnnnmuTjwvMhej"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "cexdZia4vusGbXInA5fVVHDcQrSB4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Landroid/view/ViewGroup;)V

    :cond_66
    return-void
.end method

.method public final A10()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final A11(Z)Z
    .registers 7

    const/4 v4, 0x1

    if-eqz p1, :cond_33

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A08:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_65

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const-string v1, "IfEmWBIDBUNw5tL7YhS4lNzldGhzw"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "8CoNQoXVMdzgwU1krh95bRLsSKKH4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-nez v3, :cond_33

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0B:Lcom/facebook/ads/redexgen/X/Ng;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Ng;->A07(Landroid/view/ViewGroup;)V

    return v4

    :cond_33
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0O()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_65

    sget-object v2, Lcom/facebook/ads/redexgen/X/9D;->A0G:[Ljava/lang/String;

    const-string v1, "YRUjLZqfjvY5EOxU383ujQcW8j7gUgor"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_63

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pe;->A08:Lcom/facebook/ads/redexgen/X/Pe;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0a(Lcom/facebook/ads/redexgen/X/Pe;)V

    return v4

    :cond_63
    const/4 v0, 0x0

    return v0

    :cond_65
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A13()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Sy;->A13()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAnimationPlugin()Lcom/facebook/ads/redexgen/X/K2;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0C:Lcom/facebook/ads/redexgen/X/RX;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/K2;->A9D(Lcom/facebook/ads/redexgen/X/RX;)V

    :cond_12
    return-void
.end method

.method public final A14()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sy;->getAdInfo()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0O()Z

    move-result v0

    return v0
.end method

.method public getCloseButtonStyle()I
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A07:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x2

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/9D;->A14()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9D;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Nv;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Sy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
