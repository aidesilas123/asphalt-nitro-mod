###### Class com.google.android.gms.internal.ads.zzzx (com.google.android.gms.internal.ads.zzzx)
.class final Lcom/google/android/gms/internal/ads/zzzx;
.super Landroid/os/HandlerThread;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzel;

.field private zzb:Landroid/os/Handler;

.field private zzc:Ljava/lang/Error;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/lang/RuntimeException;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzzz;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "ExoPlayer:PlaceholderSurface"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 p1, 0x2

    if-eq v0, p1, :cond_a

    goto/16 :goto_86

    :cond_a
    :try_start_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzel;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_13

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzel;->zzc()V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_13

    goto :goto_1b

    :catchall_13
    move-exception p1

    :try_start_14
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to release placeholder surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1f

    :goto_1b
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    return v1

    :catchall_1f
    move-exception p1

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quit()Z

    throw p1

    :cond_24
    :try_start_24
    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzel;
    :try_end_28
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_28} :catch_77
    .catch Lcom/google/android/gms/internal/ads/zzen; {:try_start_24 .. :try_end_28} :catch_5f
    .catch Ljava/lang/Error; {:try_start_24 .. :try_end_28} :catch_4c
    .catchall {:try_start_24 .. :try_end_28} :catchall_4a

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2b
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(I)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzel;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzel;->zza()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz p1, :cond_3a

    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzzz;-><init>(Lcom/google/android/gms/internal/ads/zzzx;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzzy;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zze:Lcom/google/android/gms/internal/ads/zzzz;
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_41} :catch_77
    .catch Lcom/google/android/gms/internal/ads/zzen; {:try_start_2b .. :try_end_41} :catch_5f
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_41} :catch_4c
    .catchall {:try_start_2b .. :try_end_41} :catchall_4a

    monitor-enter p0

    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_86

    :catchall_47
    move-exception p1

    monitor-exit p0
    :try_end_49
    .catchall {:try_start_42 .. :try_end_49} :catchall_47

    throw p1

    :catchall_4a
    move-exception p1

    goto :goto_8a

    :catch_4c
    move-exception p1

    :try_start_4d
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzc:Ljava/lang/Error;
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_4a

    monitor-enter p0

    :try_start_57
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_86

    :catchall_5c
    move-exception p1

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_5c

    throw p1

    :catch_5f
    move-exception p1

    :try_start_60
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzd:Ljava/lang/RuntimeException;
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_4a

    monitor-enter p0

    :try_start_6f
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    goto :goto_86

    :catchall_74
    move-exception p1

    monitor-exit p0
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_74

    throw p1

    :catch_77
    move-exception p1

    :try_start_78
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    invoke-static {v0, v2, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzd:Ljava/lang/RuntimeException;
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_4a

    monitor-enter p0

    :try_start_82
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_86
    return v1

    :catchall_87
    move-exception p1

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_87

    throw p1

    :goto_8a
    monitor-enter p0

    :try_start_8b
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_90

    throw p1

    :catchall_90
    move-exception p1

    :try_start_91
    monitor-exit p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_90

    throw p1
.end method

.method public final zza(I)Lcom/google/android/gms/internal/ads/zzzz;
    .registers 5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzb:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzel;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzb:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzel;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzek;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zza:Lcom/google/android/gms/internal/ads/zzel;

    monitor-enter p0

    :try_start_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzb:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zze:Lcom/google/android/gms/internal/ads/zzzz;

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzd:Ljava/lang/RuntimeException;

    if-nez p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzc:Ljava/lang/Error;
    :try_end_2e
    .catchall {:try_start_19 .. :try_end_2e} :catchall_50

    if-nez p1, :cond_36

    :try_start_30
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34
    .catchall {:try_start_30 .. :try_end_33} :catchall_50

    goto :goto_24

    :catch_34
    const/4 v1, 0x1

    goto :goto_24

    :cond_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_50

    if-eqz v1, :cond_40

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_40
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzd:Ljava/lang/RuntimeException;

    if-nez p1, :cond_4f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzc:Ljava/lang/Error;

    if-nez p1, :cond_4e

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zze:Lcom/google/android/gms/internal/ads/zzzz;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_4e
    throw p1

    :cond_4f
    throw p1

    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzb:Landroid/os/Handler;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
