###### Class com.google.android.gms.internal.ads.zzaio (com.google.android.gms.internal.ads.zzaio)
.class final Lcom/google/android/gms/internal/ads/zzaio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaio;->zza:[I

    return-void

    :array_a
    .array-data 4
        0x69736f6d
        0x69736f32
        0x69736f33
        0x69736f34
        0x69736f35
        0x69736f36
        0x69736f39
        0x61766331
        0x68766331
        0x68657631
        0x61763031
        0x6d703431
        0x6d703432
        0x33673261
        0x33673262
        0x33677236
        0x33677336
        0x33676536
        0x33676736
        0x4d345620    # 1.8909645E8f
        0x4d344120    # 1.8901043E8f
        0x66347620
        0x6b646469
        0x4d345650
        0x71742020
        0x4d534e56    # 2.215704E8f
        0x64627931
        0x69736d6c
        0x70696666
    .end array-data
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzaio;->zzc(Lcom/google/android/gms/internal/ads/zzacf;ZZ)Z

    move-result p0

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzacf;Z)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzaio;->zzc(Lcom/google/android/gms/internal/ads/zzacf;ZZ)Z

    move-result p0

    return p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/ads/zzacf;ZZ)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    const-wide/16 v5, 0x1000

    cmp-long v7, v1, v3

    if-eqz v7, :cond_14

    cmp-long v8, v1, v5

    if-lez v8, :cond_13

    goto :goto_14

    :cond_13
    move-wide v5, v1

    :cond_14
    :goto_14
    new-instance v8, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v9, 0x40

    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    long-to-int v6, v5

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1f
    const/4 v11, 0x1

    if-ge v9, v6, :cond_108

    const/16 v12, 0x8

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v13

    invoke-interface {v0, v13, v5, v12, v11}, Lcom/google/android/gms/internal/ads/zzacf;->zzm([BIIZ)Z

    move-result v13

    if-nez v13, :cond_33

    goto/16 :goto_108

    :cond_33
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v13

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v15

    const-wide/16 v16, 0x1

    const/16 v11, 0x10

    cmp-long v18, v13, v16

    if-nez v18, :cond_52

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v13

    invoke-interface {v0, v13, v12, v12}, Lcom/google/android/gms/internal/ads/zzacf;->zzh([BII)V

    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzs()J

    move-result-wide v13

    goto :goto_6c

    :cond_52
    const-wide/16 v16, 0x0

    cmp-long v11, v13, v16

    if-nez v11, :cond_6a

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v16

    cmp-long v11, v16, v3

    if-eqz v11, :cond_6a

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzacf;->zze()J

    move-result-wide v13

    sub-long v16, v16, v13

    const-wide/16 v13, 0x8

    add-long v13, v16, v13

    :cond_6a
    const/16 v11, 0x8

    :goto_6c
    int-to-long v3, v11

    cmp-long v18, v13, v3

    if-gez v18, :cond_72

    return v5

    :cond_72
    add-int/2addr v9, v11

    const v11, 0x6d6f6f76

    if-ne v15, v11, :cond_85

    long-to-int v3, v13

    add-int/2addr v6, v3

    if-eqz v7, :cond_82

    int-to-long v3, v6

    cmp-long v11, v3, v1

    if-lez v11, :cond_82

    long-to-int v6, v1

    :cond_82
    :goto_82
    const-wide/16 v3, -0x1

    goto :goto_1f

    :cond_85
    const v11, 0x6d6f6f66

    if-eq v15, v11, :cond_106

    const v11, 0x6d766578

    if-ne v15, v11, :cond_91

    goto/16 :goto_106

    :cond_91
    const v11, 0x6d646174

    if-ne v15, v11, :cond_98

    const/4 v11, 0x0

    goto :goto_99

    :cond_98
    const/4 v11, 0x1

    :goto_99
    const/16 v18, 0x1

    xor-int/lit8 v11, v11, 0x1

    or-int/2addr v10, v11

    move-wide/from16 v18, v1

    int-to-long v1, v9

    add-long/2addr v1, v13

    move-wide/from16 v20, v13

    int-to-long v12, v6

    sub-long/2addr v1, v3

    cmp-long v14, v1, v12

    if-ltz v14, :cond_ab

    goto :goto_108

    :cond_ab
    sub-long v13, v20, v3

    long-to-int v1, v13

    add-int/2addr v9, v1

    const v2, 0x66747970

    if-ne v15, v2, :cond_fd

    const/16 v2, 0x8

    if-ge v1, v2, :cond_b9

    return v5

    :cond_b9
    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    invoke-interface {v0, v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzh([BII)V

    shr-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_c6
    if-ge v2, v1, :cond_f7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d0

    const/4 v3, 0x4

    invoke-virtual {v8, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    goto :goto_f4

    :cond_d0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    ushr-int/lit8 v4, v3, 0x8

    const v11, 0x336770

    if-ne v4, v11, :cond_dd

    :goto_db
    const/4 v11, 0x1

    goto :goto_f8

    :cond_dd
    const v4, 0x68656963

    if-ne v3, v4, :cond_e5

    const v3, 0x68656963

    :cond_e5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzaio;->zza:[I

    const/4 v11, 0x0

    :goto_e8
    const/16 v12, 0x1d

    if-ge v11, v12, :cond_f4

    aget v12, v4, v11

    if-ne v12, v3, :cond_f1

    goto :goto_db

    :cond_f1
    add-int/lit8 v11, v11, 0x1

    goto :goto_e8

    :cond_f4
    :goto_f4
    add-int/lit8 v2, v2, 0x1

    goto :goto_c6

    :cond_f7
    move v11, v10

    :goto_f8
    if-eqz v11, :cond_fc

    move v10, v11

    goto :goto_102

    :cond_fc
    return v5

    :cond_fd
    if-eqz v1, :cond_102

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzacf;->zzg(I)V

    :cond_102
    :goto_102
    move-wide/from16 v1, v18

    goto/16 :goto_82

    :cond_106
    :goto_106
    const/4 v0, 0x1

    goto :goto_109

    :cond_108
    :goto_108
    const/4 v0, 0x0

    :goto_109
    if-eqz v10, :cond_111

    move/from16 v1, p1

    if-ne v1, v0, :cond_111

    const/4 v0, 0x1

    return v0

    :cond_111
    return v5
.end method
