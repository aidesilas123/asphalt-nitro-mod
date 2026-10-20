###### Class com.google.android.gms.internal.ads.zzfpu (com.google.android.gms.internal.ads.zzfpu)
.class public final Lcom/google/android/gms/internal/ads/zzfpu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfpv;

.field private final zzb:[B

.field private zzc:I

.field private zzd:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfpv;[BLcom/google/android/gms/internal/ads/zzfpt;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zzb:[B

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/ads/zzfpu;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zzd:I

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/ads/zzfpu;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zzc:I

    return-object p0
.end method

.method public final declared-synchronized zzc()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpv;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfpv;->zzb:Z

    if-eqz v1, :cond_31

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpv;->zza:Lcom/google/android/gms/internal/ads/zzfpy;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zzb:[B

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpy;->zzj([B)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpv;->zza:Lcom/google/android/gms/internal/ads/zzfpy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zzc:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpy;->zzi(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpv;->zza:Lcom/google/android/gms/internal/ads/zzfpy;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zzd:I

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpy;->zzg(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpv;->zza:Lcom/google/android/gms/internal/ads/zzfpy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzfpy;->zzh([I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfpu;->zza:Lcom/google/android/gms/internal/ads/zzfpv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfpv;->zza:Lcom/google/android/gms/internal/ads/zzfpy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfpy;->zzf()V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_2f} :catch_35
    .catchall {:try_start_1 .. :try_end_2f} :catchall_33

    monitor-exit p0

    return-void

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    goto :goto_3f

    :catch_35
    move-exception v0

    :try_start_36
    const-string v1, "GASS"

    const-string v2, "Clearcut log failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_33

    monitor-exit p0

    return-void

    :goto_3f
    monitor-exit p0

    throw v0
.end method
