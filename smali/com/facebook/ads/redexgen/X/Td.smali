###### Class com.facebook.ads.redexgen.X.AbstractC1365Td (com.facebook.ads.redexgen.X.Td)
.class public abstract Lcom/facebook/ads/redexgen/X/Td;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Lu;


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Kn;

.field public A02:Lcom/facebook/ads/redexgen/X/P3;

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/19;

.field public A06:Lcom/facebook/ads/redexgen/X/PU;

.field public A07:Z

.field public final A08:Lcom/facebook/ads/redexgen/X/LI;

.field public final A09:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A0A:Lcom/facebook/ads/redexgen/X/aS;

.field public final A0B:Lcom/facebook/ads/redexgen/X/YA;

.field public final A0C:Lcom/facebook/ads/redexgen/X/If;

.field public final A0D:Lcom/facebook/ads/redexgen/X/In;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Ls;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W8MK3buqarkLhDixdfnbfGeXuw3i87xB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QKu8TlGQ3D7NsDDaY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OUnrWL6BanKvWJF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "644mHU9zQQHAcSiNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MqQzuM0GD0HqxOL2854PPJvoiao7nama"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mSpdOD621tCilusEUOf234Jx9LR3KzyX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Td;->A0Q()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/aS;)V
    .registers 11

    move-object v1, p1

    invoke-direct {p0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A07:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Z

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    new-instance v0, Lcom/facebook/ads/redexgen/X/LI;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/LI;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A08:Lcom/facebook/ads/redexgen/X/LI;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/In;

    invoke-direct {v3, v0, p2}, Lcom/facebook/ads/redexgen/X/In;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/If;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A0D:Lcom/facebook/ads/redexgen/X/In;

    new-instance v0, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/aS;->A0p()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/Lt;Lcom/facebook/ads/redexgen/X/In;II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    return-void
.end method

.method private A0L(I)Lcom/facebook/ads/redexgen/X/1M;
    .registers 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Lcom/facebook/ads/redexgen/X/19;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Lcom/facebook/ads/redexgen/X/19;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_20
    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const-string v1, "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Td;)Lcom/facebook/ads/redexgen/X/Lt;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    return-object p0
.end method

.method public static A0N(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0O()V
    .registers 1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->removeAllViews()V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    return-void
.end method

.method private A0P()V
    .registers 8

    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0Z()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/P3;

    if-nez v0, :cond_5d

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Z

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/Td;->A0B:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0E()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0z()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/P1;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/P1;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/1X;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P1;->A08(Lcom/facebook/ads/redexgen/X/1M;)Lcom/facebook/ads/redexgen/X/P1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/P1;->A0B()Lcom/facebook/ads/redexgen/X/P3;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/P3;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A0D:Lcom/facebook/ads/redexgen/X/In;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Im;->A0U:Lcom/facebook/ads/redexgen/X/Im;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ip;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/In;Lcom/facebook/ads/redexgen/X/Im;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A3P(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/P3;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A3P(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A02:Lcom/facebook/ads/redexgen/X/P3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tf;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tf;-><init>(Lcom/facebook/ads/redexgen/X/Td;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/P3;->A04(Lcom/facebook/ads/redexgen/X/P2;)V

    :goto_5c
    return-void

    :cond_5d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Lt;->A3P(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    goto :goto_5c
.end method

.method public static A0Q()V
    .registers 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Td;->A0F:[B

    return-void

    :array_a
    .array-data 1
        0x58t
        0x54t
        0x56t
        0x15t
        0x5dt
        0x5at
        0x58t
        0x5et
        0x59t
        0x54t
        0x54t
        0x50t
        0x15t
        0x5at
        0x5ft
        0x48t
        0x15t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x48t
        0x4ft
        0x52t
        0x4ft
        0x52t
        0x5at
        0x57t
        0x15t
        0x52t
        0x56t
        0x4bt
        0x49t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x15t
        0x57t
        0x54t
        0x5ct
        0x5ct
        0x5et
        0x5ft
    .end array-data
.end method

.method private A0R(Lcom/facebook/ads/redexgen/X/1M;Z)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarHeight()I

    move-result v1

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T3;->A08(Lcom/facebook/ads/redexgen/X/aS;)Z

    move-result v0

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->A06(Lcom/facebook/ads/redexgen/X/1M;Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {p0, v0, v2}, Lcom/facebook/ads/redexgen/X/Td;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Td;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Z

    return p1
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/Td;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0U()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Landroid/view/View;

    if-eqz v0, :cond_8

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Nv;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0a()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Nv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0y()V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Nv;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nv;->A0x()V

    goto :goto_16
.end method

.method public final A0V(I)V
    .registers 4

    new-instance v1, Lcom/facebook/ads/redexgen/X/Te;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/Te;-><init>(Lcom/facebook/ads/redexgen/X/Td;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kn;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Kn;-><init>(ILcom/facebook/ads/redexgen/X/Km;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Z

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0U()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A08()Z

    return-void
.end method

.method public final A0W(Landroid/view/View;ZI)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/Ls;->setFullscreen(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Td;->A00:Landroid/view/View;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A08:Lcom/facebook/ads/redexgen/X/LI;

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A03:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LI;->A05(Lcom/facebook/ads/redexgen/X/LH;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0O()V

    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    if-eqz p2, :cond_53

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/Td;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/Td;->A0L(I)Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/Td;->A0R(Lcom/facebook/ads/redexgen/X/1M;Z)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1M;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/LV;->A0M(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    if-eqz v0, :cond_86

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0P()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_53
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarHeight()I

    move-result v0

    goto :goto_1b

    :cond_5a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const-string v1, "NsWlVTe7e8AxmZfep9MsD1WsEVvEb3lR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p2, :cond_86

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_86

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Td;->A08:Lcom/facebook/ads/redexgen/X/LI;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_87

    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const-string v1, "LlUUcmlOaTawHlOzciUSj9DhXPbTXBAe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/LH;->A04:Lcom/facebook/ads/redexgen/X/LH;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/LI;->A05(Lcom/facebook/ads/redexgen/X/LH;)V

    :cond_86
    return-void

    :cond_87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 7

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A08:Lcom/facebook/ads/redexgen/X/LI;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5J;->A0J()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/LI;->A04(Landroid/view/Window;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0u()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A05:Lcom/facebook/ads/redexgen/X/19;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v1

    :cond_2c
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0z()Lcom/facebook/ads/redexgen/X/1X;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_58

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1D;->A0D()Lcom/facebook/ads/redexgen/X/1G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1G;->A03()I

    move-result v1

    :goto_44
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A10()Lcom/facebook/ads/redexgen/X/1d;

    move-result-object v0

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setPageDetails(Lcom/facebook/ads/redexgen/X/1X;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1d;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Th;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Th;-><init>(Lcom/facebook/ads/redexgen/X/Td;Lcom/facebook/ads/redexgen/X/5J;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lr;)V

    return-void

    :cond_58
    const/4 v1, 0x0

    goto :goto_44
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/5J;)V
    .registers 6

    move-object v3, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/M1;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/M1;-><init>(Lcom/facebook/ads/redexgen/X/Td;Lcom/facebook/ads/redexgen/X/Td;Lcom/facebook/ads/redexgen/X/5J;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/Td;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final A0Z()Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A13()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0P()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Td;->A0G:[Ljava/lang/String;

    const-string v1, "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_35

    const/4 v0, 0x1

    goto :goto_36

    :cond_35
    const/4 v0, 0x0

    :goto_36
    return v0
.end method

.method public final A0a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A03:Z

    return v0
.end method

.method public final A0b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A04:Z

    return v0
.end method

.method public abstract A0c()Z
.end method

.method public ACJ(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A06()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A07()Z

    :cond_f
    return-void
.end method

.method public ACj(Z)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A05()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A01:Lcom/facebook/ads/redexgen/X/Kn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kn;->A08()Z

    :cond_f
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/If;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0C:Lcom/facebook/ads/redexgen/X/If;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A09:Lcom/facebook/ads/redexgen/X/Lt;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
.end method

.method public getCurrentClientToken()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A0A:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A08:Lcom/facebook/ads/redexgen/X/LI;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/LI;->A03()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Td;->A0E:Lcom/facebook/ads/redexgen/X/Ls;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lr;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Td;->A0O()V

    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/LN;)V
    .registers 6

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/LN;->A05()V

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Td;->A07:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/TQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/TQ;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TQ;->A74()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3z(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Td;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Lt;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Td;->A0N(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Lt;->A3z(Ljava/lang/String;)V

    goto :goto_1d
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Lt;)V
    .registers 2

    return-void
.end method

.method public setServerSideRewardHandler(Lcom/facebook/ads/redexgen/X/PU;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Td;->A06:Lcom/facebook/ads/redexgen/X/PU;

    return-void
.end method
