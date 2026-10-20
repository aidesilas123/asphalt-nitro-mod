###### Class com.google.android.gms.internal.ads.zzzl (com.google.android.gms.internal.ads.zzzl)
.class final Lcom/google/android/gms/internal/ads/zzzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaay;
.implements Lcom/google/android/gms/internal/ads/zzdr;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaaw;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfb;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfp;

.field private final zzg:Landroid/os/Handler;

.field private final zzh:I

.field private final zzi:Ljava/util/ArrayList;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzae;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Lcom/google/android/gms/internal/ads/zzaav;

.field private zzl:Ljava/util/concurrent/Executor;

.field private zzm:Lcom/google/android/gms/internal/ads/zzaaa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzn:Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzo:Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzp:Z

.field private final zzq:Lcom/google/android/gms/internal/ads/zzdu;

.field private zzr:Lcom/google/android/gms/internal/ads/zzdu;

.field private zzs:Z

.field private zzt:J

.field private zzu:Z

.field private zzv:J

.field private zzw:F

.field private zzx:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcs;Lcom/google/android/gms/internal/ads/zzaaw;Lcom/google/android/gms/internal/ads/zzam;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdo;
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v10, Lcom/google/android/gms/internal/ads/zzzl;->zza:Landroid/content/Context;

    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzaaw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfb;

    const/16 v2, 0x10

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzfb;-><init>(I)V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzd:Lcom/google/android/gms/internal/ads/zzfb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    const/16 v2, 0xa

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfp;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzfp;-><init>(I)V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzH(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_2e

    const/4 v2, 0x5

    :cond_2e
    iput v2, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzh:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzq:Lcom/google/android/gms/internal/ads/zzdu;

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzr:Lcom/google/android/gms/internal/ads/zzdu;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzw:F

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzfs;->zzw(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzg:Landroid/os/Handler;

    iget-object v2, v11, Lcom/google/android/gms/internal/ads/zzam;->zzy:Lcom/google/android/gms/internal/ads/zzs;

    const/4 v3, 0x6

    const/4 v4, 0x7

    if-eqz v2, :cond_4d

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzs;->zzf:I

    if-eq v5, v4, :cond_4f

    if-eq v5, v3, :cond_4f

    :cond_4d
    sget-object v2, Lcom/google/android/gms/internal/ads/zzs;->zza:Lcom/google/android/gms/internal/ads/zzs;

    :cond_4f
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzs;->zzf:I

    if-ne v5, v4, :cond_5f

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzs;->zzc()Lcom/google/android/gms/internal/ads/zzr;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzr;->zzd(I)Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzr;->zzg()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v3

    goto :goto_60

    :cond_5f
    move-object v3, v2

    :goto_60
    sget-object v4, Lcom/google/android/gms/internal/ads/zzv;->zzb:Lcom/google/android/gms/internal/ads/zzv;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzzi;

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzzi;-><init>(Landroid/os/Handler;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v7

    const-wide/16 v8, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzcs;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzs;Lcom/google/android/gms/internal/ads/zzv;Lcom/google/android/gms/internal/ads/zzdr;Ljava/util/concurrent/Executor;Ljava/util/List;J)Lcom/google/android/gms/internal/ads/zzct;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzds;->zza()I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzds;->zzb()Lcom/google/android/gms/internal/ads/zzdq;

    move-result-object v1

    iput-object v1, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    iget-object v1, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzo:Landroid/util/Pair;

    if-eqz v1, :cond_92

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfk;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfk;->zzb()I

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfk;->zza()I

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzds;->zzc()V

    :cond_92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzi:Ljava/util/ArrayList;

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_a8

    iget v0, v11, Lcom/google/android/gms/internal/ads/zzam;->zzu:I

    if-eqz v0, :cond_a8

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzk;->zza(F)Lcom/google/android/gms/internal/ads/zzae;

    move-result-object v12

    :cond_a8
    iput-object v12, v10, Lcom/google/android/gms/internal/ads/zzzl;->zzj:Lcom/google/android/gms/internal/ads/zzae;

    return-void
.end method

.method private final zzr()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzj:Lcom/google/android/gms/internal/ads/zzae;

    if-eqz v1, :cond_11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    new-instance v4, Lcom/google/android/gms/internal/ads/zzan;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzan;-><init>(II)V

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzam;->zzv:F

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzan;->zza(F)Lcom/google/android/gms/internal/ads/zzan;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzan;->zzb()Lcom/google/android/gms/internal/ads/zzap;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdq;->zzf()V

    return-void
.end method

.method private final zzs(JZ)V
    .registers 7

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzdq;->zzg()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzd:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfb;->zzb()J

    const/4 p3, 0x1

    const-wide/16 v0, -0x2

    cmp-long v2, p1, v0

    if-nez v2, :cond_1a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzaaw;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzzw;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzzw;->zzaP(II)V

    return-void

    :cond_1a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaaw;->zzaK()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzk:Lcom/google/android/gms/internal/ads/zzaav;

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzl:Ljava/util/concurrent/Executor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzzj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzzj;-><init>(Lcom/google/android/gms/internal/ads/zzzl;)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzzj;->zza:Lcom/google/android/gms/internal/ads/zzzl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzl;->zzf()V

    :cond_36
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    :cond_38
    return-void
.end method


# virtual methods
.method public final zza(JZ)J
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzh:I

    if-lt v0, v1, :cond_b

    goto :goto_30

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zze()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzt:J

    add-long/2addr p1, v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzu:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzfp;->zzd(JLjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzu:Z

    :cond_26
    if-eqz p3, :cond_2b

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzp:Z

    :cond_2b
    const-wide/16 v0, 0x3e8

    mul-long p1, p1, v0

    return-wide p1

    :cond_30
    :goto_30
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p1
.end method

.method public final zzb()Landroid/view/Surface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzb()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzh()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzo:Landroid/util/Pair;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    return-void
.end method

.method public final zzd()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzd:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzg:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzp:Z

    if-eqz v1, :cond_1e

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzp:Z

    :cond_1e
    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzdu;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzk:Lcom/google/android/gms/internal/ads/zzaav;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzzq;->zza:Lcom/google/android/gms/internal/ads/zzzw;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzzw;->zzaJ(Lcom/google/android/gms/internal/ads/zzzw;Lcom/google/android/gms/internal/ads/zzdu;)V

    return-void
.end method

.method final synthetic zzf()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzk:Lcom/google/android/gms/internal/ads/zzaav;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzzq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzzq;->zza:Lcom/google/android/gms/internal/ads/zzzw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzzw;->zzaI(Lcom/google/android/gms/internal/ads/zzzw;)V

    return-void
.end method

.method public final zzg(ILcom/google/android/gms/internal/ads/zzam;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzl;->zzr()V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzp:Z

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzp:Z

    :cond_c
    return-void
.end method

.method public final zzh()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdq;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzg:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfp;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzd:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfb;->zzc()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    return-void
.end method

.method public final zzi(JJ)V
    .registers 19

    move-object v0, p0

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzd:Lcom/google/android/gms/internal/ads/zzfb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfb;->zzd()Z

    move-result v2

    if-nez v2, :cond_a2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfb;->zza()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zze:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzc(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    const/4 v11, 0x0

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzv:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzv:J

    iput-boolean v11, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    :cond_2a
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzv:J

    sub-long v12, v1, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzaaw;

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzw:F

    move-wide v4, v1

    move-wide v6, p1

    move-wide/from16 v8, p3

    invoke-interface/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzaaw;->zzak(JJJF)J

    move-result-wide v3

    const-wide/16 v5, -0x3

    cmp-long v7, v3, v5

    if-nez v7, :cond_41

    goto :goto_a2

    :cond_41
    const-wide/16 v5, -0x2

    cmp-long v7, v12, v5

    if-nez v7, :cond_4b

    invoke-direct {p0, v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzzl;->zzs(JZ)V

    goto :goto_1

    :cond_4b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzb:Lcom/google/android/gms/internal/ads/zzaaw;

    invoke-interface {v5, v1, v2}, Lcom/google/android/gms/internal/ads/zzaaw;->zzaL(J)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzm:Lcom/google/android/gms/internal/ads/zzaaa;

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_63

    cmp-long v5, v3, v6

    if-nez v5, :cond_5e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-wide v3, v6

    :cond_5e
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzn:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    cmp-long v5, v3, v6

    if-nez v5, :cond_68

    goto :goto_69

    :cond_68
    move-wide v6, v3

    :goto_69
    invoke-direct {p0, v6, v7, v11}, Lcom/google/android/gms/internal/ads/zzzl;->zzs(JZ)V

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzx:Z

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzk:Lcom/google/android/gms/internal/ads/zzaav;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzf:Lcom/google/android/gms/internal/ads/zzfp;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzfp;->zzc(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdu;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdu;->zza:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzr:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzr:Lcom/google/android/gms/internal/ads/zzdu;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzl:Ljava/util/concurrent/Executor;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzzh;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/zzzh;-><init>(Lcom/google/android/gms/internal/ads/zzzl;Lcom/google/android/gms/internal/ads/zzdu;)V

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_9d
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzzl;->zzx:Z

    goto/16 :goto_1

    :cond_a2
    :goto_a2
    return-void
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzaav;Ljava/util/concurrent/Executor;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzk:Lcom/google/android/gms/internal/ads/zzaav;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzl:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    return-void

    :cond_12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzk:Lcom/google/android/gms/internal/ads/zzaav;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzl:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public final zzk(Landroid/view/Surface;Lcom/google/android/gms/internal/ads/zzfk;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzo:Landroid/util/Pair;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzo:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfk;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_1c

    :cond_1b
    return-void

    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzo:Landroid/util/Pair;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :cond_2d
    :goto_2d
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzo:Landroid/util/Pair;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzc:Lcom/google/android/gms/internal/ads/zzdq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfk;->zzb()I

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfk;->zza()I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdq;->zzh()V

    return-void
.end method

.method public final zzl(F)V
    .registers 7

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzw:F

    return-void
.end method

.method public final zzm(J)V
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzt:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzu:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzt:J

    return-void
.end method

.method public final zzn(Ljava/util/List;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzi:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzl;->zzr()V

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzaaa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzm:Lcom/google/android/gms/internal/ads/zzaaa;

    return-void
.end method

.method public final zzp()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zza:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzH(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final zzq()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzzl;->zzs:Z

    return v0
.end method
