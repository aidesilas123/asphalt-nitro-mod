###### Class com.google.android.gms.internal.ads.zzqw (com.google.android.gms.internal.ads.zzqw)
.class public final Lcom/google/android/gms/internal/ads/zzqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpv;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static zzc:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation
.end field


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:I

.field private zzF:Z

.field private zzG:Z

.field private zzH:J

.field private zzI:F

.field private zzJ:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzK:I

.field private zzL:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzM:[B

.field private zzN:I

.field private zzO:Z

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:I

.field private zzT:Lcom/google/android/gms/internal/ads/zzl;

.field private zzU:Lcom/google/android/gms/internal/ads/zzqi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzV:J

.field private zzW:Z

.field private zzX:Z

.field private final zzY:Lcom/google/android/gms/internal/ads/zzqm;

.field private final zzZ:Lcom/google/android/gms/internal/ads/zzqd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzqa;

.field private final zze:Lcom/google/android/gms/internal/ads/zzrg;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfwu;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfwu;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzei;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzpz;

.field private final zzj:Ljava/util/ArrayDeque;

.field private zzk:Lcom/google/android/gms/internal/ads/zzqu;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzqp;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzqp;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzqj;

.field private zzo:Lcom/google/android/gms/internal/ads/zzov;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Lcom/google/android/gms/internal/ads/zzps;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzq:Lcom/google/android/gms/internal/ads/zzql;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzr:Lcom/google/android/gms/internal/ads/zzql;

.field private zzs:Lcom/google/android/gms/internal/ads/zzdv;

.field private zzt:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzu:Lcom/google/android/gms/internal/ads/zzox;

.field private zzv:Lcom/google/android/gms/internal/ads/zzk;

.field private zzw:Lcom/google/android/gms/internal/ads/zzqo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzx:Lcom/google/android/gms/internal/ads/zzqo;

.field private zzy:Lcom/google/android/gms/internal/ads/zzcj;

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqk;Lcom/google/android/gms/internal/ads/zzqv;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zza(Lcom/google/android/gms/internal/ads/zzqk;)Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzf(Lcom/google/android/gms/internal/ads/zzqk;)Lcom/google/android/gms/internal/ads/zzqm;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzY:Lcom/google/android/gms/internal/ads/zzqm;

    sget p2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzb(Lcom/google/android/gms/internal/ads/zzqk;)Lcom/google/android/gms/internal/ads/zzqj;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzn:Lcom/google/android/gms/internal/ads/zzqj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzg(Lcom/google/android/gms/internal/ads/zzqk;)Lcom/google/android/gms/internal/ads/zzqd;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzZ:Lcom/google/android/gms/internal/ads/zzqd;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzei;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzeg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzei;->zze()Z

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpz;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqr;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/zzqr;-><init>(Lcom/google/android/gms/internal/ads/zzqw;Lcom/google/android/gms/internal/ads/zzqq;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzpz;-><init>(Lcom/google/android/gms/internal/ads/zzpy;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqa;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzqa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzd:Lcom/google/android/gms/internal/ads/zzqa;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzrg;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzrg;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zze:Lcom/google/android/gms/internal/ads/zzrg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzec;-><init>()V

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfwu;->zzo(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzf:Lcom/google/android/gms/internal/ads/zzfwu;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrf;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzg:Lcom/google/android/gms/internal/ads/zzfwu;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzI:F

    sget-object p1, Lcom/google/android/gms/internal/ads/zzk;->zza:Lcom/google/android/gms/internal/ads/zzk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzS:I

    new-instance p2, Lcom/google/android/gms/internal/ads/zzl;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzl;-><init>(IF)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzT:Lcom/google/android/gms/internal/ads/zzl;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqo;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcj;->zza:Lcom/google/android/gms/internal/ads/zzcj;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzcj;JJLcom/google/android/gms/internal/ads/zzqn;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzz:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqp;

    const-wide/16 v0, 0x64

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzl:Lcom/google/android/gms/internal/ads/zzqp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzqp;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzm:Lcom/google/android/gms/internal/ads/zzqp;

    return-void
.end method

.method static bridge synthetic zzA(Lcom/google/android/gms/internal/ads/zzqw;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzV:J

    return-wide v0
.end method

.method static bridge synthetic zzB(Lcom/google/android/gms/internal/ads/zzqw;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzH()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzC(Lcom/google/android/gms/internal/ads/zzqw;)J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic zzD(Lcom/google/android/gms/internal/ads/zzqw;)Landroid/media/AudioTrack;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static bridge synthetic zzE(Lcom/google/android/gms/internal/ads/zzqw;)Lcom/google/android/gms/internal/ads/zzps;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    return-object p0
.end method

.method static synthetic zzF(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzps;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpp;Lcom/google/android/gms/internal/ads/zzei;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_39

    if-eqz p1, :cond_1f

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_1f

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqf;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzps;Lcom/google/android/gms/internal/ads/zzpp;)V

    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1f
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzei;->zze()Z

    sget-object p0, Lcom/google/android/gms/internal/ads/zzqw;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_25
    sget p1, Lcom/google/android/gms/internal/ads/zzqw;->zzc:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzqw;->zzc:I

    if-nez p1, :cond_34

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    :cond_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_36

    throw p1

    :catchall_39
    move-exception p0

    if-eqz p1, :cond_52

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_52

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqf;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzps;Lcom/google/android/gms/internal/ads/zzpp;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_52
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzei;->zze()Z

    sget-object p1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_58
    sget p2, Lcom/google/android/gms/internal/ads/zzqw;->zzc:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/google/android/gms/internal/ads/zzqw;->zzc:I

    if-nez p2, :cond_67

    sget-object p2, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    :cond_67
    monitor-exit p1
    :try_end_68
    .catchall {:try_start_58 .. :try_end_68} :catchall_69

    throw p0

    :catchall_69
    move-exception p0

    :try_start_6a
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method static bridge synthetic zzG(Lcom/google/android/gms/internal/ads/zzqw;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzQ:Z

    return p0
.end method

.method private final zzH()J
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_d

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzA:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_f

    :cond_d
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzB:J

    :goto_f
    return-wide v1
.end method

.method private final zzI()J
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_13

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzC:J

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    int-to-long v3, v0

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    add-long/2addr v1, v3

    const-wide/16 v5, -0x1

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    goto :goto_15

    :cond_13
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzD:J

    :goto_15
    return-wide v1
.end method

.method private final zzJ(Lcom/google/android/gms/internal/ads/zzql;)Landroid/media/AudioTrack;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpr;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzS:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzql;->zza(Lcom/google/android/gms/internal/ads/zzk;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_0 .. :try_end_8} :catch_9

    return-object p1

    :catch_9
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-nez v0, :cond_f

    goto :goto_12

    :cond_f
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzps;->zza(Ljava/lang/Exception;)V

    :goto_12
    throw p1
.end method

.method private final zzK(J)V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzV()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzY:Lcom/google/android/gms/internal/ads/zzqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;->zzc(Lcom/google/android/gms/internal/ads/zzcj;)Lcom/google/android/gms/internal/ads/zzcj;

    goto :goto_10

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcj;->zza:Lcom/google/android/gms/internal/ads/zzcj;

    :goto_10
    move-object v3, v1

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzV()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzY:Lcom/google/android/gms/internal/ads/zzqm;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzz:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;->zzd(Z)Z

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzz:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqo;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v6

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzr(JI)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzcj;JJLcom/google/android/gms/internal/ads/zzqn;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzQ()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-eqz p1, :cond_56

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzz:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrb;->zza:Lcom/google/android/gms/internal/ads/zzrc;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzpn;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpn;->zzw(Z)V

    :cond_56
    return-void
.end method

.method private final zzL()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzql;->zzc()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzW:Z

    return-void
.end method

.method private final zzM()V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzP:Z

    if-nez v0, :cond_15

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzP:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpz;->zzc(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_15
    return-void
.end method

.method private final zzN(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpu;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzh()Z

    move-result v0

    if-eqz v0, :cond_39

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzg()Z

    move-result v0

    if-nez v0, :cond_38

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqw;->zzR(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_38

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->zze(Ljava/nio/ByteBuffer;)V

    goto :goto_8

    :cond_38
    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdy;->zza:Ljava/nio/ByteBuffer;

    :cond_3f
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqw;->zzR(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method private final zzO(Lcom/google/android/gms/internal/ads/zzcj;)V
    .registers 10

    new-instance v7, Lcom/google/android/gms/internal/ads/zzqo;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzcj;JJLcom/google/android/gms/internal/ads/zzqn;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result p1

    if-eqz p1, :cond_17

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzw:Lcom/google/android/gms/internal/ads/zzqo;

    return-void

    :cond_17
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    return-void
.end method

.method private final zzP()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzI:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzI:F

    invoke-virtual {v0, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private final zzQ()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Lcom/google/android/gms/internal/ads/zzdv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzc()V

    return-void
.end method

.method private final zzR(Ljava/nio/ByteBuffer;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpu;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p2

    if-nez p2, :cond_8

    goto/16 :goto_117

    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    const/16 p3, 0x15

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_19

    if-ne p2, p1, :cond_14

    const/4 p2, 0x1

    goto :goto_15

    :cond_14
    const/4 p2, 0x0

    :goto_15
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    goto :goto_3c

    :cond_19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    sget p2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-ge p2, p3, :cond_3c

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzM:[B

    if-eqz v2, :cond_2a

    array-length v2, v2

    if-ge v2, p2, :cond_2e

    :cond_2a
    new-array v2, p2, [B

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzM:[B

    :cond_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzM:[B

    invoke-virtual {p1, v3, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzN:I

    :cond_3c
    :goto_3c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-ge v2, p3, :cond_6e

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzC:J

    invoke-virtual {p3, v3, v4}, Lcom/google/android/gms/internal/ads/zzpz;->zza(J)I

    move-result p3

    if-lez p3, :cond_6c

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzM:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzN:I

    invoke-virtual {v3, v4, v5, p3}, Landroid/media/AudioTrack;->write([BII)I

    move-result p3

    if-lez p3, :cond_74

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzN:I

    add-int/2addr v3, p3

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzN:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_74

    :cond_6c
    const/4 p3, 0x0

    goto :goto_74

    :cond_6e
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {p3, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result p3

    :cond_74
    :goto_74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzV:J

    const-wide/16 v3, 0x0

    if-gez p3, :cond_be

    const/16 p1, 0x18

    if-lt v2, p1, :cond_85

    const/4 p1, -0x6

    if-eq p3, p1, :cond_89

    :cond_85
    const/16 p1, -0x20

    if-ne p3, p1, :cond_9e

    :cond_89
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide p1

    cmp-long v2, p1, v3

    if-lez v2, :cond_92

    goto :goto_9f

    :cond_92
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_9e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzL()V

    goto :goto_9f

    :cond_9e
    const/4 v0, 0x0

    :goto_9f
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpu;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {p1, p3, p2, v0}, Lcom/google/android/gms/internal/ads/zzpu;-><init>(ILcom/google/android/gms/internal/ads/zzam;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-eqz p2, :cond_af

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzps;->zza(Ljava/lang/Exception;)V

    :cond_af
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzpu;->zzb:Z

    if-nez p2, :cond_b9

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzm:Lcom/google/android/gms/internal/ads/zzqp;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzqp;->zzb(Ljava/lang/Exception;)V

    return-void

    :cond_b9
    sget-object p2, Lcom/google/android/gms/internal/ads/zzox;->zza:Lcom/google/android/gms/internal/ads/zzox;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    throw p1

    :cond_be
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzm:Lcom/google/android/gms/internal/ads/zzqp;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqp;->zza()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    move-result v2

    if-eqz v2, :cond_ee

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzD:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_d3

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzX:Z

    :cond_d3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzQ:Z

    if-eqz v2, :cond_ee

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-eqz v2, :cond_ee

    if-ge p3, p2, :cond_ee

    check-cast v2, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzrb;->zza:Lcom/google/android/gms/internal/ads/zzrc;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrc;->zzab(Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzly;

    move-result-object v3

    if-eqz v3, :cond_ee

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzrc;->zzab(Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzly;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzly;->zza()V

    :cond_ee
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v2, :cond_fa

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzC:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzC:J

    :cond_fa
    if-ne p3, p2, :cond_117

    if-eqz v2, :cond_114

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_103

    goto :goto_104

    :cond_103
    const/4 v0, 0x0

    :goto_104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzD:J

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzE:I

    int-to-long v0, p3

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzK:I

    int-to-long v2, p3

    mul-long v0, v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzD:J

    :cond_114
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    :cond_117
    :goto_117
    return-void
.end method

.method private final zzS()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpu;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzh()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_11

    return v4

    :cond_11
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqw;->zzR(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_19

    return v4

    :cond_19
    return v3

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzd()V

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqw;->zzN(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzg()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    return v4

    :cond_36
    const/4 v3, 0x1

    :cond_37
    :goto_37
    return v3
.end method

.method private final zzT()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private static zzU(Landroid/media/AudioTrack;)Z
    .registers 3

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private final zzV()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_c

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzam;)I
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v1, "audio/raw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_34

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzG(I)Z

    move-result v0

    if-nez v0, :cond_2d

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PCM encoding: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2d
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    if-eq p1, v2, :cond_33

    const/4 p1, 0x1

    return p1

    :cond_33
    return v2

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzox;->zza(Lcom/google/android/gms/internal/ads/zzam;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3d

    return v2

    :cond_3d
    return v1
.end method

.method public final zzb(Z)J
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_96

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzG:Z

    if-eqz v0, :cond_c

    goto/16 :goto_96

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpz;->zzb(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzr(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_22
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_43

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqo;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqo;->zzc:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_43

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqo;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    goto :goto_22

    :cond_43
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqo;->zzc:J

    sub-long v2, v0, v2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzcj;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzcj;->zza:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzcj;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_59

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqo;->zzb:J

    add-long/2addr v0, v2

    goto :goto_86

    :cond_59
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzY:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzqm;->zza(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqo;->zzb:J

    add-long/2addr v0, v2

    goto :goto_86

    :cond_6d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqo;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqo;->zzc:J

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzqo;->zza:Lcom/google/android/gms/internal/ads/zzcj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcj;->zzc:F

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzo(JF)J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqo;->zzb:J

    sub-long v0, v2, v0

    :goto_86
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzY:Lcom/google/android/gms/internal/ads/zzqm;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqm;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzr(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_96
    :goto_96
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzpa;
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzW:Z

    if-eqz v0, :cond_7

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpa;

    return-object p1

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzZ:Lcom/google/android/gms/internal/ads/zzqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqd;->zza(Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzpa;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzam;I[I)V
    .registers 22
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpq;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    const-string v2, "audio/raw"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-eqz v0, :cond_98

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzG(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzfs;->zzl(II)I

    move-result v0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzf:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfwr;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwr;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzY:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzqm;->zze()[Lcom/google/android/gms/internal/ads/zzdy;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfwr;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(Lcom/google/android/gms/internal/ads/zzfwu;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzdv;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    :cond_48
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zze:Lcom/google/android/gms/internal/ads/zzrg;

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzam;->zzC:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzam;->zzD:I

    invoke-virtual {v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzrg;->zzq(II)V

    sget v6, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v8, 0x15

    if-ge v6, v8, :cond_68

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    if-ne v6, v4, :cond_68

    if-nez p3, :cond_68

    const/4 v6, 0x6

    new-array v8, v6, [I

    const/4 v9, 0x0

    :goto_61
    if-ge v9, v6, :cond_6a

    aput v9, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_61

    :cond_68
    move-object/from16 v8, p3

    :cond_6a
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzd:Lcom/google/android/gms/internal/ads/zzqa;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/internal/ads/zzqa;->zzo([I)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdw;

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzam;->zzz:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzam;->zzB:I

    invoke-direct {v6, v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzdw;-><init>(III)V

    :try_start_7a
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzdv;->zza(Lcom/google/android/gms/internal/ads/zzdw;)Lcom/google/android/gms/internal/ads/zzdw;

    move-result-object v6
    :try_end_7e
    .catch Lcom/google/android/gms/internal/ads/zzdx; {:try_start_7a .. :try_end_7e} :catch_90

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzdw;->zzd:I

    iget v9, v6, Lcom/google/android/gms/internal/ads/zzdw;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzdw;->zzc:I

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfs;->zzg(I)I

    move-result v10

    invoke-static {v8, v6}, Lcom/google/android/gms/internal/ads/zzfs;->zzl(II)I

    move-result v6

    move-object v11, v7

    move v7, v9

    const/4 v9, 0x0

    goto :goto_c3

    :catch_90
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;)V

    throw v0

    :cond_98
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdv;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzdv;-><init>(Lcom/google/android/gms/internal/ads/zzfwu;)V

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    sget-object v7, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpa;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzu:Lcom/google/android/gms/internal/ads/zzox;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/internal/ads/zzox;->zza(Lcom/google/android/gms/internal/ads/zzam;)Landroid/util/Pair;

    move-result-object v7

    if-eqz v7, :cond_1b1

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v9, 0x2

    move-object v11, v0

    move v10, v7

    const/4 v0, -0x1

    move v7, v6

    const/4 v6, -0x1

    :goto_c3
    const-string v12, ") for: "

    if-eqz v8, :cond_190

    if-eqz v10, :cond_16f

    invoke-static {v7, v10, v8}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    if-eq v12, v13, :cond_d3

    const/4 v13, 0x1

    goto :goto_d4

    :cond_d3
    const/4 v13, 0x0

    :goto_d4
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    if-eq v6, v5, :cond_db

    move v13, v6

    goto :goto_dc

    :cond_db
    const/4 v13, 0x1

    :goto_dc
    iget v15, v3, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    const v2, 0x3d090

    if-eqz v9, :cond_123

    const-wide/32 v16, 0xf4240

    if-eq v9, v14, :cond_110

    const/4 v14, 0x5

    if-ne v8, v14, :cond_ef

    const v2, 0x7a120

    goto :goto_f6

    :cond_ef
    if-ne v8, v4, :cond_f6

    const v2, 0xf4240

    const/16 v8, 0x8

    :cond_f6
    :goto_f6
    if-eq v15, v5, :cond_ff

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v15, v4, v14}, Lcom/google/android/gms/internal/ads/zzfzd;->zza(IILjava/math/RoundingMode;)I

    move-result v4

    goto :goto_103

    :cond_ff
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzqy;->zzb(I)I

    move-result v4

    :goto_103
    int-to-long v14, v2

    move/from16 p3, v6

    int-to-long v5, v4

    mul-long v14, v14, v5

    div-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzfzi;->zza(J)I

    move-result v2

    goto :goto_13a

    :cond_110
    move/from16 p3, v6

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzqy;->zzb(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v14, 0x2faf080

    mul-long v4, v4, v14

    div-long v4, v4, v16

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzfzi;->zza(J)I

    move-result v2

    goto :goto_13a

    :cond_123
    move/from16 p3, v6

    mul-int/lit8 v4, v12, 0x4

    invoke-static {v2, v7, v13}, Lcom/google/android/gms/internal/ads/zzqy;->zza(III)I

    move-result v2

    const v5, 0xb71b0

    invoke-static {v5, v7, v13}, Lcom/google/android/gms/internal/ads/zzqy;->zza(III)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_13a
    move v14, v8

    int-to-double v4, v2

    double-to-int v2, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v13

    const/4 v4, -0x1

    add-int/2addr v2, v4

    div-int/2addr v2, v13

    mul-int v12, v2, v13

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzW:Z

    new-instance v15, Lcom/google/android/gms/internal/ads/zzql;

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v2, v15

    move-object/from16 v3, p1

    move v4, v0

    move v5, v9

    move/from16 v6, p3

    move v8, v10

    move v9, v14

    move v10, v12

    move v12, v13

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzam;IIIIIIILcom/google/android/gms/internal/ads/zzdv;ZZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_16c

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzq:Lcom/google/android/gms/internal/ads/zzql;

    return-void

    :cond_16c
    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    return-void

    :cond_16f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output channel config (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;)V

    throw v0

    :cond_190
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid output encoding (mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;)V

    throw v0

    :cond_1b1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpq;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzam;)V

    throw v0
.end method

.method public final zzf()V
    .registers 12

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_b7

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzA:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzB:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzD:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzX:Z

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzE:I

    new-instance v10, Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Lcom/google/android/gms/internal/ads/zzcj;JJLcom/google/android/gms/internal/ads/zzqn;)V

    iput-object v10, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzx:Lcom/google/android/gms/internal/ads/zzqo;

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzH:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzw:Lcom/google/android/gms/internal/ads/zzqo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzj:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzK:I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzL:Ljava/nio/ByteBuffer;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzP:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzO:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zze:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzrg;->zzp()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzQ()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpz;->zzi()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzk:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzqu;->zzb(Landroid/media/AudioTrack;)V

    :cond_5f
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v3, 0x15

    if-ge v1, v3, :cond_6b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzR:Z

    if-nez v1, :cond_6b

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzS:I

    :cond_6b
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzql;->zzb()Lcom/google/android/gms/internal/ads/zzpp;

    move-result-object v6

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzq:Lcom/google/android/gms/internal/ads/zzql;

    if-eqz v1, :cond_79

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzq:Lcom/google/android/gms/internal/ads/zzql;

    :cond_79
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzpz;->zzd()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzei;->zzc()Z

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzqw;->zza:Ljava/lang/Object;

    monitor-enter v1

    :try_start_93
    sget-object v2, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    if-nez v2, :cond_9f

    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfs;->zzD(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    :cond_9f
    sget v2, Lcom/google/android/gms/internal/ads/zzqw;->zzc:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/google/android/gms/internal/ads/zzqw;->zzc:I

    sget-object v8, Lcom/google/android/gms/internal/ads/zzqw;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqe;

    move-object v2, v9

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzps;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpp;Lcom/google/android/gms/internal/ads/zzei;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_b1
    .catchall {:try_start_93 .. :try_end_b1} :catchall_b4

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    goto :goto_b7

    :catchall_b4
    move-exception v0

    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw v0

    :cond_b7
    :goto_b7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzm:Lcom/google/android/gms/internal/ads/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqp;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzl:Lcom/google/android/gms/internal/ads/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqp;->zza()V

    return-void
.end method

.method public final zzg()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzF:Z

    return-void
.end method

.method public final zzh()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzQ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpz;->zzl()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1e
    return-void
.end method

.method public final zzi()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzQ:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpz;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_13
    return-void
.end method

.method public final zzj()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpu;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzO:Z

    if-nez v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzS()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzM()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzO:Z

    :cond_16
    return-void
.end method

.method public final zzk()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzf:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v1, :cond_19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzg:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v1, :cond_2e

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzdy;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzdy;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzs:Lcom/google/android/gms/internal/ads/zzdv;

    if-eqz v0, :cond_35

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdv;->zzf()V

    :cond_35
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzQ:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzW:Z

    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzk;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzv:Lcom/google/android/gms/internal/ads/zzk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    return-void
.end method

.method public final zzm(I)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzS:I

    if-eq v0, p1, :cond_10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzS:I

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzR:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    :cond_10
    return-void
.end method

.method public final zzn(Lcom/google/android/gms/internal/ads/zzl;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzT:Lcom/google/android/gms/internal/ads/zzl;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzT:Lcom/google/android/gms/internal/ads/zzl;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzl;->zza:I

    :cond_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzT:Lcom/google/android/gms/internal/ads/zzl;

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzeg;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpz;->zzf(Lcom/google/android/gms/internal/ads/zzeg;)V

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzps;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    return-void
.end method

.method public final zzq(II)V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    :cond_7
    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzcj;)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcj;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcj;->zzc:F

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzcj;->zzd:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzO(Lcom/google/android/gms/internal/ads/zzcj;)V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzov;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzov;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzo:Lcom/google/android/gms/internal/ads/zzov;

    return-void
.end method

.method public final zzt(Landroid/media/AudioDeviceInfo;)V
    .registers 3
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzqi;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(Landroid/media/AudioDeviceInfo;)V

    move-object p1, v0

    :goto_a
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzU:Lcom/google/android/gms/internal/ads/zzqi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_13

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzqg;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqi;)V

    :cond_13
    return-void
.end method

.method public final zzu(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzz:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzy:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zzO(Lcom/google/android/gms/internal/ads/zzcj;)V

    return-void
.end method

.method public final zzv(F)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzI:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_b

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzI:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzP()V

    :cond_b
    return-void
.end method

.method public final zzw(Ljava/nio/ByteBuffer;JI)Z
    .registers 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpr;,
            Lcom/google/android/gms/internal/ads/zzpu;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    if-eqz v0, :cond_12

    if-ne v2, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzq:Lcom/google/android/gms/internal/ads/zzql;

    const/4 v8, 0x0

    if-eqz v0, :cond_67

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzS()Z

    move-result v0

    if-nez v0, :cond_22

    return v7

    :cond_22
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzq:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-ne v10, v11, :cond_57

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    if-ne v10, v11, :cond_57

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    if-ne v10, v11, :cond_57

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    if-ne v10, v11, :cond_57

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    if-ne v9, v10, :cond_57

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzq:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    if-eqz v0, :cond_64

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    goto :goto_64

    :cond_57
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzM()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzx()Z

    move-result v0

    if-eqz v0, :cond_61

    return v7

    :cond_61
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    :cond_64
    :goto_64
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->zzK(J)V

    :cond_67
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    const/16 v9, 0x1f

    if-eqz v0, :cond_71

    goto/16 :goto_138

    :cond_71
    :try_start_71
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzh:Lcom/google/android/gms/internal/ads/zzei;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzei;->zzd()Z

    move-result v0
    :try_end_77
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_71 .. :try_end_77} :catch_3ac

    if-nez v0, :cond_7a

    return v7

    :cond_7a
    :try_start_7a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;
    :try_end_7c
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_7a .. :try_end_7c} :catch_84

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_7f
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzJ(Lcom/google/android/gms/internal/ads/zzql;)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_83
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_7f .. :try_end_83} :catch_84

    goto :goto_c2

    :catch_84
    move-exception v0

    move-object v11, v0

    :try_start_86
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    const v13, 0xf4240

    if-le v12, v13, :cond_3a8

    new-instance v12, Lcom/google/android/gms/internal/ads/zzql;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    const v22, 0xf4240

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Lcom/google/android/gms/internal/ads/zzdv;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v17, v14

    move-object v14, v12

    move/from16 v16, v13

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v23, v0

    invoke-direct/range {v14 .. v26}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzam;IIIIIIILcom/google/android/gms/internal/ads/zzdv;ZZZ)V
    :try_end_bc
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_86 .. :try_end_bc} :catch_3ac

    :try_start_bc
    invoke-direct {v1, v12}, Lcom/google/android/gms/internal/ads/zzqw;->zzJ(Lcom/google/android/gms/internal/ads/zzql;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;
    :try_end_c2
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_bc .. :try_end_c2} :catch_390

    :goto_c2
    :try_start_c2
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zzU(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_e0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzk:Lcom/google/android/gms/internal/ads/zzqu;

    if-nez v6, :cond_d7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzqu;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzqu;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzk:Lcom/google/android/gms/internal/ads/zzqu;

    :cond_d7
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzk:Lcom/google/android/gms/internal/ads/zzqu;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzqu;->zza(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    :cond_e0
    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    if-lt v0, v9, :cond_ed

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzo:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v6, :cond_ed

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzqh;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzov;)V

    :cond_ed
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v6

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzS:I

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_102

    const/4 v12, 0x1

    goto :goto_103

    :cond_102
    const/4 v12, 0x0

    :goto_103
    iget v13, v6, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget v14, v6, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    iget v15, v6, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzpz;->zze(Landroid/media/AudioTrack;ZIII)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzP()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzT:Lcom/google/android/gms/internal/ads/zzl;

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzl;->zza:I

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzU:Lcom/google/android/gms/internal/ads/zzqi;

    if-eqz v6, :cond_120

    const/16 v7, 0x17

    if-lt v0, v7, :cond_120

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzt:Landroid/media/AudioTrack;

    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzqg;->zza(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqi;)V

    :cond_120
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzG:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-eqz v0, :cond_138

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzql;->zzb()Lcom/google/android/gms/internal/ads/zzpp;

    move-result-object v6

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrb;->zza:Lcom/google/android/gms/internal/ads/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Lcom/google/android/gms/internal/ads/zzrc;)Lcom/google/android/gms/internal/ads/zzpn;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpn;->zzc(Lcom/google/android/gms/internal/ads/zzpp;)V
    :try_end_138
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_c2 .. :try_end_138} :catch_3ac

    :cond_138
    :goto_138
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzl:Lcom/google/android/gms/internal/ads/zzqp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqp;->zza()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzG:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_158

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzH:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzF:Z

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzG:Z

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->zzK(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzQ:Z

    if-eqz v0, :cond_158

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzi()V

    :cond_158
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/google/android/gms/internal/ads/zzpz;->zzk(J)Z

    move-result v0

    if-nez v0, :cond_166

    const/4 v8, 0x0

    return v8

    :cond_166
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_363

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v8, :cond_174

    const/4 v0, 0x1

    goto :goto_175

    :cond_174
    const/4 v0, 0x0

    :goto_175
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_180

    const/4 v8, 0x1

    return v8

    :cond_180
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-eqz v8, :cond_2d2

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzE:I

    if-nez v8, :cond_2d2

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    const/4 v8, -0x2

    const/16 v10, 0x10

    const/16 v11, 0x400

    const/4 v12, -0x1

    packed-switch v0, :pswitch_data_3ba

    :pswitch_195
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected audio encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1ac
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzada;->zzb(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_234

    :pswitch_1b2
    sget v0, Lcom/google/android/gms/internal/ads/zzabi;->zza:I

    new-array v0, v10, [B

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfi;

    invoke-direct {v8, v0, v10}, Lcom/google/android/gms/internal/ads/zzfi;-><init>([BI)V

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzabi;->zza(Lcom/google/android/gms/internal/ads/zzfi;)Lcom/google/android/gms/internal/ads/zzabh;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabh;->zzc:I

    goto/16 :goto_234

    :pswitch_1cd
    const/16 v0, 0x200

    goto :goto_234

    :pswitch_1d0
    sget v0, Lcom/google/android/gms/internal/ads/zzabf;->zza:I

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    move v11, v0

    :goto_1dd
    if-gt v11, v9, :cond_1f0

    add-int/lit8 v13, v11, 0x4

    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzfs;->zzh(Ljava/nio/ByteBuffer;I)I

    move-result v13

    and-int/2addr v13, v8

    const v14, -0x78d9046

    if-ne v13, v14, :cond_1ed

    sub-int/2addr v11, v0

    goto :goto_1f1

    :cond_1ed
    add-int/lit8 v11, v11, 0x1

    goto :goto_1dd

    :cond_1f0
    const/4 v11, -0x1

    :goto_1f1
    if-ne v11, v12, :cond_1f5

    const/4 v0, 0x0

    goto :goto_234

    :cond_1f5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v11

    const/16 v9, 0xbb

    if-ne v0, v9, :cond_20e

    const/16 v0, 0x9

    goto :goto_210

    :cond_20e
    const/16 v0, 0x8

    :goto_210
    const/16 v9, 0x28

    add-int/2addr v8, v0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    shl-int v0, v9, v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_234

    :pswitch_220
    const/16 v0, 0x800

    goto :goto_234

    :goto_223
    :pswitch_223
    const/16 v0, 0x400

    goto :goto_234

    :pswitch_226
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzh(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzacz;->zzc(I)I

    move-result v0

    if-eq v0, v12, :cond_237

    :goto_234
    const/4 v10, 0x1

    goto/16 :goto_2cc

    :cond_237
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_23d
    sget v0, Lcom/google/android/gms/internal/ads/zzacb;->zza:I

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v13, -0xde4bec0

    if-eq v0, v13, :cond_2c3

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v13, -0x17bd3b8f

    if-ne v0, v13, :cond_253

    goto :goto_223

    :cond_253
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v10, 0x25205864

    if-ne v0, v10, :cond_25f

    const/16 v0, 0x1000

    goto :goto_234

    :cond_25f
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    if-eq v10, v8, :cond_2aa

    if-eq v10, v12, :cond_293

    if-eq v10, v9, :cond_281

    add-int/lit8 v8, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v9, 0x1

    and-int/2addr v8, v9

    shl-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    const/4 v9, 0x2

    goto :goto_2a6

    :cond_281
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x5

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_2a4

    :cond_293
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x4

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :goto_2a4
    and-int/lit8 v0, v0, 0x3c

    :goto_2a6
    shr-int/2addr v0, v9

    or-int/2addr v0, v8

    const/4 v10, 0x1

    goto :goto_2bf

    :cond_2aa
    const/4 v9, 0x2

    add-int/lit8 v8, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/4 v10, 0x1

    and-int/2addr v0, v10

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xfc

    shr-int/2addr v8, v9

    or-int/2addr v0, v8

    :goto_2bf
    add-int/2addr v0, v10

    mul-int/lit8 v0, v0, 0x20

    goto :goto_2cc

    :cond_2c3
    const/4 v10, 0x1

    const/16 v0, 0x400

    goto :goto_2cc

    :pswitch_2c7
    const/4 v10, 0x1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzabf;->zza(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_2cc
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzE:I

    if-eqz v0, :cond_2d1

    goto :goto_2d2

    :cond_2d1
    return v10

    :cond_2d2
    :goto_2d2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzw:Lcom/google/android/gms/internal/ads/zzqo;

    if-eqz v0, :cond_2e4

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzS()Z

    move-result v0

    if-nez v0, :cond_2de

    const/4 v8, 0x0

    return v8

    :cond_2de
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->zzK(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzw:Lcom/google/android/gms/internal/ads/zzqo;

    :cond_2e4
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzH:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzH()J

    move-result-wide v10

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzqw;->zze:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzrg;->zzo()J

    move-result-wide v12

    sub-long/2addr v10, v12

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    invoke-static {v10, v11, v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzr(JI)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzF:Z

    if-nez v0, :cond_31c

    sub-long v10, v8, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v0, v10, v12

    if-lez v0, :cond_31c

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-eqz v0, :cond_319

    new-instance v10, Lcom/google/android/gms/internal/ads/zzpt;

    invoke-direct {v10, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(JJ)V

    invoke-interface {v0, v10}, Lcom/google/android/gms/internal/ads/zzps;->zza(Ljava/lang/Exception;)V

    :cond_319
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzF:Z

    :cond_31c
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzF:Z

    if-eqz v0, :cond_343

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzS()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_328

    return v10

    :cond_328
    sub-long v8, v3, v8

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzH:J

    add-long/2addr v11, v8

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzH:J

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzF:Z

    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->zzK(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzp:Lcom/google/android/gms/internal/ads/zzps;

    if-eqz v0, :cond_343

    cmp-long v10, v8, v6

    if-eqz v10, :cond_343

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrb;->zza:Lcom/google/android/gms/internal/ads/zzrc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzak()V

    :cond_343
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v0, :cond_354

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzA:J

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v8, v0

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzA:J

    goto :goto_35f

    :cond_354
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzB:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzE:I

    int-to-long v8, v0

    int-to-long v10, v5

    mul-long v8, v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzB:J

    :goto_35f
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzK:I

    :cond_363
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->zzN(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_376

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzJ:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzK:I

    const/4 v3, 0x1

    return v3

    :cond_376
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzpz;->zzj(J)Z

    move-result v0

    if-eqz v0, :cond_38f

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    return v3

    :cond_38f
    return v2

    :catch_390
    move-exception v0

    :try_start_391
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v11, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a8
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_3a8} :catch_3a8

    :catch_3a8
    :cond_3a8
    :try_start_3a8
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzL()V

    throw v11
    :try_end_3ac
    .catch Lcom/google/android/gms/internal/ads/zzpr; {:try_start_3a8 .. :try_end_3ac} :catch_3ac

    :catch_3ac
    move-exception v0

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpr;->zzb:Z

    if-nez v2, :cond_3b8

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->zzl:Lcom/google/android/gms/internal/ads/zzqp;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzqp;->zzb(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    :cond_3b8
    throw v0

    nop

    :pswitch_data_3ba
    .packed-switch 0x5
        :pswitch_2c7
        :pswitch_2c7
        :pswitch_23d
        :pswitch_23d
        :pswitch_226
        :pswitch_223
        :pswitch_220
        :pswitch_220
        :pswitch_195
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_223
        :pswitch_1b2
        :pswitch_2c7
        :pswitch_195
        :pswitch_1ac
    .end packed-switch
.end method

.method public final zzx()Z
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzi:Lcom/google/android/gms/internal/ads/zzpz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzI()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzpz;->zzh(J)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    return v0

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public final zzy()Z
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzT()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->zzO:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzx()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    return v1

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public final zzz(Lcom/google/android/gms/internal/ads/zzam;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zza(Lcom/google/android/gms/internal/ads/zzam;)I

    move-result p1

    if-eqz p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method
