###### Class com.google.android.gms.internal.ads.zzchr (com.google.android.gms.internal.ads.zzchr)
.class public final Lcom/google/android/gms/internal/ads/zzchr;
.super Lcom/google/android/gms/ads/internal/client/zzdp;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcdw;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Z

.field private final zzd:Z

.field private zze:I

.field private zzf:Lcom/google/android/gms/ads/internal/client/zzdt;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzg:Z

.field private zzh:Z

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:Z

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/ads/zzbhq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdw;FZZ)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzdp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzh:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzi:F

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzc:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzd:Z

    return-void
.end method

.method private final zzw(IIZZ)V
    .registers 13

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcca;->zze:Lcom/google/android/gms/internal/ads/zzgbl;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzchq;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzchq;-><init>(Lcom/google/android/gms/internal/ads/zzchr;IIZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final zzx(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p2, :cond_8

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto :goto_e

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object p2, v0

    :goto_e
    const-string v0, "action"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcca;->zze:Lcom/google/android/gms/internal/ads/zzgbl;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzchp;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzchp;-><init>(Lcom/google/android/gms/internal/ads/zzchr;Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final zzc(FFIZF)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzi:F

    const/4 v2, 0x1

    cmpl-float v1, p2, v1

    if-nez v1, :cond_12

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzk:F

    cmpl-float v1, p5, v1

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :cond_12
    :goto_12
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzi:F

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzj:F

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzh:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzh:Z

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zze:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzchr;->zze:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzk:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzk:F

    sub-float/2addr p5, v1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p5

    const v1, 0x38d1b717    # 1.0E-4f

    cmpl-float p5, p5, v1

    if-lez p5, :cond_37

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-interface {p5}, Lcom/google/android/gms/internal/ads/zzcif;->zzF()Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->invalidate()V

    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_4d

    if-nez v2, :cond_3b

    goto :goto_49

    :cond_3b
    :try_start_3b
    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzn:Lcom/google/android/gms/internal/ads/zzbhq;

    if-eqz p5, :cond_49

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbhq;->zze()V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_49

    :catch_43
    move-exception p5

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p5}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/google/android/gms/internal/ads/zzchr;->zzw(IIZZ)V

    return-void

    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method final synthetic zzd(IIZZ)V
    .registers 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzg:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_f

    if-ne p2, v3, :cond_f

    const/4 p2, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_11

    :cond_f
    move v4, p2

    const/4 v5, 0x0

    :goto_11
    if-eq p1, p2, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    if-eqz p1, :cond_1d

    if-ne v4, v3, :cond_1d

    const/4 p2, 0x1

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p2, 0x0

    :goto_1e
    if-eqz p1, :cond_25

    const/4 v6, 0x2

    if-ne v4, v6, :cond_25

    const/4 v6, 0x1

    goto :goto_26

    :cond_25
    const/4 v6, 0x0

    :goto_26
    if-eqz p1, :cond_2d

    const/4 p1, 0x3

    if-ne v4, p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    if-nez v1, :cond_32

    if-eqz v5, :cond_33

    :cond_32
    const/4 v2, 0x1

    :cond_33
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzg:Z
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_72

    if-eqz v5, :cond_41

    :try_start_37
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz v1, :cond_41

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzi()V

    goto :goto_41

    :catch_3f
    move-exception p1

    goto :goto_6b

    :cond_41
    :goto_41
    if-eqz p2, :cond_4a

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz p2, :cond_4a

    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzh()V

    :cond_4a
    if-eqz v6, :cond_53

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz p2, :cond_53

    invoke-interface {p2}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzg()V

    :cond_53
    if-eqz p1, :cond_61

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz p1, :cond_5c

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzdt;->zze()V

    :cond_5c
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcdw;->zzw()V

    :cond_61
    if-eq p3, p4, :cond_70

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    if-eqz p1, :cond_70

    invoke-interface {p1, p4}, Lcom/google/android/gms/ads/internal/client/zzdt;->zzf(Z)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_6a} :catch_3f
    .catchall {:try_start_37 .. :try_end_6a} :catchall_72

    goto :goto_70

    :goto_6b
    :try_start_6b
    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_70
    :goto_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6b .. :try_end_74} :catchall_72

    throw p1
.end method

.method public final zze()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzk:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzf()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzj:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzg()F
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzi:F

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzh()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zze:I

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzdt;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public final zzj(Z)V
    .registers 3

    const/4 v0, 0x1

    if-eq v0, p1, :cond_6

    const-string p1, "unmute"

    goto :goto_8

    :cond_6
    const-string p1, "mute"

    :goto_8
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzx(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzk()V
    .registers 3

    const-string v0, "pause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzx(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzl()V
    .registers 3

    const-string v0, "play"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzx(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/ads/internal/client/zzdt;)V
    .registers 3
    .param p1    # Lcom/google/android/gms/ads/internal/client/zzdt;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzf:Lcom/google/android/gms/ads/internal/client/zzdt;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzn()V
    .registers 3

    const-string v0, "stop"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzx(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzo()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzchr;->zzp()Z

    move-result v1

    monitor-enter v0

    const/4 v2, 0x0

    if-nez v1, :cond_16

    :try_start_a
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzm:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzd:Z

    if-eqz v1, :cond_16

    const/4 v2, 0x1

    goto :goto_16

    :catchall_14
    move-exception v1

    goto :goto_18

    :cond_16
    :goto_16
    monitor-exit v0

    return v2

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_14

    throw v1
.end method

.method public final zzp()Z
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzc:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzl:Z

    if-eqz v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    monitor-exit v0

    return v2

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final zzq()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzh:Z

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method final synthetic zzr(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    const-string v1, "pubVideoCmd"

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbmx;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/ads/internal/client/zzfl;)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzfl;->zza:Z

    iget-boolean v2, p1, Lcom/google/android/gms/ads/internal/client/zzfl;->zzb:Z

    iget-boolean p1, p1, Lcom/google/android/gms/ads/internal/client/zzfl;->zzc:Z

    monitor-enter v0

    :try_start_9
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzl:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzm:Z

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_37

    const/4 v0, 0x1

    if-eq v0, v1, :cond_14

    const-string v1, "0"

    goto :goto_16

    :cond_14
    const-string v1, "1"

    :goto_16
    move-object v4, v1

    if-eq v0, v2, :cond_1c

    const-string v1, "0"

    goto :goto_1e

    :cond_1c
    const-string v1, "1"

    :goto_1e
    move-object v6, v1

    if-eq v0, p1, :cond_24

    const-string p1, "0"

    goto :goto_26

    :cond_24
    const-string p1, "1"

    :goto_26
    move-object v8, p1

    const-string v7, "clickToExpandRequested"

    const-string v5, "customControlsRequested"

    const-string v3, "muteStart"

    const-string p1, "initialState"

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/common/util/CollectionUtils;->mapOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzchr;->zzx(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :catchall_37
    move-exception p1

    :try_start_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final zzt(F)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzj:F

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public final zzu()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzh:Z

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzchr;->zze:I

    const/4 v3, 0x3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzchr;->zze:I

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzchr;->zzw(IIZZ)V

    return-void

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final zzv(Lcom/google/android/gms/internal/ads/zzbhq;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchr;->zzn:Lcom/google/android/gms/internal/ads/zzbhq;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method
