###### Class com.google.android.gms.internal.ads.zzsf (com.google.android.gms.internal.ads.zzsf)
.class final Lcom/google/android/gms/internal/ads/zzsf;
.super Landroid/media/MediaCodec$Callback;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:Landroid/os/HandlerThread;

.field private zzc:Landroid/os/Handler;

.field private final zzd:Landroidx/collection/CircularIntArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zze:Landroidx/collection/CircularIntArray;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzf:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private final zzg:Ljava/util/ArrayDeque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzh:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Landroid/media/MediaFormat;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Landroid/media/MediaCodec$CodecException;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzl:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private zzm:Ljava/lang/IllegalStateException;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/HandlerThread;)V
    .registers 3

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzb:Landroid/os/HandlerThread;

    new-instance p1, Landroidx/collection/CircularIntArray;

    invoke-direct {p1}, Landroidx/collection/CircularIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzd:Landroidx/collection/CircularIntArray;

    new-instance p1, Landroidx/collection/CircularIntArray;

    invoke-direct {p1}, Landroidx/collection/CircularIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zze:Landroidx/collection/CircularIntArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzf:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzg:Ljava/util/ArrayDeque;

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzsf;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzl:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzk:J

    const-wide/16 v3, -0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzk:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_18

    monitor-exit v0

    return-void

    :cond_18
    if-gez v5, :cond_2a

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v2
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_2f

    :try_start_22
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzm:Ljava/lang/IllegalStateException;

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_27

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_2f

    return-void

    :catchall_27
    move-exception p0

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    :try_start_29
    throw p0

    :cond_2a
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzi()V

    monitor-exit v0

    return-void

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method private final zzh(Landroid/media/MediaFormat;)V
    .registers 4
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zze:Landroidx/collection/CircularIntArray;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final zzi()V
    .registers 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzi:Landroid/media/MediaFormat;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzd:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zze:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0}, Landroidx/collection/CircularIntArray;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method private final zzj()V
    .registers 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzm:Ljava/lang/IllegalStateException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzm:Ljava/lang/IllegalStateException;

    throw v0
.end method

.method private final zzk()V
    .registers 3
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzj:Landroid/media/MediaCodec$CodecException;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzj:Landroid/media/MediaCodec$CodecException;

    throw v0
.end method

.method private final zzl()Z
    .registers 6
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzk:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzl:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzj:Landroid/media/MediaCodec$CodecException;

    monitor-exit p1

    return-void

    :catchall_7
    move-exception p2

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p2
.end method

.method public final onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .registers 4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzd:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    monitor-exit p1

    return-void

    :catchall_a
    move-exception p2

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p2
.end method

.method public final onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzi:Landroid/media/MediaFormat;

    if-eqz v0, :cond_d

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzsf;->zzh(Landroid/media/MediaFormat;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzi:Landroid/media/MediaFormat;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zze:Landroidx/collection/CircularIntArray;

    invoke-virtual {v0, p2}, Landroidx/collection/CircularIntArray;->addLast(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_19
    move-exception p2

    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p2
.end method

.method public final onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .registers 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzsf;->zzh(Landroid/media/MediaFormat;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzi:Landroid/media/MediaFormat;

    monitor-exit p1

    return-void

    :catchall_b
    move-exception p2

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p2
.end method

.method public final zza()I
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzl()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_12

    monitor-exit v0

    return v2

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzd:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_21

    :cond_1b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzd:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->popFirst()I

    move-result v2

    :goto_21
    monitor-exit v0

    return v2

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public final zzb(Landroid/media/MediaCodec$BufferInfo;)I
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzk()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzl()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_12

    monitor-exit v0

    return v2

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zze:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    monitor-exit v0

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zze:Landroidx/collection/CircularIntArray;

    invoke-virtual {v1}, Landroidx/collection/CircularIntArray;->popFirst()I

    move-result v1

    const/4 v2, -0x2

    if-ltz v1, :cond_3f

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzh:Landroid/media/MediaFormat;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzf:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodec$BufferInfo;

    iget v4, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v5, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v6, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    goto :goto_4c

    :cond_3f
    if-ne v1, v2, :cond_4c

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzg:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzh:Landroid/media/MediaFormat;

    const/4 v1, -0x2

    :cond_4c
    :goto_4c
    monitor-exit v0

    return v1

    :catchall_4e
    move-exception p1

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public final zzc()Landroid/media/MediaFormat;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzh:Landroid/media/MediaFormat;

    if-eqz v1, :cond_9

    monitor-exit v0

    return-object v1

    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public final zze()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzk:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzk:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzc:Landroid/os/Handler;

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzse;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzse;-><init>(Lcom/google/android/gms/internal/ads/zzsf;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public final zzf(Landroid/media/MediaCodec;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzb:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzb:Landroid/os/HandlerThread;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, p0, v1}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzc:Landroid/os/Handler;

    return-void
.end method

.method public final zzg()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsf;->zza:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzl:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsf;->zzb:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzsf;->zzi()V

    monitor-exit v0

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

###### Class com.google.android.gms.internal.ads.zzse (com.google.android.gms.internal.ads.zzse)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzse;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzsf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsf;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzse;->zza:Lcom/google/android/gms/internal/ads/zzsf;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzse;->zza:Lcom/google/android/gms/internal/ads/zzsf;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzsf;->zzd(Lcom/google/android/gms/internal/ads/zzsf;)V

    return-void
.end method
