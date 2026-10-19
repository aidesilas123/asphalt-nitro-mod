###### Class com.facebook.ads.redexgen.X.T5 (com.facebook.ads.redexgen.X.T5)
.class public final Lcom/facebook/ads/redexgen/X/T5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Km;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Lcom/facebook/ads/redexgen/X/Ls;

.field public A04:Ljava/lang/String;

.field public A05:Ljava/lang/String;

.field public A06:Lcom/facebook/ads/redexgen/X/T3;

.field public A07:Ljava/lang/Integer;

.field public A08:Z

.field public A09:Z

.field public A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "yjxjfYdrUuNcQdEaAwocONv5EWPutnE0"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "dRlwVer0DvGhJUYrc6Uo0NmXUudA179W"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "0RnVmJRwwZudZEhL6bHsgo2zllxyZ4rb"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m0b7Xk04EuyV6HvP3aQ0qivYD5xsobzk"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "0t24jhYDd0ZYm7OB5Pi8K72QIL3VEz"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lOzGJRW4wb6yqjR22F"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IF7HB2KmjMtnMILVYc8NomcIB26UEqSU"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4w4SFr7wcyEc7Fy4rwfiYpUJCop0r4V7"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/T5;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/T5;->A01()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ls;Lcom/facebook/ads/redexgen/X/T3;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A0A:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A09:Z

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A08:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A07:Ljava/lang/Integer;

    iput p1, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:I

    iput p2, p0, Lcom/facebook/ads/redexgen/X/T5;->A00:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/T5;->A02:I

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/T5;->A05:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/T5;->A04:Ljava/lang/String;

    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    iput-object p7, p0, Lcom/facebook/ads/redexgen/X/T5;->A06:Lcom/facebook/ads/redexgen/X/T3;

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .registers 5

    sget-object v1, Lcom/facebook/ads/redexgen/X/T5;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_9
    array-length v0, p0

    if-ge v1, v0, :cond_17

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x2c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .registers 4

    const/16 v0, 0xf

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/T5;->A0C:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_23

    sget-object v2, Lcom/facebook/ads/redexgen/X/T5;->A0C:[Ljava/lang/String;

    const-string v1, "4rqaLE5ZbqFcULNB9c87AdfXRmFVNOuy"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "UmGixQziu9kcJVx2wygXDh2bknYXJmsp"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_2a

    sput-object v3, Lcom/facebook/ads/redexgen/X/T5;->A0B:[B

    return-void

    :cond_23
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_2a
    .array-data 1
        -0x45t
        -0x2dt
        -0x3bt
        -0x3dt
        -0x2dt
        -0x43t
        -0x12t
        0x2t
        0x1t
        -0x4t
        -0x10t
        -0x7t
        -0xat
        -0x10t
        -0x8t
    .end array-data
.end method

.method private declared-synchronized A02()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A08:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T5;->A04()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    :cond_8
    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/T5;)V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/T5;->A02()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized A04()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A09:Z

    if-eqz v0, :cond_7
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_50

    monitor-exit p0

    return-void

    :cond_7
    const/4 v1, 0x1

    :try_start_8
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A09:Z

    iget v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:I

    if-ne v0, v1, :cond_4e

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    if-eqz v0, :cond_4e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressImage(Lcom/facebook/ads/redexgen/X/Ld;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A04()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_3a

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    :cond_3a
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A06:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getColorInfo()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A06:Lcom/facebook/ads/redexgen/X/T3;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Na;->getColorInfo()Lcom/facebook/ads/redexgen/X/1M;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->A06(Lcom/facebook/ads/redexgen/X/1M;Z)V
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_50

    :cond_4e
    monitor-exit p0

    return-void

    :catchall_50
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AAv()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A09:Z

    if-nez v0, :cond_13

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/T5;->A06:Lcom/facebook/ads/redexgen/X/T3;

    const/4 v2, 0x6

    const/16 v1, 0x9

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T5;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/T3;->A09(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/T5;->A04()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ACZ(F)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A09:Z

    if-nez v0, :cond_a2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    if-nez v1, :cond_b

    goto/16 :goto_a2

    :cond_b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A01:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_a0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A0A:Z

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-nez v0, :cond_4b

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Ls;->getToolbarActionMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A07:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    new-instance v0, Lcom/facebook/ads/redexgen/X/NS;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NS;-><init>(Lcom/facebook/ads/redexgen/X/T5;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ls;->A05()V

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T6;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/T6;-><init>(Lcom/facebook/ads/redexgen/X/T5;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Lr;)V

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/T5;->A0A:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_93

    :cond_45
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    const/4 v0, 0x5

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    :cond_4b
    :goto_4b
    iget v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A02:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_99

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A08:Z

    if-nez v0, :cond_68

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/T5;->A08:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A07:Ljava/lang/Integer;

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_86

    :cond_62
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    :cond_68
    :goto_68
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/T5;->A04:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T5;->A00(III)Ljava/lang/String;

    move-result-object v3

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMessage(Ljava/lang/String;)V

    goto :goto_a0

    :cond_86
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Ld;->A0F:Lcom/facebook/ads/redexgen/X/Ld;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setProgressImage(Lcom/facebook/ads/redexgen/X/Ld;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    goto :goto_68

    :cond_93
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMode(I)V

    goto :goto_4b

    :cond_99
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/T5;->A03:Lcom/facebook/ads/redexgen/X/Ls;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T5;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ls;->setToolbarActionMessage(Ljava/lang/String;)V
    :try_end_a0
    .catchall {:try_start_1 .. :try_end_a0} :catchall_a4

    :cond_a0
    :goto_a0
    monitor-exit p0

    return-void

    :cond_a2
    :goto_a2
    monitor-exit p0

    return-void

    :catchall_a4
    move-exception v0

    monitor-exit p0

    throw v0
.end method
