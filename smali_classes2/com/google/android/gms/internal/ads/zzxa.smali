###### Class com.google.android.gms.internal.ads.zzxa (com.google.android.gms.internal.ads.zzxa)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxr;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzxk;

.field public final synthetic zzb:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxk;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxa;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxa;->zzb:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzdc;[I)Ljava/util/List;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    sget v1, Lcom/google/android/gms/internal/ads/zzxw;->zzb:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzxa;->zza:Lcom/google/android/gms/internal/ads/zzxk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzxa;->zzb:[I

    aget v11, v1, p1

    iget v1, v10, Lcom/google/android/gms/internal/ads/zzdj;->zzl:I

    iget v2, v10, Lcom/google/android/gms/internal/ads/zzdj;->zzm:I

    iget-boolean v3, v10, Lcom/google/android/gms/internal/ads/zzdj;->zzn:Z

    const/4 v12, -0x1

    const v14, 0x7fffffff

    const/4 v15, 0x0

    if-eq v1, v14, :cond_84

    if-ne v2, v14, :cond_1d

    goto/16 :goto_87

    :cond_1d
    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_21
    iget v6, v9, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    if-gtz v4, :cond_82

    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v4

    iget v6, v4, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    if-lez v6, :cond_7c

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    if-lez v7, :cond_7c

    if-eqz v3, :cond_42

    if-gt v6, v7, :cond_37

    const/4 v8, 0x0

    goto :goto_38

    :cond_37
    const/4 v8, 0x1

    :goto_38
    if-gt v1, v2, :cond_3c

    const/4 v13, 0x0

    goto :goto_3d

    :cond_3c
    const/4 v13, 0x1

    :goto_3d
    if-eq v8, v13, :cond_42

    move v8, v1

    move v13, v2

    goto :goto_44

    :cond_42
    move v13, v1

    move v8, v2

    :goto_44
    mul-int v14, v6, v8

    mul-int v15, v7, v13

    if-lt v14, v15, :cond_55

    new-instance v7, Landroid/graphics/Point;

    sget v8, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    add-int/2addr v15, v6

    add-int/2addr v15, v12

    div-int/2addr v15, v6

    invoke-direct {v7, v13, v15}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_60

    :cond_55
    new-instance v6, Landroid/graphics/Point;

    sget v13, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    add-int/2addr v14, v7

    add-int/2addr v14, v12

    div-int/2addr v14, v7

    invoke-direct {v6, v14, v8}, Landroid/graphics/Point;-><init>(II)V

    move-object v7, v6

    :goto_60
    iget v6, v4, Lcom/google/android/gms/internal/ads/zzam;->zzr:I

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzam;->zzs:I

    mul-int v8, v6, v4

    iget v13, v7, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    const v14, 0x3f7ae148    # 0.98f

    mul-float v13, v13, v14

    float-to-int v13, v13

    if-lt v6, v13, :cond_7c

    iget v6, v7, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    mul-float v6, v6, v14

    float-to-int v6, v6

    if-lt v4, v6, :cond_7c

    if-ge v8, v5, :cond_7c

    move v5, v8

    :cond_7c
    const/4 v4, 0x1

    const v14, 0x7fffffff

    const/4 v15, 0x0

    goto :goto_21

    :cond_82
    move v14, v5

    goto :goto_87

    :cond_84
    const v14, 0x7fffffff

    :goto_87
    new-instance v13, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    const/4 v1, 0x0

    :goto_8d
    iget v2, v9, Lcom/google/android/gms/internal/ads/zzdc;->zzb:I

    if-gtz v1, :cond_c4

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Lcom/google/android/gms/internal/ads/zzdc;->zzb(I)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzam;->zza()I

    move-result v1

    const v8, 0x7fffffff

    if-eq v14, v8, :cond_a7

    if-eq v1, v12, :cond_a4

    if-gt v1, v14, :cond_a4

    goto :goto_a7

    :cond_a4
    const/16 v16, 0x0

    goto :goto_a9

    :cond_a7
    :goto_a7
    const/16 v16, 0x1

    :goto_a9
    new-instance v7, Lcom/google/android/gms/internal/ads/zzxv;

    const/4 v4, 0x0

    aget v6, p3, v15

    move-object v1, v7

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object v5, v10

    move-object v12, v7

    move v7, v11

    const v17, 0x7fffffff

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzxv;-><init>(ILcom/google/android/gms/internal/ads/zzdc;ILcom/google/android/gms/internal/ads/zzxk;IIZ)V

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    const/4 v1, 0x1

    const/4 v12, -0x1

    goto :goto_8d

    :cond_c4
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    return-object v1
.end method
