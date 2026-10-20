###### Class com.google.android.gms.internal.ads.zzasa (com.google.android.gms.internal.ads.zzasa)
.class final Lcom/google/android/gms/internal/ads/zzasa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzasb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzasb;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasb;->zzd(Lcom/google/android/gms/internal/ads/zzasb;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzasb;->zzq(Lcom/google/android/gms/internal/ads/zzasb;)Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzasb;->zzi(Lcom/google/android/gms/internal/ads/zzasb;Z)V

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_3e

    :try_start_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasb;->zzj(Lcom/google/android/gms/internal/ads/zzasb;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_2a

    :catch_1c
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzasb;->zzc(Lcom/google/android/gms/internal/ads/zzasb;)Lcom/google/android/gms/internal/ads/zzfnt;

    move-result-object v1

    const/16 v2, 0x7e7

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfnt;->zzc(IJLjava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    :goto_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzasb;->zzd(Lcom/google/android/gms/internal/ads/zzasb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzasa;->zza:Lcom/google/android/gms/internal/ads/zzasb;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzasb;->zzi(Lcom/google/android/gms/internal/ads/zzasb;Z)V

    monitor-exit v1

    return-void

    :catchall_39
    move-exception v0

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw v0

    :cond_3c
    :try_start_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_3e

    throw v1
.end method
