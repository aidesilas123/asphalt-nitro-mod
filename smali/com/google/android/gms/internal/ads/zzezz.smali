###### Class com.google.android.gms.internal.ads.zzezz (com.google.android.gms.internal.ads.zzezz)
.class final Lcom/google/android/gms/internal/ads/zzezz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeob;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfaa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfaa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzfaa;->zza:Lcom/google/android/gms/internal/ads/zzcrj;

    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcrj;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfaa;->zza:Lcom/google/android/gms/internal/ads/zzcrj;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzctr;->zzb()V

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    iput-object p1, v1, Lcom/google/android/gms/internal/ads/zzfaa;->zza:Lcom/google/android/gms/internal/ads/zzcrj;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzcrj;->zzc(Lcom/google/android/gms/internal/ads/zzaxd;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezz;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfaa;->zzm(Lcom/google/android/gms/internal/ads/zzfaa;)Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcrk;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfaa;->zzm(Lcom/google/android/gms/internal/ads/zzfaa;)Lcom/google/android/gms/internal/ads/zzezs;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfaa;->zzh(Lcom/google/android/gms/internal/ads/zzfaa;)Lcom/google/android/gms/internal/ads/zzdtp;

    move-result-object v5

    invoke-direct {v3, p1, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzcrk;-><init>(Lcom/google/android/gms/internal/ads/zzcrj;Lcom/google/android/gms/ads/internal/client/zzbu;Lcom/google/android/gms/internal/ads/zzezs;Lcom/google/android/gms/internal/ads/zzdtp;)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzezs;->zzk(Lcom/google/android/gms/internal/ads/zzaxj;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzctr;->zzj()V

    monitor-exit v0

    return-void

    :catchall_30
    move-exception p1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw p1
.end method
