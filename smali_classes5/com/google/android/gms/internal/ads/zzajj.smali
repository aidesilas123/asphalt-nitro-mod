###### Class com.google.android.gms.internal.ads.zzajj (com.google.android.gms.internal.ads.zzajj)
.class final Lcom/google/android/gms/internal/ads/zzajj;
.super Lcom/google/android/gms/internal/ads/zzajh;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzaji;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:Z

.field private zzd:Lcom/google/android/gms/internal/ads/zzadp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Lcom/google/android/gms/internal/ads/zzadn;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzajh;-><init>()V

    return-void
.end method


# virtual methods
.method protected final zza(Lcom/google/android/gms/internal/ads/zzfj;)J
    .registers 14

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_e

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    aget-byte v0, v0, v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaji;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    shr-int/2addr v0, v2

    iget v4, v3, Lcom/google/android/gms/internal/ads/zzaji;->zze:I

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaji;->zzd:[Lcom/google/android/gms/internal/ads/zzado;

    const/16 v6, 0xff

    const/16 v7, 0x8

    rsub-int/lit8 v4, v4, 0x8

    ushr-int v4, v6, v4

    and-int/2addr v0, v4

    aget-object v0, v5, v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzado;->zza:Z

    if-nez v0, :cond_32

    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzadp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadp;->zze:I

    goto :goto_36

    :cond_32
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzadp;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzadp;->zzf:I

    :goto_36
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Z

    if-eqz v3, :cond_3f

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    add-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x4

    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzb()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_5e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    array-length v4, v3

    invoke-virtual {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzE([BI)V

    goto :goto_67

    :cond_5e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    :goto_67
    int-to-long v3, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    const-wide/16 v8, 0xff

    and-long v10, v3, v8

    long-to-int v6, v10

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    ushr-long v6, v3, v7

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    const/16 v6, 0x10

    ushr-long v6, v3, v6

    and-long/2addr v6, v8

    long-to-int v7, v6

    int-to-byte v6, v7

    aput-byte v6, v1, v5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/16 v5, 0x18

    ushr-long v5, v3, v5

    and-long/2addr v5, v8

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, v1, p1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    return-wide v3
.end method

.method protected final zzb(Z)V
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzajh;->zzb(Z)V

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaji;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzadp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzadn;

    :cond_c
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Z

    return-void
.end method

.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfj;JLcom/google/android/gms/internal/ads/zzaje;)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaji;

    const/4 v4, 0x0

    if-eqz v3, :cond_11

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzam;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v4

    :cond_11
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzadp;

    const/4 v5, 0x4

    const/4 v11, 0x1

    if-nez v6, :cond_84

    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzd(ILcom/google/android/gms/internal/ads/zzfj;Z)Z

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzi()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzi()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v6

    if-gtz v6, :cond_2f

    const/16 v16, -0x1

    goto :goto_31

    :cond_2f
    move/from16 v16, v6

    :goto_31
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v6

    if-gtz v6, :cond_3a

    const/16 v17, -0x1

    goto :goto_3c

    :cond_3a
    move/from16 v17, v6

    :goto_3c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v6

    if-gtz v6, :cond_45

    const/16 v18, -0x1

    goto :goto_47

    :cond_45
    move/from16 v18, v6

    :goto_47
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v3

    and-int/lit8 v6, v3, 0xf

    int-to-double v8, v6

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v6, v8

    and-int/lit16 v3, v3, 0xf0

    shr-int/2addr v3, v5

    int-to-double v8, v3

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-int v3, v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v5

    const/4 v8, 0x1

    and-int/2addr v5, v8

    if-eq v8, v5, :cond_69

    const/16 v21, 0x0

    goto :goto_6b

    :cond_69
    const/16 v21, 0x1

    :goto_6b
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v1

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v22

    new-instance v1, Lcom/google/android/gms/internal/ads/zzadp;

    move-object v12, v1

    move/from16 v19, v6

    move/from16 v20, v3

    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(IIIIIIIIZ[B)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzadp;

    goto :goto_8f

    :cond_84
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzadn;

    if-nez v8, :cond_92

    const/4 v9, 0x1

    invoke-static {v1, v9, v9}, Lcom/google/android/gms/internal/ads/zzadq;->zzc(Lcom/google/android/gms/internal/ads/zzfj;ZZ)Lcom/google/android/gms/internal/ads/zzadn;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzajj;->zze:Lcom/google/android/gms/internal/ads/zzadn;

    :goto_8f
    const/4 v7, 0x0

    goto/16 :goto_3c5

    :cond_92
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v9

    new-array v9, v9, [B

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v11

    invoke-static {v10, v4, v9, v4, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v10, v6, Lcom/google/android/gms/internal/ads/zzadp;->zza:I

    const/4 v11, 0x5

    invoke-static {v11, v1, v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzd(ILcom/google/android/gms/internal/ads/zzfj;Z)Z

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    new-instance v13, Lcom/google/android/gms/internal/ads/zzadm;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/google/android/gms/internal/ads/zzadm;-><init>([B)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    const/16 v14, 0x8

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    const/4 v1, 0x0

    :goto_c4
    const/16 v15, 0x18

    const/4 v4, 0x2

    const/16 v3, 0x10

    if-ge v1, v12, :cond_193

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v14

    const v7, 0x564342

    if-ne v14, v7, :cond_178

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v3

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v7

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v14

    if-nez v14, :cond_fb

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v14

    const/4 v15, 0x0

    :goto_e7
    if-ge v15, v7, :cond_10d

    if-eqz v14, :cond_f5

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v18

    if-eqz v18, :cond_f8

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    goto :goto_f8

    :cond_f5
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    :cond_f8
    :goto_f8
    add-int/lit8 v15, v15, 0x1

    goto :goto_e7

    :cond_fb
    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    const/4 v14, 0x0

    :goto_ff
    if-ge v14, v7, :cond_10d

    sub-int v15, v7, v14

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzadq;->zza(I)I

    move-result v15

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v15

    add-int/2addr v14, v15

    goto :goto_ff

    :cond_10d
    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v14

    if-gt v14, v4, :cond_161

    const/4 v15, 0x1

    if-eq v14, v15, :cond_11c

    if-ne v14, v4, :cond_119

    goto :goto_11d

    :cond_119
    move-object/from16 v18, v6

    goto :goto_157

    :cond_11c
    move v4, v14

    :goto_11d
    const/16 v14, 0x20

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v14

    add-int/2addr v14, v15

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    if-ne v4, v15, :cond_14a

    if-eqz v3, :cond_145

    move-object/from16 v18, v6

    int-to-long v5, v7

    int-to-long v3, v3

    long-to-double v3, v3

    long-to-double v5, v5

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v3, v20, v3

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-long v3, v3

    goto :goto_150

    :cond_145
    move-object/from16 v18, v6

    const-wide/16 v3, 0x0

    goto :goto_150

    :cond_14a
    move-object/from16 v18, v6

    int-to-long v3, v3

    int-to-long v5, v7

    mul-long v3, v3, v5

    :goto_150
    int-to-long v5, v14

    mul-long v3, v3, v5

    long-to-int v4, v3

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    :goto_157
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v6, v18

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/16 v14, 0x8

    goto/16 :goto_c4

    :cond_161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lookup type greater than 2 not decodable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_178
    const/4 v2, 0x0

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zza()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected code book to start with [0x56, 0x43, 0x42] at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_193
    move-object/from16 v18, v6

    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v6, 0x0

    :goto_19d
    if-ge v6, v5, :cond_1b0

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v7

    if-nez v7, :cond_1a8

    add-int/lit8 v6, v6, 0x1

    goto :goto_19d

    :cond_1a8
    const-string v1, "placeholder of time domain transforms not zeroed out"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_1b0
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_1b7
    const/4 v12, 0x3

    if-ge v7, v5, :cond_280

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v14

    if-eqz v14, :cond_24a

    if-ne v14, v6, :cond_233

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v6

    new-array v14, v6, [I

    const/4 v11, 0x0

    const/4 v15, -0x1

    :goto_1ca
    if-ge v11, v6, :cond_1dc

    const/4 v1, 0x4

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v3

    aput v3, v14, v11

    if-le v3, v15, :cond_1d6

    move v15, v3

    :cond_1d6
    add-int/lit8 v11, v11, 0x1

    const/4 v1, 0x6

    const/16 v3, 0x10

    goto :goto_1ca

    :cond_1dc
    add-int/lit8 v15, v15, 0x1

    new-array v1, v15, [I

    const/4 v3, 0x0

    :goto_1e1
    if-ge v3, v15, :cond_213

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v11

    const/16 v23, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v1, v3

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v11

    if-lez v11, :cond_1f9

    const/16 v12, 0x8

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    goto :goto_1fb

    :cond_1f9
    const/16 v12, 0x8

    :goto_1fb
    move/from16 v24, v5

    const/4 v4, 0x0

    :goto_1fe
    shl-int v5, v23, v11

    if-ge v4, v5, :cond_20c

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    add-int/lit8 v4, v4, 0x1

    const/16 v12, 0x8

    const/16 v23, 0x1

    goto :goto_1fe

    :cond_20c
    add-int/lit8 v3, v3, 0x1

    move/from16 v5, v24

    const/4 v4, 0x2

    const/4 v12, 0x3

    goto :goto_1e1

    :cond_213
    move/from16 v24, v5

    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_221
    if-ge v3, v6, :cond_272

    aget v12, v14, v3

    aget v12, v1, v12

    add-int/2addr v5, v12

    :goto_228
    if-ge v11, v5, :cond_230

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_228

    :cond_230
    add-int/lit8 v3, v3, 0x1

    goto :goto_221

    :cond_233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "floor type greater than 1 not decodable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_24a
    move/from16 v24, v5

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    const/16 v3, 0x10

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    const/4 v3, 0x6

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v4

    const/4 v3, 0x1

    add-int/2addr v4, v3

    const/4 v3, 0x0

    :goto_268
    if-ge v3, v4, :cond_272

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    goto :goto_268

    :cond_272
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v24

    const/4 v1, 0x6

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v11, 0x5

    const/16 v15, 0x18

    goto/16 :goto_1b7

    :cond_280
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x0

    :goto_287
    if-ge v5, v3, :cond_2f5

    const/16 v6, 0x10

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v7

    const/4 v6, 0x2

    if-gt v7, v6, :cond_2ed

    const/16 v6, 0x18

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v7

    add-int/2addr v7, v4

    const/16 v1, 0x8

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    new-array v4, v7, [I

    const/4 v11, 0x0

    :goto_2aa
    if-ge v11, v7, :cond_2c9

    const/4 v12, 0x3

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v14

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v15

    if-eqz v15, :cond_2bd

    const/4 v15, 0x5

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v20

    goto :goto_2c0

    :cond_2bd
    const/4 v15, 0x5

    const/16 v20, 0x0

    :goto_2c0
    mul-int/lit8 v20, v20, 0x8

    add-int v20, v20, v14

    aput v20, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2aa

    :cond_2c9
    const/4 v12, 0x3

    const/4 v15, 0x5

    const/4 v11, 0x0

    :goto_2cc
    if-ge v11, v7, :cond_2e8

    const/4 v14, 0x0

    :goto_2cf
    if-ge v14, v1, :cond_2e3

    aget v20, v4, v11

    const/16 v21, 0x1

    shl-int v23, v21, v14

    and-int v20, v20, v23

    if-eqz v20, :cond_2de

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    :cond_2de
    add-int/lit8 v14, v14, 0x1

    const/16 v1, 0x8

    goto :goto_2cf

    :cond_2e3
    add-int/lit8 v11, v11, 0x1

    const/16 v1, 0x8

    goto :goto_2cc

    :cond_2e8
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    const/4 v4, 0x1

    goto :goto_287

    :cond_2ed
    const-string v1, "residueType greater than 2 is not decodable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_2f5
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v3

    const/4 v1, 0x1

    add-int/2addr v3, v1

    const/4 v1, 0x0

    :goto_2fc
    if-ge v1, v3, :cond_383

    const/16 v4, 0x10

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v5

    if-eqz v5, :cond_31f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mapping type other than 0 not supported: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VorbisUtil"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    const/4 v7, 0x4

    goto :goto_378

    :cond_31f
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v4

    if-eqz v4, :cond_32d

    const/4 v4, 0x4

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v5

    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto :goto_32f

    :cond_32d
    const/4 v4, 0x1

    const/4 v5, 0x1

    :goto_32f
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v6

    if-eqz v6, :cond_352

    const/16 v6, 0x8

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v7

    add-int/2addr v7, v4

    const/4 v4, 0x0

    :goto_33d
    if-ge v4, v7, :cond_352

    add-int/lit8 v6, v10, -0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzadq;->zza(I)I

    move-result v11

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzadq;->zza(I)I

    move-result v6

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_33d

    :cond_352
    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v6

    if-nez v6, :cond_37b

    const/4 v6, 0x1

    if-le v5, v6, :cond_366

    const/4 v6, 0x0

    :goto_35d
    if-ge v6, v10, :cond_366

    const/4 v7, 0x4

    invoke-virtual {v13, v7}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_35d

    :cond_366
    const/4 v7, 0x4

    const/4 v6, 0x0

    :goto_368
    if-ge v6, v5, :cond_378

    const/16 v11, 0x8

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzc(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_368

    :cond_378
    :goto_378
    add-int/lit8 v1, v1, 0x1

    goto :goto_2fc

    :cond_37b
    const-string v1, "to reserved bits must be zero after mapping coupling steps"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1

    :cond_383
    const/4 v1, 0x6

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    new-array v3, v1, [Lcom/google/android/gms/internal/ads/zzado;

    const/4 v4, 0x0

    :goto_38d
    if-ge v4, v1, :cond_3ad

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v7

    invoke-virtual {v13, v6}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v10

    const/16 v11, 0x8

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(I)I

    move-result v12

    new-instance v14, Lcom/google/android/gms/internal/ads/zzado;

    invoke-direct {v14, v5, v7, v10, v12}, Lcom/google/android/gms/internal/ads/zzado;-><init>(ZIII)V

    aput-object v14, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_38d

    :cond_3ad
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzd()Z

    move-result v4

    if-eqz v4, :cond_414

    const/4 v4, -0x1

    add-int/2addr v1, v4

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaji;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zza(I)I

    move-result v10

    move-object v5, v4

    move-object/from16 v6, v18

    move-object v7, v8

    move-object v8, v9

    move-object v9, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzaji;-><init>(Lcom/google/android/gms/internal/ads/zzadp;Lcom/google/android/gms/internal/ads/zzadn;[B[Lcom/google/android/gms/internal/ads/zzado;I)V

    move-object v7, v4

    :goto_3c5
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzajj;->zza:Lcom/google/android/gms/internal/ads/zzaji;

    if-nez v7, :cond_3cb

    const/4 v1, 0x1

    return v1

    :cond_3cb
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v7, Lcom/google/android/gms/internal/ads/zzaji;->zza:Lcom/google/android/gms/internal/ads/zzadp;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzadp;->zzg:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaji;->zzc:[B

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzaji;->zzb:Lcom/google/android/gms/internal/ads/zzadn;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzadn;->zzb:[Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfwu;->zzk([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    const-string v6, "audio/vorbis"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzadp;->zzd:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzadp;->zzc:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzQ(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzadp;->zza:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadp;->zzb:I

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzO(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v2, Lcom/google/android/gms/internal/ads/zzaje;->zza:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v1, 0x1

    return v1

    :cond_414
    const-string v1, "framing bit after modes not set as expected"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v1

    throw v1
.end method

.method protected final zzi(J)V
    .registers 7

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzajh;->zzi(J)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzc:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzd:Lcom/google/android/gms/internal/ads/zzadp;

    if-eqz p1, :cond_15

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzadp;->zze:I

    :cond_15
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzajj;->zzb:I

    return-void
.end method
