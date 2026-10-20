###### Class com.google.android.gms.internal.ads.zzalf (com.google.android.gms.internal.ads.zzalf)
.class final Lcom/google/android/gms/internal/ads/zzalf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzakx;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzalg;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfi;

.field private final zzc:Landroid/util/SparseArray;

.field private final zzd:Landroid/util/SparseIntArray;

.field private final zze:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzalg;I)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzfi;-><init>([BI)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzc:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:Landroid/util/SparseIntArray;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzalf;->zze:I

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;)V
    .registers 30

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_d

    goto/16 :goto_26c

    :cond_d
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzk(Lcom/google/android/gms/internal/ads/zzalg;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfq;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_26c

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v1, v8, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzB(Lcom/google/android/gms/internal/ads/zzfi;I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzalg;->zzl(Lcom/google/android/gms/internal/ads/zzalg;I)V

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v1, v8, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzB(Lcom/google/android/gms/internal/ads/zzfi;I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v9, 0xc

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v3

    :goto_69
    if-lez v3, :cond_1e9

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/4 v12, 0x5

    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzB(Lcom/google/android/gms/internal/ads/zzfi;I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    const/16 v13, 0x8

    invoke-virtual {v11, v13}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v13

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v11

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v14, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzb:Lcom/google/android/gms/internal/ads/zzfi;

    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v15

    add-int v9, v15, v14

    const/16 v16, -0x1

    const/16 v17, 0x0

    move-object/from16 v5, v17

    move-object/from16 v18, v5

    const/4 v10, -0x1

    :goto_9c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v4

    if-ge v4, v9, :cond_199

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v20

    add-int v8, v20, v19

    if-le v8, v9, :cond_b4

    goto/16 :goto_199

    :cond_b4
    const/16 v7, 0x59

    const/16 v20, 0xac

    const/16 v22, 0x87

    const/16 v23, 0x81

    if-ne v4, v12, :cond_f0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v24

    const-wide/32 v26, 0x41432d33

    cmp-long v4, v24, v26

    if-nez v4, :cond_ca

    goto :goto_f4

    :cond_ca
    const-wide/32 v26, 0x45414333

    cmp-long v4, v24, v26

    if-nez v4, :cond_d2

    goto :goto_101

    :cond_d2
    const-wide/32 v22, 0x41432d34

    cmp-long v4, v24, v22

    if-nez v4, :cond_e0

    :goto_d9
    move-object/from16 v21, v2

    move/from16 v22, v6

    const/16 v10, 0xac

    goto :goto_fa

    :cond_e0
    const-wide/32 v22, 0x48455643

    cmp-long v4, v24, v22

    if-nez v4, :cond_115

    const/16 v4, 0x24

    move-object/from16 v21, v2

    move/from16 v22, v6

    const/16 v10, 0x24

    goto :goto_fa

    :cond_f0
    const/16 v12, 0x6a

    if-ne v4, v12, :cond_fd

    :goto_f4
    move-object/from16 v21, v2

    move/from16 v22, v6

    const/16 v10, 0x81

    :goto_fa
    const/4 v12, 0x4

    goto/16 :goto_188

    :cond_fd
    const/16 v12, 0x7a

    if-ne v4, v12, :cond_108

    :goto_101
    move-object/from16 v21, v2

    move/from16 v22, v6

    const/16 v10, 0x87

    goto :goto_fa

    :cond_108
    const/16 v12, 0x7f

    if-ne v4, v12, :cond_118

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v4

    const/16 v7, 0x15

    if-ne v4, v7, :cond_115

    goto :goto_d9

    :cond_115
    move-object/from16 v21, v2

    goto :goto_137

    :cond_118
    const/16 v12, 0x7b

    if-ne v4, v12, :cond_125

    const/16 v4, 0x8a

    move-object/from16 v21, v2

    move/from16 v22, v6

    const/16 v10, 0x8a

    goto :goto_fa

    :cond_125
    const/16 v12, 0xa

    if-ne v4, v12, :cond_13a

    sget-object v4, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    const/4 v12, 0x3

    invoke-virtual {v1, v12, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v2

    move-object v5, v4

    :goto_137
    move/from16 v22, v6

    goto :goto_fa

    :cond_13a
    const/4 v12, 0x3

    if-ne v4, v7, :cond_17b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_142
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v10

    if-ge v10, v8, :cond_171

    sget-object v10, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v12, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v7

    move-object/from16 v21, v2

    const/4 v12, 0x4

    new-array v2, v12, [B

    move/from16 v22, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzalh;

    invoke-direct {v6, v10, v7, v2}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Ljava/lang/String;I[B)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v21

    move/from16 v6, v22

    const/16 v7, 0x59

    const/4 v12, 0x3

    goto :goto_142

    :cond_171
    move-object/from16 v21, v2

    move/from16 v22, v6

    const/4 v12, 0x4

    move-object/from16 v18, v4

    const/16 v10, 0x59

    goto :goto_188

    :cond_17b
    move-object/from16 v21, v2

    move/from16 v22, v6

    const/4 v12, 0x4

    const/16 v2, 0x6f

    if-ne v4, v2, :cond_188

    const/16 v2, 0x101

    const/16 v10, 0x101

    :cond_188
    :goto_188
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v2

    sub-int/2addr v8, v2

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    move-object/from16 v2, v21

    move/from16 v6, v22

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/4 v12, 0x5

    goto/16 :goto_9c

    :cond_199
    :goto_199
    move-object/from16 v21, v2

    move/from16 v22, v6

    const/4 v12, 0x4

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzali;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    invoke-static {v4, v15, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    move-object/from16 v6, v18

    invoke-direct {v2, v10, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzali;-><init>(ILjava/lang/String;Ljava/util/List;[B)V

    const/4 v4, 0x6

    if-eq v13, v4, :cond_1b6

    const/4 v4, 0x5

    if-ne v13, v4, :cond_1b8

    :cond_1b6
    iget v13, v2, Lcom/google/android/gms/internal/ads/zzali;->zza:I

    :cond_1b8
    add-int/lit8 v14, v14, 0x5

    sub-int/2addr v3, v14

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalg;->zzg(Lcom/google/android/gms/internal/ads/zzalg;)Landroid/util/SparseBooleanArray;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1db

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzalg;->zzj(Lcom/google/android/gms/internal/ads/zzalg;)Lcom/google/android/gms/internal/ads/zzalj;

    move-result-object v4

    invoke-interface {v4, v13, v2}, Lcom/google/android/gms/internal/ads/zzalj;->zza(ILcom/google/android/gms/internal/ads/zzali;)Lcom/google/android/gms/internal/ads/zzall;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v11, v11}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v4, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1db
    move-object/from16 v2, v21

    move/from16 v6, v22

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x4

    const/16 v9, 0xc

    const/16 v10, 0xd

    goto/16 :goto_69

    :cond_1e9
    move-object/from16 v21, v2

    move/from16 v22, v6

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v6, 0x0

    :goto_1f4
    if-ge v6, v1, :cond_246

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzd:Landroid/util/SparseIntArray;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzalg;->zzg(Lcom/google/android/gms/internal/ads/zzalg;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzalg;->zzh(Lcom/google/android/gms/internal/ads/zzalg;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzalf;->zzc:Landroid/util/SparseArray;

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzall;

    if-eqz v3, :cond_23b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalg;->zzi(Lcom/google/android/gms/internal/ads/zzalg;)Lcom/google/android/gms/internal/ads/zzach;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzalk;

    const/16 v8, 0x2000

    move/from16 v9, v22

    invoke-direct {v7, v9, v4, v8}, Lcom/google/android/gms/internal/ads/zzalk;-><init>(III)V

    move-object/from16 v4, v21

    invoke-interface {v3, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzall;->zzb(Lcom/google/android/gms/internal/ads/zzfq;Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(Lcom/google/android/gms/internal/ads/zzalg;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_23f

    :cond_23b
    move-object/from16 v4, v21

    move/from16 v9, v22

    :goto_23f
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v21, v4

    move/from16 v22, v9

    goto :goto_1f4

    :cond_246
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzalf;->zze:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzf(Lcom/google/android/gms/internal/ads/zzalg;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzm(Lcom/google/android/gms/internal/ads/zzalg;I)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalg;->zza(Lcom/google/android/gms/internal/ads/zzalg;)I

    move-result v2

    if-nez v2, :cond_26c

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzalg;->zzi(Lcom/google/android/gms/internal/ads/zzalg;)Lcom/google/android/gms/internal/ads/zzach;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzach;->zzD()V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzalf;->zza:Lcom/google/android/gms/internal/ads/zzalg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzalg;->zzn(Lcom/google/android/gms/internal/ads/zzalg;Z)V

    :cond_26c
    :goto_26c
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfq;Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V
    .registers 4

    return-void
.end method
