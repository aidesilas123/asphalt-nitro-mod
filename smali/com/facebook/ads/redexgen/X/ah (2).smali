###### Class com.facebook.ads.redexgen.X.C1581ah (com.facebook.ads.redexgen.X.ah)
.class public Lcom/facebook/ads/redexgen/X/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0j;
.implements Lcom/facebook/ads/redexgen/X/0o;


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;

.field public static final A0C:Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/12;

.field public A02:Lcom/facebook/ads/redexgen/X/13;

.field public A03:Lcom/facebook/ads/redexgen/X/J3;

.field public A04:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UJ;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public final A09:Lcom/facebook/ads/redexgen/X/YA;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "OTBhn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "woE0GsYsDC"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "jJJsRhZ6eh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "RbmDZKGZyk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "E72k8"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ah;->A04()V

    const-class v0, Lcom/facebook/ads/redexgen/X/ah;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ah;->A0C:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;)V
    .registers 3

    new-instance v0, Lcom/facebook/ads/redexgen/X/12;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/12;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/12;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/12;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    iput v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:I

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/12;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static A02(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A03(Ljava/util/Map;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x74

    const/4 v1, 0x4

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/16 v2, 0x6c

    const/16 v1, 0x8

    const/16 v0, 0x29

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    return-object v3
.end method

.method public static A04()V
    .registers 1

    const/16 v0, 0x78

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/facebook/ads/redexgen/X/ah;->A0A:[B

    return-void

    :array_a
    .array-data 1
        0x7ct
        0x59t
        0x5ct
        0x4dt
        0x49t
        0x58t
        0x4ft
        0x1dt
        0x5ct
        0x51t
        0x4ft
        0x58t
        0x5ct
        0x59t
        0x44t
        0x1dt
        0x51t
        0x52t
        0x5ct
        0x59t
        0x58t
        0x59t
        0x1dt
        0x59t
        0x5ct
        0x49t
        0x5ct
        0x5dt
        0x72t
        0x77t
        0x7dt
        0x75t
        0x3et
        0x76t
        0x7ft
        0x6et
        0x6et
        0x7bt
        0x70t
        0x7bt
        0x7at
        0x3et
        0x71t
        0x70t
        0x3et
        0x72t
        0x71t
        0x7dt
        0x75t
        0x6dt
        0x7dt
        0x6ct
        0x7bt
        0x7bt
        0x70t
        0x3et
        0x7ft
        0x7at
        0x68t
        0x47t
        0x42t
        0x48t
        0x40t
        0xbt
        0x47t
        0x44t
        0x4ct
        0x4ct
        0x4et
        0x4ft
        0x2dt
        0x1at
        0x1at
        0x7t
        0x1at
        0x48t
        0xdt
        0x10t
        0xdt
        0xbt
        0x1dt
        0x1ct
        0x1t
        0x6t
        0xft
        0x48t
        0x9t
        0xbt
        0x1ct
        0x1t
        0x7t
        0x6t
        0x40t
        0x42t
        0x51t
        0x47t
        0x40t
        0x4dt
        0x57t
        0x36t
        0x34t
        0x27t
        0x31t
        0x3ct
        0x3bt
        0x31t
        0x5ct
        0x4bt
        0x30t
        0x2dt
        0x22t
        0x33t
        0x30t
        0x2bt
        0x2ct
        0x37t
        0x42t
        0x5dt
        0x51t
        0x43t
    .end array-data
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/12;)V
    .registers 11

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A05:Z

    if-nez v0, :cond_4a

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/12;->A0f()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_40

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_40

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v7, :cond_3e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v4, Lcom/facebook/ads/redexgen/X/ah;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/ah;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/12;

    invoke-direct {v4, v0}, Lcom/facebook/ads/redexgen/X/ah;->A05(Lcom/facebook/ads/redexgen/X/12;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ah;->A03:Lcom/facebook/ads/redexgen/X/J3;

    new-instance v0, Lcom/facebook/ads/redexgen/X/UJ;

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/facebook/ads/redexgen/X/UJ;-><init>(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/ah;Lcom/facebook/ads/redexgen/X/8G;Lcom/facebook/ads/redexgen/X/J3;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_3e
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/ah;->A04:Ljava/util/List;

    :cond_40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A05:Z

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ah;->A07()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A06:Z

    return-void

    :cond_4a
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A06(Ljava/util/Map;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ah;->A03(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/facebook/ads/redexgen/X/ai;

    invoke-direct {v2, p0, p2, v0}, Lcom/facebook/ads/redexgen/X/ai;-><init>(Lcom/facebook/ads/redexgen/X/ah;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A07()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    return-void
.end method

.method private A07()Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0h()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0W()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0T()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0h()Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_28
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0G()Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0h()Z

    move-result v0

    if-eqz v0, :cond_64

    :cond_38
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0F()Lcom/facebook/ads/redexgen/X/J4;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_51

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_51
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_62

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A7W()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE_BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v1, v0, :cond_64

    :cond_62
    const/4 v0, 0x1

    goto :goto_65

    :cond_64
    const/4 v0, 0x0

    :goto_65
    return v0
.end method


# virtual methods
.method public final A08()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A02()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A05()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A06()I

    move-result v1

    if-ltz v1, :cond_c

    const/16 v0, 0x64

    if-le v1, v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    return v0

    :cond_e
    return v1
.end method

.method public final A0B()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:I

    return v0
.end method

.method public final A0C()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A08()I

    move-result v0

    return v0
.end method

.method public final A0D()I
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A09()I

    move-result v0

    return v0
.end method

.method public final A0E()Lcom/facebook/ads/redexgen/X/12;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    return-object v0
.end method

.method public final A0F()Lcom/facebook/ads/redexgen/X/13;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A02:Lcom/facebook/ads/redexgen/X/13;

    return-object v0
.end method

.method public final A0G()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UJ;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0T()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A04:Ljava/util/List;

    return-object v0
.end method

.method public final A0I()V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A08:Z

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0b()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1f

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1f
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_31

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/facebook/ads/redexgen/X/If;->ADr(Ljava/lang/String;)V

    :cond_31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A08:Z

    :cond_34
    return-void
.end method

.method public final A0J()V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A04:Ljava/util/List;

    if-eqz v0, :cond_73

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x44

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "kj4WnsmCok25qDrlf1kxSYggARLvW33C"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ah;->A04:Ljava/util/List;

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_67

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_5d

    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_73

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UJ;->unregisterView()V

    goto :goto_39

    :cond_5d
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_73

    goto :goto_53

    :cond_67
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "wGXHpE1nya"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    goto :goto_39

    :cond_73
    return-void
.end method

.method public final A0K(Lcom/facebook/ads/redexgen/X/13;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ah;->A02:Lcom/facebook/ads/redexgen/X/13;

    return-void
.end method

.method public final A0L(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/J3;)V
    .registers 10

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ah;->A02:Lcom/facebook/ads/redexgen/X/13;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/ah;->A03:Lcom/facebook/ads/redexgen/X/J3;

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1s;->A03()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/1s;->A01()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8G;->A06()I

    move-result v0

    :goto_12
    iput v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:I

    const/16 v2, 0x6a

    const/4 v1, 0x2

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/L0;->A02(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/facebook/ads/redexgen/X/14;->A00(Lcom/facebook/ads/redexgen/X/YA;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ah;->A05(Lcom/facebook/ads/redexgen/X/12;)V

    invoke-static {p1, p0, p3}, Lcom/facebook/ads/redexgen/X/0k;->A06(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/0j;Lcom/facebook/ads/redexgen/X/If;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A4H()V

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/redexgen/X/13;->ACE(Lcom/facebook/ads/redexgen/X/ah;Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_3f
    const/16 v0, 0xc8

    goto :goto_12

    :cond_42
    if-eqz p2, :cond_47

    invoke-interface {p2, p0}, Lcom/facebook/ads/redexgen/X/13;->ACB(Lcom/facebook/ads/redexgen/X/ah;)V

    :cond_47
    return-void
.end method

.method public final A0M(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0T()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/LW;->A03(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_41

    sget-object v6, Lcom/facebook/ads/redexgen/X/ah;->A0C:Ljava/lang/String;

    const/16 v5, 0x1b

    const/16 v4, 0x1f

    const/16 v3, 0x74

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_32

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_32
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "D3JUlaax70Z19DqZX7Vx94n8SobUQcIP"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_41
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_4b

    invoke-interface {v5, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4b
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    const/16 v2, 0x3a

    const/16 v1, 0xc

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Ki;->A02(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A02:Lcom/facebook/ads/redexgen/X/13;

    if-eqz v0, :cond_61

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/13;->ACA(Lcom/facebook/ads/redexgen/X/ah;)V

    :cond_61
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0h()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x63

    const/4 v1, 0x7

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5c

    const/4 v1, 0x7

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_99
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0Y()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0B()Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/0h;->A00(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/If;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/1R;)Lcom/facebook/ads/redexgen/X/0g;

    move-result-object v0

    if-eqz v0, :cond_c5

    :try_start_b2
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/0g;->A0C()V

    goto :goto_c5
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_b6} :catch_b6

    :catch_b6
    move-exception v4

    sget-object v3, Lcom/facebook/ads/redexgen/X/ah;->A0C:Ljava/lang/String;

    const/16 v2, 0x46

    const/16 v1, 0x16

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c5
    :goto_c5
    return-void
.end method

.method public final A0N(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/If;->A9I(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final A0O(Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0T()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A07:Z

    if-nez v0, :cond_97

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A02:Lcom/facebook/ads/redexgen/X/13;

    if-eqz v0, :cond_12

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/13;->ACC(Lcom/facebook/ads/redexgen/X/ah;)V

    :cond_12
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1c

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_1c
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0h()Z

    move-result v0

    if-eqz v0, :cond_54

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A04()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x63

    const/4 v1, 0x7

    const/16 v0, 0x3f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/16 v3, 0x5c

    const/4 v1, 0x7

    const/16 v0, 0x49

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/ah;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A6N()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0h()Z

    move-result v0

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/YA;->A0E()Lcom/facebook/ads/redexgen/X/0S;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0S;->A2g()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0Z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2C;->A00(Ljava/lang/String;)V

    :cond_78
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A6N()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/If;->A9S(Ljava/lang/String;Ljava/util/Map;)V

    :cond_85
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0V()Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0W()Z

    move-result v0

    if-eqz v0, :cond_94

    :cond_91
    invoke-direct {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/ah;->A06(Ljava/util/Map;Ljava/util/Map;)V

    :cond_94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A07:Z

    :cond_97
    return-void
.end method

.method public final A0P(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/If;->A9n(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final A0Q(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0Y()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/If;->A9o(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final A0R()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final A0S()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0T()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0B()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final A0T()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A05:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A06:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final A0U()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0g()Z

    move-result v0

    return v0
.end method

.method public final A0V()Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0T()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0i()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x66

    if-eq v1, v0, :cond_29

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_29
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-eqz v3, :cond_34

    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    return v0
.end method

.method public final A0W()Z
    .registers 5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A09:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A1C(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0T()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0j()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2c

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2c
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A0B:[Ljava/lang/String;

    const-string v1, "qputmJyOXU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    return v0
.end method

.method public final A6N()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A01:Lcom/facebook/ads/redexgen/X/12;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0Y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6g()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0e()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A77()Lcom/facebook/ads/redexgen/X/0i;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/ah;->A0E()Lcom/facebook/ads/redexgen/X/12;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/12;->A0C()Lcom/facebook/ads/redexgen/X/0i;

    move-result-object v0

    return-object v0
.end method

.method public A7W()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method

.method public final AFs()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .registers 1

    return-void
.end method
