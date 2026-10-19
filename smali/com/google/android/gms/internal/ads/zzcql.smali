###### Class com.google.android.gms.internal.ads.zzcql (com.google.android.gms.internal.ads.zzcql)
.class public final Lcom/google/android/gms/internal/ads/zzcql;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzavq;
.implements Lcom/google/android/gms/internal/ads/zzczc;
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;
.implements Lcom/google/android/gms/internal/ads/zzczb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcqh;

.field private final zzc:Ljava/util/Set;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbpg;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/common/util/Clock;

.field private final zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcqk;

.field private zzi:Z

.field private zzj:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbpd;Lcom/google/android/gms/internal/ads/zzcqh;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcqg;Lcom/google/android/gms/common/util/Clock;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzc:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcqk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzi:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzj:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcqg;

    sget-object p4, Lcom/google/android/gms/internal/ads/zzbor;->zza:Lcom/google/android/gms/internal/ads/zzboo;

    const-string v0, "google.afma.activeView.handleUpdate"

    invoke-virtual {p1, v0, p4, p4}, Lcom/google/android/gms/internal/ads/zzbpd;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbon;Lcom/google/android/gms/internal/ads/zzbom;)Lcom/google/android/gms/internal/ads/zzbpg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzd:Lcom/google/android/gms/internal/ads/zzbpg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzb:Lcom/google/android/gms/internal/ads/zzcqh;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcql;->zze:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzf:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final zzk()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzc:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcgv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzf(Lcom/google/android/gms/internal/ads/zzcgv;)V

    goto :goto_6

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqg;->zze()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzbM()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcqk;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzbo(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    const-string v0, "u"

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzcqk;->zze:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzk()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzi:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-void

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbp()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcqk;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzbq(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzcqk;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbr(Landroid/content/Context;)V
    .registers 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzcqk;->zzb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized zzbu(Lcom/google/android/gms/internal/ads/zzavp;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzavp;->zzj:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzcqk;->zza:Z

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzcqk;->zzf:Lcom/google/android/gms/internal/ads/zzavp;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzbv()V
    .registers 1

    return-void
.end method

.method public final zzbw()V
    .registers 1

    return-void
.end method

.method public final zzby()V
    .registers 1

    return-void
.end method

.method public final zzbz(I)V
    .registers 2

    return-void
.end method

.method public final declared-synchronized zzg()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzj:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzi:Z

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_60

    if-eqz v0, :cond_59

    :try_start_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzf:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzcqk;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzb:Lcom/google/android/gms/internal/ads/zzcqh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzh:Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcqh;->zza(Lcom/google/android/gms/internal/ads/zzcqk;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzc:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzcgv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcql;->zze:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcqj;

    invoke-direct {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzcqj;-><init>(Lcom/google/android/gms/internal/ads/zzcgv;Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2d

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzd:Lcom/google/android/gms/internal/ads/zzbpg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbpg;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    const-string v1, "ActiveViewListener.callActiveViewJs"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/common/util/concurrent/h0;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4f} :catch_51
    .catchall {:try_start_15 .. :try_end_4f} :catchall_60

    monitor-exit p0

    return-void

    :catch_51
    move-exception v0

    :try_start_52
    const-string v1, "Failed to call ActiveViewJS"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_60

    monitor-exit p0

    return-void

    :cond_59
    monitor-exit p0

    return-void

    :cond_5b
    :try_start_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzj()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_60

    monitor-exit p0

    return-void

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzh(Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzc:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcqg;->zzd(Lcom/google/android/gms/internal/ads/zzcgv;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzi(Ljava/lang/Object;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzj:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized zzj()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzk()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzi:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzq()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zzg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcql;->zza:Lcom/google/android/gms/internal/ads/zzcqg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqg;->zzc(Lcom/google/android/gms/internal/ads/zzcql;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcql;->zzg()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    monitor-exit p0

    return-void

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.ads.zzcqj (com.google.android.gms.internal.ads.zzcqj)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzcqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgv;

.field public final synthetic zzb:Lorg/json/JSONObject;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzb:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcqj;->zzb:Lorg/json/JSONObject;

    const-string v2, "AFMA_updateActiveView"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbnk;->zzl(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
