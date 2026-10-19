###### Class com.facebook.ads.redexgen.X.C08859q (com.facebook.ads.redexgen.X.9q)
.class public final Lcom/facebook/ads/redexgen/X/9q;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9o;,
        Lcom/facebook/ads/redexgen/X/9p;
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:Landroid/os/Handler;

.field public A04:Ljava/lang/Object;

.field public A05:Z

.field public A06:Z

.field public A07:Z

.field public A08:Z

.field public A09:Z

.field public final A0A:Lcom/facebook/ads/redexgen/X/9o;

.field public final A0B:Lcom/facebook/ads/redexgen/X/9p;

.field public final A0C:Lcom/facebook/ads/redexgen/X/9z;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;Lcom/facebook/ads/redexgen/X/9p;Lcom/facebook/ads/redexgen/X/9z;ILandroid/os/Handler;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9q;->A0A:Lcom/facebook/ads/redexgen/X/9o;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/9q;->A0B:Lcom/facebook/ads/redexgen/X/9p;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/9q;->A0C:Lcom/facebook/ads/redexgen/X/9z;

    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/9q;->A03:Landroid/os/Handler;

    iput p4, p0, Lcom/facebook/ads/redexgen/X/9q;->A01:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A02:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A05:Z

    return-void
.end method


# virtual methods
.method public final A00()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:I

    return v0
.end method

.method public final A01()I
    .registers 2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A01:I

    return v0
.end method

.method public final A02()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A02:J

    return-wide v0
.end method

.method public final A03()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A03:Landroid/os/Handler;

    return-object v0
.end method

.method public final A04()Lcom/facebook/ads/redexgen/X/9p;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A0B:Lcom/facebook/ads/redexgen/X/9p;

    return-object v0
.end method

.method public final A05()Lcom/facebook/ads/redexgen/X/9q;
    .registers 7

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A09:Z

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/9q;->A02:J

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v1

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A05:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A03(Z)V

    :cond_17
    iput-boolean v5, p0, Lcom/facebook/ads/redexgen/X/9q;->A09:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A0A:Lcom/facebook/ads/redexgen/X/9o;

    invoke-interface {v0, p0}, Lcom/facebook/ads/redexgen/X/9o;->AF4(Lcom/facebook/ads/redexgen/X/9q;)V

    return-object p0
.end method

.method public final A06(I)Lcom/facebook/ads/redexgen/X/9q;
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput p1, p0, Lcom/facebook/ads/redexgen/X/9q;->A00:I

    return-object p0
.end method

.method public final A07(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/9q;
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A09:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9q;->A04:Ljava/lang/Object;

    return-object p0
.end method

.method public final A08()Lcom/facebook/ads/redexgen/X/9z;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A0C:Lcom/facebook/ads/redexgen/X/9z;

    return-object v0
.end method

.method public final A09()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A04:Ljava/lang/Object;

    return-object v0
.end method

.method public final declared-synchronized A0A(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A07:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A07:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A08:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0B()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A05:Z

    return v0
.end method

.method public final declared-synchronized A0C()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A09:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A03:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-eq v1, v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HI;->A04(Z)V

    :goto_1c
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A08:Z

    if-nez v0, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1c

    :cond_24
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A07:Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return v0

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A0D()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/9q;->A06:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
