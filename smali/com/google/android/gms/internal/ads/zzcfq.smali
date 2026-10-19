###### Class com.google.android.gms.internal.ads.zzcfq (com.google.android.gms.internal.ads.zzcfq)
.class public final Lcom/google/android/gms/internal/ads/zzcfq;
.super Lcom/google/android/gms/internal/ads/zzcfh;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcdm;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private zze:Lcom/google/android/gms/internal/ads/zzcdn;

.field private zzf:Ljava/lang/String;

.field private zzg:Z

.field private zzh:Z

.field private zzi:Lcom/google/android/gms/internal/ads/zzcez;

.field private zzj:J

.field private zzk:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcdw;Lcom/google/android/gms/internal/ads/zzcdv;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcfh;-><init>(Lcom/google/android/gms/internal/ads/zzcdw;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcdw;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcdw;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcgi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcdv;Lcom/google/android/gms/internal/ads/zzcdw;Ljava/lang/Integer;)V

    const-string p1, "ExoPlayerAdapter initialized."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzi(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzL(Lcom/google/android/gms/internal/ads/zzcdm;)V

    return-void
.end method

.method protected static final zzc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcbg;->zze(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cache:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzx(J)V
    .registers 5

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzt;->zza:Lcom/google/android/gms/internal/ads/zzfqv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcfp;-><init>(Lcom/google/android/gms/internal/ads/zzcfq;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final release()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzL(Lcom/google/android/gms/internal/ads/zzcdm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzH()V

    :cond_d
    return-void
.end method

.method public final zzD(II)V
    .registers 3

    return-void
.end method

.method public final zza()Lcom/google/android/gms/internal/ads/zzcdn;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzh:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzL(Lcom/google/android/gms/internal/ads/zzcdm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method final synthetic zzb()V
    .registers 33

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "error"

    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzx:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbdc;->zzw:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v11, v2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbdc;->zzbO:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-enter p0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_40} :catch_16d

    :try_start_40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzj:J

    sub-long/2addr v3, v5

    cmp-long v5, v3, v0

    if-gtz v5, :cond_140

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzg:Z

    if-nez v0, :cond_130

    iget-boolean v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzh:Z

    if-eqz v0, :cond_5b

    monitor-exit p0

    move-object v2, v15

    goto/16 :goto_1a9

    :cond_5b
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzV()Z

    move-result v0

    if-eqz v0, :cond_124

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzz()J

    move-result-wide v9

    const-wide/16 v18, 0x0

    cmp-long v0, v9, v18

    if-lez v0, :cond_10d

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdn;->zzv()J

    move-result-wide v6

    iget-wide v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzk:J
    :try_end_77
    .catchall {:try_start_40 .. :try_end_77} :catchall_166

    cmp-long v3, v6, v0

    if-eqz v3, :cond_e0

    cmp-long v0, v6, v18

    if-lez v0, :cond_82

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_84

    :cond_82
    const/4 v0, 0x0

    const/4 v8, 0x0

    :goto_84
    :try_start_84
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_84 .. :try_end_86} :catchall_db

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_91

    :try_start_8a
    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzA()J

    move-result-wide v20

    goto :goto_93

    :cond_91
    move-wide/from16 v20, v3

    :goto_93
    if-eqz v2, :cond_9c

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzx()J

    move-result-wide v22

    goto :goto_9e

    :cond_9c
    move-wide/from16 v22, v3

    :goto_9e
    if-eqz v2, :cond_a9

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzB()J

    move-result-wide v1
    :try_end_a6
    .catchall {:try_start_8a .. :try_end_a6} :catchall_166

    move-wide/from16 v24, v1

    goto :goto_ab

    :cond_a9
    move-wide/from16 v24, v3

    :goto_ab
    :try_start_ab
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdn;->zzs()I

    move-result v16

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdn;->zzu()I

    move-result v26
    :try_end_b3
    .catchall {:try_start_ab .. :try_end_b3} :catchall_db

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v13

    move-wide v4, v6

    move-wide/from16 v27, v6

    move-wide v6, v9

    move-wide/from16 v29, v9

    move-wide/from16 v9, v20

    move-wide/from16 v20, v11

    move-wide/from16 v11, v22

    move-object/from16 v31, v13

    move-wide/from16 v13, v24

    move/from16 v15, v16

    move/from16 v16, v26

    :try_start_cb
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcfh;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_ce
    .catchall {:try_start_cb .. :try_end_ce} :catchall_d7

    move-object/from16 v2, p0

    move-wide/from16 v0, v27

    :try_start_d2
    iput-wide v0, v2, Lcom/google/android/gms/internal/ads/zzcfq;->zzk:J

    move-wide/from16 v3, v29

    goto :goto_e7

    :catchall_d7
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_f6

    :catchall_db
    move-exception v0

    move-object v2, v15

    move-object v5, v13

    goto/16 :goto_169

    :cond_e0
    move-wide v0, v6

    move-wide/from16 v20, v11

    move-object/from16 v31, v13

    move-object v2, v15

    move-wide v3, v9

    :goto_e7
    cmp-long v5, v0, v3

    if-ltz v5, :cond_fa

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;
    :try_end_ed
    .catchall {:try_start_d2 .. :try_end_ed} :catchall_f5

    move-object/from16 v5, v31

    :try_start_ef
    invoke-virtual {v2, v0, v5, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfh;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto/16 :goto_1a9

    :catchall_f5
    move-exception v0

    :goto_f6
    move-object/from16 v5, v31

    goto/16 :goto_169

    :cond_fa
    move-object/from16 v5, v31

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzw()J

    move-result-wide v3

    cmp-long v6, v3, v20

    if-ltz v6, :cond_10f

    cmp-long v3, v0, v18

    if-lez v3, :cond_10f

    monitor-exit p0

    goto/16 :goto_1a9

    :cond_10d
    move-object v5, v13

    move-object v2, v15

    :cond_10f
    monitor-exit p0
    :try_end_110
    .catchall {:try_start_ef .. :try_end_110} :catchall_164

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzy:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzcfq;->zzx(J)V

    return-void

    :cond_124
    move-object v5, v13

    move-object v2, v15

    :try_start_126
    const-string v1, "exoPlayerReleased"
    :try_end_128
    .catchall {:try_start_126 .. :try_end_128} :catchall_164

    :try_start_128
    new-instance v0, Ljava/io/IOException;

    const-string v3, "ExoPlayer was released during preloading."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_130
    .catchall {:try_start_128 .. :try_end_130} :catchall_13c

    :cond_130
    move-object v5, v13

    move-object v2, v15

    :try_start_132
    const-string v1, "externalAbort"
    :try_end_134
    .catchall {:try_start_132 .. :try_end_134} :catchall_164

    :try_start_134
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Abort requested before buffering finished. "

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13c
    .catchall {:try_start_134 .. :try_end_13c} :catchall_13c

    :catchall_13c
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_169

    :cond_140
    move-object v5, v13

    move-object v2, v15

    :try_start_142
    const-string v3, "downloadTimeout"
    :try_end_144
    .catchall {:try_start_142 .. :try_end_144} :catchall_164

    :try_start_144
    new-instance v4, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout reached. Limit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_160
    .catchall {:try_start_144 .. :try_end_160} :catchall_160

    :catchall_160
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_169

    :catchall_164
    move-exception v0

    goto :goto_169

    :catchall_166
    move-exception v0

    move-object v5, v13

    move-object v2, v15

    :goto_169
    :try_start_169
    monitor-exit p0
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_164

    :try_start_16a
    throw v0
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_16a .. :try_end_16b} :catch_16b

    :catch_16b
    move-exception v0

    goto :goto_170

    :catch_16d
    move-exception v0

    move-object v5, v13

    move-object v2, v15

    :goto_170
    move-object/from16 v1, v17

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to preload url "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    const-string v3, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzcaw;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcfh;->release()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfq;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    invoke-virtual {v2, v3, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfh;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzy()Lcom/google/android/gms/internal/ads/zzcfa;

    move-result-object v0

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzcfq;->zzi:Lcom/google/android/gms/internal/ads/zzcez;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfa;->zzc(Lcom/google/android/gms/internal/ads/zzcez;)V

    return-void
.end method

.method public final zzf()V
    .registers 5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzg:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfh;->release()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    const-string v2, "externalAbort"

    const-string v3, "Programmatic precache abort."

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfh;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final zzi(ZJ)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcdw;

    if-eqz v0, :cond_14

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcca;->zze:Lcom/google/android/gms/internal/ads/zzgbl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcfo;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcfo;-><init>(Lcom/google/android/gms/internal/ads/zzcdw;ZJ)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public final zzk(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const-string p1, "Precache error"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object p1

    const-string v0, "VideoStreamExoPlayerCache.onError"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcaw;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const-string p1, "Precache exception"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object p1

    const-string v0, "VideoStreamExoPlayerCache.onException"

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcaw;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public final zzm(I)V
    .registers 2

    return-void
.end method

.method public final zzp(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzJ(I)V

    return-void
.end method

.method public final zzq(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzK(I)V

    return-void
.end method

.method public final zzr(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzM(I)V

    return-void
.end method

.method public final zzs(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzN(I)V

    return-void
.end method

.method public final zzt(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcfh;->zzu(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final zzu(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 48

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    iput-object v13, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    const-string v17, "error"

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x0

    :try_start_10
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_14
    array-length v3, v0

    if-ge v2, v3, :cond_22

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_22
    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzcfh;->zzb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdn;->zzF([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object v0, v15, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcdw;

    if-eqz v0, :cond_36

    invoke-interface {v0, v14, v15}, Lcom/google/android/gms/internal/ads/zzcdw;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcfh;)V

    :cond_36
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v19

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzy:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzx:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v9, v1, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzw:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzbO:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    const-wide/16 v22, -0x1

    move-wide/from16 v1, v22

    :goto_87
    monitor-enter p0
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_88} :catch_1c8

    :try_start_88
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, v19

    cmp-long v5, v3, v9

    if-gtz v5, :cond_195

    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzg:Z

    if-nez v3, :cond_188

    iget-boolean v3, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zzh:Z

    const/16 v24, 0x1

    if-eqz v3, :cond_a0

    monitor-exit p0

    move-object v5, v15

    goto/16 :goto_157

    :cond_a0
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzV()Z

    move-result v3

    if-eqz v3, :cond_17b

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzz()J

    move-result-wide v4

    const-wide/16 v25, 0x0

    cmp-long v3, v4, v25

    if-lez v3, :cond_15b

    iget-object v3, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzv()J

    move-result-wide v27

    cmp-long v3, v27, v1

    if-eqz v3, :cond_12a

    cmp-long v1, v27, v25

    if-lez v1, :cond_c4

    const/4 v8, 0x1

    goto :goto_c5

    :cond_c4
    const/4 v8, 0x0

    :goto_c5
    if-eqz v21, :cond_d0

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzA()J

    move-result-wide v1

    move-wide/from16 v29, v1

    goto :goto_d2

    :cond_d0
    move-wide/from16 v29, v22

    :goto_d2
    if-eqz v21, :cond_dd

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzx()J

    move-result-wide v1

    move-wide/from16 v31, v1

    goto :goto_df

    :cond_dd
    move-wide/from16 v31, v22

    :goto_df
    if-eqz v21, :cond_ea

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcdn;->zzB()J

    move-result-wide v1
    :try_end_e7
    .catchall {:try_start_88 .. :try_end_e7} :catchall_1c0

    move-wide/from16 v33, v1

    goto :goto_ec

    :cond_ea
    move-wide/from16 v33, v22

    :goto_ec
    :try_start_ec
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdn;->zzs()I

    move-result v16

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcdn;->zzu()I

    move-result v35
    :try_end_f4
    .catchall {:try_start_ec .. :try_end_f4} :catchall_122

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v14

    move-wide/from16 v36, v4

    move-wide/from16 v4, v27

    move-wide/from16 v38, v6

    move-wide/from16 v6, v36

    move-wide/from16 v40, v9

    move-wide/from16 v9, v29

    move-wide/from16 v42, v11

    move-wide/from16 v11, v31

    move-object/from16 v44, v14

    move-wide/from16 v13, v33

    move/from16 v15, v16

    move/from16 v16, v35

    :try_start_111
    invoke-virtual/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzcfh;->zzo(Ljava/lang/String;Ljava/lang/String;JJZJJJII)V
    :try_end_114
    .catchall {:try_start_111 .. :try_end_114} :catchall_119

    move-wide/from16 v1, v27

    move-wide/from16 v3, v36

    goto :goto_133

    :catchall_119
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    goto/16 :goto_1c4

    :catchall_122
    move-exception v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object v7, v14

    goto/16 :goto_1c4

    :cond_12a
    move-wide/from16 v38, v6

    move-wide/from16 v40, v9

    move-wide/from16 v42, v11

    move-object/from16 v44, v14

    move-wide v3, v4

    :goto_133
    cmp-long v5, v27, v3

    if-ltz v5, :cond_142

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    :try_start_13d
    invoke-virtual {v5, v6, v7, v3, v4}, Lcom/google/android/gms/internal/ads/zzcfh;->zzj(Ljava/lang/String;Ljava/lang/String;J)V

    monitor-exit p0

    goto :goto_157

    :cond_142
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, v44

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcdn;->zzw()J

    move-result-wide v3

    cmp-long v8, v3, v38

    if-ltz v8, :cond_158

    cmp-long v3, v27, v25

    if-lez v3, :cond_158

    monitor-exit p0
    :try_end_157
    .catchall {:try_start_13d .. :try_end_157} :catchall_1be

    :goto_157
    return v24

    :cond_158
    move-wide/from16 v3, v42

    goto :goto_163

    :cond_15b
    move-wide/from16 v38, v6

    move-wide/from16 v40, v9

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    move-wide v3, v11

    :goto_163
    :try_start_163
    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_166
    .catch Ljava/lang/InterruptedException; {:try_start_163 .. :try_end_166} :catch_171
    .catchall {:try_start_163 .. :try_end_166} :catchall_1be

    :try_start_166
    monitor-exit p0

    move-wide v11, v3

    move-object v15, v5

    move-object v13, v6

    move-object v14, v7

    move-wide/from16 v6, v38

    move-wide/from16 v9, v40

    goto/16 :goto_87

    :catch_171
    const-string v1, "interrupted"
    :try_end_173
    .catchall {:try_start_166 .. :try_end_173} :catchall_1be

    :try_start_173
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Wait interrupted."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17b
    .catchall {:try_start_173 .. :try_end_17b} :catchall_1ba

    :cond_17b
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :try_start_17e
    const-string v1, "exoPlayerReleased"
    :try_end_180
    .catchall {:try_start_17e .. :try_end_180} :catchall_1be

    :try_start_180
    new-instance v0, Ljava/io/IOException;

    const-string v2, "ExoPlayer was released during preloading."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_188
    .catchall {:try_start_180 .. :try_end_188} :catchall_1ba

    :cond_188
    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :try_start_18b
    const-string v1, "externalAbort"
    :try_end_18d
    .catchall {:try_start_18b .. :try_end_18d} :catchall_1be

    :try_start_18d
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Abort requested before buffering finished. "

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_195
    .catchall {:try_start_18d .. :try_end_195} :catchall_1ba

    :cond_195
    move-wide/from16 v40, v9

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :try_start_19a
    const-string v1, "downloadTimeout"
    :try_end_19c
    .catchall {:try_start_19a .. :try_end_19c} :catchall_1be

    :try_start_19c
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout reached. Limit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v40

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1ba
    .catchall {:try_start_19c .. :try_end_1ba} :catchall_1ba

    :catchall_1ba
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_1c4

    :catchall_1be
    move-exception v0

    goto :goto_1c4

    :catchall_1c0
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :goto_1c4
    :try_start_1c4
    monitor-exit p0
    :try_end_1c5
    .catchall {:try_start_1c4 .. :try_end_1c5} :catchall_1be

    :try_start_1c5
    throw v0
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1c6} :catch_1c6

    :catch_1c6
    move-exception v0

    goto :goto_1cc

    :catch_1c8
    move-exception v0

    move-object v6, v13

    move-object v7, v14

    move-object v5, v15

    :goto_1cc
    move-object/from16 v1, v17

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to preload url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    const-string v2, "VideoStreamExoPlayerCache.preload"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzcaw;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcfh;->release()V

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfq;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v7, v1, v0}, Lcom/google/android/gms/internal/ads/zzcfh;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v18
.end method

.method public final zzv()V
    .registers 2

    const-string v0, "Precache onRenderedFirstFrame"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    return-void
.end method

.method public final zzw(Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcez;)Z
    .registers 8

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzi:Lcom/google/android/gms/internal/ads/zzcez;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcfq;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    :try_start_9
    array-length v1, p2

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    :goto_d
    array-length v3, p2

    if-ge v2, v3, :cond_1b

    aget-object v3, p2, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_1b
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zze:Lcom/google/android/gms/internal/ads/zzcdn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzb:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzcdn;->zzF([Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcfh;->zzc:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcdw;

    if-eqz p2, :cond_2f

    invoke-interface {p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzcdw;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcfh;)V

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzj:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcfq;->zzk:J

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcfq;->zzx(J)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_42} :catch_44

    const/4 p1, 0x1

    return p1

    :catch_44
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to preload url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzo()Lcom/google/android/gms/internal/ads/zzcaw;

    move-result-object v1

    const-string v2, "VideoStreamExoPlayerCache.preload"

    invoke-virtual {v1, p2, v2}, Lcom/google/android/gms/internal/ads/zzcaw;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcfh;->release()V

    const-string v1, "error"

    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzcfq;->zzd(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p3, v1, p2}, Lcom/google/android/gms/internal/ads/zzcfh;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

###### Class com.google.android.gms.internal.ads.zzcfo (com.google.android.gms.internal.ads.zzcfo)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcdw;

.field public final synthetic zzb:Z

.field public final synthetic zzc:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcdw;ZJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzb:Z

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzc:J

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zza:Lcom/google/android/gms/internal/ads/zzcdw;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzb:Z

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcfo;->zzc:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcdw;->zzv(ZJ)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzcfp (com.google.android.gms.internal.ads.zzcfp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcfp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcfq;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcfq;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zza:Lcom/google/android/gms/internal/ads/zzcfq;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfp;->zza:Lcom/google/android/gms/internal/ads/zzcfq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcfq;->zzb()V

    return-void
.end method
