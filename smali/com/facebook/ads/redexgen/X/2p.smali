###### Class com.facebook.ads.redexgen.X.C07172p (com.facebook.ads.redexgen.X.2p)
.class public Lcom/facebook/ads/redexgen/X/2p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:I

.field public static A04:I

.field public static A05:[Ljava/lang/Object;

.field public static A06:[Ljava/lang/Object;

.field public static A07:[B

.field public static A08:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:[I

.field public A02:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BrVHgBkmBksyBnnjIq0pHnqXAu9AUg3j"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iIth6RrlZFIJsCIcgsKekGbs32ChyRjv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Uwdt1z4SmD1Mf7UvGeSYdNXOfhFYTYnY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QITUqyWPG2VnlGrB2a6hYhF3R3KaavLD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "arDW8RiIBmWFNCZvgTvY8WvuJ76u3VTs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "pOGA2rk9V0ZEl"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "438Cia9wbNYnLnXWpHR8BTCUnyjltaF2"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "slnYcYZFDBEgJMtczrpzy3D6NQdPiCOq"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2p;->A04()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    return-void
.end method

.method private final A00()I
    .registers 8

    iget v4, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-nez v4, :cond_6

    const/4 v0, -0x1

    return v0

    :cond_6
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    const/4 v0, 0x0

    invoke-static {v1, v4, v0}, Lcom/facebook/ads/redexgen/X/2p;->A02([III)I

    move-result v6

    if-gez v6, :cond_10

    return v6

    :cond_10
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v6, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_19

    return v6

    :cond_19
    add-int/lit8 v3, v6, 0x1

    :goto_1b
    if-ge v3, v4, :cond_50

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    aget v0, v0, v3

    if-nez v0, :cond_50

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3f
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const-string v1, "5BliZlAS3QBBz9o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v5, v0

    if-nez v0, :cond_4d

    return v3

    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_50
    add-int/lit8 v2, v6, -0x1

    :goto_52
    if-ltz v2, :cond_66

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    aget v0, v0, v2

    if-nez v0, :cond_66

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    if-nez v0, :cond_63

    return v2

    :cond_63
    add-int/lit8 v2, v2, -0x1

    goto :goto_52

    :cond_66
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method private final A01(Ljava/lang/Object;I)I
    .registers 8

    iget v4, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-nez v4, :cond_21

    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x5a

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const-string v1, "y399iLZYsEEz0hzdxnUhzykHYZJwaaUE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_21
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    invoke-static {v0, v4, p2}, Lcom/facebook/ads/redexgen/X/2p;->A02([III)I

    move-result v2

    if-gez v2, :cond_2a

    return v2

    :cond_2a
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    return v2

    :cond_37
    add-int/lit8 v3, v2, 0x1

    :goto_39
    if-ge v3, v4, :cond_51

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    aget v0, v0, v3

    if-ne v0, p2, :cond_51

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v3, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    return v3

    :cond_4e
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_51
    add-int/lit8 v2, v2, -0x1

    :goto_53
    if-ltz v2, :cond_6b

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    aget v0, v0, v2

    if-ne v0, p2, :cond_6b

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v2, 0x1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    return v2

    :cond_68
    add-int/lit8 v2, v2, -0x1

    goto :goto_53

    :cond_6b
    xor-int/lit8 v0, v3, -0x1

    return v0
.end method

.method public static A02([III)I
    .registers 3

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2f;->A02([III)I

    move-result p0

    return p0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A07:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x69

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .registers 4

    const/16 v3, 0xe

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const-string v1, "Xtbm9MFCOkvOfDux5Me3XhO5K6Bs7EUd"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "PZcI0QBOeZ0LYFf6gJzuFWLZdUoY6utj"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_2a

    sput-object v0, Lcom/facebook/ads/redexgen/X/2p;->A07:[B

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2a
    .array-data 1
        -0x45t
        0x7t
        -0x5t
        -0x4t
        0x6t
        -0x4dt
        -0x20t
        -0xct
        0x3t
        -0x44t
        -0x3et
        -0x4at
        0x3t
        0x5t
    .end array-data
.end method

.method private A05(I)V
    .registers 8

    const/16 v0, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2c

    const-class v2, Lcom/facebook/ads/redexgen/X/ZV;

    monitor-enter v2

    :try_start_a
    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A06:[Ljava/lang/Object;

    if-eqz v1, :cond_27

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2p;->A06:[Ljava/lang/Object;

    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    aput-object v5, v1, v3

    aput-object v5, v1, v4

    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    monitor-exit v2

    return-void

    :cond_27
    monitor-exit v2

    goto :goto_54

    :catchall_29
    move-exception v0

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_54

    const-class v2, Lcom/facebook/ads/redexgen/X/ZV;

    monitor-enter v2

    :try_start_32
    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A05:[Ljava/lang/Object;

    if-eqz v1, :cond_4f

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v4

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Lcom/facebook/ads/redexgen/X/2p;->A05:[Ljava/lang/Object;

    aget-object v0, v1, v3

    check-cast v0, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    aput-object v5, v1, v3

    aput-object v5, v1, v4

    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    sub-int/2addr v0, v3

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    monitor-exit v2

    return-void

    :cond_4f
    monitor-exit v2

    goto :goto_54

    :catchall_51
    move-exception v0

    monitor-exit v2
    :try_end_53
    .catchall {:try_start_32 .. :try_end_53} :catchall_51

    throw v0

    :cond_54
    :goto_54
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    return-void
.end method

.method public static A06([I[Ljava/lang/Object;I)V
    .registers 10

    array-length v1, p0

    const/16 v0, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    if-ne v1, v0, :cond_2e

    const-class v1, Lcom/facebook/ads/redexgen/X/ZV;

    monitor-enter v1

    :try_start_e
    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    if-ge v0, v3, :cond_29

    sget-object v0, Lcom/facebook/ads/redexgen/X/2p;->A06:[Ljava/lang/Object;

    aput-object v0, p1, v5

    aput-object p0, p1, v2

    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    :goto_1b
    if-lt v0, v4, :cond_22

    aput-object v6, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    :cond_22
    sput-object p1, Lcom/facebook/ads/redexgen/X/2p;->A06:[Ljava/lang/Object;

    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A04:I

    :cond_29
    monitor-exit v1

    goto :goto_55

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_2b

    throw v0

    :cond_2e
    array-length v1, p0

    const/4 v0, 0x4

    if-ne v1, v0, :cond_55

    const-class v1, Lcom/facebook/ads/redexgen/X/ZV;

    monitor-enter v1

    :try_start_35
    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    if-ge v0, v3, :cond_50

    sget-object v0, Lcom/facebook/ads/redexgen/X/2p;->A05:[Ljava/lang/Object;

    aput-object v0, p1, v5

    aput-object p0, p1, v2

    shl-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, v2

    :goto_42
    if-lt v0, v4, :cond_49

    aput-object v6, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_42

    :cond_49
    sput-object p1, Lcom/facebook/ads/redexgen/X/2p;->A05:[Ljava/lang/Object;

    sget v0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    add-int/2addr v0, v2

    sput v0, Lcom/facebook/ads/redexgen/X/2p;->A03:I

    :cond_50
    monitor-exit v1

    goto :goto_55

    :catchall_52
    move-exception v0

    monitor-exit v1
    :try_end_54
    .catchall {:try_start_35 .. :try_end_54} :catchall_52

    throw v0

    :cond_55
    :goto_55
    return-void
.end method


# virtual methods
.method public final A07(Ljava/lang/Object;)I
    .registers 6

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    mul-int/lit8 v3, v0, 0x2

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    if-nez p1, :cond_15

    const/4 v1, 0x1

    :goto_9
    if-ge v1, v3, :cond_26

    aget-object v0, v2, v1

    if-nez v0, :cond_12

    shr-int/lit8 v0, v1, 0x1

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x2

    goto :goto_9

    :cond_15
    const/4 v1, 0x1

    :goto_16
    if-ge v1, v3, :cond_26

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    shr-int/lit8 v0, v1, 0x1

    return v0

    :cond_23
    add-int/lit8 v1, v1, 0x2

    goto :goto_16

    :cond_26
    const/4 v0, -0x1

    return v0
.end method

.method public final A08(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2p;->A00()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6
.end method

.method public final A09(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0A(I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    const/4 v6, 0x1

    add-int/2addr v0, v6

    aget-object v8, v1, v0

    iget v5, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-gt v5, v6, :cond_41

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/2p;->A06([I[Ljava/lang/Object;I)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    const/4 v4, 0x0

    :cond_1a
    :goto_1a
    iget v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_b5

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const-string v1, "xFHRCOjHDqSI1UlNRZSx5FadcPcGQITj"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "4ZMke5GLOi53P3lo3UgzHK3l5Qzb3367"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ne v5, v3, :cond_af

    iput v4, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    return-object v8

    :cond_41
    add-int/lit8 v4, v5, -0x1

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    array-length v0, v3

    const/16 v2, 0x8

    if-le v0, v2, :cond_8b

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    array-length v0, v3

    div-int/lit8 v0, v0, 0x3

    if-ge v1, v0, :cond_8b

    if-le v5, v2, :cond_57

    shr-int/lit8 v0, v5, 0x1

    add-int v2, v5, v0

    :cond_57
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/2p;->A05(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ne v5, v0, :cond_bb

    if-lez p1, :cond_71

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_71
    if-ge p1, v4, :cond_1a

    add-int/lit8 v2, p1, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    sub-int v0, v4, p1

    invoke-static {v3, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, p1, 0x1

    shl-int/2addr v3, v6

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v7, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1a

    :cond_8b
    if-ge p1, v4, :cond_a1

    add-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    invoke-static {v3, v1, v3, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    shl-int/2addr v2, v6

    shl-int/lit8 v1, p1, 0x1

    sub-int v0, v4, p1

    shl-int/2addr v0, v6

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    const/4 v1, 0x0

    aput-object v1, v2, v0

    shl-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v6

    aput-object v1, v2, v0

    goto/16 :goto_1a

    :cond_af
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_b5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_bb
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final A0B(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public final A0C(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    aput-object p2, v1, v2

    return-object v0
.end method

.method public final A0D(I)V
    .registers 8

    iget v5, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    array-length v0, v0

    if-ge v0, p1, :cond_22

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A05(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    const/4 v2, 0x0

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v5, 0x1

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    invoke-static {v4, v3, v5}, Lcom/facebook/ads/redexgen/X/2p;->A06([I[Ljava/lang/Object;I)V

    :cond_22
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ne v0, v5, :cond_27

    return-void

    :cond_27
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final clear()V
    .registers 5

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-lez v0, :cond_18

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A00:[I

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    sget-object v0, Lcom/facebook/ads/redexgen/X/2f;->A02:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/2p;->A06([I[Ljava/lang/Object;I)V

    :cond_18
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-gtz v0, :cond_1d

    return-void

    :cond_1d
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A07(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v5, 0x1

    if-ne p0, p1, :cond_4

    return v5

    :cond_4
    instance-of v0, p1, Lcom/facebook/ads/redexgen/X/2p;

    const/4 v4, 0x0

    if-eqz v0, :cond_41

    check-cast p1, Lcom/facebook/ads/redexgen/X/2p;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2p;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/2p;->size()I

    move-result v0

    if-eq v1, v0, :cond_16

    return v4

    :cond_16
    const/4 v3, 0x0

    :goto_17
    :try_start_17
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ge v3, v0, :cond_3e

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A09(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_32

    if-nez v0, :cond_3c

    invoke-virtual {p1, v2}, Lcom/facebook/ads/redexgen/X/2p;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3c

    :cond_32
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_3d

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_3c
    :goto_3c
    return v4

    :goto_3d
    return v4

    :cond_3e
    return v5
    :try_end_3f
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_3f} :catch_40
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_3f} :catch_3f

    :catch_3f
    return v4

    :catch_40
    return v4

    :cond_41
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_7d

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2p;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v1, v0, :cond_52

    return v4

    :cond_52
    const/4 v3, 0x0

    :goto_53
    :try_start_53
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ge v3, v0, :cond_7a

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A09(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/2p;->A0B(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v1, :cond_6e

    if-nez v0, :cond_78

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_78

    :cond_6e
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_79

    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    :cond_78
    :goto_78
    return v4

    :goto_79
    return v4

    :cond_7a
    return v5
    :try_end_7b
    .catch Ljava/lang/NullPointerException; {:try_start_53 .. :try_end_7b} :catch_7c
    .catch Ljava/lang/ClassCastException; {:try_start_53 .. :try_end_7b} :catch_7b

    :catch_7b
    return v4

    :catch_7c
    return v4

    :cond_7d
    return v4
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final hashCode()I
    .registers 9

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    :goto_9
    if-ge v4, v2, :cond_1e

    aget-object v0, v6, v3

    aget v1, v7, v4

    if-nez v0, :cond_19

    const/4 v0, 0x0

    :goto_12
    xor-int/2addr v1, v0

    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_12

    :cond_1e
    return v5
.end method

.method public final isEmpty()Z
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    iget v6, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-nez p1, :cond_16

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2p;->A00()I

    move-result v0

    :goto_9
    if-ltz v0, :cond_1f

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    aget-object v0, v1, v2

    aput-object p2, v1, v2

    return-object v0

    :cond_16
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/facebook/ads/redexgen/X/2p;->A01(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_9

    :cond_1f
    xor-int/lit8 v4, v0, -0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    array-length v0, v0

    if-lt v6, v0, :cond_4b

    const/16 v1, 0x8

    if-lt v6, v1, :cond_83

    shr-int/lit8 v1, v6, 0x1

    add-int/2addr v1, v6

    :goto_2d
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/2p;->A05(I)V

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ne v6, v0, :cond_8f

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    array-length v0, v1

    if-lez v0, :cond_48

    array-length v0, v7

    const/4 v2, 0x0

    invoke-static {v7, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    array-length v0, v3

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_48
    invoke-static {v7, v3, v6}, Lcom/facebook/ads/redexgen/X/2p;->A06([I[Ljava/lang/Object;I)V

    :cond_4b
    if-ge v4, v6, :cond_66

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    add-int/lit8 v1, v4, 0x1

    sub-int v0, v6, v4

    invoke-static {v2, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v2, v4, 0x1

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    sub-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v3, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_66
    iget v2, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ne v6, v2, :cond_89

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A01:[I

    array-length v0, v1

    if-ge v4, v0, :cond_89

    aput v5, v1, v4

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/2p;->A02:[Ljava/lang/Object;

    shl-int/lit8 v0, v4, 0x1

    aput-object p1, v1, v0

    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    aput-object p2, v1, v0

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    const/4 v0, 0x0

    return-object v0

    :cond_83
    const/4 v0, 0x4

    if-lt v6, v0, :cond_87

    goto :goto_2d

    :cond_87
    const/4 v1, 0x4

    goto :goto_2d

    :cond_89
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_8f
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/2p;->A08(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/2p;->A0A(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_26

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_26
    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const-string v1, "POG7nMkVNzdGaGlGxNMu0E80q"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final size()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 10

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2p;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v2, 0xc

    const/4 v1, 0x2

    const/16 v0, 0x1f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A03(III)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    mul-int/lit8 v0, v0, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    :goto_1f
    iget v0, p0, Lcom/facebook/ads/redexgen/X/2p;->A00:I

    if-ge v5, v0, :cond_7b

    if-lez v5, :cond_31

    const/16 v2, 0xa

    const/4 v1, 0x2

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/2p;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A09(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v6, 0xa

    const/16 v3, 0x2a

    sget-object v1, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_75

    sget-object v2, Lcom/facebook/ads/redexgen/X/2p;->A08:[Ljava/lang/String;

    const-string v1, "5MoFeGsxqoTSR8Y6IShdOiE5VevAoRo0"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kGPruxXsJMcA49LPD5OztVvQJS4oto1Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v8, v6, v3}, Lcom/facebook/ads/redexgen/X/2p;->A03(III)Ljava/lang/String;

    move-result-object v1

    if-eq v7, p0, :cond_71

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_5c
    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/facebook/ads/redexgen/X/2p;->A0B(I)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_6d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    :cond_6d
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6a

    :cond_71
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_75
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_7b
    const/16 v0, 0x7d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
