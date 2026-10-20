###### Class com.facebook.ads.redexgen.X.KT (com.facebook.ads.redexgen.X.KT)
.class public final Lcom/facebook/ads/redexgen/X/KT;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/KS;
    }
.end annotation


# static fields
.field public static final A04:Lcom/facebook/ads/redexgen/X/KT;


# instance fields
.field public A00:J

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/KS;

.field public final A03:Lcom/facebook/ads/redexgen/X/LL;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v2, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/U3;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/U2;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/U2;-><init>()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/KT;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/KT;-><init>(Lcom/facebook/ads/redexgen/X/LL;Lcom/facebook/ads/redexgen/X/KS;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A04:Lcom/facebook/ads/redexgen/X/KT;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/LL;Lcom/facebook/ads/redexgen/X/KS;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/KT;->A03:Lcom/facebook/ads/redexgen/X/LL;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/KT;->A02:Lcom/facebook/ads/redexgen/X/KS;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A01:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A00:J

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/KT;
    .registers 1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A04:Lcom/facebook/ads/redexgen/X/KT;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A01:Z

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A03:Lcom/facebook/ads/redexgen/X/LL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LL;->A4w()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A00:J
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A02()V
    .registers 3

    monitor-enter p0

    const-wide/16 v0, -0x1

    :try_start_3
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A00:J
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A03()Z
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A02:Lcom/facebook/ads/redexgen/X/KS;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/KS;->A79()Landroid/app/Activity;

    move-result-object v0

    const/4 v6, 0x1

    if-eqz v0, :cond_a

    return v6

    :cond_a
    const-class v5, Lcom/facebook/ads/redexgen/X/KT;

    monitor-enter v5

    :try_start_d
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A01:Z

    if-eqz v0, :cond_13

    monitor-exit v5

    return v6

    :cond_13
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/KT;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A03:Lcom/facebook/ads/redexgen/X/LL;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LL;->A4w()J

    move-result-wide v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/KT;->A00:J

    sub-long/2addr v3, v0

    const-wide/16 v1, 0x3e8

    cmp-long v0, v3, v1

    if-gez v0, :cond_2c

    :cond_2a
    :goto_2a
    monitor-exit v5

    goto :goto_2e

    :cond_2c
    const/4 v6, 0x0

    goto :goto_2a

    :goto_2e
    return v6

    :catchall_2f
    move-exception v0

    monitor-exit v5
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_2f

    throw v0
.end method
