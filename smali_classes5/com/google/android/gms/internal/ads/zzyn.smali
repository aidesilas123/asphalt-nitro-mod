###### Class com.google.android.gms.internal.ads.zzyn (com.google.android.gms.internal.ads.zzyn)
.class public final Lcom/google/android/gms/internal/ads/zzyn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:I

.field private zzd:[Lcom/google/android/gms/internal/ads/zzyg;


# direct methods
.method public constructor <init>(ZI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    const/16 p1, 0x64

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzyg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza()I
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_9

    const/high16 v1, 0x10000

    mul-int v0, v0, v1

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzb()Lcom/google/android/gms/internal/ads/zzyg;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    if-lez v0, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    aget-object v2, v1, v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_38

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_17
    aput-object v3, v1, v0

    goto :goto_2b

    :cond_1a
    new-instance v2, Lcom/google/android/gms/internal/ads/zzyg;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzyg;-><init>([BI)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;

    array-length v3, v1
    :try_end_29
    .catchall {:try_start_17 .. :try_end_29} :catchall_38

    if-gt v0, v3, :cond_2d

    :goto_2b
    monitor-exit p0

    return-object v2

    :cond_2d
    add-int/2addr v3, v3

    :try_start_2e
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzyg;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v2

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzc(Lcom/google/android/gms/internal/ads/zzyg;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    aput-object p1, v0, v1

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzd(Lcom/google/android/gms/internal/ads/zzyh;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzyh;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :goto_1
    if-eqz p1, :cond_1c

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyh;->zzc()Lcom/google/android/gms/internal/ads/zzyg;

    move-result-object v2

    aput-object v2, v0, v1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzyh;->zzd()Lcom/google/android/gms/internal/ads/zzyh;

    move-result-object p1

    goto :goto_1

    :cond_1c
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zze()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzyn;->zzf(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzf(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:I

    if-ge p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzyn;->zzg()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_e

    monitor-exit p0

    return-void

    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzg()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zza:I

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const v2, 0xffff

    add-int/2addr v1, v2

    const/high16 v2, 0x10000

    div-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzb:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_24

    if-lt v0, v1, :cond_1a

    monitor-exit p0

    return-void

    :cond_1a
    :try_start_1a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:[Lcom/google/android/gms/internal/ads/zzyg;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzyn;->zzc:I
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method
