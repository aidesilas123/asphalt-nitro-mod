###### Class com.facebook.ads.redexgen.X.C1114Jj (com.facebook.ads.redexgen.X.Jj)
.class public final Lcom/facebook/ads/redexgen/X/Jj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ji;
    }
.end annotation


# static fields
.field public static A07:[B

.field public static final A08:Lcom/facebook/ads/redexgen/X/LY;

.field public static final A09:Ljava/util/concurrent/Executor;

.field public static final A0A:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Jn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/Ji;

.field public A02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/2G;

.field public final A04:Lcom/facebook/ads/redexgen/X/YA;

.field public final A05:Lcom/facebook/ads/redexgen/X/Jk;

.field public final A06:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jj;->A0A()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/LY;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/LY;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A08:Lcom/facebook/ads/redexgen/X/LY;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A09:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 3

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2H;->A00(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/2G;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/2G;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/2G;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Jk;->A00()Lcom/facebook/ads/redexgen/X/Jk;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Lcom/facebook/ads/redexgen/X/Jk;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jo;->A01(Lcom/facebook/ads/redexgen/X/7S;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A06:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Jj;->A03:Lcom/facebook/ads/redexgen/X/2G;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Jj;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Jj;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method private A02(JLcom/facebook/ads/redexgen/X/Jg;)Lcom/facebook/ads/redexgen/X/U9;
    .registers 5

    new-instance v0, Lcom/facebook/ads/redexgen/X/U9;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/U9;-><init>(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Jg;J)V

    return-object v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Jj;)Lcom/facebook/ads/redexgen/X/Jk;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Lcom/facebook/ads/redexgen/X/Jk;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Jj;JLcom/facebook/ads/redexgen/X/Jg;)Lcom/facebook/ads/redexgen/X/Qi;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Jj;->A02(JLcom/facebook/ads/redexgen/X/Jg;)Lcom/facebook/ads/redexgen/X/U9;

    move-result-object p0

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jj;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x50

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Jj;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A06:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Jj;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Jj;Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Ljava/util/Map;

    return-object p1
.end method

.method private A09()V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Qz;->A0A(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    return-void

    :cond_b
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/7y;->A03(I)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/7x;->A1w:I

    const/16 v2, 0x56

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-void
.end method

.method public static A0A()V
    .registers 1

    const/16 v0, 0x67

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A07:[B

    return-void

    :array_a
    .array-data 1
        0x3et
        0x32t
        0x3et
        0x3dt
        0x3et
        0x6et
        0x68t
        0x3et
        0x7at
        0x69t
        0x6bt
        0x77t
        0x75t
        0x4et
        0x41t
        0x44t
        0x48t
        0x43t
        0x59t
        0x52t
        0x5ft
        0x48t
        0x5ct
        0x58t
        0x48t
        0x5et
        0x59t
        0x52t
        0x44t
        0x49t
        0x62t
        0x58t
        0xbt
        0x79t
        0x65t
        0x11t
        0xbt
        0x64t
        0x65t
        0xat
        0x6ct
        0x63t
        0x66t
        0x66t
        0xat
        0x58t
        0x4ft
        0x49t
        0x4ft
        0x43t
        0x5ct
        0x4ft
        0x4et
        0x14t
        0x35t
        0x7at
        0x1ct
        0x33t
        0x36t
        0x36t
        0x7at
        0x3ft
        0x28t
        0x28t
        0x35t
        0x28t
        0x7at
        0x39t
        0x35t
        0x3et
        0x3ft
        0x7at
        0x1t
        0x7ft
        0x29t
        0x7t
        0x7at
        0x7ft
        0x29t
        0xft
        0xdt
        0x6t
        0xdt
        0x1at
        0x1t
        0xbt
        0x51t
        0x5at
        0x4bt
        0x48t
        0x50t
        0x4dt
        0x54t
        0x28t
        0x29t
        0x0t
        0x2ft
        0x2at
        0x2at
        0xet
        0x29t
        0x29t
        0x2dt
    .end array-data
.end method

.method private A0B(ILjava/lang/String;)V
    .registers 9

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/16 v1, 0xa

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/JU;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x35

    const/16 v1, 0x1a

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/JU;->A04(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ji;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_7
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/U7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/U7;-><init>(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/JG;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LP;->A00(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Jj;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Jj;->A09()V

    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A0C(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A0D(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/U6;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A0K(Lcom/facebook/ads/redexgen/X/U6;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Jj;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Jj;->A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Jj;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/Jj;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V

    return-void
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/U6;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:Lcom/facebook/ads/redexgen/X/Ji;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Ji;->AD5(Lcom/facebook/ads/redexgen/X/U6;)V

    :cond_7
    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/U6;)V
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/U8;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/U8;-><init>(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/U6;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LP;->A00(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A22(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A05()Lcom/facebook/ads/redexgen/X/7Y;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7Y;->A5i()V

    :cond_1b
    return-void
.end method

.method private A0M(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V
    .registers 15

    move-object v0, p0

    :try_start_1
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jj;->A05:Lcom/facebook/ads/redexgen/X/Jk;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_145

    :try_start_5
    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Jk;->A06(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Jm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jm;->A00()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v5

    if-eqz v5, :cond_7f

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/IP;->A0Q(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/IP;

    move-result-object v2

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8F;->A09()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/IP;->A2S(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/7w;->AA1()V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jj;->A03:Lcom/facebook/ads/redexgen/X/2G;

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8F;->A06()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/2G;->A0N(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8G;->A0B()J

    move-result-wide v1

    invoke-static {v1, v2, p4}, Lcom/facebook/ads/redexgen/X/Jf;->A05(JLcom/facebook/ads/redexgen/X/Jg;)V

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Jj;->A09:Ljava/util/concurrent/Executor;

    invoke-static {v2, v1, v5}, Lcom/facebook/ads/redexgen/X/Lj;->A01(Lcom/facebook/ads/redexgen/X/YA;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/8F;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    const/4 v2, 0x7

    const/16 v1, 0x7b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kv;->A02()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v7, v1}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/facebook/ads/redexgen/X/7y;->A04(I)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lcom/facebook/ads/redexgen/X/7y;->A08(Z)V

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v4

    const/16 v3, 0x4f

    const/4 v2, 0x7

    const/16 v1, 0x38

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A1W:I

    invoke-interface {v4, v2, v1, v7}, Lcom/facebook/ads/redexgen/X/7w;->A9q(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :cond_7f
    sget-object v2, Lcom/facebook/ads/redexgen/X/Jh;->A00:[I

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jm;->A01()Lcom/facebook/ads/redexgen/X/Jl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Jl;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_16e

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0S;->A2r(JILjava/lang/String;Z)V

    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jj;->A0D(Lcom/facebook/ads/redexgen/X/JG;)V

    goto/16 :goto_16c

    :pswitch_b1
    move-object v4, v6

    check-cast v4, Lcom/facebook/ads/redexgen/X/U6;

    if-eqz v5, :cond_f6

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/8G;->A0E()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-static {p1, p4}, Lcom/facebook/ads/redexgen/X/Jf;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jg;)V

    :cond_c3
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/Jj;->A02:Ljava/util/Map;

    if-eqz v5, :cond_109

    const/16 v3, 0xd

    const/16 v2, 0x11

    const/16 v1, 0x5d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Jj;->A05(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_d7
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jm;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f6

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A02()Lcom/facebook/ads/redexgen/X/7T;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/Jm;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v2, v5, v1}, Lcom/facebook/ads/redexgen/X/7T;->AEl(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Ljava/lang/String;)V

    :cond_f6
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v3

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v1

    invoke-interface {v3, v1, v2}, Lcom/facebook/ads/redexgen/X/0S;->A2s(J)V

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/Jj;->A0L(Lcom/facebook/ads/redexgen/X/U6;)V

    goto :goto_16c

    :cond_109
    const/4 v5, 0x0

    goto :goto_d7

    :pswitch_10b
    check-cast v6, Lcom/facebook/ads/redexgen/X/U5;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/U5;->A04()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/U5;->A03()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v2, v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/U5;->A03()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/Jj;->A0B(ILjava/lang/String;)V

    if-eqz v8, :cond_125

    goto :goto_126

    :cond_125
    move-object v8, p1

    :goto_126
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0S;->A2r(JILjava/lang/String;Z)V

    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jj;->A0D(Lcom/facebook/ads/redexgen/X/JG;)V

    goto :goto_16c
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_145} :catch_147

    :catch_145
    move-exception v1

    goto :goto_148

    :catch_147
    move-exception v1

    :goto_148
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/0S;->A2r(JILjava/lang/String;Z)V

    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Jj;->A0D(Lcom/facebook/ads/redexgen/X/JG;)V

    :goto_16c
    return-void

    nop

    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_10b
    .end packed-switch
.end method

.method private A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V
    .registers 12

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A09:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/redexgen/X/UA;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/UA;-><init>(Lcom/facebook/ads/redexgen/X/Jj;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final A0O(Lcom/facebook/ads/redexgen/X/Jg;)V
    .registers 11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/86;->A0B(Lcom/facebook/ads/redexgen/X/7S;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jj;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Jn;

    if-eqz v0, :cond_1f

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/Jn;->provide(Lcom/facebook/ads/redexgen/X/Jg;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0xa

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V

    return-void

    :cond_1f
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jf;->A08(Lcom/facebook/ads/redexgen/X/Jg;)Z

    move-result v0

    if-eqz v0, :cond_6a

    sget-object v1, Lcom/facebook/ads/redexgen/X/La;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/UC;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/UC;-><init>(Lcom/facebook/ads/redexgen/X/Jj;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Jf;->A02(Lcom/facebook/ads/redexgen/X/Jg;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->AG8()V

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Jj;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/Jg;)V

    return-void

    :cond_44
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A04:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Jj;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A01(J)J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/0S;->A2r(JILjava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Jj;->A0D(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_6a
    sget-object v1, Lcom/facebook/ads/redexgen/X/Jj;->A09:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/UB;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/UB;-><init>(Lcom/facebook/ads/redexgen/X/Jj;Lcom/facebook/ads/redexgen/X/Jg;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final A0P(Lcom/facebook/ads/redexgen/X/Ji;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Jj;->A01:Lcom/facebook/ads/redexgen/X/Ji;

    return-void
.end method
