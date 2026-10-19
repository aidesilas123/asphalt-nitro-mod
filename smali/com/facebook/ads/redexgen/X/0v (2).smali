###### Class com.facebook.ads.redexgen.X.C06710v (com.facebook.ads.redexgen.X.0v)
.class public final Lcom/facebook/ads/redexgen/X/0v;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A08:Lcom/facebook/ads/redexgen/X/0v;

.field public static A09:[B

.field public static A0A:[Ljava/lang/String;

.field public static final A0B:Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/0u;

.field public final A03:Lcom/facebook/ads/redexgen/X/7S;

.field public final A04:Ljava/lang/String;

.field public final A05:Ljava/util/concurrent/CountDownLatch;

.field public final A06:Ljava/util/concurrent/CountDownLatch;

.field public final A07:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TOlR5WIHpQxnCrBDCJGIvboS5c1GP2eb"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1A072KPTjzB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "BhIKZU0mEosMUOfZes2VT64q11XJ2Uhn"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3eQHzZddeWPmYl0bNsvnb2WjxREMTE8a"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "x"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3ukMDhdDleVgfGP2GHVzNRiRwZbG92ZS"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "tXOxwX9vQ8QECIpzr41AiGeD6LbiHgO3"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "feL0RS1gsJrC9VyxtC"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/0v;->A0A:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/0v;->A09()V

    const-class v0, Lcom/facebook/ads/redexgen/X/0v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/0v;->A0B:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7S;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A05:Ljava/util/concurrent/CountDownLatch;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A06:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/0v;->A04:Ljava/lang/String;

    new-instance v0, Lcom/facebook/ads/redexgen/X/0u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0u;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A00:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/0v;->A07:Ljava/util/concurrent/Executor;

    if-eqz p2, :cond_2b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0v;->A0A()V

    :cond_2b
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/0v;)Lcom/facebook/ads/redexgen/X/0u;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    return-object p0
.end method

.method public static declared-synchronized A01(Lcom/facebook/ads/redexgen/X/7S;)Lcom/facebook/ads/redexgen/X/0v;
    .registers 6

    const-class v4, Lcom/facebook/ads/redexgen/X/0v;

    monitor-enter v4

    :try_start_3
    sget-object v0, Lcom/facebook/ads/redexgen/X/0v;->A08:Lcom/facebook/ads/redexgen/X/0v;

    if-nez v0, :cond_19

    sget-object v3, Lcom/facebook/ads/redexgen/X/La;->A06:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/0v;

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/0v;-><init>(Lcom/facebook/ads/redexgen/X/7S;ZLjava/util/concurrent/Executor;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/0v;->A08:Lcom/facebook/ads/redexgen/X/0v;

    :cond_19
    sget-object v0, Lcom/facebook/ads/redexgen/X/0v;->A08:Lcom/facebook/ads/redexgen/X/0v;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v4

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/0v;)Lcom/facebook/ads/redexgen/X/7S;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/0v;->A09:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x45

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v6

    :try_start_8
    monitor-enter p0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_9} :catch_64
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_9} :catch_49

    :try_start_9
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_44

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v0, v1

    new-array v3, v0, [B

    invoke-virtual {v4, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    const/4 v2, 0x0

    const/4 v1, 0x5

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    move-object v6, v0

    :cond_44
    monitor-exit p0

    goto :goto_7e

    :catchall_46
    move-exception v0

    monitor-exit p0
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_46

    :try_start_48
    throw v0
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_49} :catch_64
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_49} :catch_49

    :catch_49
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_7e

    :catch_64
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A17:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_7e
    return-object v6
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/0v;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/0v;->A05:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/0v;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/0v;->A06:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private A07()V
    .registers 7

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v4

    :try_start_9
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/0u;->A08(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A04(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0u;->A0A(Ljava/lang/String;)V

    goto :goto_66
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_42} :catch_42
    .catch Lcom/facebook/ads/redexgen/X/7y; {:try_start_9 .. :try_end_42} :catch_57

    :catch_42
    move-exception v3

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0v;->A0M()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_66

    :catch_57
    move-exception v2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0v;->A0M()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v1

    sget v0, Lcom/facebook/ads/redexgen/X/7x;->A18:I

    invoke-interface {v1, v4, v0, v2}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_66
    return-void
.end method

.method private A08()V
    .registers 4

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0u;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_16

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/0v;->A0K()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/0v;->A0G(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static A09()V
    .registers 4

    const/16 v0, 0x35

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/0v;->A0A:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x73

    if-eq v1, v0, :cond_20

    sget-object v2, Lcom/facebook/ads/redexgen/X/0v;->A0A:[Ljava/lang/String;

    const-string v1, "ekiMbk44dvQ4iEpOly1MsU0Tkyq5eij5"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    fill-array-data v3, :array_26

    sput-object v3, Lcom/facebook/ads/redexgen/X/0v;->A09:[B

    return-void

    :cond_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_26
    .array-data 1
        0x72t
        0x73t
        0x61t
        0xat
        0x1ft
        0x41t
        0x44t
        0x53t
        0x63t
        0x41t
        0x50t
        0x50t
        0x49t
        0x4et
        0x47t
        0x69t
        0x4et
        0x46t
        0x4ft
        0xet
        0x54t
        0x58t
        0x54t
        0x1t
        0x3t
        0x12t
        0x12t
        0x7t
        0x6t
        0x23t
        0x6t
        0x11t
        0x4ct
        0x16t
        0x1at
        0x16t
        0x25t
        0x31t
        0x26t
        0x32t
        0x36t
        0x26t
        0x2dt
        0x20t
        0x3at
        0x1ct
        0x20t
        0x22t
        0x33t
        0x33t
        0x2at
        0x2dt
        0x24t
    .end array-data
.end method

.method private final A0A()V
    .registers 3

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0v;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/at;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/at;-><init>(Lcom/facebook/ads/redexgen/X/0v;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/0v;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0v;->A07()V

    return-void
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/0v;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/0v;->A08()V

    return-void
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/0v;Lcom/facebook/ads/redexgen/X/1Q;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/0v;->A0E(Lcom/facebook/ads/redexgen/X/1Q;Ljava/lang/String;Z)V

    return-void
.end method

.method private declared-synchronized A0E(Lcom/facebook/ads/redexgen/X/1Q;Ljava/lang/String;Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1, p3}, Lcom/facebook/ads/redexgen/X/1Q;->A07(Z)V

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1Q;->A08()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1Q;->A09()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_10
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/0u;->A07(Ljava/lang/String;)V

    goto :goto_1b

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/0u;->A09(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0F(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_14
    return-void
.end method

.method private final declared-synchronized A0G(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A0H(Ljava/lang/String;[B)V

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A0H(Ljava/lang/String;[B)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    monitor-exit p0

    return-void

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A0H(Ljava/lang/String;[B)V
    .registers 8

    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_1} :catch_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_1c

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    monitor-exit p0

    goto :goto_51

    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    :try_start_1b
    throw v0
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1c} :catch_37
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A19:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_51

    :catch_37
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A17:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_51
    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/0v;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/0v;->A0J(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private A0J(Ljava/lang/String;)Z
    .registers 8

    const/4 v5, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    monitor-enter v1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_4} :catch_15

    :try_start_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0u;->A05()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v5, v0, Lcom/facebook/ads/redexgen/X/1Q;

    monitor-exit v1

    goto :goto_2f

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object v3

    const/16 v2, 0x24

    const/16 v1, 0x11

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v2

    sget v1, Lcom/facebook/ads/redexgen/X/7x;->A1A:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v0, v4}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    :goto_2f
    return v5
.end method


# virtual methods
.method public final A0K()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A02:Lcom/facebook/ads/redexgen/X/0u;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0u;->A04()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0L()V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A01:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A00:Ljava/lang/String;

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/0v;->A00:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0v;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/aq;

    invoke-direct {v0, p0, v2}, Lcom/facebook/ads/redexgen/X/aq;-><init>(Lcom/facebook/ads/redexgen/X/0v;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized A0M()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x5

    const/16 v1, 0x12

    const/16 v0, 0x65

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A0F(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/16 v1, 0xd

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/0v;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/0v;->A0F(Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-void

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0N(Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A01:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/0v;->A00:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0v;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/ar;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/ar;-><init>(Lcom/facebook/ads/redexgen/X/0v;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final A0O(Lorg/json/JSONObject;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A03:Lcom/facebook/ads/redexgen/X/7S;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A14(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/0v;->A01:Z

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/0v;->A07:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/as;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/as;-><init>(Lcom/facebook/ads/redexgen/X/0v;Lorg/json/JSONObject;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
