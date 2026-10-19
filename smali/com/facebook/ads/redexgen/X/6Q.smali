###### Class com.facebook.ads.redexgen.X.C6Q (com.facebook.ads.redexgen.X.6Q)
.class public final Lcom/facebook/ads/redexgen/X/6Q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/6N;,
        Lcom/facebook/ads/redexgen/X/6L;,
        Lcom/facebook/ads/redexgen/X/6P;,
        Lcom/facebook/ads/redexgen/X/6M;,
        Lcom/facebook/ads/redexgen/X/6O;,
        Lcom/facebook/ads/redexgen/X/6J;,
        Lcom/facebook/ads/internal/cache/AdCacheManager$CacheFileExtension;
    }
.end annotation


# static fields
.field public static A0A:Lcom/facebook/ads/redexgen/X/00;

.field public static A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Ljava/lang/String;

.field public static final A0F:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/06;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0G:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/6S;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/In;

.field public final A02:Landroid/os/Handler;

.field public final A03:Lcom/facebook/ads/redexgen/X/6R;

.field public final A04:Lcom/facebook/ads/redexgen/X/7S;

.field public final A05:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A07:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Z

.field public final A09:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "8gkZjHnxCvZyg7TzwjjGeSdvls9L7Gam"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fcbSC3ja3K2jNylkxCBC51G6bXitMdQ0"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2foOCT"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ocB0m3"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KfMQJM794wt5IuG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "feDb68pnVWWOEqV45c"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "KnEa0S3Tnigt4irEXno07XBXpnYxFsFq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "aK1UKkDbG3zR1xh0x3umKxUvmkPLseuR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6Q;->A0D:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6Q;->A0F()V

    const-class v0, Lcom/facebook/ads/redexgen/X/6Q;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0E:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0F:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0G:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7S;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A07:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A02:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6R;->A06(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/6R;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6R;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/IP;->A2E(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A08:Z

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QJ;->A03()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/IP;->A2M(Landroid/content/Context;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A09:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/6Q;)J
    .registers 2

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/6Q;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A02:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/6Q;->A03(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized A03(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;
    .registers 4

    const-class v2, Lcom/facebook/ads/redexgen/X/6Q;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0A:Lcom/facebook/ads/redexgen/X/00;

    if-nez v0, :cond_43

    new-instance v1, Lcom/facebook/ads/redexgen/X/07;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/07;-><init>()V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IP;->A05(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A00(I)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A02(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A01(I)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IP;->A0m(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A03(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IP;->A2L(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/07;->A04(Z)Lcom/facebook/ads/redexgen/X/07;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/07;->A05()Lcom/facebook/ads/redexgen/X/08;

    move-result-object v1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/6Q;->A05(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/YE;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/01;->A00(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/08;Lcom/facebook/ads/redexgen/X/0L;)Lcom/facebook/ads/redexgen/X/bA;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0A:Lcom/facebook/ads/redexgen/X/00;

    :cond_43
    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0A:Lcom/facebook/ads/redexgen/X/00;
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_47

    monitor-exit v2

    return-object v0

    :catchall_47
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;
    .registers 4

    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0F:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/06;

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/6T;->A06(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz v1, :cond_16

    new-instance v0, Lcom/facebook/ads/redexgen/X/06;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/06;-><init>(Lcom/facebook/ads/redexgen/X/06;)V

    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/facebook/ads/redexgen/X/06;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/06;-><init>(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/YE;
    .registers 2

    new-instance v0, Lcom/facebook/ads/redexgen/X/YE;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/YE;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    return-object v0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/6R;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6R;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/7S;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    return-object p0
.end method

.method public static A08(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/6Q;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xa

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static declared-synchronized A09(Lcom/facebook/ads/redexgen/X/7S;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/7S;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v1, Lcom/facebook/ads/redexgen/X/6Q;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0B:Ljava/util/List;

    if-nez v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0B:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/6Q;->A0J(Ljava/util/List;Lcom/facebook/ads/redexgen/X/7S;)V

    :cond_11
    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0B:Ljava/util/List;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic A0A()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0G:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A0B()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0F:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/6Q;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A07:Ljava/util/Map;

    return-object p0
.end method

.method public static A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/util/concurrent/atomic/AtomicBoolean;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/6Q;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/6Q;->A0D:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v4, :cond_44

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/La;->A02()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_44
    const/4 v0, 0x1

    new-instance p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    const/4 v5, 0x0

    :try_start_4b
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_71

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    goto :goto_72

    :cond_71
    const/4 v0, 0x0

    :goto_72
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4f
    :try_end_76
    .catch Ljava/lang/InterruptedException; {:try_start_4b .. :try_end_76} :catch_76
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4b .. :try_end_76} :catch_78

    :catch_76
    move-exception v4

    goto :goto_79

    :catch_78
    move-exception v4

    :goto_79
    sget-object v3, Lcom/facebook/ads/redexgen/X/6Q;->A0E:Ljava/lang/String;

    const/16 v2, 0x4e

    const/16 v1, 0x2a

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_8b
    return-object p0
.end method

.method public static synthetic A0E(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/6Q;->A0D(Ljava/util/ArrayList;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static A0F()V
    .registers 1

    const/16 v0, 0xbc

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0C:[B

    return-void

    :array_a
    .array-data 1
        0x7bt
        -0x52t
        -0x55t
        -0x52t
        0x7ct
        -0x50t
        0x7bt
        -0x51t
        0x6bt
        -0x67t
        -0x67t
        0x6bt
        -0x69t
        -0x68t
        0x6bt
        0x6bt
        0x60t
        0x7et
        -0x80t
        -0x7bt
        -0x7et
        0x3dt
        -0x70t
        -0x6ft
        0x7et
        -0x71t
        -0x6ft
        -0x7et
        -0x7ft
        0x4bt
        -0x77t
        -0x59t
        -0x57t
        -0x52t
        -0x51t
        -0x4ct
        -0x53t
        0x66t
        -0x57t
        -0x4bt
        -0x4dt
        -0x4at
        -0x4et
        -0x55t
        -0x46t
        -0x55t
        -0x71t
        -0x53t
        -0x51t
        -0x4ct
        -0x4bt
        -0x46t
        -0x4dt
        0x6ct
        -0x4et
        -0x53t
        -0x4bt
        -0x48t
        -0x4ft
        -0x50t
        0x7ft
        -0x63t
        -0x61t
        -0x5ct
        -0x5bt
        -0x56t
        -0x5dt
        0x5ct
        -0x51t
        -0x50t
        -0x63t
        -0x52t
        -0x50t
        -0x5ft
        -0x60t
        0x6at
        0x6at
        0x6at
        0x66t
        -0x67t
        -0x7ct
        -0x7at
        -0x6ft
        -0x6bt
        -0x76t
        -0x70t
        -0x71t
        0x41t
        -0x68t
        -0x77t
        -0x76t
        -0x73t
        -0x7at
        0x41t
        -0x7at
        -0x67t
        -0x7at
        -0x7ct
        -0x6at
        -0x6bt
        -0x76t
        -0x71t
        -0x78t
        0x41t
        -0x7ct
        -0x7et
        -0x7ct
        -0x77t
        -0x7at
        0x41t
        -0x7bt
        -0x70t
        -0x68t
        -0x71t
        -0x73t
        -0x70t
        -0x7et
        -0x7bt
        -0x6ct
        0x4ft
        -0x56t
        0x7at
        0x7ft
        -0x57t
        0x7ft
        0x7ft
        -0x4ft
        -0x51t
        -0x4ft
        -0x4at
        -0x4dt
        -0x6ft
        -0x43t
        -0x45t
        -0x42t
        -0x46t
        -0x4dt
        -0x3et
        -0x49t
        -0x43t
        -0x44t
        -0x6at
        -0x43t
        -0x43t
        -0x47t
        0x78t
        0x76t
        0x78t
        0x7dt
        0x7at
        0x5bt
        0x76t
        0x7et
        -0x7ft
        -0x76t
        -0x79t
        0x7at
        0x5dt
        -0x7ct
        -0x7ct
        -0x80t
        -0x78t
        -0x65t
        -0x78t
        -0x7at
        -0x68t
        -0x69t
        -0x78t
        -0x18t
        -0x15t
        -0x23t
        -0x20t
        -0x1bt
        -0x18t
        -0x26t
        -0x23t
        -0x28t
        -0x13t
        -0x1et
        -0x1at
        -0x22t
        -0x28t
        -0x1at
        -0x14t
        -0x60t
        -0x6bt
        -0x64t
        -0x5ct
    .end array-data
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/Im;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A0I(Lcom/facebook/ads/redexgen/X/Im;)V

    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/6T;->A06(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    sget-object v0, Lcom/facebook/ads/redexgen/X/6Q;->A0G:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/6S;

    if-eqz v3, :cond_3b

    const/16 v2, 0xb8

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/6S;->A00:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/QN;->A05(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Kc;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/QN;->A08(Lcom/facebook/ads/redexgen/X/Y9;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_34

    move-object v0, p1

    :cond_34
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QN;->A0H(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/6T;->A04(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6S;Z)V

    :cond_3b
    return-void
.end method

.method private A0I(Lcom/facebook/ads/redexgen/X/Im;)V
    .registers 7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A01:Lcom/facebook/ads/redexgen/X/In;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A00:J

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LM;->A04(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xac

    const/16 v1, 0xc

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A01:Lcom/facebook/ads/redexgen/X/In;

    invoke-virtual {v0, p1, v4}, Lcom/facebook/ads/redexgen/X/In;->A04(Lcom/facebook/ads/redexgen/X/Im;Ljava/util/Map;)V

    return-void
.end method

.method public static A0J(Ljava/util/List;Lcom/facebook/ads/redexgen/X/7S;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/7S;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/bA;->A01(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0K(Ljava/util/List;Ljava/io/File;)V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/6R;->A07(Lcom/facebook/ads/redexgen/X/7S;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0K(Ljava/util/List;Ljava/io/File;)V

    return-void
.end method

.method public static A0K(Ljava/util/List;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_41

    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/6Q;->A0D:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_21

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_21
    sget-object v2, Lcom/facebook/ads/redexgen/X/6Q;->A0D:[Ljava/lang/String;

    const-string v1, "Vghlgc"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "qwUey9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v1, 0x0

    const/16 v0, 0x7f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    if-eq v3, v0, :cond_41

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    return-void
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/6Q;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A08:Z

    return p0
.end method


# virtual methods
.method public final A0M(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A07:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final A0N(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 13

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A08:Z

    move-object v5, p1

    move v6, p2

    move v7, p3

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/6Q;->A04(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    const/16 v2, 0xb8

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    iput v7, v3, Lcom/facebook/ads/redexgen/X/06;->A01:I

    iput v6, v3, Lcom/facebook/ads/redexgen/X/06;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A03(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/00;->AEh(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0

    :cond_32
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6R;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    const/16 v2, 0xa8

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/6R;->A0E(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final A0O(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A04(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    const/16 v2, 0xb8

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A03(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/00;->AEi(Lcom/facebook/ads/redexgen/X/06;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final A0P(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A08:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A0O(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6R;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6R;->A0F(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final A0Q(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A08:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A03:Lcom/facebook/ads/redexgen/X/6R;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/6R;->A0G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0R(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A04(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/06;

    move-result-object v3

    const/16 v2, 0xb8

    const/4 v1, 0x4

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/06;->A03:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A03(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/00;->AEk(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    :goto_21
    return-object v0

    :cond_22
    move-object v0, p1

    goto :goto_21
.end method

.method public final A0S(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A09:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A0H(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;)V

    return-object p1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A0R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0T()V
    .registers 6

    const/16 v2, 0x1e

    const/16 v1, 0x10

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/16 v0, 0x40

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7e

    const/16 v1, 0x13

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/JU;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final A0U()V
    .registers 6

    const/16 v2, 0x2e

    const/16 v1, 0xe

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x78

    const/4 v1, 0x6

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x91

    const/16 v1, 0x10

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/JU;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final A0V()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A07:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/6I;Lcom/facebook/ads/redexgen/X/6J;)V
    .registers 12

    const/16 v2, 0x3c

    const/16 v1, 0x12

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8

    const/16 v1, 0x8

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xa1

    const/4 v1, 0x7

    const/16 v0, 0x19

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v3}, Lcom/facebook/ads/redexgen/X/JU;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A00:J

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/6Q;->A04:Lcom/facebook/ads/redexgen/X/7S;

    sget v5, Lcom/facebook/ads/redexgen/X/6T;->A07:I

    const/16 v2, 0x10

    const/16 v1, 0xe

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A08(III)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, -0x1

    move-object v4, p2

    move-object v4, v4

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/6T;->A02(Lcom/facebook/ads/redexgen/X/7S;Lcom/facebook/ads/redexgen/X/6J;ILjava/lang/String;J)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/La;->A03()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/YF;

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/YF;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Ljava/util/ArrayList;Lcom/facebook/ads/redexgen/X/6J;Lcom/facebook/ads/redexgen/X/6I;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final A0X(Lcom/facebook/ads/redexgen/X/6M;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6N;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6M;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/6M;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6M;->A05:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6N;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6M;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/6M;)V
    .registers 4

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6M;->A05:Z

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A09:Z

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6L;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6M;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    return-void

    :cond_12
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6N;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6M;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/6M;)V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A09:Z

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6L;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6M;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/6N;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/6N;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6M;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/6O;)V
    .registers 4

    new-instance v1, Lcom/facebook/ads/redexgen/X/6P;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/6P;-><init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6O;)V

    iget-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6O;->A02:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A05:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6Q;->A06:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method public final A0c(Lcom/facebook/ads/redexgen/X/6O;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/facebook/ads/redexgen/X/6O;->A02:Z

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/6Q;->A0b(Lcom/facebook/ads/redexgen/X/6O;)V

    return-void
.end method

.method public final A0d(Lcom/facebook/ads/redexgen/X/In;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6Q;->A01:Lcom/facebook/ads/redexgen/X/In;

    return-void
.end method

###### Class com.facebook.ads.redexgen.X.AnonymousClass07 (com.facebook.ads.redexgen.X.07)
.class public final Lcom/facebook/ads/redexgen/X/07;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Z

.field public A03:Z

.field public A04:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/07;->A00:I

    return-object p0
.end method

.method public final A01(I)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput p1, p0, Lcom/facebook/ads/redexgen/X/07;->A01:I

    return-object p0
.end method

.method public final A02(Z)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/07;->A02:Z

    return-object p0
.end method

.method public final A03(Z)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/07;->A03:Z

    return-object p0
.end method

.method public final A04(Z)Lcom/facebook/ads/redexgen/X/07;
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/07;->A04:Z

    return-object p0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/08;
    .registers 7

    new-instance v0, Lcom/facebook/ads/redexgen/X/08;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/07;->A00:I

    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/07;->A02:Z

    iget v3, p0, Lcom/facebook/ads/redexgen/X/07;->A01:I

    iget-boolean v4, p0, Lcom/facebook/ads/redexgen/X/07;->A03:Z

    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/07;->A04:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/08;-><init>(IZIZZ)V

    return-object v0
.end method

###### Class com.facebook.ads.redexgen.X.C6P (com.facebook.ads.redexgen.X.6P)
.class public final Lcom/facebook/ads/redexgen/X/6P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/6Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageDownloaderCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B

.field public static A03:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/6O;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/6Q;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jwTNBF52XqMGgcVEiQTwvXvSBsl43Bcu"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zl9XISU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9LwyCiCzMXmNgkxTRjX8XUqiNT4UlidW"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Jar4Zz8ck96tLH67JFbLbWmYESMeU49V"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Yd8bjyjazIom6Oxe2tnjIAJyfdSlHwWG"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "VgUZ5KaBAYbzt3oMIew8EQ4BA2c"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "hXTgBapwd4emagenALPcDOSBW5zmdf3H"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "17k"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/6P;->A03:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6P;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6Q;Lcom/facebook/ads/redexgen/X/6O;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .registers 15

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_8

    return-object v6

    :cond_8
    move-object v2, p0

    const v0, 0xf00d

    :try_start_c
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v7, Lcom/facebook/ads/redexgen/X/06;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v9, v0, Lcom/facebook/ads/redexgen/X/6O;->A06:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/6O;->A05:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x53

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A01(III)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v12, v0, Lcom/facebook/ads/redexgen/X/6O;->A01:Ljava/lang/String;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-boolean v13, v0, Lcom/facebook/ads/redexgen/X/6O;->A02:Z

    invoke-direct/range {v7 .. v13}, Lcom/facebook/ads/redexgen/X/06;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A04:I

    iput v0, v7, Lcom/facebook/ads/redexgen/X/06;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A03:I

    iput v0, v7, Lcom/facebook/ads/redexgen/X/06;->A00:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A07(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6T;->A06(Lcom/facebook/ads/redexgen/X/7S;)Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-static {}, Lcom/facebook/ads/redexgen/X/6Q;->A0B()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0L(Lcom/facebook/ads/redexgen/X/6Q;)Z
    :try_end_58
    .catchall {:try_start_c .. :try_end_58} :catchall_ee

    move-result v5

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/6P;->A03:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_e8

    sget-object v4, Lcom/facebook/ads/redexgen/X/6P;->A03:[Ljava/lang/String;

    const-string v1, "CZcPy1KhLDdCOlGcBT5xxsnRB32IUDMD"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    if-eqz v5, :cond_70

    goto :goto_80

    :cond_70
    :try_start_70
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A06(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/6R;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6R;->A0D(Lcom/facebook/ads/redexgen/X/6O;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_96

    const/4 v3, 0x1

    goto :goto_96

    :goto_80
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A07(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A02(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    invoke-interface {v0, v7, v3}, Lcom/facebook/ads/redexgen/X/00;->AEh(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A01()Z

    move-result v3

    :cond_96
    :goto_96
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/6O;->A00:Lcom/facebook/ads/redexgen/X/6W;

    if-eqz v1, :cond_de

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6W;->A02()Z

    move-result v0

    if-eqz v0, :cond_de

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6W;->A00()I

    move-result v4

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/6W;->A01()I

    move-result v1

    if-lez v4, :cond_af

    if-lez v1, :cond_af

    goto :goto_cb

    :cond_af
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0L(Lcom/facebook/ads/redexgen/X/6Q;)Z

    move-result v0

    if-eqz v0, :cond_bf

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    invoke-direct {v2, v0, v7}, Lcom/facebook/ads/redexgen/X/6P;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/06;)V

    goto :goto_de

    :cond_bf
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/6O;->A03:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A04:I

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6P;->A03(II)V

    goto :goto_de

    :goto_cb
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0L(Lcom/facebook/ads/redexgen/X/6Q;)Z

    move-result v0

    if-eqz v0, :cond_e3

    iput v4, v7, Lcom/facebook/ads/redexgen/X/06;->A00:I

    iput v1, v7, Lcom/facebook/ads/redexgen/X/06;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    invoke-direct {v2, v0, v7}, Lcom/facebook/ads/redexgen/X/6P;->A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/06;)V

    :cond_de
    :goto_de
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_e7

    :cond_e3
    invoke-direct {v2, v4, v1}, Lcom/facebook/ads/redexgen/X/6P;->A03(II)V

    goto :goto_de

    :goto_e7
    return-object v0
    :try_end_e8
    .catchall {:try_start_70 .. :try_end_e8} :catchall_ee

    :cond_e8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :catchall_ee
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v6
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/6P;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/6P;->A03:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_31

    sget-object v2, Lcom/facebook/ads/redexgen/X/6P;->A03:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_2b

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x30

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_2b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_31
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/6P;->A02:[B

    return-void

    nop

    :array_a
    .array-data 1
        -0x14t
        -0x10t
        -0x1ct
        -0x16t
        -0x18t
    .end array-data
.end method

.method private A03(II)V
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A06(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/6R;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A07(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/6O;->A01:Ljava/lang/String;

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/6R;->A0E(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0C(Lcom/facebook/ads/redexgen/X/6Q;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A00:Lcom/facebook/ads/redexgen/X/6O;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/6O;->A07:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    return-void
.end method

.method private A04(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/06;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A07(Lcom/facebook/ads/redexgen/X/6Q;)Lcom/facebook/ads/redexgen/X/7S;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A02(Lcom/facebook/ads/redexgen/X/Y9;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {v1, p2, v0}, Lcom/facebook/ads/redexgen/X/00;->AEh(Lcom/facebook/ads/redexgen/X/06;Z)Lcom/facebook/ads/redexgen/X/02;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/02;->A00()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/6P;->A01:Lcom/facebook/ads/redexgen/X/6Q;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/6Q;->A0C(Lcom/facebook/ads/redexgen/X/6Q;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/K0;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    return-object v2

    :cond_8
    move-object v1, p0

    :try_start_9
    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/6P;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/K0;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
