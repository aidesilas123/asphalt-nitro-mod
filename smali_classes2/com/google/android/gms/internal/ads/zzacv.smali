###### Class com.google.android.gms.internal.ads.zzacv (com.google.android.gms.internal.ads.zzacv)
.class public final Lcom/google/android/gms/internal/ads/zzacv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zza:Ljava/util/List;

.field public final zzb:I

.field public final zzc:I

.field public final zzd:I

.field public final zze:I

.field public final zzf:I

.field public final zzg:I

.field public final zzh:F

.field public final zzi:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    .registers 12
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacv;->zza:Ljava/util/List;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzc:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzd:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzacv;->zze:I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzf:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzg:I

    iput p10, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzh:F

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzacv;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzacv;
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    :try_start_4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_18
    const/4 v7, 0x1

    if-ge v5, v2, :cond_35

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v7

    const/4 v8, 0x0

    :goto_23
    if-ge v8, v7, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_35
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    new-array v3, v6, [B

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    move-object/from16 v21, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/high16 v20, 0x3f800000    # 1.0f

    :goto_4f
    if-ge v5, v2, :cond_ea

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v9

    and-int/lit8 v9, v9, 0x3f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v10

    const/4 v11, 0x0

    :goto_5c
    if-ge v11, v10, :cond_e2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v12

    sget-object v7, Lcom/google/android/gms/internal/ads/zzgg;->zza:[B

    move/from16 v22, v2

    const/4 v2, 0x4

    invoke-static {v7, v4, v3, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v7

    invoke-static {v2, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v8, v12

    const/16 v7, 0x21

    if-ne v9, v7, :cond_cb

    if-nez v11, :cond_cb

    add-int/lit8 v8, v8, 0x2

    invoke-static {v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzgg;->zzc([BII)Lcom/google/android/gms/internal/ads/zzgd;

    move-result-object v7

    iget v13, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzi:I

    iget v14, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzj:I

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgd;->zze:I

    add-int/lit8 v15, v8, 0x8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzf:I

    add-int/lit8 v16, v8, 0x8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzl:I

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzm:I

    iget v4, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzn:I

    move/from16 v23, v2

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzk:F

    move/from16 v17, v2

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzgd;->zza:I

    move/from16 v18, v4

    iget-boolean v4, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzb:Z

    move/from16 v19, v8

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzc:I

    move/from16 v30, v9

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzd:I

    move/from16 v31, v10

    iget-object v10, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzg:[I

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzgd;->zzh:I

    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v10

    move/from16 v29, v7

    invoke-static/range {v24 .. v29}, Lcom/google/android/gms/internal/ads/zzeh;->zzb(IZII[II)Ljava/lang/String;

    move-result-object v21

    move/from16 v20, v17

    move/from16 v17, v19

    move/from16 v19, v18

    move/from16 v18, v11

    const/4 v11, 0x0

    goto :goto_d1

    :cond_cb
    move/from16 v23, v2

    move/from16 v30, v9

    move/from16 v31, v10

    :goto_d1
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/4 v2, 0x1

    add-int/2addr v11, v2

    move/from16 v2, v22

    move/from16 v8, v23

    move/from16 v9, v30

    move/from16 v10, v31

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_5c

    :cond_e2
    move/from16 v22, v2

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto/16 :goto_4f

    :cond_ea
    if-nez v6, :cond_f1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_f5

    :cond_f1
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_f5
    move-object v11, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacv;

    const/4 v2, 0x1

    add-int/lit8 v12, v1, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v21}, Lcom/google/android/gms/internal/ads/zzacv;-><init>(Ljava/util/List;IIIIIIIIFLjava/lang/String;)V
    :try_end_ff
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_ff} :catch_100

    return-object v0

    :catch_100
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v0

    throw v0
.end method
