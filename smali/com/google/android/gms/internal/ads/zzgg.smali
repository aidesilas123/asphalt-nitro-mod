###### Class com.google.android.gms.internal.ads.zzgg (com.google.android.gms.internal.ads.zzgg)
.class public final Lcom/google/android/gms/internal/ads/zzgg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field public static final zza:[B

.field public static final zzb:[F

.field private static final zzc:Ljava/lang/Object;

.field private static zzd:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgg;->zza:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_26

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgg;->zzb:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgg;->zzd:[I

    return-void

    nop

    :array_20
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_26
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static zza([BII[Z)I
    .registers 12

    sub-int v0, p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    if-nez v0, :cond_f

    return p2

    :cond_f
    aget-boolean v3, p3, v1

    if-eqz v3, :cond_19

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgg;->zzf([Z)V

    add-int/lit8 p1, p1, -0x3

    return p1

    :cond_19
    if-le v0, v2, :cond_2a

    aget-boolean v3, p3, v2

    if-eqz v3, :cond_2a

    aget-byte v3, p0, p1

    if-eq v3, v2, :cond_24

    goto :goto_2a

    :cond_24
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgg;->zzf([Z)V

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_2a
    :goto_2a
    const/4 v3, 0x2

    if-le v0, v3, :cond_42

    aget-boolean v4, p3, v3

    if-eqz v4, :cond_42

    aget-byte v4, p0, p1

    if-nez v4, :cond_42

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    if-eq v4, v2, :cond_3c

    goto :goto_42

    :cond_3c
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgg;->zzf([Z)V

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_42
    :goto_42
    add-int/lit8 v4, p2, -0x1

    add-int/2addr p1, v3

    :goto_45
    if-ge p1, v4, :cond_64

    aget-byte v5, p0, p1

    and-int/lit16 v6, v5, 0xfe

    if-nez v6, :cond_61

    add-int/lit8 v6, p1, -0x2

    aget-byte v7, p0, v6

    if-nez v7, :cond_60

    add-int/lit8 p1, p1, -0x1

    aget-byte p1, p0, p1

    if-nez p1, :cond_60

    if-eq v5, v2, :cond_5c

    goto :goto_60

    :cond_5c
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgg;->zzf([Z)V

    return v6

    :cond_60
    :goto_60
    move p1, v6

    :cond_61
    add-int/lit8 p1, p1, 0x3

    goto :goto_45

    :cond_64
    if-le v0, v3, :cond_79

    add-int/lit8 p1, p2, -0x3

    aget-byte p1, p0, p1

    if-nez p1, :cond_77

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_77

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_77

    goto :goto_92

    :cond_77
    const/4 p1, 0x0

    goto :goto_93

    :cond_79
    if-ne v0, v3, :cond_8a

    aget-boolean p1, p3, v3

    if-eqz p1, :cond_77

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_77

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_77

    goto :goto_92

    :cond_8a
    aget-boolean p1, p3, v2

    if-eqz p1, :cond_77

    aget-byte p1, p0, v4

    if-ne p1, v2, :cond_77

    :goto_92
    const/4 p1, 0x1

    :goto_93
    aput-boolean p1, p3, v1

    if-le v0, v2, :cond_a2

    add-int/lit8 p1, p2, -0x2

    aget-byte p1, p0, p1

    if-nez p1, :cond_ac

    aget-byte p1, p0, v4

    if-nez p1, :cond_ac

    goto :goto_aa

    :cond_a2
    aget-boolean p1, p3, v3

    if-eqz p1, :cond_ac

    aget-byte p1, p0, v4

    if-nez p1, :cond_ac

    :goto_aa
    const/4 p1, 0x1

    goto :goto_ad

    :cond_ac
    const/4 p1, 0x0

    :goto_ad
    aput-boolean p1, p3, v2

    aget-byte p0, p0, v4

    if-nez p0, :cond_b4

    const/4 v1, 0x1

    :cond_b4
    aput-boolean v1, p3, v3

    return p2
.end method

.method public static zzb([BI)I
    .registers 10

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgg;->zzc:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_6
    :goto_6
    if-lt v2, p1, :cond_2c

    sub-int/2addr p1, v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_c
    if-ge v2, v3, :cond_25

    :try_start_e
    sget-object v6, Lcom/google/android/gms/internal/ads/zzgg;->zzd:[I

    aget v6, v6, v2

    sub-int/2addr v6, v4

    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    add-int/lit8 v7, v5, 0x1

    aput-byte v1, p0, v5

    add-int/lit8 v5, v7, 0x1

    aput-byte v1, p0, v7

    add-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_25
    sub-int v1, p1, v5

    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit v0

    return p1

    :cond_2c
    :goto_2c
    add-int/lit8 v4, p1, -0x2

    if-ge v2, v4, :cond_46

    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    if-nez v4, :cond_42

    aget-byte v4, p0, v5

    if-nez v4, :cond_42

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p0, v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_42

    goto :goto_47

    :cond_42
    move v2, v5

    goto :goto_2c

    :catchall_44
    move-exception p0

    goto :goto_5f

    :cond_46
    move v2, p1

    :goto_47
    if-ge v2, p1, :cond_6

    sget-object v4, Lcom/google/android/gms/internal/ads/zzgg;->zzd:[I

    array-length v5, v4

    if-gt v5, v3, :cond_55

    add-int/2addr v5, v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    sput-object v4, Lcom/google/android/gms/internal/ads/zzgg;->zzd:[I

    :cond_55
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgg;->zzd:[I

    add-int/lit8 v5, v3, 0x1

    aput v2, v4, v3

    add-int/lit8 v2, v2, 0x3

    move v3, v5

    goto :goto_6

    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_e .. :try_end_60} :catchall_44

    throw p0
.end method

.method public static zzc([BII)Lcom/google/android/gms/internal/ads/zzgd;
    .registers 38

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgh;-><init>([BII)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v7

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_27
    const/16 v12, 0x20

    const/4 v13, 0x1

    if-ge v11, v12, :cond_38

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v12

    if-eqz v12, :cond_35

    shl-int v12, v13, v11

    or-int/2addr v10, v12

    :cond_35
    add-int/lit8 v11, v11, 0x1

    goto :goto_27

    :cond_38
    const/4 v11, 0x6

    new-array v14, v11, [I

    const/4 v12, 0x0

    :goto_3c
    const/16 v15, 0x8

    if-ge v12, v11, :cond_49

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v15

    aput v15, v14, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3c

    :cond_49
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v16

    const/4 v5, 0x0

    const/4 v12, 0x0

    :goto_4f
    if-ge v12, v3, :cond_64

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v17

    if-eqz v17, :cond_59

    add-int/lit8 v5, v5, 0x59

    :cond_59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v17

    if-eqz v17, :cond_61

    add-int/lit8 v5, v5, 0x8

    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_4f

    :cond_64
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    if-lez v3, :cond_6f

    rsub-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v5

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    :cond_6f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v17

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v5

    if-ne v5, v2, :cond_7d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    const/4 v5, 0x3

    :cond_7d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v12

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v18

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v19

    if-eqz v19, :cond_b9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v22

    if-eq v5, v13, :cond_a4

    if-ne v5, v4, :cond_a1

    const/4 v5, 0x2

    goto :goto_a4

    :cond_a1
    const/16 v23, 0x1

    goto :goto_a6

    :cond_a4
    :goto_a4
    const/16 v23, 0x2

    :goto_a6
    if-ne v5, v13, :cond_ab

    const/16 v24, 0x2

    goto :goto_ad

    :cond_ab
    const/16 v24, 0x1

    :goto_ad
    add-int v19, v19, v20

    mul-int v23, v23, v19

    sub-int v12, v12, v23

    add-int v21, v21, v22

    mul-int v24, v24, v21

    sub-int v18, v18, v24

    :cond_b9
    move/from16 v34, v12

    move v12, v5

    move/from16 v5, v18

    move/from16 v18, v34

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v20

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v21

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v9

    if-eq v13, v9, :cond_d4

    move v9, v3

    goto :goto_d5

    :cond_d4
    const/4 v9, 0x0

    :goto_d5
    if-gt v9, v3, :cond_e3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    add-int/lit8 v9, v9, 0x1

    goto :goto_d5

    :cond_e3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    if-eqz v3, :cond_139

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    if-eqz v3, :cond_139

    const/4 v3, 0x0

    :goto_102
    if-ge v3, v1, :cond_139

    const/4 v9, 0x0

    :goto_105
    if-ge v9, v11, :cond_134

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v22

    if-nez v22, :cond_111

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    goto :goto_12b

    :cond_111
    const/16 v11, 0x40

    add-int v22, v3, v3

    add-int/lit8 v22, v22, 0x4

    shl-int v1, v13, v22

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-le v3, v13, :cond_122

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzb()I

    :cond_122
    const/4 v11, 0x0

    :goto_123
    if-ge v11, v1, :cond_12b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzb()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_123

    :cond_12b
    :goto_12b
    if-ne v3, v2, :cond_12f

    const/4 v1, 0x3

    goto :goto_130

    :cond_12f
    const/4 v1, 0x1

    :goto_130
    add-int/2addr v9, v1

    const/4 v1, 0x4

    const/4 v11, 0x6

    goto :goto_105

    :cond_134
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x4

    const/4 v11, 0x6

    goto :goto_102

    :cond_139
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v1

    if-eqz v1, :cond_14e

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    :cond_14e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v1

    const/4 v3, 0x0

    new-array v9, v3, [I

    new-array v11, v3, [I

    const/16 v22, -0x1

    const/4 v2, -0x1

    const/4 v15, -0x1

    :goto_15b
    if-ge v3, v1, :cond_285

    if-eqz v3, :cond_22b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v24

    if-eqz v24, :cond_22b

    add-int v4, v2, v15

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v25

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    add-int v25, v25, v25

    rsub-int/lit8 v25, v25, 0x1

    add-int/lit8 v13, v4, 0x1

    move/from16 v28, v1

    new-array v1, v13, [Z

    move-object/from16 v29, v14

    const/4 v14, 0x0

    :goto_17e
    if-gt v14, v4, :cond_194

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v30

    if-nez v30, :cond_18d

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v30

    aput-boolean v30, v1, v14

    goto :goto_191

    :cond_18d
    const/16 v27, 0x1

    aput-boolean v27, v1, v14

    :goto_191
    add-int/lit8 v14, v14, 0x1

    goto :goto_17e

    :cond_194
    add-int/lit8 v14, v15, -0x1

    move/from16 v30, v14

    new-array v14, v13, [I

    new-array v13, v13, [I

    const/16 v31, 0x0

    :goto_19e
    mul-int v32, v25, v26

    if-ltz v30, :cond_1b7

    aget v33, v11, v30

    add-int v33, v33, v32

    if-gez v33, :cond_1b4

    add-int v32, v2, v30

    aget-boolean v32, v1, v32

    if-eqz v32, :cond_1b4

    add-int/lit8 v32, v31, 0x1

    aput v33, v14, v31

    move/from16 v31, v32

    :cond_1b4
    add-int/lit8 v30, v30, -0x1

    goto :goto_19e

    :cond_1b7
    if-gez v32, :cond_1c3

    aget-boolean v25, v1, v4

    if-eqz v25, :cond_1c3

    add-int/lit8 v25, v31, 0x1

    aput v32, v14, v31

    move/from16 v31, v25

    :cond_1c3
    move/from16 v26, v10

    move/from16 v25, v12

    move/from16 v12, v31

    const/4 v10, 0x0

    :goto_1ca
    if-ge v10, v2, :cond_1df

    aget v30, v9, v10

    add-int v30, v30, v32

    if-gez v30, :cond_1dc

    aget-boolean v31, v1, v10

    if-eqz v31, :cond_1dc

    add-int/lit8 v31, v12, 0x1

    aput v30, v14, v12

    move/from16 v12, v31

    :cond_1dc
    add-int/lit8 v10, v10, 0x1

    goto :goto_1ca

    :cond_1df
    invoke-static {v14, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    add-int/lit8 v14, v2, -0x1

    const/16 v30, 0x0

    :goto_1e7
    if-ltz v14, :cond_1fc

    aget v31, v9, v14

    add-int v31, v31, v32

    if-lez v31, :cond_1f9

    aget-boolean v33, v1, v14

    if-eqz v33, :cond_1f9

    add-int/lit8 v33, v30, 0x1

    aput v31, v13, v30

    move/from16 v30, v33

    :cond_1f9
    add-int/lit8 v14, v14, -0x1

    goto :goto_1e7

    :cond_1fc
    if-lez v32, :cond_208

    aget-boolean v4, v1, v4

    if-eqz v4, :cond_208

    add-int/lit8 v4, v30, 0x1

    aput v32, v13, v30

    move/from16 v30, v4

    :cond_208
    move/from16 v4, v30

    const/4 v9, 0x0

    :goto_20b
    if-ge v9, v15, :cond_222

    aget v14, v11, v9

    add-int v14, v14, v32

    if-lez v14, :cond_21f

    add-int v30, v2, v9

    aget-boolean v30, v1, v30

    if-eqz v30, :cond_21f

    add-int/lit8 v30, v4, 0x1

    aput v14, v13, v4

    move/from16 v4, v30

    :cond_21f
    add-int/lit8 v9, v9, 0x1

    goto :goto_20b

    :cond_222
    invoke-static {v13, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    move-object v11, v1

    move v15, v4

    move-object v9, v10

    move v2, v12

    goto :goto_277

    :cond_22b
    move/from16 v28, v1

    move/from16 v26, v10

    move/from16 v25, v12

    move-object/from16 v29, v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v2

    new-array v4, v1, [I

    const/4 v9, 0x0

    :goto_23e
    if-ge v9, v1, :cond_257

    if-lez v9, :cond_247

    add-int/lit8 v10, v9, -0x1

    aget v10, v4, v10

    goto :goto_248

    :cond_247
    const/4 v10, 0x0

    :goto_248
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v11

    const/4 v12, 0x1

    add-int/2addr v11, v12

    sub-int/2addr v10, v11

    aput v10, v4, v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_23e

    :cond_257
    new-array v9, v2, [I

    const/4 v10, 0x0

    :goto_25a
    if-ge v10, v2, :cond_273

    if-lez v10, :cond_263

    add-int/lit8 v11, v10, -0x1

    aget v11, v9, v11

    goto :goto_264

    :cond_263
    const/4 v11, 0x0

    :goto_264
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    aput v11, v9, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_25a

    :cond_273
    move v15, v2

    move-object v11, v9

    move v2, v1

    move-object v9, v4

    :goto_277
    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v25

    move/from16 v10, v26

    move/from16 v1, v28

    move-object/from16 v14, v29

    const/4 v4, 0x2

    const/4 v13, 0x1

    goto/16 :goto_15b

    :cond_285
    move/from16 v26, v10

    move/from16 v25, v12

    move-object/from16 v29, v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v1

    if-eqz v1, :cond_2a1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v1

    const/4 v9, 0x0

    :goto_296
    if-ge v9, v1, :cond_2a1

    const/4 v2, 0x5

    add-int/lit8 v3, v21, 0x5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_296

    :cond_2a1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_348

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v2

    if-eqz v2, :cond_2ee

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v4

    const/16 v2, 0xff

    if-ne v4, v2, :cond_2cf

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v2

    if-eqz v4, :cond_2ee

    if-eqz v2, :cond_2ee

    int-to-float v3, v4

    int-to-float v2, v2

    div-float/2addr v3, v2

    goto :goto_2ee

    :cond_2cf
    const/16 v2, 0x11

    if-ge v4, v2, :cond_2d8

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgg;->zzb:[F

    aget v3, v2, v4

    goto :goto_2ee

    :cond_2d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NalUnitUtil"

    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ee
    :goto_2ee
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v2

    if-eqz v2, :cond_2f7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    :cond_2f7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v2

    if-eqz v2, :cond_32c

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v2

    const/4 v4, 0x1

    if-eq v4, v2, :cond_309

    const/4 v4, 0x2

    :cond_309
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v1

    if-eqz v1, :cond_32a

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v9

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)I

    move-result v22

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)I

    move-result v1

    move v2, v1

    move/from16 v1, v22

    move/from16 v22, v4

    goto :goto_32e

    :cond_32a
    move/from16 v22, v4

    :cond_32c
    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_32e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v4

    if-eqz v4, :cond_33a

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    :cond_33a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v0

    if-eqz v0, :cond_344

    add-int/2addr v5, v5

    :cond_344
    move/from16 v21, v2

    move v0, v5

    goto :goto_34c

    :cond_348
    move v0, v5

    const/4 v1, -0x1

    const/16 v21, -0x1

    :goto_34c
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgd;

    move-object v5, v2

    move/from16 v9, v26

    move/from16 v10, v25

    move/from16 v11, v19

    move/from16 v12, v20

    move-object/from16 v13, v29

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v1

    move/from16 v20, v22

    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/internal/ads/zzgd;-><init>(IZIIIII[IIIIIFIII)V

    return-object v2
.end method

.method public static zzd([BII)Lcom/google/android/gms/internal/ads/zzge;
    .registers 4

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgh;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgh;-><init>([BII)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result p0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzge;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzge;-><init>(IIZ)V

    return-object v0
.end method

.method public static zze([BII)Lcom/google/android/gms/internal/ads/zzgf;
    .registers 29

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgh;-><init>([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v5

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v7

    const/16 v3, 0x8a

    const/4 v8, 0x3

    const/4 v10, 0x1

    const/16 v11, 0x64

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x6e

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x7a

    if-eq v2, v11, :cond_4f

    const/16 v11, 0xf4

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x2c

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x53

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x56

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x76

    if-eq v2, v11, :cond_4f

    const/16 v11, 0x80

    if-eq v2, v11, :cond_4f

    if-ne v2, v3, :cond_4a

    const/16 v2, 0x8a

    goto :goto_4f

    :cond_4a
    const/4 v3, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_ac

    :cond_4f
    :goto_4f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v3

    if-ne v3, v8, :cond_5b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v11

    const/4 v12, 0x3

    goto :goto_5d

    :cond_5b
    move v12, v3

    const/4 v11, 0x0

    :goto_5d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v14

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v15

    if-eqz v15, :cond_a9

    if-eq v12, v8, :cond_73

    const/16 v12, 0x8

    goto :goto_75

    :cond_73
    const/16 v12, 0xc

    :goto_75
    const/4 v15, 0x0

    :goto_76
    if-ge v15, v12, :cond_a9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v16

    if-eqz v16, :cond_a3

    const/4 v9, 0x6

    if-ge v15, v9, :cond_84

    const/16 v9, 0x10

    goto :goto_86

    :cond_84
    const/16 v9, 0x40

    :goto_86
    const/4 v1, 0x0

    const/16 v16, 0x8

    const/16 v17, 0x8

    :goto_8b
    if-ge v1, v9, :cond_a3

    if-eqz v16, :cond_9b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzb()I

    move-result v16

    add-int v8, v17, v16

    add-int/lit16 v8, v8, 0x100

    rem-int/lit16 v8, v8, 0x100

    move/from16 v16, v8

    :cond_9b
    if-eqz v16, :cond_9f

    move/from16 v17, v16

    :cond_9f
    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x3

    goto :goto_8b

    :cond_a3
    add-int/lit8 v15, v15, 0x1

    const/16 v1, 0x8

    const/4 v8, 0x3

    goto :goto_76

    :cond_a9
    move v12, v13

    move v13, v14

    move v14, v11

    :goto_ac
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v1

    add-int/lit8 v16, v1, 0x4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v1

    if-nez v1, :cond_c4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    move v15, v5

    move/from16 v18, v8

    :goto_c1
    const/16 v19, 0x0

    goto :goto_ec

    :cond_c4
    if-ne v1, v10, :cond_e8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzb()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzb()I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v8

    int-to-long v8, v8

    move v15, v5

    const/4 v11, 0x0

    :goto_d7
    int-to-long v4, v11

    cmp-long v18, v4, v8

    if-gez v18, :cond_e2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    add-int/lit8 v11, v11, 0x1

    goto :goto_d7

    :cond_e2
    move/from16 v19, v1

    const/4 v1, 0x1

    const/16 v18, 0x0

    goto :goto_ec

    :cond_e8
    move v15, v5

    const/16 v18, 0x0

    goto :goto_c1

    :goto_ec
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v4

    add-int/2addr v4, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v5

    add-int/2addr v5, v10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v20

    rsub-int/lit8 v9, v20, 0x2

    if-nez v20, :cond_108

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    :cond_108
    mul-int v5, v5, v9

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    const/16 v11, 0x10

    mul-int/lit8 v4, v4, 0x10

    mul-int/lit8 v5, v5, 0x10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v11

    const/16 v21, 0x2

    if-eqz v11, :cond_14c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v11

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v22

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzc()I

    move-result v24

    if-nez v3, :cond_12e

    goto :goto_141

    :cond_12e
    const/4 v10, 0x3

    if-ne v3, v10, :cond_135

    const/4 v10, 0x1

    const/16 v25, 0x1

    goto :goto_138

    :cond_135
    const/4 v10, 0x1

    const/16 v25, 0x2

    :goto_138
    if-ne v3, v10, :cond_13c

    const/4 v10, 0x2

    goto :goto_13d

    :cond_13c
    const/4 v10, 0x1

    :goto_13d
    mul-int v9, v9, v10

    move/from16 v10, v25

    :goto_141
    add-int v11, v11, v22

    mul-int v11, v11, v10

    sub-int/2addr v4, v11

    add-int v23, v23, v24

    mul-int v23, v23, v9

    sub-int v5, v5, v23

    :cond_14c
    move v9, v4

    move v10, v5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    const/4 v5, -0x1

    if-eqz v3, :cond_1da

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    if-eqz v3, :cond_196

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v11

    const/16 v3, 0xff

    if-ne v11, v3, :cond_177

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v11

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v3

    if-eqz v11, :cond_196

    if-eqz v3, :cond_196

    int-to-float v4, v11

    int-to-float v3, v3

    div-float/2addr v4, v3

    goto :goto_198

    :cond_177
    const/16 v3, 0x11

    if-ge v11, v3, :cond_180

    sget-object v3, Lcom/google/android/gms/internal/ads/zzgg;->zzb:[F

    aget v4, v3, v11

    goto :goto_198

    :cond_180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NalUnitUtil"

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_196
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_198
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    if-eqz v3, :cond_1a1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd()V

    :cond_1a1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    if-eqz v3, :cond_1d7

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    const/4 v11, 0x1

    if-eq v11, v3, :cond_1b3

    goto :goto_1b5

    :cond_1b3
    const/16 v21, 0x1

    :goto_1b5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzf()Z

    move-result v3

    if-eqz v3, :cond_1d4

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zza(I)I

    move-result v11

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgh;->zze(I)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)I

    move-result v0

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)I

    move-result v3

    move/from16 v22, v3

    move v11, v4

    goto :goto_1e1

    :cond_1d4
    move v11, v4

    const/4 v0, -0x1

    goto :goto_1df

    :cond_1d7
    move v11, v4

    const/4 v0, -0x1

    goto :goto_1dd

    :cond_1da
    const/4 v0, -0x1

    const/high16 v11, 0x3f800000    # 1.0f

    :goto_1dd
    const/16 v21, -0x1

    :goto_1df
    const/16 v22, -0x1

    :goto_1e1
    new-instance v23, Lcom/google/android/gms/internal/ads/zzgf;

    move-object/from16 v3, v23

    move v4, v2

    move v5, v15

    move/from16 v15, v20

    move/from16 v17, v1

    move/from16 v20, v0

    invoke-direct/range {v3 .. v22}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(IIIIIIIFIIZZIIIZIII)V

    return-object v23
.end method

.method public static zzf([Z)V
    .registers 3

    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method
