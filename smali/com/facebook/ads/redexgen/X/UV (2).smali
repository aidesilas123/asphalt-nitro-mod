###### Class com.facebook.ads.redexgen.X.UV (com.facebook.ads.redexgen.X.UV)
.class public final Lcom/facebook/ads/redexgen/X/UV;
.super Lcom/facebook/ads/redexgen/X/5O;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/DefaultMediaViewVideoRendererApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/UW;,
        Lcom/facebook/ads/redexgen/X/Ix;
    }
.end annotation


# static fields
.field public static A0F:[B

.field public static A0G:[Ljava/lang/String;

.field public static final A0H:Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A01:Lcom/facebook/ads/redexgen/X/YA;

.field public A02:Lcom/facebook/ads/redexgen/X/Ix;

.field public A03:Lcom/facebook/ads/redexgen/X/J9;

.field public A04:Lcom/facebook/ads/redexgen/X/AF;

.field public A05:Lcom/facebook/ads/redexgen/X/6j;

.field public A06:Lcom/facebook/ads/redexgen/X/6b;

.field public A07:Lcom/facebook/ads/redexgen/X/Qa;

.field public A08:Lcom/facebook/ads/redexgen/X/Qb;

.field public A09:Z

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Lcom/facebook/ads/redexgen/X/Pf;

.field public final A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final A0E:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "mcYgxpLQMmIwsDd5yEmcOVEUvqtoI"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GHoJM0N9xHnxy27wJlEicj6316JJBG"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sAgmez8xlBVRjdgohc9cPNZKpCHjl"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UXd4O0RMEZeMz8rPKuZc9Jx8"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "lkMSGOb1N9f2znZPpxO7v43dGPgWn"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ZJq7h5cFUWj9FCmvTSQNl6xA6rnC8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yifDfgH7QVrqMR4w0vNHSMY9h4Ewh"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QZpfE8IVFABXRQwraZ"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UV;->A0E()V

    const-class v0, Lcom/facebook/ads/redexgen/X/UV;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/UV;->A0H:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5O;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ub;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ub;-><init>(Lcom/facebook/ads/redexgen/X/UV;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0C:Lcom/facebook/ads/redexgen/X/Pf;

    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lcom/facebook/ads/redexgen/X/J9;->A03:Lcom/facebook/ads/redexgen/X/J9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/J9;

    return-void
.end method

.method private A00(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Ua;
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Lcom/facebook/ads/redexgen/X/UV;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/UZ;
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/UZ;-><init>(Lcom/facebook/ads/redexgen/X/UV;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)V

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/UX;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/UX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UX;-><init>(Lcom/facebook/ads/redexgen/X/UV;)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/UV;)Lcom/facebook/ads/redexgen/X/Ix;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Ix;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/UV;)Lcom/facebook/ads/redexgen/X/AF;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    return-object p0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/Qb;
    .registers 8

    new-instance v1, Lcom/facebook/ads/redexgen/X/Qb;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/16 v3, 0x32

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A07:Lcom/facebook/ads/redexgen/X/Qa;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/YA;

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Qb;-><init>(Landroid/view/View;IZLjava/lang/ref/WeakReference;Lcom/facebook/ads/redexgen/X/YA;)V

    return-object v1
.end method

.method public static A06(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/UV;->A0F:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/UV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0E:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/UV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0D:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private A09()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getVideoView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Pg;

    sget-object v1, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x18

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "uL1T6UePNJ7Kw1irCYcqiA1GlgiEZ"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "2BZHbySyGqLzqR4K5b7TQMpiAd64K"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0C:Lcom/facebook/ads/redexgen/X/Pf;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Pg;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/Pf;)V

    :cond_2e
    return-void
.end method

.method private A0A()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getVideoView()Landroid/view/View;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iw;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Iw;-><init>(Lcom/facebook/ads/redexgen/X/UV;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_10
    return-void
.end method

.method private A0B()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getVideoView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Pg;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_28

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "MUEPyY1MJMWvhU3XHu"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Pg;->setViewImplInflationListener(Lcom/facebook/ads/redexgen/X/Pf;)V

    :cond_27
    return-void

    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0C()V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_38

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Z

    if-eqz v0, :cond_38

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_4d

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "vtumVYeB8x7vkBeCNzRl37Vgwgf5m"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l5c2Nb35iHyego1JNAmcVzJY15xyfp"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0U()V

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A05:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_47

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0B:Z

    :cond_47
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0V()V

    goto :goto_37

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0D()V
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/J9;->A03:Lcom/facebook/ads/redexgen/X/J9;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/J9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0B()V

    return-void
.end method

.method public static A0E()V
    .registers 1

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/UV;->A0F:[B

    return-void

    :array_a
    .array-data 1
        0x7t
        0x20t
        0x38t
        0x2ft
        0x22t
        0x27t
        0x2at
        0x6et
        0x3ct
        0x2bt
        0x20t
        0x2at
        0x2bt
        0x3ct
        0x2bt
        0x3ct
        0x6et
        0x2dt
        0x26t
        0x27t
        0x22t
        0x2at
        0x6et
        0x2dt
        0x21t
        0x20t
        0x28t
        0x27t
        0x29t
        0x60t
        0xet
        0x26t
        0x27t
        0x2at
        0x22t
        0x15t
        0x2at
        0x26t
        0x34t
        0x15t
        0x2at
        0x27t
        0x26t
        0x2ct
        0x63t
        0x2at
        0x30t
        0x63t
        0x2dt
        0x36t
        0x2ft
        0x2ft
        0x78t
        0x63t
        0x36t
        0x2dt
        0x22t
        0x21t
        0x2ft
        0x26t
        0x63t
        0x37t
        0x2ct
        0x63t
        0x25t
        0x2at
        0x2dt
        0x27t
        0x63t
        0x2at
        0x37t
        0x6dt
        0x10t
        0x2bt
        0x24t
        0x27t
        0x29t
        0x20t
        0x65t
        0x31t
        0x2at
        0x65t
        0x23t
        0x2ct
        0x2bt
        0x21t
        0x65t
        0x8t
        0x20t
        0x21t
        0x2ct
        0x24t
        0x13t
        0x2ct
        0x20t
        0x32t
        0x13t
        0x2ct
        0x21t
        0x20t
        0x2at
        0x65t
        0x26t
        0x2dt
        0x2ct
        0x29t
        0x21t
        0x6bt
    .end array-data
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/UV;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0D()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/UV;Lcom/facebook/ads/redexgen/X/UJ;Lcom/facebook/ads/redexgen/X/Ix;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/UV;->A0I(Lcom/facebook/ads/redexgen/X/UJ;Lcom/facebook/ads/redexgen/X/Ix;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/UV;Lcom/facebook/ads/redexgen/X/Pj;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/UV;->A0J(Lcom/facebook/ads/redexgen/X/Pj;)V

    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/UJ;Lcom/facebook/ads/redexgen/X/Ix;)V
    .registers 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0B:Z

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Ix;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A09()V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Lcom/facebook/ads/redexgen/X/6j;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UJ;->A13()Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "zpp3cHPhluFOPvL30kkcY8af"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-eqz v4, :cond_3c

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UJ;->A13()Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J4;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    new-instance v0, Lcom/facebook/ads/redexgen/X/UY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UY;-><init>(Lcom/facebook/ads/redexgen/X/UV;)V

    invoke-virtual {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6j;->setImage(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NK;)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UJ;->A18()Lcom/facebook/ads/redexgen/X/J9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/J9;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Lcom/facebook/ads/redexgen/X/6b;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UJ;->A1E()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->setPlayAccessibilityLabel(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Lcom/facebook/ads/redexgen/X/6b;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/UJ;->A1D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6b;->setPauseAccessibilityLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0U()V

    return-void
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/Pj;)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    if-eqz v1, :cond_a

    const/16 v0, 0x18

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0b(Lcom/facebook/ads/redexgen/X/Pj;I)V

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v3, Lcom/facebook/ads/redexgen/X/UV;->A0H:Ljava/lang/String;

    const/16 v2, 0x1e

    const/16 v1, 0x2a

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UV;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private A0K()Z
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/RX;->getState()Lcom/facebook/ads/redexgen/X/QY;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QY;->A06:Lcom/facebook/ads/redexgen/X/QY;

    if-ne v1, v0, :cond_e

    :cond_d
    return v2

    :cond_e
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/J9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/J9;->A05:Lcom/facebook/ads/redexgen/X/J9;

    if-eq v1, v0, :cond_1a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/J9;

    sget-object v0, Lcom/facebook/ads/redexgen/X/J9;->A03:Lcom/facebook/ads/redexgen/X/J9;

    if-ne v1, v0, :cond_1b

    :cond_1a
    const/4 v2, 0x1

    :cond_1b
    return v2
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/UV;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0B:Z

    return p0
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/UV;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/UV;->A0A:Z

    return p0
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/UV;)Z
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0K()Z

    move-result p0

    return p0
.end method

.method public static synthetic A0O(Lcom/facebook/ads/redexgen/X/UV;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/UV;->A0B:Z

    return p1
.end method

.method public static synthetic A0P(Lcom/facebook/ads/redexgen/X/UV;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/UV;->A0A:Z

    return p1
.end method


# virtual methods
.method public final initialize(Landroid/content/Context;Lcom/facebook/ads/MediaViewVideoRenderer;Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;I)V
    .registers 11

    invoke-interface {p3}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5O;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/5O;->A00(Lcom/facebook/ads/internal/api/AdComponentViewApi;)V

    packed-switch p4, :pswitch_data_120

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UV;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/UV;->A01(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/UZ;

    move-result-object v4

    goto :goto_24

    :pswitch_20
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/UV;->A00(Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;)Lcom/facebook/ads/redexgen/X/Ua;

    move-result-object v4

    :goto_24
    check-cast p3, Lcom/facebook/ads/redexgen/X/5V;

    invoke-virtual {p3, v4}, Lcom/facebook/ads/redexgen/X/5V;->A06(Lcom/facebook/ads/redexgen/X/Iz;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5Q;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/YA;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6j;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Lcom/facebook/ads/redexgen/X/6j;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A02()Lcom/facebook/ads/redexgen/X/UX;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A07:Lcom/facebook/ads/redexgen/X/Qa;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A05()Lcom/facebook/ads/redexgen/X/Qb;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:Lcom/facebook/ads/redexgen/X/Qb;

    sget v1, Lcom/facebook/ads/redexgen/X/Ku;->A02:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v3, v0

    const/high16 v0, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6b;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/6b;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Lcom/facebook/ads/redexgen/X/6b;

    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Lcom/facebook/ads/redexgen/X/6b;

    invoke-virtual {v0, v3, v2, v2, v3}, Lcom/facebook/ads/redexgen/X/6b;->setPadding(IIII)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Lcom/facebook/ads/redexgen/X/6b;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x0

    :goto_74
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v5, 0x0

    if-ge v1, v0, :cond_a4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v0, v3, Lcom/facebook/ads/redexgen/X/AF;

    if-eqz v0, :cond_be

    check-cast v3, Lcom/facebook/ads/redexgen/X/AF;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b8

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "bzrDqpY4LpZuK9aeaZZijHYv"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    :cond_a4
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_c1

    :cond_b8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_be
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    :cond_c1
    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "2aK7TrzSKlLOXQMMYyslcv3rZKnIT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "rJ0uIs3irNdkufru0tgAA9z3l7YlJ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-nez v3, :cond_f4

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_e4

    sget-object v3, Lcom/facebook/ads/redexgen/X/UV;->A0H:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v1, 0x24

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UV;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e4
    :goto_e4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:Lcom/facebook/ads/redexgen/X/Qb;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Qb;->A0W(I)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A08:Lcom/facebook/ads/redexgen/X/Qb;

    const/16 v0, 0xfa

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Qb;->A0X(I)V

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Iz;->AFI()V

    return-void

    :cond_f4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Lcom/facebook/ads/redexgen/X/6j;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/AF;

    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_113

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_113
    sget-object v2, Lcom/facebook/ads/redexgen/X/UV;->A0G:[Ljava/lang/String;

    const-string v1, "N5wNlZvELtjdUjcESL7VUEU7"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A06:Lcom/facebook/ads/redexgen/X/6b;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/RX;->A0c(Lcom/facebook/ads/redexgen/X/Pk;)V

    goto :goto_e4

    :pswitch_data_120
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_20
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5O;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0C()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5O;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A09:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0C()V

    return-void
.end method

.method public final onPrepared()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/MediaViewVideoRenderer;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Iv;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Iv;-><init>(Lcom/facebook/ads/redexgen/X/UV;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0A()V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5O;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0C()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/5O;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/UV;->A0C()V

    return-void
.end method
