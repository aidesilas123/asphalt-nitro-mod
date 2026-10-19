###### Class com.facebook.ads.redexgen.X.C08357r (com.facebook.ads.redexgen.X.7r)
.class public final Lcom/facebook/ads/redexgen/X/7r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/7p;,
        Lcom/facebook/ads/redexgen/X/7q;
    }
.end annotation


# static fields
.field public static A00:Landroid/util/SparseIntArray;

.field public static A01:Ljava/util/concurrent/Executor;

.field public static A02:Z

.field public static A03:Z

.field public static A04:[B

.field public static A05:[Ljava/lang/String;

.field public static final A06:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final A07:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/7s;",
            ">;"
        }
    .end annotation
.end field

.field public static final A08:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A09:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A0A:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/7p;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0B:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/7q;",
            ">;"
        }
    .end annotation
.end field

.field public static final A0C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lfqbOpCQc8eNVWWSF0ti"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "aQ5ZOD0I"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7f7up0GBGRCd1p0enpCjG4lcj76"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dHBYXWbpLBdqteinvxBO5bOixoP3oT04"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DPNUUQYEctncegz3shse9IBb8Vdl47"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "4q0rwT09y0cbatV7Yp"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "6l64E9SK9p5G"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "edaEIeRSccYYgTnyelVwcwdzoe4C2sfO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/7r;->A04()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A00:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    sput-boolean v3, Lcom/facebook/ads/redexgen/X/7r;->A03:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A01:Ljava/util/concurrent/Executor;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Integer;

    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A06:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A07:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    sput-boolean v3, Lcom/facebook/ads/redexgen/X/7r;->A02:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7S;)I
    .registers 7

    const/16 v2, 0x1d1

    const/4 v1, 0x7

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v3, 0xc8

    if-eqz v0, :cond_16

    sget v0, Lcom/facebook/ads/redexgen/X/7x;->A1z:I

    if-ne v0, p1, :cond_16

    return v3

    :cond_16
    const/16 v2, 0x1a6

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    return v3

    :cond_26
    const/16 v2, 0x1bd

    const/4 v1, 0x6

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    return v3

    :cond_36
    const/16 v2, 0x182

    const/16 v1, 0x24

    const/16 v0, 0x62

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/16 v0, 0x32

    return v0

    :cond_49
    const/16 v2, 0x173

    const/16 v1, 0xf

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/IR;->A05(Landroid/content/Context;)I

    move-result v0

    return v0

    :cond_5e
    const/4 v3, -0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_73

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_73
    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const-string v1, "MSKlPe4okWTggpeViHGlBF3nlCraGBz9"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3
.end method

