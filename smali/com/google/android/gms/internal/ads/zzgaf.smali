###### Class com.google.android.gms.internal.ads.zzgaf (com.google.android.gms.internal.ads.zzgaf)
.class final Lcom/google/android/gms/internal/ads/zzgaf;
.super Lcom/google/android/gms/internal/ads/zzgac;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgac;-><init>(Lcom/google/android/gms/internal/ads/zzgab;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgae;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgac;-><init>(Lcom/google/android/gms/internal/ads/zzgab;)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzgag;)I
    .registers 3

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgag;->zzz(Lcom/google/android/gms/internal/ads/zzgag;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgag;->zzD(Lcom/google/android/gms/internal/ads/zzgag;I)V

    monitor-exit p1

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzgag;Ljava/util/Set;Ljava/util/Set;)V
    .registers 4

    monitor-enter p1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgag;->zzB(Lcom/google/android/gms/internal/ads/zzgag;)Ljava/util/Set;

    move-result-object p2

    if-nez p2, :cond_a

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzgag;->zzE(Lcom/google/android/gms/internal/ads/zzgag;Ljava/util/Set;)V

    :cond_a
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p2
.end method
