###### Class com.google.android.gms.internal.ads.zzent (com.google.android.gms.internal.ads.zzent)
.class final Lcom/google/android/gms/internal/ads/zzent;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeob;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzenu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzenu;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzenu;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzenu;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzenu;->zzc(Lcom/google/android/gms/internal/ads/zzenu;Lcom/google/android/gms/internal/ads/zzdgx;)V

    monitor-exit v0

    return-void

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzenu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdgx;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzenu;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzenu;->zzc(Lcom/google/android/gms/internal/ads/zzenu;Lcom/google/android/gms/internal/ads/zzdgx;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzent;->zza:Lcom/google/android/gms/internal/ads/zzenu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzenu;->zzb(Lcom/google/android/gms/internal/ads/zzenu;)Lcom/google/android/gms/internal/ads/zzdgx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzctr;->zzj()V

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method
