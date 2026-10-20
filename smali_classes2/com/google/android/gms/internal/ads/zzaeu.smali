###### Class com.google.android.gms.internal.ads.zzaeu (com.google.android.gms.internal.ads.zzaeu)
.class final Lcom/google/android/gms/internal/ads/zzaeu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzb:Lcom/google/android/gms/internal/ads/zzach;

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:J

.field private zzg:Lcom/google/android/gms/internal/ads/zzago;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzh:Lcom/google/android/gms/internal/ads/zzacf;

.field private zzi:Lcom/google/android/gms/internal/ads/zzaex;

.field private zzj:Lcom/google/android/gms/internal/ads/zzail;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzacf;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result p1

    return p1
.end method

.method private final zzf()V
    .registers 7

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzca;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg([Lcom/google/android/gms/internal/ads/zzca;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzach;->zzD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadd;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzadd;-><init>(JJ)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzach;->zzO(Lcom/google/android/gms/internal/ads/zzade;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    return-void
.end method

.method private final varargs zzg([Lcom/google/android/gms/internal/ads/zzca;)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x400

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzB(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcb;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v2, v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(J[Lcom/google/android/gms/internal/ads/zzca;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzO(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    return-void
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    const/4 v4, 0x4

    const-wide/16 v5, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v3, :cond_18d

    if-eq v3, v8, :cond_16f

    const/4 v10, -0x1

    if-eq v3, v7, :cond_ac

    const/4 v5, 0x5

    if-eq v3, v4, :cond_4c

    if-eq v3, v5, :cond_24

    const/4 v1, 0x6

    if-ne v3, v1, :cond_1e

    return v10

    :cond_1e
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_24
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:Lcom/google/android/gms/internal/ads/zzaex;

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:Lcom/google/android/gms/internal/ads/zzacf;

    if-eq v1, v3, :cond_37

    :cond_2c
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzh:Lcom/google/android/gms/internal/ads/zzacf;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzaex;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(Lcom/google/android/gms/internal/ads/zzacf;J)V

    iput-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:Lcom/google/android/gms/internal/ads/zzaex;

    :cond_37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:Lcom/google/android/gms/internal/ads/zzaex;

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzail;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I

    move-result v1

    if-ne v1, v8, :cond_4b

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    :cond_4b
    return v1

    :cond_4c
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    cmp-long v10, v3, v6

    if-nez v10, :cond_a9

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    invoke-interface {v1, v2, v9, v8, v8}, Lcom/google/android/gms/internal/ads/zzacf;->zzm([BIIZ)Z

    move-result v2

    if-nez v2, :cond_66

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzf()V

    goto :goto_a8

    :cond_66
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    if-nez v2, :cond_74

    new-instance v2, Lcom/google/android/gms/internal/ads/zzail;

    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzail;-><init>(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    :cond_74
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaex;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzaex;-><init>(Lcom/google/android/gms/internal/ads/zzacf;J)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzi:Lcom/google/android/gms/internal/ads/zzaex;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzail;->zze(Lcom/google/android/gms/internal/ads/zzacf;)Z

    move-result v1

    if-eqz v1, :cond_a5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaez;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v2, v3, v4, v6}, Lcom/google/android/gms/internal/ads/zzaez;-><init>(JLcom/google/android/gms/internal/ads/zzach;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzail;->zzc(Lcom/google/android/gms/internal/ads/zzach;)V

    new-array v1, v8, [Lcom/google/android/gms/internal/ads/zzca;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:Lcom/google/android/gms/internal/ads/zzago;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzaeu;->zzg([Lcom/google/android/gms/internal/ads/zzca;)V

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    goto :goto_a8

    :cond_a5
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzf()V

    :goto_a8
    return v9

    :cond_a9
    iput-wide v6, v2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    return v8

    :cond_ac
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:I

    const v3, 0xffe1

    if-ne v2, v3, :cond_164

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v8, v3, v9, v4, v9}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:Lcom/google/android/gms/internal/ads/zzago;

    if-nez v3, :cond_162

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzw(C)Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://ns.adobe.com/xap/1.0/"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_162

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzw(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_162

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v3

    cmp-long v8, v3, v5

    if-nez v8, :cond_e7

    :cond_e4
    :goto_e4
    const/4 v1, 0x0

    goto/16 :goto_15a

    :cond_e7
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzafa;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaew;

    move-result-object v2

    if-nez v2, :cond_ee

    goto :goto_e4

    :cond_ee
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzaew;->zzb:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v8, v7, :cond_f7

    goto :goto_e4

    :cond_f7
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/zzaew;->zzb:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v7, v10

    move-wide v11, v5

    move-wide v13, v11

    move-wide/from16 v17, v13

    move-wide/from16 v19, v17

    const/4 v8, 0x0

    :goto_105
    if-ltz v7, :cond_13f

    iget-object v10, v2, Lcom/google/android/gms/internal/ads/zzaew;->zzb:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzaev;

    iget-object v15, v10, Lcom/google/android/gms/internal/ads/zzaev;->zza:Ljava/lang/String;

    const-string v1, "video/mp4"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v1, v8

    if-nez v7, :cond_120

    iget-wide v9, v10, Lcom/google/android/gms/internal/ads/zzaev;->zzd:J

    sub-long/2addr v3, v9

    const-wide/16 v8, 0x0

    goto :goto_124

    :cond_120
    iget-wide v8, v10, Lcom/google/android/gms/internal/ads/zzaev;->zzc:J

    sub-long v8, v3, v8

    :goto_124
    move-wide/from16 v21, v3

    move-wide v3, v8

    move-wide/from16 v8, v21

    if-eqz v1, :cond_134

    cmp-long v10, v3, v8

    if-eqz v10, :cond_134

    sub-long v19, v8, v3

    move-wide/from16 v17, v3

    const/4 v1, 0x0

    :cond_134
    if-nez v7, :cond_137

    move-wide v13, v8

    :cond_137
    if-nez v7, :cond_13a

    move-wide v11, v3

    :cond_13a
    add-int/lit8 v7, v7, -0x1

    move v8, v1

    const/4 v9, 0x0

    goto :goto_105

    :cond_13f
    cmp-long v1, v17, v5

    if-eqz v1, :cond_e4

    cmp-long v1, v19, v5

    if-eqz v1, :cond_e4

    cmp-long v1, v11, v5

    if-eqz v1, :cond_e4

    cmp-long v1, v13, v5

    if-nez v1, :cond_150

    goto :goto_e4

    :cond_150
    iget-wide v1, v2, Lcom/google/android/gms/internal/ads/zzaew;->zza:J

    new-instance v3, Lcom/google/android/gms/internal/ads/zzago;

    move-object v10, v3

    move-wide v15, v1

    invoke-direct/range {v10 .. v20}, Lcom/google/android/gms/internal/ads/zzago;-><init>(JJJJJ)V

    move-object v1, v3

    :goto_15a
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzg:Lcom/google/android/gms/internal/ads/zzago;

    if-eqz v1, :cond_162

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzago;->zzd:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    :cond_162
    const/4 v3, 0x0

    goto :goto_16c

    :cond_164
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    :goto_16c
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    return v3

    :cond_16f
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v2, v3, v7, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zze:I

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    return v3

    :cond_18d
    const/4 v3, 0x0

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v2, v3, v7, v3}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:I

    const v2, 0xffda

    if-ne v1, v2, :cond_1b8

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzf:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1b4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    goto :goto_1c9

    :cond_1b4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaeu;->zzf()V

    goto :goto_1c9

    :cond_1b8
    const v2, 0xffd0

    if-lt v1, v2, :cond_1c2

    const v2, 0xffd9

    if-le v1, v2, :cond_1c9

    :cond_1c2
    const v2, 0xff01

    if-eq v1, v2, :cond_1c9

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    :cond_1c9
    :goto_1c9
    const/4 v1, 0x0

    return v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzach;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzb:Lcom/google/android/gms/internal/ads/zzach;

    return-void
.end method

.method public final zzd(JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_d

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    return-void

    :cond_d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzc:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzj:Lcom/google/android/gms/internal/ads/zzail;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzail;->zzd(JJ)V

    :cond_1a
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzacf;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xffd8

    if-eq v0, v2, :cond_b

    return v1

    :cond_b
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzacf;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:I

    const v2, 0xffe0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v2, v0, v1, v3, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzl(IZ)Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaeu;->zza(Lcom/google/android/gms/internal/ads/zzacf;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zzd:I

    :cond_39
    const v2, 0xffe1

    if-ne v0, v2, :cond_69

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzl(IZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v2

    const-wide/32 v4, 0x45786966    # 5.758429993E-315

    cmp-long p1, v2, v4

    if-nez p1, :cond_69

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaeu;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result p1

    if-nez p1, :cond_69

    const/4 p1, 0x1

    return p1

    :cond_69
    return v1
.end method
