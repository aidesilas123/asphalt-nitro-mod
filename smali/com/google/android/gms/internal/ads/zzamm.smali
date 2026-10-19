###### Class com.google.android.gms.internal.ads.zzamm (com.google.android.gms.internal.ads.zzamm)
.class public final Lcom/google/android/gms/internal/ads/zzamm;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Z


# instance fields
.field private final zzb:Ljava/util/concurrent/BlockingQueue;

.field private final zzc:Ljava/util/concurrent/BlockingQueue;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzamk;

.field private volatile zze:Z

.field private final zzf:Lcom/google/android/gms/internal/ads/zzann;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzamr;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzanm;->zzb:Z

    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzamm;->zza:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzamr;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzb:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Ljava/util/concurrent/BlockingQueue;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzd:Lcom/google/android/gms/internal/ads/zzamk;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzg:Lcom/google/android/gms/internal/ads/zzamr;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzann;

    invoke-direct {p1, p0, p2, p4}, Lcom/google/android/gms/internal/ads/zzann;-><init>(Lcom/google/android/gms/internal/ads/zzamm;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzamr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzamm;)Ljava/util/concurrent/BlockingQueue;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method private zzc()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzb:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzana;

    const-string v1, "cache-queue-take"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzana;->zzt(I)V

    const/4 v2, 0x2

    :try_start_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzana;->zzw()Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzd:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzana;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzamk;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v3

    if-nez v3, :cond_35

    const-string v1, "cache-miss"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzann;->zzc(Lcom/google/android/gms/internal/ads/zzana;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto/16 :goto_c0

    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzamj;->zza(J)Z

    move-result v6

    if-eqz v6, :cond_55

    const-string v1, "cache-hit-expired"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzana;->zze(Lcom/google/android/gms/internal/ads/zzamj;)Lcom/google/android/gms/internal/ads/zzana;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzann;->zzc(Lcom/google/android/gms/internal/ads/zzana;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_c0

    :cond_55
    const-string v6, "cache-hit"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamw;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzamj;->zza:[B

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzamj;->zzg:Ljava/util/Map;

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzamw;-><init>([BLjava/util/Map;)V

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzana;->zzh(Lcom/google/android/gms/internal/ads/zzamw;)Lcom/google/android/gms/internal/ads/zzang;

    move-result-object v6

    const-string v7, "cache-hit-parsed"

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzang;->zzc()Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_92

    const-string v3, "cache-parsing-failed"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzd:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzana;->zzj()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzamk;->zzc(Ljava/lang/String;Z)V

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzana;->zze(Lcom/google/android/gms/internal/ads/zzamj;)Lcom/google/android/gms/internal/ads/zzana;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzann;->zzc(Lcom/google/android/gms/internal/ads/zzana;)Z

    move-result v1

    if-nez v1, :cond_c0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzc:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_c0

    :cond_92
    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    cmp-long v7, v9, v4

    if-gez v7, :cond_bb

    const-string v4, "cache-hit-refresh-needed"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzana;->zze(Lcom/google/android/gms/internal/ads/zzamj;)Lcom/google/android/gms/internal/ads/zzana;

    iput-boolean v1, v6, Lcom/google/android/gms/internal/ads/zzang;->zzd:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzf:Lcom/google/android/gms/internal/ads/zzann;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzann;->zzc(Lcom/google/android/gms/internal/ads/zzana;)Z

    move-result v1

    if-nez v1, :cond_b5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzg:Lcom/google/android/gms/internal/ads/zzamr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaml;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/ads/zzaml;-><init>(Lcom/google/android/gms/internal/ads/zzamm;Lcom/google/android/gms/internal/ads/zzana;)V

    invoke-virtual {v1, v0, v6, v3}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/Runnable;)V

    goto :goto_c0

    :cond_b5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzg:Lcom/google/android/gms/internal/ads/zzamr;

    invoke-virtual {v1, v0, v6, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/Runnable;)V

    goto :goto_c0

    :cond_bb
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzg:Lcom/google/android/gms/internal/ads/zzamr;

    invoke-virtual {v1, v0, v6, v8}, Lcom/google/android/gms/internal/ads/zzamr;->zzb(Lcom/google/android/gms/internal/ads/zzana;Lcom/google/android/gms/internal/ads/zzang;Ljava/lang/Runnable;)V
    :try_end_c0
    .catchall {:try_start_12 .. :try_end_c0} :catchall_c4

    :cond_c0
    :goto_c0
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzana;->zzt(I)V

    return-void

    :catchall_c4
    move-exception v1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzana;->zzt(I)V

    throw v1
.end method


# virtual methods
.method public final run()V
    .registers 4

    sget-boolean v0, Lcom/google/android/gms/internal/ads/zzamm;->zza:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zzd:Lcom/google/android/gms/internal/ads/zzamk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzamk;->zzb()V

    :goto_16
    :try_start_16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzamm;->zzc()V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_16

    :catch_1a
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:Z

    if-eqz v0, :cond_26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_26
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16
.end method

.method public final zzb()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzamm;->zze:Z

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method
