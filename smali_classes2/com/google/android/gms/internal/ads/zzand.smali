###### Class com.google.android.gms.internal.ads.zzand (com.google.android.gms.internal.ads.zzand)
.class public final Lcom/google/android/gms/internal/ads/zzand;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzb:Ljava/util/Set;

.field private final zzc:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final zzd:Ljava/util/concurrent/PriorityBlockingQueue;

.field private final zze:Lcom/google/android/gms/internal/ads/zzamk;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzamt;

.field private final zzg:[Lcom/google/android/gms/internal/ads/zzamu;

.field private zzh:Lcom/google/android/gms/internal/ads/zzamm;

.field private final zzi:Ljava/util/List;

.field private final zzj:Ljava/util/List;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzamr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzamt;I)V
    .registers 6

    new-instance p3, Lcom/google/android/gms/internal/ads/zzamr;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p3, v0}, Lcom/google/android/gms/internal/ads/zzamr;-><init>(Landroid/os/Handler;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:Lcom/google/android/gms/internal/ads/zzamk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzf:Lcom/google/android/gms/internal/ads/zzamt;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzamu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:[Lcom/google/android/gms/internal/ads/zzamu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Lcom/google/android/gms/internal/ads/zzamr;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzana;)Lcom/google/android/gms/internal/ads/zzana;
    .registers 4

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzana;->zzf(Lcom/google/android/gms/internal/ads/zzand;)Lcom/google/android/gms/internal/ads/zzana;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Ljava/util/Set;

    monitor-enter v0

    :try_start_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zza:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzana;->zzg(I)Lcom/google/android/gms/internal/ads/zzana;

    const-string v0, "add-to-queue"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzand;->zzc(Lcom/google/android/gms/internal/ads/zzana;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    return-object p1

    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzana;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Ljava/util/Set;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzb:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:Ljava/util/List;

    monitor-enter v1

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzi:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzanc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzanc;->zza()V

    goto :goto_12

    :cond_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_28

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzand;->zzc(Lcom/google/android/gms/internal/ads/zzana;I)V

    return-void

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p1

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzana;I)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Ljava/util/List;

    monitor-enter p1

    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzj:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzanb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanb;->zza()V

    goto :goto_9

    :cond_19
    monitor-exit p1

    return-void

    :catchall_1b
    move-exception p2

    monitor-exit p1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p2
.end method

.method public final zzd()V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:Lcom/google/android/gms/internal/ads/zzamm;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzamm;->zzb()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:[Lcom/google/android/gms/internal/ads/zzamu;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    const/4 v3, 0x4

    if-ge v2, v3, :cond_18

    aget-object v3, v0, v2

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzamu;->zza()V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzc:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Lcom/google/android/gms/internal/ads/zzamr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamm;

    invoke-direct {v6, v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzamm;-><init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzamr;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/zzand;->zzh:Lcom/google/android/gms/internal/ads/zzamm;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    :goto_2a
    if-ge v1, v3, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzd:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzand;->zzf:Lcom/google/android/gms/internal/ads/zzamt;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzand;->zze:Lcom/google/android/gms/internal/ads/zzamk;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzand;->zzk:Lcom/google/android/gms/internal/ads/zzamr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamu;

    invoke-direct {v6, v0, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzamu;-><init>(Ljava/util/concurrent/BlockingQueue;Lcom/google/android/gms/internal/ads/zzamt;Lcom/google/android/gms/internal/ads/zzamk;Lcom/google/android/gms/internal/ads/zzamr;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzand;->zzg:[Lcom/google/android/gms/internal/ads/zzamu;

    aput-object v6, v0, v1

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_43
    return-void
.end method
