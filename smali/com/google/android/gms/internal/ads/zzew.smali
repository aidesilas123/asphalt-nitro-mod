###### Class com.google.android.gms.internal.ads.zzew (com.google.android.gms.internal.ads.zzew)
.class public final Lcom/google/android/gms/internal/ads/zzew;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzeq;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzeu;

.field private final zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zze:Ljava/util/ArrayDeque;

.field private final zzf:Ljava/util/ArrayDeque;

.field private final zzg:Ljava/lang/Object;

.field private zzh:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releasedLock"
    .end annotation
.end field

.field private zzi:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeu;)V
    .registers 10

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzew;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeu;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeu;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzew;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzew;->zzc:Lcom/google/android/gms/internal/ads/zzeu;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzg:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzer;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Lcom/google/android/gms/internal/ads/zzew;)V

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzeg;->zzb(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzeq;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzew;->zzi:Z

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzew;Landroid/os/Message;)Z
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzc:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzev;->zzb(Lcom/google/android/gms/internal/ads/zzeu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzg(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method private final zzh()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzi:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeq;->zza()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeu;)Lcom/google/android/gms/internal/ads/zzew;
    .registers 10
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    new-instance v6, Lcom/google/android/gms/internal/ads/zzew;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzew;->zzi:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzew;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzew;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzeg;Lcom/google/android/gms/internal/ads/zzeu;Z)V

    return-object v6
.end method

.method public final zzb(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzh:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzev;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzev;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public final zzc()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_4d

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzg(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzb:Lcom/google/android/gms/internal/ads/zzeq;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzb(I)Lcom/google/android/gms/internal/ads/zzep;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzeq;->zzk(Lcom/google/android/gms/internal/ads/zzep;)Z

    :cond_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    if-nez v0, :cond_4d

    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zze:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_34

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final zzd(ILcom/google/android/gms/internal/ads/zzet;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzh()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzes;

    invoke-direct {v1, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzes;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzet;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zze()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzew;->zzh:Z

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_28

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzc:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzev;->zzc(Lcom/google/android/gms/internal/ads/zzeu;)V

    goto :goto_10

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    return-void

    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public final zzf(Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzew;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzev;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzev;->zza:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzc:Lcom/google/android/gms/internal/ads/zzeu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzev;->zzc(Lcom/google/android/gms/internal/ads/zzeu;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzew;->zzd:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_28
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzer (com.google.android.gms.internal.ads.zzer)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzer;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzew;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzew;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzer;->zza:Lcom/google/android/gms/internal/ads/zzew;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzer;->zza:Lcom/google/android/gms/internal/ads/zzew;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzew;->zzg(Lcom/google/android/gms/internal/ads/zzew;Landroid/os/Message;)Z

    const/4 p1, 0x1

    return p1
.end method

###### Class com.google.android.gms.internal.ads.zzes (com.google.android.gms.internal.ads.zzes)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcom/google/android/gms/internal/ads/zzet;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzes;->zza:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzes;->zza:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzes;->zzc:Lcom/google/android/gms/internal/ads/zzet;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzes;->zzb:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzev;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/gms/internal/ads/zzev;->zza(ILcom/google/android/gms/internal/ads/zzet;)V

    goto :goto_6

    :cond_1a
    return-void
.end method
