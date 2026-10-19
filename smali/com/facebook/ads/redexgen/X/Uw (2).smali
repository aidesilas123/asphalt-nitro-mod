###### Class com.facebook.ads.redexgen.X.C1409Uw (com.facebook.ads.redexgen.X.Uw)
.class public final Lcom/facebook/ads/redexgen/X/Uw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/H2;


# static fields
.field public static A06:Z

.field public static A07:[B

.field public static A08:[Ljava/lang/String;

.field public static final A09:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/Uy;

.field public final A03:Lcom/facebook/ads/redexgen/X/HA;

.field public final A04:Ljava/io/File;

.field public final A05:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/H1;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "PZs3vIZtp1syVhF"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iN5G7Jyo65HiG11v5U3JAI3rcjEJu9Fh"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jWadhCo9gqYR1xuZ5eOebDdRLwIuwzoe"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5aVgPmkb9WO9SFxkSTOlcah0CKuDVehn"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Qok3N"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7mg38N8lomez8u4EtBpwlNJo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Crj8XVI7aaG6XCZYe"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "vguL8XPuWTEOQDWRTomV5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Uw;->A06()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uw;->A09:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;[BZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;Lcom/facebook/ads/redexgen/X/HA;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Uw;->A0D(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_31

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/Uy;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:Ljava/util/HashMap;

    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    const/16 v2, 0x39

    const/16 v1, 0x18

    const/16 v0, 0x70

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/HF;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/HF;-><init>(Lcom/facebook/ads/redexgen/X/Uw;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HF;->start()V

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    return-void

    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x58

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;[BZ)V
    .registers 6

    new-instance v0, Lcom/facebook/ads/redexgen/X/HA;

    invoke-direct {v0, p1, p3, p4}, Lcom/facebook/ads/redexgen/X/HA;-><init>(Ljava/io/File;[BZ)V

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/Uw;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/Uy;Lcom/facebook/ads/redexgen/X/HA;)V

    return-void
.end method

.method private A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v2

    if-nez v2, :cond_27

    invoke-static {p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Uv;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xf

    if-eq v1, v0, :cond_21

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    const-string v1, "R7TEvDOiyk4OKBf9PsOT39P5pIR22NMD"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_21
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_27
    :goto_27
    invoke-virtual {v2, p2, p3}, Lcom/facebook/ads/redexgen/X/H9;->A06(J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v1

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/H6;->A05:Z

    if-eqz v0, :cond_3b

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uw;->A05()V

    goto :goto_27

    :cond_3b
    return-object v1
.end method

.method private final declared-synchronized A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :goto_1
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Uw;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    if-eqz v0, :cond_8

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    :goto_c
    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    const/4 v3, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Uw;->A00(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v2

    iget-boolean v0, v2, Lcom/facebook/ads/redexgen/X/H6;->A05:Z

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/H9;->A07(Lcom/facebook/ads/redexgen/X/Uv;)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A0C(Lcom/facebook/ads/redexgen/X/Uv;Lcom/facebook/ads/redexgen/X/H6;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_37

    monitor-exit p0

    return-object v0

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H9;->A0D()Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {v1, v3}, Lcom/facebook/ads/redexgen/X/H9;->A0B(Z)V
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_37

    monitor-exit p0

    return-object v2

    :cond_34
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/Uw;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5a

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
    .registers 10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-void

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0E()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_1c

    return-void

    :cond_1c
    array-length v7, v8

    const/4 v6, 0x0

    :goto_1e
    if-ge v6, v7, :cond_55

    aget-object v5, v8, v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/16 v1, 0x18

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_36
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    :cond_39
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_4f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/Uv;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/HA;)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    :goto_49
    if-eqz v0, :cond_51

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A0A(Lcom/facebook/ads/redexgen/X/Uv;)V

    goto :goto_36

    :cond_4f
    const/4 v0, 0x0

    goto :goto_49

    :cond_51
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_36

    :cond_55
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0F()V

    :try_start_5a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0G()V

    goto :goto_78
    :try_end_60
    .catch Lcom/facebook/ads/redexgen/X/H0; {:try_start_5a .. :try_end_60} :catch_60

    :catch_60
    move-exception v4

    const/16 v2, 0x2e

    const/16 v1, 0xb

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x51

    const/16 v1, 0x19

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_78
    return-void
.end method

.method private A05()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0D()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/H9;->A08()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/H6;

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/H6;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_3b
    const/4 v2, 0x0

    :goto_3c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4f

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/H6;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A08(Lcom/facebook/ads/redexgen/X/H6;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    :cond_4f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0F()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0G()V

    return-void
.end method

.method public static A06()V
    .registers 4

    const/16 v3, 0x82

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    const-string v1, "N0vjWbyGqBS98Run3kOI6tTmnpu8bGoB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/facebook/ads/redexgen/X/Uw;->A07:[B

    return-void

    nop

    :array_2c
    .array-data 1
        0x43t
        0x6ct
        0x6dt
        0x76t
        0x6at
        0x67t
        0x70t
        0x22t
        0x51t
        0x6bt
        0x6ft
        0x72t
        0x6et
        0x67t
        0x41t
        0x63t
        0x61t
        0x6at
        0x67t
        0x22t
        0x6bt
        0x6ct
        0x71t
        0x76t
        0x63t
        0x6ct
        0x61t
        0x67t
        0x22t
        0x77t
        0x71t
        0x67t
        0x71t
        0x22t
        0x76t
        0x6at
        0x67t
        0x22t
        0x64t
        0x6dt
        0x6et
        0x66t
        0x67t
        0x70t
        0x38t
        0x22t
        0x30t
        0xat
        0xet
        0x13t
        0xft
        0x6t
        0x20t
        0x2t
        0x0t
        0xbt
        0x6t
        0x79t
        0x43t
        0x47t
        0x5at
        0x46t
        0x4ft
        0x69t
        0x4bt
        0x49t
        0x42t
        0x4ft
        0x4t
        0x43t
        0x44t
        0x43t
        0x5et
        0x43t
        0x4bt
        0x46t
        0x43t
        0x50t
        0x4ft
        0x2t
        0x3t
        0x60t
        0x47t
        0x5ct
        0x41t
        0x5at
        0x5dt
        0x54t
        0x13t
        0x5at
        0x5dt
        0x57t
        0x56t
        0x4bt
        0x13t
        0x55t
        0x5at
        0x5ft
        0x56t
        0x13t
        0x55t
        0x52t
        0x5at
        0x5ft
        0x56t
        0x57t
        0x14t
        0x16t
        0x14t
        0x1ft
        0x12t
        0x13t
        0x28t
        0x14t
        0x18t
        0x19t
        0x3t
        0x12t
        0x19t
        0x3t
        0x28t
        0x1et
        0x19t
        0x13t
        0x12t
        0xft
        0x59t
        0x12t
        0xft
        0x1et
    .end array-data
.end method

.method private A07(Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_12
    if-ltz v1, :cond_20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/H1;->AD1(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/Uy;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/H1;->AD1(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V

    return-void
.end method

.method private A08(Lcom/facebook/ads/redexgen/X/H6;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/H9;->A0E(Lcom/facebook/ads/redexgen/X/H6;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    return-void

    :cond_11
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:J

    if-eqz p2, :cond_2c

    :try_start_1a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A0H(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0G()V

    goto :goto_2c
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_27

    :catchall_27
    move-exception v0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uw;->A07(Lcom/facebook/ads/redexgen/X/H6;)V

    throw v0

    :cond_2c
    :goto_2c
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uw;->A07(Lcom/facebook/ads/redexgen/X/H6;)V

    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Uw;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uw;->A04()V

    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Uv;)V
    .registers 6

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A0A(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/H9;->A09(Lcom/facebook/ads/redexgen/X/Uv;)V

    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:J

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Uw;->A0B(Lcom/facebook/ads/redexgen/X/Uv;)V

    return-void
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Uv;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_12
    if-ltz v1, :cond_20

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/H1;->AD0(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/Uy;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/H1;->AD0(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;)V

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/Uv;Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 8

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A05:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_46

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2a

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2a
    sget-object v2, Lcom/facebook/ads/redexgen/X/Uw;->A08:[Ljava/lang/String;

    const-string v1, "YjLi8Ea68WiaTq3"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ACi8R"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    add-int/lit8 v1, v4, -0x1

    :goto_38
    if-ltz v1, :cond_46

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/H1;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/H1;->AD2(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;Lcom/facebook/ads/redexgen/X/H6;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/Uy;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/H1;->AD2(Lcom/facebook/ads/redexgen/X/H2;Lcom/facebook/ads/redexgen/X/H6;Lcom/facebook/ads/redexgen/X/H6;)V

    return-void
.end method

.method public static declared-synchronized A0D(Ljava/io/File;)Z
    .registers 4

    const-class v2, Lcom/facebook/ads/redexgen/X/Uw;

    monitor-enter v2

    :try_start_3
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/Uw;->A06:Z

    if-eqz v0, :cond_a
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_16

    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :cond_a
    :try_start_a
    sget-object v1, Lcom/facebook/ads/redexgen/X/Uw;->A09:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_16

    monitor-exit v2

    return v0

    :catchall_16
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A3W(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HE;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/HA;->A0I(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HE;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0G()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A4K(Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    const/4 v7, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Uv;->A00(Ljava/io/File;Lcom/facebook/ads/redexgen/X/HA;)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v6

    if-eqz v6, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/H9;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_34
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_6d

    monitor-exit p0

    return-void

    :cond_34
    :try_start_34
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-nez v0, :cond_43

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_6d

    monitor-exit p0

    return-void

    :cond_43
    :try_start_43
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/H9;->A05()Lcom/facebook/ads/redexgen/X/Ux;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(Lcom/facebook/ads/redexgen/X/HC;)J

    move-result-wide v4

    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-eqz v0, :cond_5d

    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/H6;->A02:J

    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/H6;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_69

    :goto_5a
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    :cond_5d
    invoke-direct {p0, v6}, Lcom/facebook/ads/redexgen/X/Uw;->A0A(Lcom/facebook/ads/redexgen/X/Uv;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/HA;->A0G()V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_6b

    :cond_69
    const/4 v7, 0x0

    goto :goto_5a
    :try_end_6b
    .catchall {:try_start_43 .. :try_end_6b} :catchall_6d

    :goto_6b
    monitor-exit p0

    return-void

    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6A()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A00:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-wide v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6B(Ljava/lang/String;JJ)J
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/H9;->A04(JJ)J

    move-result-wide v0

    goto :goto_19

    :cond_18
    neg-long v0, p4
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :goto_19
    monitor-exit p0

    return-wide v0

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6C(Ljava/lang/String;)Ljava/util/NavigableSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/facebook/ads/redexgen/X/H6;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H9;->A0C()Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_19
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_28

    :cond_1f
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H9;->A08()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    :goto_28
    monitor-exit p0

    return-object v1

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6Q(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/Uw;->A6R(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/HC;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HD;->A00(Lcom/facebook/ads/redexgen/X/HC;)J

    move-result-wide v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-wide v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A6R(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/HC;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/HA;->A0B(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/HC;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AES(Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    const/4 v3, 0x0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/H6;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/H9;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/ads/redexgen/X/H9;->A0B(Z)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/H9;->A03:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/HA;->A0H(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AEZ(Lcom/facebook/ads/redexgen/X/H6;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    const/4 v1, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    invoke-direct {p0, p1, v1}, Lcom/facebook/ads/redexgen/X/Uw;->A08(Lcom/facebook/ads/redexgen/X/H6;Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFD(Ljava/lang/String;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/facebook/ads/redexgen/X/HE;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/HE;-><init>()V

    invoke-static {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/HD;->A05(Lcom/facebook/ads/redexgen/X/HE;J)V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Uw;->A3W(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/HE;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AFi(Ljava/lang/String;JJ)Ljava/io/File;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A01:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A03:Lcom/facebook/ads/redexgen/X/HA;

    move-object v4, p1

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/HA;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/H9;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/HI;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/H9;->A0D()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Uw;->A05()V

    :cond_2c
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Uw;->A02:Lcom/facebook/ads/redexgen/X/Uy;

    move-object v3, p0

    move-wide v5, p2

    move-wide v7, p4

    invoke-interface/range {v2 .. v8}, Lcom/facebook/ads/redexgen/X/Uy;->AD3(Lcom/facebook/ads/redexgen/X/H2;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Uw;->A04:Ljava/io/File;

    iget v4, v1, Lcom/facebook/ads/redexgen/X/H9;->A02:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/Uv;->A04(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_42

    monitor-exit p0

    return-object v0

    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic AFk(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H6;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Uw;->A01(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic AFl(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/H6;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/H0;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/Uw;->A02(Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/Uv;

    move-result-object v0

    return-object v0
.end method