.method public static A01(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x27

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A02()Ljava/util/List;
    .registers 4

    sget-object v3, Lcom/facebook/ads/redexgen/X/7r;->A07:Ljava/util/List;

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const-string v1, "TV2BvPAOYvnRV0R5I88rwwfNZOOU8"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A03()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x1d8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/7r;->A04:[B

    return-void

    :array_a
    .array-data 1
        -0x5dt
        -0x69t
        -0x28t
        -0x25t
        -0x25t
        -0x20t
        -0x15t
        -0x20t
        -0x1at
        -0x1bt
        -0x28t
        -0x1dt
        -0x40t
        -0x1bt
        -0x23t
        -0x1at
        -0x69t
        -0x4ct
        -0x69t
        -0x6et
        -0x7at
        -0x2dt
        -0x35t
        -0x27t
        -0x27t
        -0x39t
        -0x33t
        -0x35t
        -0x7at
        -0x5dt
        -0x7at
        0x5bt
        0x4ft
        -0x5et
        -0x5ct
        -0x6ft
        -0x5dt
        -0x58t
        -0x61t
        -0x6ct
        0x72t
        -0x62t
        -0x6dt
        -0x6ct
        0x4ft
        0x6ct
        0x4ft
        0x74t
        -0x42t
        -0x24t
        -0x17t
        -0x5et
        -0x11t
        -0x65t
        -0x19t
        -0x16t
        -0x1et
        -0x65t
        -0x41t
        -0x20t
        -0x23t
        -0x10t
        -0x1et
        -0x65t
        -0x40t
        -0xft
        -0x20t
        -0x17t
        -0x11t
        -0x57t
        -0x65t
        -0x42t
        -0x16t
        -0x17t
        -0x11t
        -0x20t
        -0xdt
        -0x11t
        -0x65t
        -0x1ct
        -0x12t
        -0x65t
        -0x17t
        -0x10t
        -0x19t
        -0x19t
        -0x57t
        0x77t
        -0x5dt
        -0x57t
        -0x5et
        -0x58t
        -0x67t
        -0x5at
        0x6et
        0x54t
        -0x4ft
        -0x2et
        -0x31t
        -0x1et
        -0x2ct
        -0x73t
        -0x30t
        -0x21t
        -0x32t
        -0x20t
        -0x2bt
        -0x73t
        -0x31t
        -0x2et
        -0x30t
        -0x32t
        -0x1et
        -0x20t
        -0x2et
        -0x73t
        -0x24t
        -0x2dt
        -0x73t
        -0x2et
        -0x1dt
        -0x2et
        -0x25t
        -0x1ft
        -0x73t
        -0x1ct
        -0x2at
        -0x1ft
        -0x2bt
        -0x73t
        -0x20t
        -0x1et
        -0x31t
        -0x1ft
        -0x1at
        -0x23t
        -0x2et
        -0x73t
        -0x56t
        -0x73t
        0x6ct
        -0x61t
        -0x76t
        -0x74t
        -0x74t
        -0x75t
        -0x74t
        -0x75t
        0x47t
        -0x70t
        -0x6bt
        0x54t
        -0x6ct
        -0x74t
        -0x6ct
        -0x6at
        -0x67t
        -0x60t
        0x47t
        -0x6dt
        -0x6at
        -0x72t
        0x47t
        -0x6dt
        -0x70t
        -0x6ct
        -0x70t
        -0x65t
        0x48t
        0x47t
        0x73t
        -0x78t
        -0x66t
        -0x65t
        0x47t
        -0x74t
        -0x63t
        -0x74t
        -0x6bt
        -0x65t
        0x61t
        0x47t
        -0x6ct
        -0x39t
        -0x4et
        -0x4ct
        -0x41t
        -0x3dt
        -0x48t
        -0x42t
        -0x43t
        0x6ft
        -0x6dt
        -0x4ct
        -0x4ft
        -0x3ct
        -0x4at
        0x6ft
        -0x6ct
        -0x3bt
        -0x4ct
        -0x43t
        -0x3dt
        0x6ft
        -0x3at
        -0x48t
        -0x3dt
        -0x49t
        0x6ft
        -0x3et
        -0x3ct
        -0x4ft
        -0x3dt
        -0x38t
        -0x41t
        -0x4ct
        0x6ft
        -0x74t
        0x6ft
        -0x61t
        -0x2et
        -0x43t
        -0x41t
        -0x36t
        -0x32t
        -0x3dt
        -0x37t
        -0x38t
        0x7at
        -0x42t
        -0x31t
        -0x34t
        -0x3dt
        -0x38t
        -0x3ft
        0x7at
        -0x3at
        -0x37t
        -0x3ft
        -0x3ft
        -0x3dt
        -0x38t
        -0x3ft
        0x7at
        -0x42t
        -0x41t
        -0x44t
        -0x31t
        -0x3ft
        0x7at
        -0x41t
        -0x30t
        -0x41t
        -0x38t
        -0x32t
        -0x78t
        -0x1bt
        0x18t
        0x3t
        0x5t
        0x10t
        0x14t
        0x9t
        0xft
        0xet
        -0x40t
        0x13t
        0x8t
        0xft
        0x15t
        0xct
        0x4t
        -0x40t
        0xet
        0xft
        0x14t
        -0x40t
        0x8t
        0x1t
        0x10t
        0x10t
        0x5t
        0xet
        -0x40t
        0x8t
        0x5t
        0x12t
        0x5t
        -0x32t
        -0x65t
        -0x69t
        -0x6at
        -0x36t
        -0x47t
        -0x42t
        -0x46t
        -0x3dt
        -0x48t
        -0x46t
        -0x5dt
        -0x46t
        -0x37t
        -0x34t
        -0x3ct
        -0x39t
        -0x40t
        -0x1ct
        0x9t
        0x1t
        0xat
        -0x45t
        -0x21t
        0x0t
        -0x3t
        0x10t
        0x2t
        -0x45t
        -0x20t
        0x11t
        0x0t
        0x9t
        0xft
        -0x45t
        0x12t
        0x4t
        0xft
        0x3t
        -0x45t
        0xet
        0x10t
        -0x3t
        0xft
        0x14t
        0xbt
        0x0t
        -0x45t
        -0x28t
        -0x45t
        -0x35t
        -0x1at
        -0x1at
        -0x69t
        -0x1ct
        -0x28t
        -0x1bt
        -0x10t
        -0x69t
        -0x24t
        -0x13t
        -0x24t
        -0x1bt
        -0x15t
        -0x16t
        -0x69t
        -0x1at
        -0x23t
        -0x69t
        -0x16t
        -0x14t
        -0x27t
        -0x15t
        -0x10t
        -0x19t
        -0x24t
        -0x69t
        -0x26t
        -0x1at
        -0x25t
        -0x24t
        -0x4ft
        -0x69t
        -0x65t
        -0x63t
        -0x68t
        -0x63t
        -0x66t
        -0x53t
        -0x66t
        -0x68t
        -0x5bt
        -0x58t
        -0x60t
        -0x60t
        -0x5et
        -0x59t
        -0x60t
        -0x15t
        -0x8t
        -0x3t
        -0x18t
        -0x13t
        -0x12t
        -0x3t
        -0x12t
        -0x14t
        -0x3t
        -0xet
        -0x8t
        -0x9t
        -0x18t
        0x0t
        -0x8t
        -0x18t
        -0x4t
        -0xet
        -0x10t
        -0x9t
        -0x16t
        -0xbt
        -0x18t
        -0x13t
        -0x16t
        -0x3t
        -0x16t
        -0x18t
        -0xbt
        -0x8t
        -0x10t
        -0x10t
        -0xet
        -0x9t
        -0x10t
        -0x3et
        -0x40t
        -0x3et
        -0x39t
        -0x3ct
        -0x39t
        -0x3at
        -0x31t
        -0x3et
        -0x29t
        -0x38t
        -0x2at
        -0x29t
        -0x4t
        -0x3t
        -0x9t
        0x4t
        0x7t
        -0x1t
        -0x1t
        0x1t
        0x6t
        -0x1t
        -0x34t
        -0x25t
        -0x2ct
        -0x2ct
        -0x35t
        -0x2et
        -0x29t
        -0x22t
        -0x2ft
        -0x33t
        -0x1ct
        -0x31t
        -0x26t
        -0x29t
        -0x2et
        -0x31t
        -0x1et
        -0x29t
        -0x23t
        -0x24t
        0x0t
        -0x9t
        0x6t
        0x9t
        0x1t
        0x4t
        -0x3t
    .end array-data
.end method

.method public static A05(Lcom/facebook/ads/redexgen/X/7S;II)V
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A07()Lcom/facebook/ads/redexgen/X/7w;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A2W:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x152

    const/16 v1, 0x21

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x57

    const/16 v1, 0x9

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v3, p1, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b3

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/7w;->A9M(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    return-void
.end method

.method public static A06(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v4, p0

    if-nez v4, :cond_16

    const/16 v2, 0x30

    const/16 v1, 0x27

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    return-void

    :cond_16
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/7S;->A01()Lcom/facebook/ads/redexgen/X/Y9;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7R;->A01(Lcom/facebook/ads/redexgen/X/Y9;)V

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A02:Z

    move-object v5, p1

    move p0, p2

    move-object p3, p3

    if-eqz v0, :cond_5f

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/7y;->A00()I

    move-result v0

    if-nez v0, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x60

    const/16 v1, 0x2c

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0D(Ljava/lang/RuntimeException;)V

    :cond_5f
    :try_start_5f
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide p1

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/7r;->A0I(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;IDLcom/facebook/ads/redexgen/X/7y;)Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-static {v4, v5, p0, p3}, Lcom/facebook/ads/redexgen/X/7r;->A09(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_71
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    :cond_71
    :goto_71
    return-void
.end method

.method public static A07(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/7y;->A03(I)V

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/7y;->A08(Z)V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/7y;->A04(I)V

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p3, v1}, Lcom/facebook/ads/redexgen/X/7y;->A06(Z)V

    :goto_15
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7r;->A06(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_21

    :cond_19
    invoke-virtual {p3, v2}, Lcom/facebook/ads/redexgen/X/7y;->A06(Z)V

    goto :goto_15
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    :goto_21
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/7y;->A03(I)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/7y;->A06(Z)V

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7r;->A06(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    goto :goto_10
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    :goto_10
    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V
    .registers 12

    const-class v7, Lcom/facebook/ads/redexgen/X/7r;

    monitor-enter v7

    :try_start_3
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A03:Z

    if-nez v0, :cond_6e

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A01(Landroid/content/Context;)I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A09:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    add-int/lit8 v0, v3, -0x1

    if-ge v1, v0, :cond_21

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A07:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/7s;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    :goto_1f
    monitor-exit v7

    goto :goto_73

    :cond_21
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, v3, :cond_1f

    sget-object v6, Lcom/facebook/ads/redexgen/X/7r;->A07:Ljava/util/List;

    const/16 v2, 0x1b3

    const/16 v1, 0xa

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/7x;->A2T:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8c

    const/16 v1, 0x2a

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2f

    const/4 v1, 0x1

    const/16 v0, 0x13

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {v0, v5, v4, v1}, Lcom/facebook/ads/redexgen/X/7s;-><init>(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_6e
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/7r;->A0A(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;Z)V

    goto :goto_1f

    :goto_73
    return-void

    :catchall_74
    move-exception v0

    monitor-exit v7
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v0
.end method

.method public static A0A(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;Z)V
    .registers 15

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/7q;

    if-eqz v9, :cond_c2

    invoke-interface {v9}, Lcom/facebook/ads/redexgen/X/7q;->A93()Z

    move-result v0

    if-eqz v0, :cond_c2

    const/4 v1, 0x1

    :goto_11
    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    if-nez v0, :cond_1e

    if-eqz v1, :cond_5e

    :cond_1e
    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/7y;->A00()I

    move-result v3

    const/16 v2, 0x121

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x1f

    const/16 v1, 0x10

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb6

    const/16 v1, 0x25

    const/16 v0, 0x28

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5e
    :goto_5e
    new-instance v4, Lcom/facebook/ads/redexgen/X/Y1;

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Y1;-><init>(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;Lcom/facebook/ads/redexgen/X/7q;)V

    if-eqz p4, :cond_6c

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_6b
    return-void

    :cond_6c
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/K8;->run()V

    goto :goto_6b

    :cond_70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x132

    const/16 v1, 0x20

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x13

    const/16 v1, 0xc

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/7y;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x13

    const/16 v0, 0x50

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/7y;->A02()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :cond_c2
    const/4 v1, 0x0

    goto/16 :goto_11
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;Z)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/7r;->A0A(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;Z)V

    return-void
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/Y9;Lcom/facebook/ads/redexgen/X/7q;Lcom/facebook/ads/redexgen/X/7p;Z)V
    .registers 7

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0A:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0B:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-class v2, Lcom/facebook/ads/redexgen/X/7r;

    monitor-enter v2

    :try_start_12
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A03:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A03:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A01:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Y2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Y2;-><init>(Lcom/facebook/ads/redexgen/X/Y9;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_23
    monitor-exit v2

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_25

    throw v0
.end method

.method public static A0D(Ljava/lang/RuntimeException;)V
    .registers 3

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A02:Z

    if-eqz v0, :cond_15

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/7o;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7o;-><init>(Ljava/lang/RuntimeException;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_15
    return-void
.end method

.method public static A0E(Ljava/lang/Throwable;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A02:Z

    if-eqz v0, :cond_16

    const/16 v2, 0x100

    const/16 v1, 0x21

    const/16 v0, 0x79

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0D(Ljava/lang/RuntimeException;)V

    :cond_16
    return-void
.end method

.method public static A0F(Ljava/lang/Throwable;)V
    .registers 5

    const/16 v2, 0x121

    const/16 v1, 0x11

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xdb

    const/16 v1, 0x25

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-boolean v0, Lcom/facebook/ads/redexgen/X/7r;->A02:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7r;->A0D(Ljava/lang/RuntimeException;)V

    :cond_23
    return-void
.end method

.method public static synthetic A0G(Ljava/lang/Throwable;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static A0H(Lcom/facebook/ads/redexgen/X/7S;)Z
    .registers 2

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0A(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static A0I(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;IDLcom/facebook/ads/redexgen/X/7y;)Z
    .registers 20

    const/4 v13, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A04(Landroid/content/Context;)I

    move-result v1

    const/4 v6, 0x1

    if-ge v1, v6, :cond_9

    return v13

    :cond_9
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0M(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v4, 0x2f

    const/4 v2, 0x1

    const/16 v0, 0x13

    invoke-static {v4, v2, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-eqz v12, :cond_64

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_47

    :cond_46
    const/4 v0, -0x1

    :goto_47
    if-nez v0, :cond_4a

    return v13

    :cond_4a
    if-lez v0, :cond_54

    int-to-double v0, v0

    div-double/2addr v10, v0

    cmpg-double v0, p3, v10

    if-gtz v0, :cond_53

    const/4 v13, 0x1

    :cond_53
    return v13

    :cond_54
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A03(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v6, :cond_5b

    return v13

    :cond_5b
    mul-int/2addr v1, v0

    int-to-double v2, v1

    const-wide v0, 0x40c3880000000000L    # 10000.0

    div-double/2addr v2, v0

    goto :goto_71

    :cond_64
    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/7y;->A09()Z

    move-result v0

    if-nez v0, :cond_6d

    const-wide/16 v2, 0x0

    goto :goto_71

    :cond_6d
    int-to-double v2, v1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v0

    :goto_71
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A08()Lcom/facebook/ads/redexgen/X/8N;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8N;->A00()D

    move-result-wide v8

    const/16 v4, 0x1a6

    const/4 v1, 0x5

    const/16 v0, 0x38

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_93

    return v6

    :cond_93
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A06(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_9a

    return v13

    :cond_9a
    if-lez v0, :cond_ad

    int-to-double v0, v0

    div-double/2addr v10, v0

    if-eqz v12, :cond_a7

    mul-double/2addr v10, v2

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_a6

    const/4 v13, 0x1

    :cond_a6
    return v13

    :cond_a7
    cmpg-double v0, v8, v10

    if-gtz v0, :cond_ac

    const/4 v13, 0x1

    :cond_ac
    return v13

    :cond_ad
    const/16 v4, 0x1d1

    const/4 v1, 0x7

    const/16 v0, 0x6b

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e5

    sget v0, Lcom/facebook/ads/redexgen/X/7x;->A1z:I

    if-ne v0, v5, :cond_e5

    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c9

    goto :goto_ce

    :cond_c9
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0E(Landroid/content/Context;)I

    move-result v0

    goto :goto_cf

    :goto_ce
    const/4 v0, 0x1

    :goto_cf
    if-nez v0, :cond_d2

    return v13

    :cond_d2
    if-lez v0, :cond_e5

    int-to-double v0, v0

    div-double/2addr v10, v0

    if-eqz v12, :cond_df

    mul-double/2addr v10, v2

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_de

    const/4 v13, 0x1

    :cond_de
    return v13

    :cond_df
    cmpg-double v0, v8, v10

    if-gtz v0, :cond_e4

    const/4 v13, 0x1

    :cond_e4
    return v13

    :cond_e5
    const/16 v4, 0x1ab

    const/16 v1, 0x8

    const/16 v0, 0x3c

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    const/4 v0, 0x1

    return v0

    :cond_f7
    const/16 v4, 0x1bd

    const/4 v1, 0x6

    const/16 v0, 0x3f

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_151

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0S(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11d

    invoke-virtual/range {p5 .. p5}, Lcom/facebook/ads/redexgen/X/7y;->A0A()Z

    move-result v0

    if-eqz v0, :cond_11d

    if-eqz v12, :cond_11b

    sub-double/2addr v10, v2

    cmpl-double v0, p3, v10

    if-ltz v0, :cond_11a

    const/4 v13, 0x1

    :cond_11a
    return v13

    :cond_11b
    const/4 v0, 0x1

    return v0

    :cond_11d
    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_12c

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_12c
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0A(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_13a

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return v13

    :cond_13a
    if-lez v0, :cond_151

    int-to-double v0, v0

    div-double/2addr v10, v0

    if-eqz v12, :cond_149

    mul-double/2addr v10, v2

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_147

    const/4 v0, 0x1

    :goto_146
    return v0

    :cond_147
    const/4 v0, 0x0

    goto :goto_146

    :cond_149
    cmpg-double v0, v8, v10

    if-gtz v0, :cond_14f

    const/4 v0, 0x1

    :goto_14e
    return v0

    :cond_14f
    const/4 v0, 0x0

    goto :goto_14e

    :cond_151
    const/16 v4, 0x1c3

    const/16 v1, 0xe

    const/16 v0, 0x47

    invoke-static {v4, v1, v0}, Lcom/facebook/ads/redexgen/X/7r;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ce

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/7S;->A04()Lcom/facebook/ads/redexgen/X/7X;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/7X;->A8o()Z

    move-result v0

    if-eqz v0, :cond_16d

    const/4 v0, 0x1

    return v0

    :cond_16d
    const/4 v7, 0x1

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0B(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_176

    const/4 v0, 0x0

    return v0

    :cond_176
    if-lez v0, :cond_1cf
    :try_end_178
    .catchall {:try_start_1 .. :try_end_178} :catchall_1d7

    int-to-double v4, v0

    sget-object v6, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x0

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c8

    sget-object v6, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const-string v1, "KJjq974XMuOG6VE2UuXyW1KY5FJsZ9"

    const/4 v0, 0x4

    aput-object v1, v6, v0

    const-string v1, "oDF6i4FckldRw4UZ8099"

    const/4 v0, 0x0

    aput-object v1, v6, v0

    div-double/2addr v10, v4

    if-eqz v12, :cond_1a2

    mul-double/2addr v10, v2

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_1a0

    :goto_19f
    return v7

    :cond_1a0
    const/4 v7, 0x0

    goto :goto_19f

    :cond_1a2
    cmpg-double v3, v8, v10

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1c2

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const-string v1, "qAglZRfXbaaC8J2ltzId8jp93qQE3ecw"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-gtz v3, :cond_1c0

    :goto_1bf
    return v7

    :cond_1c0
    const/4 v7, 0x0

    goto :goto_1bf

    :cond_1c2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1c8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1ce
    const/4 v7, 0x1

    :cond_1cf
    sub-double/2addr v10, v2

    cmpl-double v0, p3, v10

    if-ltz v0, :cond_1d5

    :goto_1d4
    return v7

    :cond_1d5
    const/4 v7, 0x0

    goto :goto_1d4

    :catchall_1d7
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0xe

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x54

    if-eq v1, v0, :cond_1f3

    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const-string v1, "gQ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0

    :cond_1f3
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/7r;->A0F(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public static A0J(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7y;)Z
    .registers 10

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A0P(Landroid/content/Context;)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_8

    return v5

    :cond_8
    sget-object v0, Lcom/facebook/ads/redexgen/X/7r;->A00:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/IR;->A00(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/7y;->A01()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_43

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/7y;->A01()I

    move-result v2

    :cond_1d
    :goto_1d
    if-lt v3, v2, :cond_64

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A06:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/7y;->A0B()Z

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x59

    if-eq v1, v0, :cond_4b

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_43
    invoke-static {p1, p2, p0}, Lcom/facebook/ads/redexgen/X/7r;->A00(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/7S;)I

    move-result v0

    if-ge v2, v0, :cond_1d

    move v2, v0

    goto :goto_1d

    :cond_4b
    sget-object v2, Lcom/facebook/ads/redexgen/X/7r;->A05:[Ljava/lang/String;

    const-string v1, "DtDXz8TrFQQZw1pkgy"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "wKGFu6BM2pQR03pr0dyvmA98nTz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_5c

    invoke-static {p0, p2, v3}, Lcom/facebook/ads/redexgen/X/7r;->A05(Lcom/facebook/ads/redexgen/X/7S;II)V

    :cond_5c
    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A00:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    return v5

    :cond_64
    sget-object v1, Lcom/facebook/ads/redexgen/X/7r;->A00:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    return v0
.end method

###### Class com.facebook.ads.redexgen.X.C7o (com.facebook.ads.redexgen.X.7o)
.class public final Lcom/facebook/ads/redexgen/X/7o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7r;->A0D(Ljava/lang/RuntimeException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7o;->A00:Ljava/lang/RuntimeException;

    throw v0
.end method
