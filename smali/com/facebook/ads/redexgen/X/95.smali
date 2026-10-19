###### Class com.facebook.ads.redexgen.X.AnonymousClass95 (com.facebook.ads.redexgen.X.95)
.class public final Lcom/facebook/ads/redexgen/X/95;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/SV;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OW;
    }
.end annotation


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Qb;

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/aS;

.field public final A03:Lcom/facebook/ads/redexgen/X/YA;

.field public final A04:Lcom/facebook/ads/redexgen/X/If;

.field public final A05:Lcom/facebook/ads/redexgen/X/LN;

.field public final A06:Lcom/facebook/ads/redexgen/X/OW;

.field public final A07:Lcom/facebook/ads/redexgen/X/Oh;

.field public final A08:Ljava/lang/String;

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gR8VXB3ia"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OJTiurBFiCqcREvzh7o4PkhSqDGudpIq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "iaBHwIBC1utH6CwOSIC2yyAu4ZYXfJ61"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "YdU4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YcTfP9iPeB3iMp"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "vsmHP1kkKyGC9kag"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2EZKw0n31g6TC4"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KAWIkc2sX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/95;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/95;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/OW;Lcom/facebook/ads/redexgen/X/aS;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/LN;)V
    .registers 15

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Lcom/facebook/ads/redexgen/X/If;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/aS;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/95;->A08:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/95;->A06:Lcom/facebook/ads/redexgen/X/OW;

    iput p6, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne p6, v0, :cond_60

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {v0, p1, p4, p2, p6}, Lcom/facebook/ads/redexgen/X/Oh;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/95;->A09:Z

    :goto_1c
    if-eqz p7, :cond_57

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/95;->A05:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p7}, Lcom/facebook/ads/redexgen/X/Oh;->A0Z(Lcom/facebook/ads/redexgen/X/LN;)V

    :goto_25
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sc;-><init>(Lcom/facebook/ads/redexgen/X/95;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0c(Lcom/facebook/ads/redexgen/X/Og;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/Oh;->A0a(Lcom/facebook/ads/redexgen/X/OW;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Kz;->A0A:Lcom/facebook/ads/redexgen/X/Kz;

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/Kz;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Kz;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v2

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Ir;->AGC(Landroid/view/View;Ljava/lang/String;ZZZ)V

    :cond_53
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A04()V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0L()Lcom/facebook/ads/redexgen/X/LN;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A05:Lcom/facebook/ads/redexgen/X/LN;

    goto :goto_25

    :cond_60
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1C;->A0R()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oi;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Oh;

    move-result-object v0

    if-eqz v0, :cond_70

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:Z

    goto :goto_1c

    :cond_70
    new-instance v0, Lcom/facebook/ads/redexgen/X/Oh;

    invoke-direct {v0, p1, p4, p2, p6}, Lcom/facebook/ads/redexgen/X/Oh;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/If;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-static {p4, v0}, Lcom/facebook/ads/redexgen/X/Oi;->A03(Lcom/facebook/ads/redexgen/X/aS;Lcom/facebook/ads/redexgen/X/Oh;)V

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/95;->A09:Z

    goto :goto_1c
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/aS;Ljava/lang/String;I)V
    .registers 14

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/95;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/OW;Lcom/facebook/ads/redexgen/X/aS;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/LN;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/95;)Lcom/facebook/ads/redexgen/X/OW;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:Lcom/facebook/ads/redexgen/X/OW;

    return-object p0
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/95;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x71

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .registers 1

    const/16 v0, 0xa5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/95;->A0A:[B

    return-void

    :array_a
    .array-data 1
        0x76t
        0x54t
        0x5bt
        0x12t
        0x41t
        0x15t
        0x46t
        0x41t
        0x54t
        0x47t
        0x41t
        0x15t
        0x74t
        0x40t
        0x51t
        0x5ct
        0x50t
        0x5bt
        0x56t
        0x50t
        0x7bt
        0x50t
        0x41t
        0x42t
        0x5at
        0x47t
        0x5et
        0x74t
        0x56t
        0x41t
        0x5ct
        0x43t
        0x5ct
        0x41t
        0x4ct
        0x1bt
        0x15t
        0x78t
        0x54t
        0x5et
        0x50t
        0x15t
        0x46t
        0x40t
        0x47t
        0x50t
        0x15t
        0x41t
        0x5dt
        0x54t
        0x41t
        0x15t
        0x5ct
        0x41t
        0x12t
        0x46t
        0x15t
        0x5ct
        0x5bt
        0x15t
        0x4ct
        0x5at
        0x40t
        0x47t
        0x15t
        0x74t
        0x5bt
        0x51t
        0x47t
        0x5at
        0x5ct
        0x51t
        0x78t
        0x54t
        0x5bt
        0x5ct
        0x53t
        0x50t
        0x46t
        0x41t
        0x1bt
        0x4dt
        0x58t
        0x59t
        0x15t
        0x53t
        0x5ct
        0x59t
        0x50t
        0x1bt
        0x1et
        0x1at
        0x19t
        0x2dt
        0x3ct
        0x31t
        0x3dt
        0x36t
        0x3bt
        0x3dt
        0x16t
        0x3dt
        0x2ct
        0x2ft
        0x37t
        0x2at
        0x33t
        0x36t
        0x39t
        0x8t
        0x36t
        0x34t
        0x23t
        0x3et
        0x21t
        0x3et
        0x23t
        0x2et
        0x4dt
        0x42t
        0x47t
        0x4dt
        0x45t
        0x71t
        0x5dt
        0x41t
        0x5bt
        0x5ct
        0x4dt
        0x4bt
        0x37t
        0x38t
        0x2dt
        0x30t
        0x2ft
        0x3ct
        0x18t
        0x3dt
        0x1dt
        0x38t
        0x2dt
        0x38t
        0x1bt
        0x2ct
        0x37t
        0x3dt
        0x35t
        0x3ct
        0x21t
        0x27t
        0x31t
        0x26t
        0x37t
        0x38t
        0x3dt
        0x37t
        0x3ft
        0x16t
        0x9t
        0x5t
        0x17t
        0x34t
        0x19t
        0x10t
        0x5t
    .end array-data
.end method

.method private final A03()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Oh;->A0d(Lcom/facebook/ads/redexgen/X/SV;)V

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/95;->A09:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A5C()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0X()V

    :cond_17
    :goto_17
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/95;->A08()V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A5D()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3c
    sget-object v2, Lcom/facebook/ads/redexgen/X/95;->A0B:[Ljava/lang/String;

    const-string v1, "EW3rEVX7vA8fzU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "ztAtYR2DvpL08d"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0k()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v1, p0, Lcom/facebook/ads/redexgen/X/95;->A01:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_6e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:Lcom/facebook/ads/redexgen/X/OW;

    if-eqz v0, :cond_5c

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/OW;->ABE(Lcom/facebook/ads/redexgen/X/95;)V

    :cond_5c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A0A()Lcom/facebook/ads/redexgen/X/Ir;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ir;->AB1()V

    goto :goto_17

    :cond_6e
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/95;->AFn()V

    goto :goto_17
.end method

.method private final A04()V
    .registers 2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Oh;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/95;->A03()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0W()V

    return-void
.end method

.method private A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/aS;)V
    .registers 6

    const/16 v2, 0x9d

    const/16 v1, 0x8

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jq;->A06:Lcom/facebook/ads/redexgen/X/Jq;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v2, 0x82

    const/16 v1, 0x12

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-void
.end method

.method private final A06(Lcom/facebook/ads/redexgen/X/aS;)V
    .registers 9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KN;->A04(Lcom/facebook/ads/redexgen/X/YA;)Lcom/facebook/ads/internal/util/activity/AdActivityIntent;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/95;->A05(Landroid/content/Intent;Lcom/facebook/ads/redexgen/X/aS;)V

    :try_start_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KN;->A09(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/internal/util/activity/AdActivityIntent;)V

    goto :goto_40
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_f

    :catch_f
    move-exception v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v6

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A0D:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, v5}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    const/16 v2, 0x6b

    const/16 v1, 0xb

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    const/16 v2, 0x5a

    const/16 v1, 0x11

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x5a

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    return-void
.end method

.method private A07(Ljava/lang/String;)V
    .registers 14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v5, Lcom/facebook/ads/redexgen/X/NW;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/95;->A03:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/95;->A08:Ljava/lang/String;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/95;->A00:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/95;->A05:Lcom/facebook/ads/redexgen/X/LN;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Lcom/facebook/ads/redexgen/X/If;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0x()Lcom/facebook/ads/redexgen/X/1R;

    move-result-object v11

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Qb;Lcom/facebook/ads/redexgen/X/LN;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/1R;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x76

    const/16 v1, 0xc

    const/16 v0, 0x5f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/16 v1, 0x9

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A11()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p1, v4}, Lcom/facebook/ads/redexgen/X/NW;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final A08()V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LV;->A0J(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oh;->A0O()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/95;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final A8I()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/aS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/aS;->A0v()Lcom/facebook/ads/redexgen/X/1D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1D;->A0F()Lcom/facebook/ads/redexgen/X/1N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1N;->A05()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/95;->A07(Ljava/lang/String;)V

    return-void
.end method

.method public final A8J(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/95;->A07(Ljava/lang/String;)V

    return-void
.end method

.method public final A8N()V
    .registers 1

    return-void
.end method

.method public final A96()V
    .registers 3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sb;-><init>(Lcom/facebook/ads/redexgen/X/95;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final ABR()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A02:Lcom/facebook/ads/redexgen/X/aS;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/95;->A06(Lcom/facebook/ads/redexgen/X/aS;)V

    return-void
.end method

.method public final ABV()V
    .registers 1

    return-void
.end method

.method public final AC9(Z)V
    .registers 2

    return-void
.end method

.method public final ACx()V
    .registers 1

    return-void
.end method

.method public final ADS(Z)V
    .registers 2

    return-void
.end method

.method public final ADU(Z)V
    .registers 2

    return-void
.end method

.method public final ADh(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final AFn()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A06:Lcom/facebook/ads/redexgen/X/OW;

    if-eqz v0, :cond_7

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/OW;->ABE(Lcom/facebook/ads/redexgen/X/95;)V

    :cond_7
    return-void
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/If;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A04:Lcom/facebook/ads/redexgen/X/If;

    return-object v0
.end method

.method public getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/Oh;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    return-object v0
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/95;->requestDisallowInterceptTouchEvent(Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setAdViewabilityChecker(Lcom/facebook/ads/redexgen/X/Qb;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/95;->A00:Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/95;->A07:Lcom/facebook/ads/redexgen/X/Oh;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Oh;->A0e(Lcom/facebook/ads/redexgen/X/Qb;)V

    return-void
.end method
