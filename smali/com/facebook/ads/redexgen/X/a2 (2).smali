###### Class com.facebook.ads.redexgen.X.C1540a2 (com.facebook.ads.redexgen.X.a2)
.class public final Lcom/facebook/ads/redexgen/X/a2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ji;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/a3;,
        Lcom/facebook/ads/redexgen/X/Eg;,
        Lcom/facebook/ads/redexgen/X/1v;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1v;

.field public A01:Lcom/facebook/ads/redexgen/X/8F;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;

.field public final A07:Lcom/facebook/ads/redexgen/X/0t;

.field public final A08:Lcom/facebook/ads/redexgen/X/YA;

.field public final A09:Lcom/facebook/ads/redexgen/X/If;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JL;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jj;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Um"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5O6Pi5UhekEiJBNtL2"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ByBiFstlzS"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VNZICTTmM6bBZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "I3ykA2cHAONkN"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xnUs6VMzToWHuFoC"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Qkjm3fg24P6DD7pmZ7L4neN1zLjqdukp"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "LFB8Dcv49A6aPeUL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/a2;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/LX;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YA;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;Lcom/facebook/ads/AdSize;I)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/a2;->A0D:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/a2;->A0A:Lcom/facebook/ads/redexgen/X/JL;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/a2;->A06:Lcom/facebook/ads/AdSize;

    iput p5, p0, Lcom/facebook/ads/redexgen/X/a2;->A04:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Jj;-><init>(Lcom/facebook/ads/redexgen/X/YA;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A0B:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Jj;->A0P(Lcom/facebook/ads/redexgen/X/Ji;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/0t;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0t;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A07:Lcom/facebook/ads/redexgen/X/0t;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A03:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A05:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Eg;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Eg;-><init>(Lcom/facebook/ads/redexgen/X/a2;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A0C:Ljava/lang/Runnable;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/7S;->A09()Lcom/facebook/ads/redexgen/X/If;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A09:Lcom/facebook/ads/redexgen/X/If;

    invoke-static {p1}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/a2;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a2;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/a2;)Lcom/facebook/ads/redexgen/X/YA;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/a2;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/a2;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .registers 7

    sget-object v1, Lcom/facebook/ads/redexgen/X/a2;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_9
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_1d

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1d
    sget-object v2, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    const-string v1, "uoxYJqIRleds8fPMMv"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_31

    aget-byte v0, p1, p0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x57

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/ah;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a2;->A01:Lcom/facebook/ads/redexgen/X/8F;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8F;->A04()Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v5

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8F;->A02()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_f
    if-eqz v5, :cond_53

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/a2;->A07:Lcom/facebook/ads/redexgen/X/0t;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/0t;->A00(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0o;

    move-result-object v4

    if-eqz v4, :cond_4e

    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/0o;->A7W()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_4e

    new-instance v8, Lcom/facebook/ads/redexgen/X/1s;

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v10

    iget-object v11, p0, Lcom/facebook/ads/redexgen/X/a2;->A0D:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8G;->A0C()J

    move-result-wide v12

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/1s;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8G;Ljava/lang/String;J)V

    check-cast v4, Lcom/facebook/ads/redexgen/X/ah;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    new-instance v6, Lcom/facebook/ads/redexgen/X/En;

    invoke-direct {v6, p0, v1, v4}, Lcom/facebook/ads/redexgen/X/En;-><init>(Lcom/facebook/ads/redexgen/X/a2;Ljava/util/List;Lcom/facebook/ads/redexgen/X/ah;)V

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/a2;->A09:Lcom/facebook/ads/redexgen/X/If;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UJ;->A0K()Lcom/facebook/ads/redexgen/X/UM;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/ah;->A0L(Lcom/facebook/ads/redexgen/X/YA;Lcom/facebook/ads/redexgen/X/13;Lcom/facebook/ads/redexgen/X/If;Lcom/facebook/ads/redexgen/X/1s;Lcom/facebook/ads/redexgen/X/J3;)V

    :cond_4e
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8F;->A04()Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v5

    goto :goto_f

    :cond_53
    return-object v1
.end method

.method public static A05()V
    .registers 4

    const/16 v0, 0x18

    new-array v3, v0, [B

    fill-array-data v3, :array_24

    sget-object v1, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    sget-object v2, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    const-string v1, "dKV76OJFyRmVPWeRzZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/a2;->A0E:[B

    return-void

    nop

    :array_24
    .array-data 1
        0x40t
        0x41t
        -0xet
        0x42t
        0x3et
        0x33t
        0x35t
        0x37t
        0x3ft
        0x37t
        0x40t
        0x46t
        -0xet
        0x3bt
        0x40t
        -0xet
        0x44t
        0x37t
        0x45t
        0x42t
        0x41t
        0x40t
        0x45t
        0x37t
    .end array-data
.end method


# virtual methods
.method public final A06()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A03:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a2;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final A07()V
    .registers 16

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    const/4 v5, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/JQ;

    invoke-direct {v11, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/JQ;-><init>(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JL;)V
    :try_end_8
    .catch Lcom/facebook/ads/redexgen/X/JH; {:try_start_0 .. :try_end_8} :catch_46

    new-instance v2, Lcom/facebook/ads/redexgen/X/Jg;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/a2;->A0D:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/L7;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/L7;-><init>(II)V

    :cond_21
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/a2;->A0A:Lcom/facebook/ads/redexgen/X/JL;

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/a2;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v9

    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A08:Lcom/facebook/ads/redexgen/X/YA;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IP;->A0J(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LD;->A01(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/a2;->A02:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/Jg;-><init>(Lcom/facebook/ads/redexgen/X/7S;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/L7;Lcom/facebook/ads/redexgen/X/JL;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/JQ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A0B:Lcom/facebook/ads/redexgen/X/Jj;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Jj;->A0O(Lcom/facebook/ads/redexgen/X/Jg;)V

    return-void

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A02(Lcom/facebook/ads/redexgen/X/JH;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/a2;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void
.end method

.method public final A08(Lcom/facebook/ads/redexgen/X/1v;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/1v;

    return-void
.end method

.method public final A09(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/a2;->A02:Ljava/lang/String;

    return-void
.end method

.method public final A0A()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A01:Lcom/facebook/ads/redexgen/X/8F;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8F;->A0D()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final ABH(Lcom/facebook/ads/redexgen/X/JG;)V
    .registers 6

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A03:Z

    if-eqz v0, :cond_e

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a2;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/a2;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_e
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/1v;

    sget-object v1, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xa

    if-eq v1, v0, :cond_23

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_23
    sget-object v2, Lcom/facebook/ads/redexgen/X/a2;->A0F:[Ljava/lang/String;

    const-string v1, "yGn7NPCZVX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_2f

    invoke-interface {v3, p1}, Lcom/facebook/ads/redexgen/X/1v;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    :cond_2f
    return-void
.end method

.method public final AD5(Lcom/facebook/ads/redexgen/X/U6;)V
    .registers 9

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/U6;->A00()Lcom/facebook/ads/redexgen/X/8F;

    move-result-object v6

    if-eqz v6, :cond_4c

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A03:Z

    if-eqz v0, :cond_22

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/8F;->A05()Lcom/facebook/ads/redexgen/X/8G;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8G;->A0A()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1b

    const-wide/32 v2, 0x1b7740

    :cond_1b
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/a2;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/a2;->A01:Lcom/facebook/ads/redexgen/X/8F;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/a2;->A04()Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/1v;

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/1v;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a2;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/JG;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JG;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/1v;->ABH(Lcom/facebook/ads/redexgen/X/JG;)V

    return-void

    :cond_46
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/a2;->A00:Lcom/facebook/ads/redexgen/X/1v;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1v;->ACD(Ljava/util/List;)V

    :cond_4b
    return-void

    :cond_4c
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/a2;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
