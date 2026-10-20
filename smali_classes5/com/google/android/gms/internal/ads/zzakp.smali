###### Class com.google.android.gms.internal.ads.zzakp (com.google.android.gms.internal.ads.zzakp)
.class public final Lcom/google/android/gms/internal/ads/zzakp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzajy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfi;

.field private zzc:I

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzfq;

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:I

.field private zzj:I

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzajy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfi;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzc:I

    return-void
.end method

.method private final zzd(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzc:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzd:I

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z
    .registers 7
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzd:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_10

    return v1

    :cond_10
    if-nez p2, :cond_16

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    goto :goto_1b

    :cond_16
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzd:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    :goto_1b
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzd:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzd:I

    if-ne p1, p3, :cond_23

    return v1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzakp;->zze:Lcom/google/android/gms/internal/ads/zzfq;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, p2, 0x1

    const-string v3, "PesReader"

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4f

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzc:I

    if-eqz v2, :cond_4c

    if-eq v2, v7, :cond_4c

    if-eq v2, v5, :cond_47

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    if-eq v2, v4, :cond_38

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected start indicator: expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " more bytes"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v2

    if-nez v2, :cond_40

    const/4 v2, 0x1

    goto :goto_41

    :cond_40
    const/4 v2, 0x0

    :goto_41
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Z)V

    goto :goto_4c

    :cond_47
    const-string v2, "Unexpected start indicator reading extended header"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4c
    :goto_4c
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzakp;->zzd(I)V

    :cond_4f
    move/from16 v2, p2

    :goto_51
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v8

    if-lez v8, :cond_205

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzc:I

    if-eqz v8, :cond_1f6

    if-eq v8, v7, :cond_150

    if-eq v8, v5, :cond_8e

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v8

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    if-ne v9, v4, :cond_69

    const/4 v9, 0x0

    goto :goto_6b

    :cond_69
    sub-int v9, v8, v9

    :goto_6b
    if-lez v9, :cond_76

    sub-int/2addr v8, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    :cond_76
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {v9, v1}, Lcom/google/android/gms/internal/ads/zzajy;->zza(Lcom/google/android/gms/internal/ads/zzfj;)V

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    if-eq v9, v4, :cond_1f2

    sub-int/2addr v9, v8

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    if-nez v9, :cond_1f2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {v8, v6}, Lcom/google/android/gms/internal/ads/zzajy;->zzc(Z)V

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzakp;->zzd(I)V

    goto/16 :goto_1f2

    :cond_8e
    const/16 v8, 0xa

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzi:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    invoke-direct {v0, v1, v9, v8}, Lcom/google/android/gms/internal/ads/zzakp;->zze(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v8

    if-eqz v8, :cond_1f2

    const/4 v8, 0x0

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzi:I

    invoke-direct {v0, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzakp;->zze(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v8

    if-eqz v8, :cond_1f2

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzf:Z

    const/4 v9, 0x3

    const/4 v10, 0x4

    if-eqz v8, :cond_136

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v8

    int-to-long v11, v8

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v13, 0xf

    invoke-virtual {v8, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v8

    shl-int/2addr v8, v13

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v14

    int-to-long v14, v14

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzh:Z

    const/16 v16, 0x1e

    if-nez v5, :cond_126

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzg:Z

    if-eqz v5, :cond_126

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v5

    int-to-long v4, v5

    shl-long v4, v4, v16

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v10, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v10, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    shl-int/2addr v10, v13

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v6, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v6

    move/from16 v17, v10

    int-to-long v9, v6

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zze:Lcom/google/android/gms/internal/ads/zzfq;

    move/from16 v18, v8

    move/from16 v13, v17

    int-to-long v7, v13

    or-long/2addr v4, v7

    or-long/2addr v4, v9

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zzb(J)J

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzh:Z

    goto :goto_128

    :cond_126
    move/from16 v18, v8

    :goto_128
    shl-long v4, v11, v16

    move/from16 v6, v18

    int-to-long v6, v6

    or-long/2addr v4, v6

    or-long/2addr v4, v14

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zze:Lcom/google/android/gms/internal/ads/zzfq;

    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzfq;->zzb(J)J

    move-result-wide v4

    goto :goto_13b

    :cond_136
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_13b
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzk:Z

    const/4 v7, 0x1

    if-eq v7, v6, :cond_142

    const/4 v10, 0x0

    goto :goto_143

    :cond_142
    const/4 v10, 0x4

    :goto_143
    or-int/2addr v2, v10

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {v6, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzajy;->zzd(JI)V

    const/4 v4, 0x3

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzakp;->zzd(I)V

    const/4 v4, -0x1

    goto/16 :goto_200

    :cond_150
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfi;->zza:[B

    const/16 v5, 0x9

    invoke-direct {v0, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzakp;->zze(Lcom/google/android/gms/internal/ads/zzfj;[BI)Z

    move-result v4

    if-eqz v4, :cond_1f1

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v6, 0x18

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_187

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected start code prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    const/4 v7, 0x0

    const/4 v9, 0x2

    goto :goto_1ed

    :cond_187
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v8, 0x10

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzk:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzf:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzg:Z

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v4

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzi:I

    if-nez v8, :cond_1ce

    const/4 v7, -0x1

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    :cond_1cb
    const/4 v4, -0x1

    :goto_1cc
    const/4 v7, 0x2

    goto :goto_1ed

    :cond_1ce
    add-int/lit8 v8, v8, -0x3

    sub-int/2addr v8, v4

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    if-gez v8, :cond_1cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found negative packet payload size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzakp;->zzj:I

    goto :goto_1cc

    :goto_1ed
    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzakp;->zzd(I)V

    goto :goto_200

    :cond_1f1
    const/4 v4, -0x1

    :cond_1f2
    :goto_1f2
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    goto :goto_200

    :cond_1f6
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :goto_200
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    goto/16 :goto_51

    :cond_205
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfq;Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zze:Lcom/google/android/gms/internal/ads/zzfq;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzajy;->zzb(Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V

    return-void
.end method

.method public final zzc()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzd:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zzh:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakp;->zza:Lcom/google/android/gms/internal/ads/zzajy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzajy;->zze()V

    return-void
.end method
