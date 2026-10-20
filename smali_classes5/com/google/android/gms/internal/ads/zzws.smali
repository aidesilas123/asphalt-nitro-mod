###### Class com.google.android.gms.internal.ads.zzws (com.google.android.gms.internal.ads.zzws)
.class public final Lcom/google/android/gms/internal/ads/zzws;
.super Lcom/google/android/gms/internal/ads/zzwu;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zzd:Lcom/google/android/gms/internal/ads/zzym;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfwu;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeg;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzdc;[IILcom/google/android/gms/internal/ads/zzym;JJJIIFFLjava/util/List;Lcom/google/android/gms/internal/ads/zzeg;)V
    .registers 21

    move-object v0, p0

    const/4 v1, 0x0

    move-object v2, p1

    move-object v3, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzwu;-><init>(Lcom/google/android/gms/internal/ads/zzdc;[II)V

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzws;->zzd:Lcom/google/android/gms/internal/ads/zzym;

    invoke-static/range {p15 .. p15}, Lcom/google/android/gms/internal/ads/zzfwu;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzws;->zze:Lcom/google/android/gms/internal/ads/zzfwu;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzws;->zzf:Lcom/google/android/gms/internal/ads/zzeg;

    return-void
.end method

.method static bridge synthetic zzf([Lcom/google/android/gms/internal/ads/zzxx;)Lcom/google/android/gms/internal/ads/zzfwu;
    .registers 23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ge v2, v5, :cond_2e

    aget-object v5, p0, v2

    if-eqz v5, :cond_27

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzxx;->zzb:[I

    array-length v5, v5

    if-le v5, v6, :cond_27

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzwq;

    invoke-direct {v6, v3, v4, v3, v4}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(JJ)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_27
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_2e
    new-array v2, v5, [[J

    const/4 v7, 0x0

    :goto_31
    const-wide/16 v8, -0x1

    if-ge v7, v5, :cond_6a

    aget-object v10, p0, v7

    if-nez v10, :cond_3e

    new-array v8, v1, [J

    aput-object v8, v2, v7

    goto :goto_67

    :cond_3e
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzxx;->zzb:[I

    array-length v11, v11

    new-array v11, v11, [J

    aput-object v11, v2, v7

    const/4 v11, 0x0

    :goto_46
    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzxx;->zzb:[I

    array-length v13, v12

    if-ge v11, v13, :cond_62

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzxx;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    aget v12, v12, v11

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v12

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzam;->zzi:I

    int-to-long v12, v12

    aget-object v14, v2, v7

    cmp-long v15, v12, v8

    if-nez v15, :cond_5d

    move-wide v12, v3

    :cond_5d
    aput-wide v12, v14, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_46

    :cond_62
    aget-object v8, v2, v7

    invoke-static {v8}, Ljava/util/Arrays;->sort([J)V

    :goto_67
    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_6a
    new-array v7, v5, [I

    new-array v10, v5, [J

    const/4 v11, 0x0

    :goto_6f
    if-ge v11, v5, :cond_7f

    aget-object v12, v2, v11

    array-length v13, v12

    if-nez v13, :cond_78

    move-wide v13, v3

    goto :goto_7a

    :cond_78
    aget-wide v13, v12, v1

    :goto_7a
    aput-wide v13, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6f

    :cond_7f
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzws;->zzg(Ljava/util/List;[J)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyd;->zzc()Lcom/google/android/gms/internal/ads/zzfyd;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfxy;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfxw;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzfxw;->zzb(I)Lcom/google/android/gms/internal/ads/zzfxu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfxu;->zza()Lcom/google/android/gms/internal/ads/zzfxf;

    move-result-object v3

    const/4 v4, 0x0

    :goto_93
    if-ge v4, v5, :cond_ee

    aget-object v11, v2, v4

    array-length v11, v11

    if-gt v11, v6, :cond_9b

    goto :goto_e8

    :cond_9b
    new-array v12, v11, [D

    const/4 v13, 0x0

    :goto_9e
    aget-object v14, v2, v4

    array-length v15, v14

    const-wide/16 v16, 0x0

    if-ge v13, v15, :cond_b8

    aget-wide v5, v14, v13

    cmp-long v14, v5, v8

    if-nez v14, :cond_ac

    goto :goto_b1

    :cond_ac
    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    move-result-wide v16

    :goto_b1
    aput-wide v16, v12, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_9e

    :cond_b8
    add-int/lit8 v11, v11, -0x1

    aget-wide v5, v12, v11

    aget-wide v13, v12, v1

    sub-double/2addr v5, v13

    const/4 v13, 0x0

    :goto_c0
    if-ge v13, v11, :cond_e8

    aget-wide v18, v12, v13

    add-int/lit8 v13, v13, 0x1

    aget-wide v20, v12, v13

    add-double v18, v18, v20

    cmpl-double v14, v5, v16

    if-nez v14, :cond_d1

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    goto :goto_db

    :cond_d1
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v20

    aget-wide v20, v12, v1

    sub-double v18, v18, v20

    div-double v18, v18, v5

    :goto_db
    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v14, v1}, Lcom/google/android/gms/internal/ads/zzfxq;->zzq(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 v1, 0x0

    goto :goto_c0

    :cond_e8
    :goto_e8
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    goto :goto_93

    :cond_ee
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfxq;->zzr()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwu;->zzj(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    const/4 v3, 0x0

    :goto_f7
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v3, v4, :cond_119

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget v5, v7, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v7, v4

    aget-object v8, v2, v4

    aget-wide v11, v8, v5

    aput-wide v11, v10, v4

    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzws;->zzg(Ljava/util/List;[J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f7

    :cond_119
    const/4 v1, 0x0

    const/4 v2, 0x2

    :goto_11b
    if-ge v1, v2, :cond_12b

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_128

    aget-wide v3, v10, v1

    add-long/2addr v3, v3

    aput-wide v3, v10, v1

    :cond_128
    add-int/lit8 v1, v1, 0x1

    goto :goto_11b

    :cond_12b
    invoke-static {v0, v10}, Lcom/google/android/gms/internal/ads/zzws;->zzg(Ljava/util/List;[J)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    const/4 v2, 0x0

    :goto_134
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_151

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfwr;

    if-nez v3, :cond_147

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwu;->zzl()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v3

    goto :goto_14b

    :cond_147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v3

    :goto_14b
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    add-int/lit8 v2, v2, 0x1

    goto :goto_134

    :cond_151
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v0

    return-object v0
.end method

.method private static zzg(Ljava/util/List;[J)V
    .registers 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x2

    if-ge v3, v4, :cond_d

    aget-wide v4, p1, v3

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_28

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfwr;

    if-eqz v3, :cond_25

    new-instance v4, Lcom/google/android/gms/internal/ads/zzwq;

    aget-wide v5, p1, v0

    invoke-direct {v4, v1, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzwq;-><init>(JJ)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_28
    return-void
.end method
