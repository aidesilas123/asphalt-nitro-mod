###### Class com.google.android.gms.internal.ads.zzcav (com.google.android.gms.internal.ads.zzcav)
.class final Lcom/google/android/gms/internal/ads/zzcav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/lang/Object;

.field private volatile zzb:J

.field private volatile zzc:I


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zza:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzb:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcau;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcav;->zza:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzb:J

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 10

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcav;->zza:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2a

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzb:J

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdc;->zzfW:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    cmp-long v3, v5, v0

    if-gtz v3, :cond_2a

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    :cond_2a
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_b .. :try_end_2b} :catchall_4a

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcav;->zza:Ljava/lang/Object;

    monitor-enter v3

    :try_start_36
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3d

    monitor-exit v3

    return-void

    :cond_3d
    iput v4, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzc:I

    if-ne v2, v4, :cond_45

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcav;->zzb:J

    :cond_45
    monitor-exit v3

    return-void

    :catchall_47
    move-exception v0

    monitor-exit v3
    :try_end_49
    .catchall {:try_start_36 .. :try_end_49} :catchall_47

    throw v0

    :catchall_4a
    move-exception v0

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v0
.end method
