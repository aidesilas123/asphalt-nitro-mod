###### Class com.facebook.ads.redexgen.X.L6 (com.facebook.ads.redexgen.X.L6)
.class public final Lcom/facebook/ads/redexgen/X/L6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/L5;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/L5;

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/L4;

.field public final A03:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(JLjava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/L4;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/L4;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A02()V

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/L6;)Lcom/facebook/ads/redexgen/X/L4;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Lcom/facebook/ads/redexgen/X/L4;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/L6;Lcom/facebook/ads/redexgen/X/L5;)Lcom/facebook/ads/redexgen/X/L5;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;

    return-object p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/L6;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/L6;->A03:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final declared-synchronized A03()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    if-eqz v0, :cond_a

    goto :goto_13

    :cond_a
    new-instance v0, Lcom/facebook/ads/redexgen/X/L5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/L5;-><init>(Lcom/facebook/ads/redexgen/X/L6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    monitor-exit p0

    return-void

    :cond_13
    :goto_13
    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final A04()Lcom/facebook/ads/redexgen/X/L4;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Lcom/facebook/ads/redexgen/X/L4;

    return-object v0
.end method

.method public final declared-synchronized A05()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    if-eqz v0, :cond_7
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_19

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;

    if-nez v0, :cond_12

    new-instance v0, Lcom/facebook/ads/redexgen/X/L5;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/L5;-><init>(Lcom/facebook/ads/redexgen/X/L6;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;

    :cond_12
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L5;->A00()V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A06()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A02:Lcom/facebook/ads/redexgen/X/L4;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L4;->A05()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L6;->A03()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A01:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/L6;->A00:Lcom/facebook/ads/redexgen/X/L5;

    monitor-exit p0

    if-eqz v0, :cond_c
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_d

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/L5;->close()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method
