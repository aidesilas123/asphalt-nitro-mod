###### Class com.google.android.gms.internal.ads.zzik (com.google.android.gms.internal.ads.zzik)
.class public abstract Lcom/google/android/gms/internal/ads/zzik;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlz;
.implements Lcom/google/android/gms/internal/ads/zzmb;


# instance fields
.field private final zza:Ljava/lang/Object;

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzkv;

.field private zzd:Lcom/google/android/gms/internal/ads/zzmc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzov;

.field private zzg:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/ads/zzwa;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:[Lcom/google/android/gms/internal/ads/zzam;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:J

.field private zzl:J

.field private zzm:J

.field private zzn:Z

.field private zzo:Z

.field private zzp:Lcom/google/android/gms/internal/ads/zzda;

.field private zzq:Lcom/google/android/gms/internal/ads/zzma;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zza:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzb:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzkv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzda;->zza:Lcom/google/android/gms/internal/ads/zzda;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzp:Lcom/google/android/gms/internal/ads/zzda;

    return-void
.end method

.method private final zzX(JZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzik;->zzy(JZ)V

    return-void
.end method


# virtual methods
.method protected zzA()V
    .registers 1

    return-void
.end method

.method protected zzB()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    return-void
.end method

.method protected zzC()V
    .registers 1

    return-void
.end method

.method protected zzD([Lcom/google/android/gms/internal/ads/zzam;JJLcom/google/android/gms/internal/ads/zzuk;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzE()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzz()V

    return-void
.end method

.method public final zzF([Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzwa;JJLcom/google/android/gms/internal/ads/zzuk;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_13

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    :cond_13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzj:[Lcom/google/android/gms/internal/ads/zzam;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzik;->zzk:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzik;->zzD([Lcom/google/android/gms/internal/ads/zzam;JJLcom/google/android/gms/internal/ads/zzuk;)V

    return-void
.end method

.method public final zzG()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzA()V

    return-void
.end method

.method public final zzH(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzik;->zzX(JZ)V

    return-void
.end method

.method public final zzI()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    return-void
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzma;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzq:Lcom/google/android/gms/internal/ads/zzma;

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p1
.end method

.method public synthetic zzK(FF)V
    .registers 3

    return-void
.end method

.method public final zzL(Lcom/google/android/gms/internal/ads/zzda;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzp:Lcom/google/android/gms/internal/ads/zzda;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfs;->zzF(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzp:Lcom/google/android/gms/internal/ads/zzda;

    :cond_a
    return-void
.end method

.method public final zzM()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzB()V

    return-void
.end method

.method public final zzN()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzC()V

    return-void
.end method

.method public final zzO()Z
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final zzP()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    return v0
.end method

.method protected final zzQ()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzO()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    goto :goto_12

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zze()Z

    move-result v0

    :goto_12
    return v0
.end method

.method protected final zzR()[Lcom/google/android/gms/internal/ads/zzam;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzj:[Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzb:I

    return v0
.end method

.method public final zzbd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    return v0
.end method

.method protected final zzbe(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwa;->zza(Lcom/google/android/gms/internal/ads/zzkv;Lcom/google/android/gms/internal/ads/zzib;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2d

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhv;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1d

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    if-eqz p1, :cond_1b

    return v0

    :cond_1b
    const/4 p1, -0x3

    return p1

    :cond_1d
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzk:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzib;->zze:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    goto :goto_51

    :cond_2d
    const/4 p2, -0x5

    if-ne p3, p2, :cond_51

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzam;->zzq:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_51

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object p3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzik;->zzk:J

    add-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzY(J)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    return p2

    :cond_51
    :goto_51
    return p3
.end method

.method public final zzbf()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzm:J

    return-wide v0
.end method

.method protected final zzd(J)I
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzk:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzwa;->zzb(J)I

    move-result p1

    return p1
.end method

.method public zze()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected final zzf()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzl:J

    return-wide v0
.end method

.method protected final zzh()Lcom/google/android/gms/internal/ads/zzeg;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzg:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final zzi(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzam;ZI)Lcom/google/android/gms/internal/ads/zzit;
    .registers 14
    .param p2    # Lcom/google/android/gms/internal/ads/zzam;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-eqz p2, :cond_1b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzo:Z

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzo:Z

    const/4 v1, 0x0

    :try_start_b
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzmb;->zzW(Lcom/google/android/gms/internal/ads/zzam;)I

    move-result v0
    :try_end_f
    .catch Lcom/google/android/gms/internal/ads/zzit; {:try_start_b .. :try_end_f} :catch_19
    .catchall {:try_start_b .. :try_end_f} :catchall_15

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzo:Z

    move v6, v0

    goto :goto_1c

    :catchall_15
    move-exception p1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzo:Z

    throw p1

    :catch_19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzo:Z

    :cond_1b
    const/4 v6, 0x4

    :goto_1c
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzlz;->zzS()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzik;->zze:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzit;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzam;IZI)Lcom/google/android/gms/internal/ads/zzit;

    move-result-object p1

    return-object p1
.end method

.method protected final zzj()Lcom/google/android/gms/internal/ads/zzkv;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    return-object v0
.end method

.method public zzk()Lcom/google/android/gms/internal/ads/zzlb;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzmb;
    .registers 1

    return-object p0
.end method

.method protected final zzm()Lcom/google/android/gms/internal/ads/zzmc;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzd:Lcom/google/android/gms/internal/ads/zzmc;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final zzn()Lcom/google/android/gms/internal/ads/zzov;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzf:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzwa;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    return-object v0
.end method

.method public final zzp()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zza:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzq:Lcom/google/android/gms/internal/ads/zzma;

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method public final zzq()V
    .registers 4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzc:Lcom/google/android/gms/internal/ads/zzkv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zzb:Lcom/google/android/gms/internal/ads/zzrs;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkv;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzik;->zzj:[Lcom/google/android/gms/internal/ads/zzam;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzn:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzik;->zzw()V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzmc;[Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzwa;JZZJJLcom/google/android/gms/internal/ads/zzuk;)V
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    move-object v8, p0

    move/from16 v9, p6

    iget v0, v8, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    const/4 v1, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    move-object v0, p1

    iput-object v0, v8, Lcom/google/android/gms/internal/ads/zzik;->zzd:Lcom/google/android/gms/internal/ads/zzmc;

    iput v1, v8, Lcom/google/android/gms/internal/ads/zzik;->zzh:I

    move/from16 v0, p7

    invoke-virtual {p0, v9, v0}, Lcom/google/android/gms/internal/ads/zzik;->zzx(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzik;->zzF([Lcom/google/android/gms/internal/ads/zzam;Lcom/google/android/gms/internal/ads/zzwa;JJLcom/google/android/gms/internal/ads/zzuk;)V

    move-wide/from16 v0, p8

    invoke-direct {p0, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzik;->zzX(JZ)V

    return-void
.end method

.method public synthetic zzs()V
    .registers 1

    return-void
.end method

.method public zzt(ILjava/lang/Object;)V
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    return-void
.end method

.method public final zzu(ILcom/google/android/gms/internal/ads/zzov;Lcom/google/android/gms/internal/ads/zzeg;)V
    .registers 4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzik;->zze:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzik;->zzf:Lcom/google/android/gms/internal/ads/zzov;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzik;->zzg:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method

.method public final zzv()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzik;->zzi:Lcom/google/android/gms/internal/ads/zzwa;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwa;->zzd()V

    return-void
.end method

.method protected zzw()V
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method protected zzx(ZZ)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    return-void
.end method

.method protected zzy(JZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzit;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method protected zzz()V
    .registers 1

    return-void
.end method
