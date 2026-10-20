###### Class com.google.android.gms.internal.ads.zzaiv (com.google.android.gms.internal.ads.zzaiv)
.class final Lcom/google/android/gms/internal/ads/zzaiv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzajb;

.field private final zzb:J

.field private final zzc:J

.field private final zzd:Lcom/google/android/gms/internal/ads/zzajh;

.field private zze:I

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J

.field private zzl:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajh;JJJJZ)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-ltz v3, :cond_10

    cmp-long v1, p4, p2

    if-lez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzajh;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:J

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:J

    sub-long/2addr p4, p2

    cmp-long p1, p6, p4

    if-eqz p1, :cond_25

    if-eqz p10, :cond_22

    goto :goto_25

    :cond_22
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    goto :goto_2a

    :cond_25
    :goto_25
    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:J

    const/4 p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    :goto_2a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzajb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzajb;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaiv;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:J

    return-wide v0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzaiv;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:J

    return-wide v0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzaiv;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:J

    return-wide v0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzaiv;)Lcom/google/android/gms/internal/ads/zzajh;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzd:Lcom/google/android/gms/internal/ads/zzajh;

    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzacf;)J
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    if-eqz v2, :cond_e8

    if-eq v2, v3, :cond_fb

    const/4 v3, 0x2

    const/4 v10, 0x3

    if-eq v2, v3, :cond_15

    if-eq v2, v10, :cond_ab

    return-wide v6

    :cond_15
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:J

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:J

    cmp-long v13, v2, v11

    if-nez v13, :cond_20

    :goto_1d
    move-wide v11, v6

    goto/16 :goto_a4

    :cond_20
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v2

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-virtual {v13, v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzajb;->zzc(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    move-result v11

    if-nez v11, :cond_3c

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:J

    cmp-long v13, v11, v2

    if-eqz v13, :cond_34

    goto/16 :goto_a4

    :cond_34
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No ogg page can be found."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-virtual {v11, v1, v5}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Z)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:J

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzajb;->zzb:J

    sub-long/2addr v11, v14

    iget v8, v13, Lcom/google/android/gms/internal/ads/zzajb;->zzd:I

    iget v9, v13, Lcom/google/android/gms/internal/ads/zzajb;->zze:I

    add-int/2addr v8, v9

    const-wide/16 v16, 0x0

    cmp-long v9, v11, v16

    if-ltz v9, :cond_5e

    const-wide/32 v16, 0x11940

    cmp-long v13, v11, v16

    if-gez v13, :cond_5e

    goto :goto_1d

    :cond_5e
    if-gez v9, :cond_65

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:J

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:J

    goto :goto_70

    :cond_65
    int-to-long v2, v8

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v16

    add-long v2, v16, v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:J

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:J

    :goto_70
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:J

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:J

    sub-long v16, v2, v13

    const-wide/32 v18, 0x186a0

    cmp-long v15, v16, v18

    if-gez v15, :cond_81

    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:J

    move-wide v11, v13

    goto :goto_a4

    :cond_81
    int-to-long v4, v8

    if-gtz v9, :cond_87

    const-wide/16 v8, 0x2

    goto :goto_89

    :cond_87
    const-wide/16 v8, 0x1

    :goto_89
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v19

    mul-long v4, v4, v8

    sub-long v19, v19, v4

    mul-long v11, v11, v16

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:J

    sub-long/2addr v4, v8

    div-long/2addr v11, v4

    add-long v4, v19, v11

    add-long/2addr v2, v6

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    :goto_a4
    cmp-long v2, v11, v6

    if-eqz v2, :cond_a9

    return-wide v11

    :cond_a9
    iput v10, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    :cond_ab
    :goto_ab
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajb;->zzc(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzb:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:J

    cmp-long v5, v3, v8

    if-lez v5, :cond_cd

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:J

    const-wide/16 v4, 0x2

    add-long/2addr v1, v4

    neg-long v1, v1

    return-wide v1

    :cond_cd
    const-wide/16 v4, 0x2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zze:I

    add-int/2addr v3, v2

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzb:J

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:J

    goto :goto_ab

    :cond_e8
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:J

    const-wide/32 v10, -0xff1b

    add-long/2addr v8, v10

    cmp-long v2, v8, v4

    if-lez v2, :cond_fb

    return-wide v8

    :cond_fb
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzajb;->zza()V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajb;->zzc(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    move-result v2

    if-eqz v2, :cond_15a

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Z)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zze:I

    add-int/2addr v5, v2

    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v2, v5, v4}, Lcom/google/android/gms/internal/ads/zzabu;->zzo(IZ)Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzb:J

    :goto_11f
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzajb;->zza:I

    const/4 v9, 0x4

    and-int/2addr v8, v9

    if-eq v8, v9, :cond_152

    invoke-virtual {v2, v1, v6, v7}, Lcom/google/android/gms/internal/ads/zzajb;->zzc(Lcom/google/android/gms/internal/ads/zzacf;J)Z

    move-result v2

    if-eqz v2, :cond_152

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v8

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:J

    cmp-long v2, v8, v10

    if-gez v2, :cond_152

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzajb;->zzb(Lcom/google/android/gms/internal/ads/zzacf;Z)Z

    move-result v2

    if-eqz v2, :cond_152

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzd:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzajb;->zze:I

    add-int/2addr v8, v2

    invoke-static {v1, v8}, Lcom/google/android/gms/internal/ads/zzaci;->zze(Lcom/google/android/gms/internal/ads/zzacf;I)Z

    move-result v2

    if-nez v2, :cond_14d

    goto :goto_152

    :cond_14d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zza:Lcom/google/android/gms/internal/ads/zzajb;

    iget-wide v4, v2, Lcom/google/android/gms/internal/ads/zzajb;->zzb:J

    goto :goto_11f

    :cond_152
    :goto_152
    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:J

    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzaiv;->zzg:J

    return-wide v1

    :cond_15a
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final bridge synthetic zze()Lcom/google/android/gms/internal/ads/zzade;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiu;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/zzaiu;-><init>(Lcom/google/android/gms/internal/ads/zzaiv;Lcom/google/android/gms/internal/ads/zzait;)V

    return-object v0

    :cond_f
    return-object v2
.end method

.method public final zzg(J)V
    .registers 7

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:J

    const-wide/16 v2, -0x1

    add-long/2addr v0, v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzh:J

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zze:I

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzi:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzk:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiv;->zzl:J

    return-void
.end method
