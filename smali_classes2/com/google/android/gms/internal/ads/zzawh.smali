###### Class com.google.android.gms.internal.ads.zzawh (com.google.android.gms.internal.ads.zzawh)
.class final Lcom/google/android/gms/internal/ads/zzawh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzawi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzawi;->zzc(Lcom/google/android/gms/internal/ads/zzawi;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawi;->zzi(Lcom/google/android/gms/internal/ads/zzawi;)Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawi;->zzj(Lcom/google/android/gms/internal/ads/zzawi;)Z

    move-result v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzawi;->zze(Lcom/google/android/gms/internal/ads/zzawi;Z)V

    const-string v1, "App went background"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbn;->zze(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawh;->zza:Lcom/google/android/gms/internal/ads/zzawi;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzawi;->zzd(Lcom/google/android/gms/internal/ads/zzawi;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzawj;
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_46

    :try_start_34
    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzawj;->zza(Z)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38
    .catchall {:try_start_34 .. :try_end_37} :catchall_46

    goto :goto_28

    :catch_38
    move-exception v3

    :try_start_39
    const-string v4, ""

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzcbn;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_3f
    const-string v1, "App is still foreground"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbn;->zze(Ljava/lang/String;)V

    :cond_44
    monitor-exit v0

    return-void

    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_46

    throw v1
.end method
