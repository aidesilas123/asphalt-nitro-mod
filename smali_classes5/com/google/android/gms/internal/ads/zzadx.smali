###### Class com.google.android.gms.internal.ads.zzadx (com.google.android.gms.internal.ads.zzadx)
.class public final Lcom/google/android/gms/internal/ads/zzadx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzace;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzadw;

.field private zzc:I

.field private zzd:Lcom/google/android/gms/internal/ads/zzach;

.field private zze:Lcom/google/android/gms/internal/ads/zzady;

.field private zzf:J

.field private zzg:[Lcom/google/android/gms/internal/ads/zzaea;

.field private zzh:J

.field private zzi:Lcom/google/android/gms/internal/ads/zzaea;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:I

.field private zzk:J

.field private zzl:J

.field private zzm:I

.field private zzn:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzadw;-><init>(Lcom/google/android/gms/internal/ads/zzadv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzb:Lcom/google/android/gms/internal/ads/zzadw;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzacc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzd:Lcom/google/android/gms/internal/ads/zzach;

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzaea;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzk:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzl:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzj:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzf:J

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzadx;)[Lcom/google/android/gms/internal/ads/zzaea;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    return-object p0
.end method

.method private final zzf(I)Lcom/google/android/gms/internal/ads/zzaea;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzg(I)Z

    move-result v4

    if-eqz v4, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final zzb(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;)I
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    cmp-long v8, v2, v4

    if-eqz v8, :cond_2e

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v8

    cmp-long v10, v2, v8

    if-ltz v10, :cond_28

    const-wide/32 v10, 0x40000

    add-long/2addr v10, v8

    cmp-long v12, v2, v10

    if-lez v12, :cond_1f

    goto :goto_28

    :cond_1f
    sub-long/2addr v2, v8

    move-object v8, v1

    check-cast v8, Lcom/google/android/gms/internal/ads/zzabu;

    long-to-int v3, v2

    invoke-virtual {v8, v3, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    goto :goto_2e

    :cond_28
    :goto_28
    move-object/from16 v8, p2

    iput-wide v2, v8, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v2, 0x0

    :goto_2f
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    if-eqz v2, :cond_34

    return v6

    :cond_34
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    const/16 v3, 0xc

    const/4 v8, 0x0

    if-eqz v2, :cond_3ba

    const v9, 0x6c726468

    const v10, 0x5453494c

    const/4 v11, 0x2

    if-eq v2, v6, :cond_35b

    const/4 v12, 0x3

    if-eq v2, v11, :cond_22c

    const/4 v9, 0x6

    const v11, 0x69766f6d

    const/4 v13, 0x4

    const-wide/16 v16, 0x8

    const/16 v14, 0x10

    if-eq v2, v12, :cond_197

    const/4 v4, 0x5

    const/16 v5, 0x8

    if-eq v2, v13, :cond_169

    if-eq v2, v4, :cond_e7

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v12

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzl:J

    cmp-long v2, v12, v14

    if-ltz v2, :cond_66

    const/4 v7, -0x1

    goto/16 :goto_e6

    :cond_66
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzi:Lcom/google/android/gms/internal/ads/zzaea;

    if-eqz v2, :cond_75

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzh(Lcom/google/android/gms/internal/ads/zzacf;)Z

    move-result v1

    if-nez v1, :cond_72

    goto/16 :goto_e6

    :cond_72
    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzi:Lcom/google/android/gms/internal/ads/zzaea;

    return v7

    :cond_75
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v8

    const-wide/16 v12, 0x1

    and-long/2addr v8, v12

    cmp-long v2, v8, v12

    if-nez v2, :cond_86

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    :cond_86
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v4, v2, v7, v3, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v2

    if-ne v2, v10, :cond_b6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v2

    if-ne v2, v11, :cond_ad

    goto :goto_af

    :cond_ad
    const/16 v3, 0x8

    :goto_af
    invoke-virtual {v4, v3, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    goto :goto_e6

    :cond_b6
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v3

    const v6, 0x4b4e554a    # 1.352225E7f

    if-ne v2, v6, :cond_cc

    int-to-long v2, v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v4

    add-long/2addr v4, v2

    add-long v4, v4, v16

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    goto :goto_e6

    :cond_cc
    invoke-virtual {v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(I)Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v2

    if-nez v2, :cond_e1

    int-to-long v2, v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    goto :goto_e6

    :cond_e1
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaea;->zze(I)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzi:Lcom/google/android/gms/internal/ads/zzaea;

    :goto_e6
    return v7

    :cond_e7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzm:I

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzm:I

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v3, v7, v4, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v1

    if-ge v1, v14, :cond_102

    const-wide/16 v18, 0x0

    goto :goto_11e

    :cond_102
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v3

    int-to-long v3, v3

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzk:J

    cmp-long v5, v3, v10

    if-lez v5, :cond_117

    const-wide/16 v18, 0x0

    goto :goto_11b

    :cond_117
    add-long v10, v10, v16

    move-wide/from16 v18, v10

    :goto_11b
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    :cond_11e
    :goto_11e
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v1

    if-lt v1, v14, :cond_146

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v4

    int-to-long v4, v4

    add-long v4, v4, v18

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(I)Lcom/google/android/gms/internal/ads/zzaea;

    move-result-object v1

    if-eqz v1, :cond_11e

    and-int/2addr v3, v14

    if-ne v3, v14, :cond_142

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzaea;->zzb(J)V

    :cond_142
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzd()V

    goto :goto_11e

    :cond_146
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14a
    if-ge v3, v2, :cond_154

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzaea;->zzc()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_14a

    :cond_154
    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzn:Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzd:Lcom/google/android/gms/internal/ads/zzach;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzadu;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzf:J

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(Lcom/google/android/gms/internal/ads/zzadx;J)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzach;->zzO(Lcom/google/android/gms/internal/ads/zzade;)V

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzk:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    return v7

    :cond_169
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v3, v2, v7, v5, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v2

    const v5, 0x31786469

    if-ne v3, v5, :cond_18e

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzm:I

    goto :goto_196

    :cond_18e
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    int-to-long v1, v2

    add-long/2addr v3, v1

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    :goto_196
    return v7

    :cond_197
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzk:J

    cmp-long v8, v13, v4

    if-eqz v8, :cond_1a9

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v4

    cmp-long v8, v4, v13

    if-nez v8, :cond_1a6

    goto :goto_1a9

    :cond_1a6
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    return v7

    :cond_1a9
    :goto_1a9
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    move-object v5, v1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v5, v4, v7, v3, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzb:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzadw;->zza(Lcom/google/android/gms/internal/ads/zzfj;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzb:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v4

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzadw;->zza:I

    const v12, 0x46464952

    if-ne v8, v12, :cond_1d9

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v3, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    return v7

    :cond_1d9
    if-ne v8, v10, :cond_21f

    if-eq v4, v11, :cond_1de

    goto :goto_21f

    :cond_1de
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzk:J

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzadw;->zzb:I

    int-to-long v10, v5

    add-long/2addr v3, v10

    add-long v3, v3, v16

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzl:J

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzn:Z

    if-nez v5, :cond_213

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzadx;->zze:Lcom/google/android/gms/internal/ads/zzady;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzady;->zzb:I

    const/16 v2, 0x10

    and-int/2addr v5, v2

    if-eq v5, v2, :cond_20d

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzd:Lcom/google/android/gms/internal/ads/zzach;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadd;

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzf:J

    const-wide/16 v10, 0x0

    invoke-direct {v3, v4, v5, v10, v11}, Lcom/google/android/gms/internal/ads/zzadd;-><init>(JJ)V

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzach;->zzO(Lcom/google/android/gms/internal/ads/zzade;)V

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzn:Z

    goto :goto_213

    :cond_20d
    const/4 v2, 0x4

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    return v7

    :cond_213
    :goto_213
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v1

    const-wide/16 v3, 0xc

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    return v7

    :cond_21f
    :goto_21f
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v1

    iget v3, v5, Lcom/google/android/gms/internal/ads/zzadw;->zzb:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-long v1, v1, v16

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    return v7

    :cond_22c
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzj:I

    add-int/lit8 v2, v2, -0x4

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v1, v4, v7, v2, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/zzaeb;->zzc(ILcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()I

    move-result v2

    if-ne v2, v9, :cond_340

    const-class v2, Lcom/google/android/gms/internal/ads/zzady;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzady;

    if-eqz v2, :cond_338

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zze:Lcom/google/android/gms/internal/ads/zzady;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzady;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzady;->zzc:I

    int-to-long v4, v2

    int-to-long v2, v3

    mul-long v4, v4, v2

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzf:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_26b
    if-ge v4, v3, :cond_324

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzadt;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzadt;->zza()I

    move-result v9

    const v10, 0x6c727473

    if-ne v9, v10, :cond_316

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaeb;

    add-int/lit8 v9, v14, 0x1

    const-class v10, Lcom/google/android/gms/internal/ads/zzadz;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzadz;

    const-class v13, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzaec;

    const-string v15, "AviExtractor"

    if-nez v10, :cond_29f

    const-string v5, "Missing Stream Header"

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_299
    move/from16 p1, v3

    move/from16 v27, v4

    goto/16 :goto_30f

    :cond_29f
    if-nez v13, :cond_2a7

    const-string v5, "Missing Stream Format"

    invoke-static {v15, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_299

    :cond_2a7
    iget v15, v10, Lcom/google/android/gms/internal/ads/zzadz;->zzd:I

    iget v8, v10, Lcom/google/android/gms/internal/ads/zzadz;->zzb:I

    iget v12, v10, Lcom/google/android/gms/internal/ads/zzadz;->zzc:I

    int-to-long v7, v8

    int-to-long v11, v12

    sget-object v26, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move/from16 p1, v3

    move/from16 v27, v4

    int-to-long v3, v15

    const-wide/32 v15, 0xf4240

    mul-long v22, v7, v15

    move-wide/from16 v20, v3

    move-wide/from16 v24, v11

    invoke-static/range {v20 .. v26}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    iget-object v7, v13, Lcom/google/android/gms/internal/ads/zzaec;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzam;->zzb()Lcom/google/android/gms/internal/ads/zzak;

    move-result-object v8

    invoke-virtual {v8, v14}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzadz;->zze:I

    if-eqz v11, :cond_2d3

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzak;->zzN(I)Lcom/google/android/gms/internal/ads/zzak;

    :cond_2d3
    const-class v11, Lcom/google/android/gms/internal/ads/zzaed;

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzaeb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzadt;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaed;

    if-eqz v5, :cond_2e2

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaed;->zza:Ljava/lang/String;

    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    :cond_2e2
    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzce;->zzb(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_2f1

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2ef

    const/4 v15, 0x2

    goto :goto_2f2

    :cond_2ef
    const/4 v8, 0x0

    goto :goto_30f

    :cond_2f1
    move v15, v5

    :goto_2f2
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzd:Lcom/google/android/gms/internal/ads/zzach;

    invoke-interface {v5, v14, v15}, Lcom/google/android/gms/internal/ads/zzach;->zzw(II)Lcom/google/android/gms/internal/ads/zzadk;

    move-result-object v5

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v7

    invoke-interface {v5, v7}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    iget v7, v10, Lcom/google/android/gms/internal/ads/zzadz;->zzd:I

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaea;

    move-object v13, v8

    move-wide/from16 v16, v3

    move/from16 v18, v7

    move-object/from16 v19, v5

    invoke-direct/range {v13 .. v19}, Lcom/google/android/gms/internal/ads/zzaea;-><init>(IIJILcom/google/android/gms/internal/ads/zzadk;)V

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzf:J

    :goto_30f
    if-eqz v8, :cond_314

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_314
    move v14, v9

    goto :goto_31a

    :cond_316
    move/from16 p1, v3

    move/from16 v27, v4

    :goto_31a
    add-int/lit8 v4, v27, 0x1

    move/from16 v3, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x3

    goto/16 :goto_26b

    :cond_324
    const/4 v3, 0x0

    new-array v1, v3, [Lcom/google/android/gms/internal/ads/zzaea;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/android/gms/internal/ads/zzaea;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzd:Lcom/google/android/gms/internal/ads/zzach;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzach;->zzD()V

    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    return v3

    :cond_338
    const-string v1, "AviHeader not found"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_340
    move-object v2, v8

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzaeb;->zza()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected header list type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_35b
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzn([BIIZ)Z

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzb:Lcom/google/android/gms/internal/ads/zzadw;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzadw;->zza(Lcom/google/android/gms/internal/ads/zzfj;)V

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadw;->zza:I

    if-ne v3, v10, :cond_3a3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v2

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzb:Lcom/google/android/gms/internal/ads/zzadw;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzadw;->zzc:I

    if-ne v2, v9, :cond_38c

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzadw;->zzb:I

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzj:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    const/4 v1, 0x0

    return v1

    :cond_38c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdrl expected, found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_3a3
    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIST expected, found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_3ba
    move-object v2, v8

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzadx;->zze(Lcom/google/android/gms/internal/ads/zzacf;)Z

    move-result v4

    if-eqz v4, :cond_3ca

    check-cast v1, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    return v2

    :cond_3ca
    const-string v1, "AVI Header List not found"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzach;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzd:Lcom/google/android/gms/internal/ads/zzach;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    return-void
.end method

.method public final zzd(JJ)V
    .registers 8

    const-wide/16 p3, -0x1

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzh:J

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzi:Lcom/google/android/gms/internal/ads/zzaea;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    array-length p4, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, p4, :cond_16

    aget-object v2, p3, v1

    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzaea;->zzf(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_16
    const-wide/16 p3, 0x0

    cmp-long v1, p1, p3

    if-nez v1, :cond_26

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzg:[Lcom/google/android/gms/internal/ads/zzaea;

    array-length p1, p1

    if-nez p1, :cond_22

    goto :goto_23

    :cond_22
    const/4 v0, 0x3

    :goto_23
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    return-void

    :cond_26
    const/4 p1, 0x6

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zzc:I

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result p1

    const v0, 0x46464952

    if-eq p1, v0, :cond_1f

    return v1

    :cond_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzadx;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result p1

    const v0, 0x20495641

    if-ne p1, v0, :cond_32

    const/4 p1, 0x1

    return p1

    :cond_32
    return v1
.end method
