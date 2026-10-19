###### Class com.google.android.gms.internal.ads.zzdaw (com.google.android.gms.internal.ads.zzdaw)
.class public final Lcom/google/android/gms/internal/ads/zzdaw;
.super Lcom/google/android/gms/internal/ads/zzddv;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzc:Lcom/google/android/gms/common/util/Clock;

.field private zzd:J

.field private zze:J

.field private zzf:Z

.field private zzg:Ljava/util/concurrent/ScheduledFuture;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/common/util/Clock;)V
    .registers 5

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzddv;-><init>(Ljava/util/Set;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final declared-synchronized zze(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdav;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzdav;-><init>(Lcom/google/android/gms/internal/ads/zzdaw;Lcom/google/android/gms/internal/ads/zzdau;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzg:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdaw;->zze(J)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J

    goto :goto_25

    :cond_21
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J

    :goto_25
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    monitor-exit p0

    return-void

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z

    if-eqz v0, :cond_1f

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzg:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdaw;->zze(J)V

    :cond_1a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_21

    monitor-exit p0

    return-void

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzd(I)V
    .registers 8

    monitor-enter p0

    if-gtz p1, :cond_4

    goto :goto_39

    :cond_4
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzf:Z

    if-eqz p1, :cond_21

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1c

    cmp-long p1, v0, v2

    if-gez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move-wide v0, v2

    :goto_1d
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zze:J
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_40

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzd:J

    cmp-long p1, v2, v4

    if-gtz p1, :cond_3b

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzc:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_40

    sub-long/2addr v4, v2

    cmp-long p1, v4, v0

    if-lez p1, :cond_39

    goto :goto_3b

    :cond_39
    :goto_39
    monitor-exit p0

    return-void

    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdaw;->zze(J)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-void

    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method
