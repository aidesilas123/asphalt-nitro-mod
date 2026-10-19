###### Class com.google.android.gms.internal.ads.zzctg (com.google.android.gms.internal.ads.zzctg)
.class public final Lcom/google/android/gms/internal/ads/zzctg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczv;
.implements Lcom/google/android/gms/internal/ads/zzavq;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdu;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcyz;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdae;

.field private final zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zze:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdu;Lcom/google/android/gms/internal/ads/zzcyz;Lcom/google/android/gms/internal/ads/zzdae;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzb:Lcom/google/android/gms/internal/ads/zzcyz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzc:Lcom/google/android/gms/internal/ads/zzdae;

    return-void
.end method

.method private final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzd:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzb:Lcom/google/android/gms/internal/ads/zzcyz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyz;->zza()V

    :cond_f
    return-void
.end method


# virtual methods
.method public final zzbu(Lcom/google/android/gms/internal/ads/zzavp;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzf:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzavp;->zzj:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctg;->zza()V

    :cond_e
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzavp;->zzj:Z

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zze:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzctg;->zzc:Lcom/google/android/gms/internal/ads/zzdae;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdae;->zza()V

    :cond_20
    return-void
.end method

.method public final declared-synchronized zzr()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzctg;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzf:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzctg;->zza()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_f

    monitor-exit p0

    return-void

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
