###### Class com.google.android.gms.internal.ads.zzasl (com.google.android.gms.internal.ads.zzasl)
.class final Lcom/google/android/gms/internal/ads/zzasl;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzasm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasl;->zza:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 4

    const-class p1, Lcom/google/android/gms/internal/ads/zzasm;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->zza:Lcom/google/android/gms/internal/ads/zzasm;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzasm;->zzd(Lcom/google/android/gms/internal/ads/zzasm;Landroid/net/NetworkCapabilities;)V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p2
.end method

.method public final onLost(Landroid/net/Network;)V
    .registers 4

    const-class p1, Lcom/google/android/gms/internal/ads/zzasm;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasl;->zza:Lcom/google/android/gms/internal/ads/zzasm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzasm;->zzd(Lcom/google/android/gms/internal/ads/zzasm;Landroid/net/NetworkCapabilities;)V

    monitor-exit p1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method
