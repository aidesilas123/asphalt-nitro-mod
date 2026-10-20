###### Class com.google.android.gms.internal.ads.zzaia (com.google.android.gms.internal.ads.zzaia)
.class final Lcom/google/android/gms/internal/ads/zzaia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    const-string v1, "OpusHead"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzaia;->zza:[B

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzahq;)Lcom/google/android/gms/internal/ads/zzcb;
    .registers 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const v0, 0x68646c72    # 4.3148E24f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v0

    const v1, 0x6b657973

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v1

    const v2, 0x696c7374

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_d2

    if-eqz v1, :cond_d2

    if-eqz p0, :cond_d2

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaia;->zzg(Lcom/google/android/gms/internal/ads/zzfj;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_29

    goto/16 :goto_d2

    :cond_29
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_38
    if-ge v5, v1, :cond_4f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v6

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    add-int/lit8 v6, v6, -0x8

    sget-object v7, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    :cond_4f
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_5b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v6

    if-le v6, v0, :cond_c6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_ac

    if-ge v7, v1, :cond_ac

    aget-object v7, v3, v7

    sget v8, Lcom/google/android/gms/internal/ads/zzaih;->zzb:I

    :goto_78
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v8

    if-ge v8, v6, :cond_a5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v9

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_a0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    new-array v11, v9, [B

    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfw;

    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzfw;-><init>(Ljava/lang/String;[BII)V

    goto :goto_a6

    :cond_a0
    add-int/2addr v8, v9

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto :goto_78

    :cond_a5
    move-object v9, v2

    :goto_a6
    if-eqz v9, :cond_c2

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c2

    :cond_ac
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped metadata with unknown key index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AtomParsers"

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c2
    :goto_c2
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto :goto_5b

    :cond_c6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_d2

    new-instance p0, Lcom/google/android/gms/internal/ads/zzcb;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_d2
    :goto_d2
    return-object v2
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzahr;)Lcom/google/android/gms/internal/ads/zzcb;
    .registers 15

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcb;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzca;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(J[Lcom/google/android/gms/internal/ads/zzca;)V

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v3

    if-lt v3, v0, :cond_130

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    const v8, 0x6d657461

    const/4 v9, 0x0

    if-ne v7, v8, :cond_80

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaia;->zze(Lcom/google/android/gms/internal/ads/zzfj;)V

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    if-ge v3, v6, :cond_7a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v8

    const v10, 0x696c7374

    if-ne v8, v10, :cond_76

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_59
    :goto_59
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v8

    if-ge v8, v7, :cond_69

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaih;->zza(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzca;

    move-result-object v8

    if-eqz v8, :cond_59

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_69
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_70

    goto :goto_7a

    :cond_70
    new-instance v9, Lcom/google/android/gms/internal/ads/zzcb;

    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(Ljava/util/List;)V

    goto :goto_7a

    :cond_76
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto :goto_36

    :cond_7a
    :goto_7a
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzcb;->zzd(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v1

    goto/16 :goto_12b

    :cond_80
    const v8, 0x736d7461

    if-ne v7, v8, :cond_11e

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/16 v3, 0xc

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :goto_8d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v7

    if-ge v7, v6, :cond_119

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v10

    const v11, 0x73617574

    if-ne v10, v11, :cond_113

    const/16 v7, 0x10

    if-ge v8, v7, :cond_aa

    goto/16 :goto_119

    :cond_aa
    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_b1
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v11, :cond_c7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v11

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v13

    if-nez v11, :cond_c1

    move v7, v13

    goto :goto_c4

    :cond_c1
    if-ne v11, v12, :cond_c4

    move v10, v13

    :cond_c4
    :goto_c4
    add-int/lit8 v8, v8, 0x1

    goto :goto_b1

    :cond_c7
    const v8, -0x7fffffff

    if-ne v7, v3, :cond_cf

    const/16 v3, 0xf0

    goto :goto_100

    :cond_cf
    const/16 v11, 0xd

    if-ne v7, v11, :cond_d6

    const/16 v3, 0x78

    goto :goto_100

    :cond_d6
    const/16 v11, 0x15

    if-eq v7, v11, :cond_de

    :cond_da
    :goto_da
    const v3, -0x7fffffff

    goto :goto_100

    :cond_de
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v7

    if-lt v7, v0, :cond_da

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v7

    add-int/2addr v7, v0

    if-le v7, v6, :cond_ec

    goto :goto_da

    :cond_ec
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v11

    if-lt v7, v3, :cond_da

    const v3, 0x73726672

    if-eq v11, v3, :cond_fc

    goto :goto_da

    :cond_fc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzm()I

    move-result v3

    :goto_100
    if-ne v3, v8, :cond_103

    goto :goto_119

    :cond_103
    new-instance v9, Lcom/google/android/gms/internal/ads/zzcb;

    new-array v7, v12, [Lcom/google/android/gms/internal/ads/zzca;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzagr;

    int-to-float v3, v3

    invoke-direct {v8, v3, v10}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(FI)V

    aput-object v8, v7, v2

    invoke-direct {v9, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(J[Lcom/google/android/gms/internal/ads/zzca;)V

    goto :goto_119

    :cond_113
    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto/16 :goto_8d

    :cond_119
    :goto_119
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzcb;->zzd(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v1

    goto :goto_12b

    :cond_11e
    const v3, -0x56878686

    if-ne v7, v3, :cond_12b

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaia;->zzi(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzcb;->zzd(Lcom/google/android/gms/internal/ads/zzcb;)Lcom/google/android/gms/internal/ads/zzcb;

    move-result-object v1

    :cond_12b
    :goto_12b
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto/16 :goto_14

    :cond_130
    return-object v1
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzgc;
    .registers 12

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahs;->zze(I)I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v2

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzs()J

    move-result-wide v2

    :goto_20
    move-wide v5, v0

    move-wide v7, v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v9

    new-instance p0, Lcom/google/android/gms/internal/ads/zzgc;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzgc;-><init>(JJJ)V

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzacu;JLcom/google/android/gms/internal/ads/zzad;ZZLcom/google/android/gms/internal/ads/zzftn;)Ljava/util/List;
    .registers 66
    .param p4    # Lcom/google/android/gms/internal/ads/zzad;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_a
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v14, v1, :cond_a0b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->zzc:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/gms/internal/ads/zzahq;

    iget v1, v15, Lcom/google/android/gms/internal/ads/zzahs;->zzd:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_2d

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v12

    move/from16 v33, v14

    const/16 v32, 0x0

    goto/16 :goto_9fa

    :cond_2d
    const v1, 0x6d766864

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v10, 0x6d646961

    invoke-virtual {v15, v10}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x68646c72    # 4.3148E24f

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzaia;->zzg(Lcom/google/android/gms/internal/ads/zzfj;)I

    move-result v3

    const v4, 0x736f756e

    const/16 v16, 0x5

    const/4 v7, -0x1

    if-ne v3, v4, :cond_5b

    const/4 v5, 0x1

    goto :goto_81

    :cond_5b
    const v4, 0x76696465

    if-ne v3, v4, :cond_62

    const/4 v5, 0x2

    goto :goto_81

    :cond_62
    const v4, 0x74657874

    if-eq v3, v4, :cond_80

    const v4, 0x7362746c

    if-eq v3, v4, :cond_80

    const v4, 0x73756274

    if-eq v3, v4, :cond_80

    const v4, 0x636c6370

    if-ne v3, v4, :cond_77

    goto :goto_80

    :cond_77
    const v4, 0x6d657461

    if-ne v3, v4, :cond_7e

    const/4 v5, 0x5

    goto :goto_81

    :cond_7e
    const/4 v5, -0x1

    goto :goto_81

    :cond_80
    :goto_80
    const/4 v5, 0x3

    :goto_81
    if-ne v5, v7, :cond_8f

    move-object/from16 v0, p7

    move-object/from16 v34, v12

    move/from16 v33, v14

    move-object v1, v15

    const/4 v4, 0x0

    const/16 v32, 0x0

    goto/16 :goto_9c4

    :cond_8f
    const v3, 0x746b6864

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzahs;->zze(I)I

    move-result v17

    const/16 v13, 0x10

    if-nez v17, :cond_af

    const/16 v4, 0x8

    goto :goto_b1

    :cond_af
    const/16 v4, 0x10

    :goto_b1
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v4

    const/4 v8, 0x4

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v20

    const/4 v9, 0x0

    :goto_c1
    if-nez v17, :cond_c5

    const/4 v10, 0x4

    goto :goto_c7

    :cond_c5
    const/16 v10, 0x8

    :goto_c7
    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    if-ge v9, v10, :cond_f0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v10

    add-int v25, v20, v9

    aget-byte v10, v10, v25

    if-eq v10, v7, :cond_ea

    if-nez v17, :cond_df

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v9

    goto :goto_e3

    :cond_df
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzu()J

    move-result-wide v9

    :goto_e3
    const-wide/16 v25, 0x0

    cmp-long v17, v9, v25

    if-nez v17, :cond_f5

    goto :goto_f3

    :cond_ea
    add-int/lit8 v9, v9, 0x1

    const v10, 0x6d646961

    goto :goto_c1

    :cond_f0
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :goto_f3
    move-wide/from16 v9, v23

    :cond_f5
    invoke-virtual {v3, v13}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v17

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    const/high16 v13, 0x10000

    const/high16 v6, -0x10000

    if-nez v17, :cond_123

    if-ne v7, v13, :cond_121

    if-ne v8, v6, :cond_11f

    if-nez v3, :cond_11a

    const/16 v3, 0x5a

    goto :goto_144

    :cond_11a
    const/high16 v7, 0x10000

    const/high16 v8, -0x10000

    goto :goto_121

    :cond_11f
    const/high16 v7, 0x10000

    :cond_121
    :goto_121
    const/16 v17, 0x0

    :cond_123
    if-nez v17, :cond_135

    if-ne v7, v6, :cond_132

    if-ne v8, v13, :cond_12e

    if-nez v3, :cond_12f

    const/16 v3, 0x10e

    goto :goto_144

    :cond_12e
    move v13, v8

    :cond_12f
    const/high16 v7, -0x10000

    goto :goto_133

    :cond_132
    move v13, v8

    :goto_133
    const/4 v8, 0x0

    goto :goto_138

    :cond_135
    move v13, v8

    move/from16 v8, v17

    :goto_138
    if-ne v8, v6, :cond_143

    if-nez v7, :cond_143

    if-nez v13, :cond_143

    if-ne v3, v6, :cond_143

    const/16 v3, 0xb4

    goto :goto_144

    :cond_143
    const/4 v3, 0x0

    :goto_144
    new-instance v13, Lcom/google/android/gms/internal/ads/zzahz;

    invoke-direct {v13, v4, v9, v10, v3}, Lcom/google/android/gms/internal/ads/zzahz;-><init>(IJI)V

    cmp-long v3, p2, v23

    if-nez v3, :cond_154

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzahz;->zzc(Lcom/google/android/gms/internal/ads/zzahz;)J

    move-result-wide v3

    move-wide/from16 v33, v3

    goto :goto_156

    :cond_154
    move-wide/from16 v33, p2

    :goto_156
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzaia;->zzc(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzgc;

    move-result-object v1

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzgc;->zzc:J

    cmp-long v1, v33, v23

    if-nez v1, :cond_165

    move-wide/from16 v28, v23

    goto :goto_172

    :cond_165
    const-wide/32 v35, 0xf4240

    sget-object v39, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v37, v9

    invoke-static/range {v33 .. v39}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v3

    move-wide/from16 v28, v3

    :goto_172
    const v1, 0x6d696e66

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d646864

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzahs;->zze(I)I

    move-result v3

    if-nez v3, :cond_1a4

    const/16 v4, 0x8

    goto :goto_1a6

    :cond_1a4
    const/16 v4, 0x10

    :goto_1a6
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    if-nez v3, :cond_1ad

    const/4 v8, 0x4

    goto :goto_1af

    :cond_1ad
    const/16 v8, 0x8

    :goto_1af
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v3

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v2

    shr-int/lit8 v7, v2, 0xa

    shr-int/lit8 v8, v2, 0x5

    and-int/lit8 v2, v2, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v7, v7, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v7, v8, 0x1f

    add-int/lit8 v7, v7, 0x60

    int-to-char v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const v2, 0x73747364

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v1

    if-eqz v1, :cond_a03

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzahz;->zza(Lcom/google/android/gms/internal/ads/zzahz;)I

    move-result v7

    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzahz;->zzb(Lcom/google/android/gms/internal/ads/zzahz;)I

    move-result v6

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v2, 0xc

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahw;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahw;-><init>(I)V

    move/from16 v33, v14

    const/4 v14, 0x0

    :goto_210
    if-ge v14, v1, :cond_908

    move-object/from16 v34, v12

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v12

    move-object/from16 v17, v13

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v13

    if-lez v13, :cond_224

    move/from16 v24, v1

    const/4 v2, 0x1

    goto :goto_227

    :cond_224
    move/from16 v24, v1

    const/4 v2, 0x0

    :goto_227
    const-string v1, "childAtomSize must be positive"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v2

    const v1, 0x61766331

    move/from16 v25, v5

    const v5, 0x656e6376

    if-eq v2, v1, :cond_42a

    const v1, 0x61766333

    if-eq v2, v1, :cond_42a

    if-eq v2, v5, :cond_42a

    const v1, 0x6d317620

    if-eq v2, v1, :cond_42a

    const v1, 0x6d703476

    if-eq v2, v1, :cond_42a

    const v1, 0x68766331

    if-eq v2, v1, :cond_42a

    const v1, 0x68657631

    if-eq v2, v1, :cond_42a

    const v1, 0x73323633

    if-eq v2, v1, :cond_42a

    const v1, 0x48323633

    if-eq v2, v1, :cond_42a

    const v1, 0x76703038

    if-eq v2, v1, :cond_42a

    const v1, 0x76703039

    if-eq v2, v1, :cond_42a

    const v1, 0x61763031

    if-eq v2, v1, :cond_42a

    const v1, 0x64766176

    if-eq v2, v1, :cond_42a

    const v1, 0x64766131

    if-eq v2, v1, :cond_42a

    const v1, 0x64766865

    if-eq v2, v1, :cond_42a

    const v1, 0x64766831

    if-ne v2, v1, :cond_284

    goto/16 :goto_42a

    :cond_284
    const v1, 0x6d703461

    if-eq v2, v1, :cond_3f2

    const v1, 0x656e6361

    if-eq v2, v1, :cond_3f2

    const v1, 0x61632d33

    if-eq v2, v1, :cond_3f2

    const v1, 0x65632d33

    if-eq v2, v1, :cond_3f2

    const v1, 0x61632d34

    if-eq v2, v1, :cond_3f2

    const v1, 0x6d6c7061

    if-eq v2, v1, :cond_3f2

    const v1, 0x64747363

    if-eq v2, v1, :cond_3f2

    const v1, 0x64747365

    if-eq v2, v1, :cond_3f2

    const v1, 0x64747368

    if-eq v2, v1, :cond_3f2

    const v1, 0x6474736c

    if-eq v2, v1, :cond_3f2

    const v1, 0x64747378

    if-eq v2, v1, :cond_3f2

    const v1, 0x73616d72

    if-eq v2, v1, :cond_3f2

    const v1, 0x73617762

    if-eq v2, v1, :cond_3f2

    const v1, 0x6c70636d

    if-eq v2, v1, :cond_3f2

    const v1, 0x736f7774

    if-eq v2, v1, :cond_3f2

    const v1, 0x74776f73

    if-eq v2, v1, :cond_3f2

    const v1, 0x2e6d7032

    if-eq v2, v1, :cond_3f2

    const v1, 0x2e6d7033

    if-eq v2, v1, :cond_3f2

    const v1, 0x6d686131

    if-eq v2, v1, :cond_3f2

    const v1, 0x6d686d31

    if-eq v2, v1, :cond_3f2

    const v1, 0x616c6163

    if-eq v2, v1, :cond_3f2

    const v1, 0x616c6177

    if-eq v2, v1, :cond_3f2

    const v1, 0x756c6177

    if-eq v2, v1, :cond_3f2

    const v1, 0x4f707573

    if-eq v2, v1, :cond_3f2

    const v1, 0x664c6143

    if-ne v2, v1, :cond_303

    goto/16 :goto_3f2

    :cond_303
    const v1, 0x54544d4c

    if-eq v2, v1, :cond_374

    const v1, 0x74783367

    if-eq v2, v1, :cond_374

    const v1, 0x77767474

    if-eq v2, v1, :cond_374

    const v1, 0x73747070

    if-eq v2, v1, :cond_374

    const v1, 0x63363038

    if-ne v2, v1, :cond_31d

    goto :goto_374

    :cond_31d
    const v1, 0x6d657474

    if-ne v2, v1, :cond_343

    add-int/lit8 v1, v12, 0x10

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzw(C)Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzw(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_35b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_35b

    :cond_343
    const v1, 0x63616d6d

    if-ne v2, v1, :cond_35b

    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    const-string v2, "application/x-camera-motion"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    :cond_35b
    :goto_35b
    move-object v5, v0

    move-object/from16 v18, v4

    move v2, v6

    move v4, v7

    move-object/from16 v42, v8

    move-wide/from16 v35, v9

    move/from16 v43, v12

    move/from16 v45, v13

    move/from16 v21, v14

    move-object/from16 p5, v15

    const/4 v0, -0x1

    const/16 v23, 0xc

    const/16 v32, 0x0

    move-object v15, v3

    goto/16 :goto_427

    :cond_374
    :goto_374
    add-int/lit8 v1, v12, 0x10

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const v1, 0x54544d4c

    const-wide v30, 0x7fffffffffffffffL

    if-ne v2, v1, :cond_390

    const-string v1, "application/ttml+xml"

    :goto_385
    move-object v2, v1

    :goto_386
    move-object/from16 v35, v8

    const/4 v1, 0x0

    :goto_389
    move-wide/from16 v56, v30

    move/from16 v31, v6

    move-wide/from16 v5, v56

    goto :goto_3bf

    :cond_390
    const v1, 0x74783367

    if-ne v2, v1, :cond_3a6

    add-int/lit8 v1, v13, -0x10

    new-array v2, v1, [B

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    move-object/from16 v35, v8

    goto :goto_389

    :cond_3a6
    const/4 v5, 0x0

    const v1, 0x77767474

    if-ne v2, v1, :cond_3af

    const-string v1, "application/x-mp4-vtt"

    goto :goto_385

    :cond_3af
    const v1, 0x73747070

    if-ne v2, v1, :cond_3b9

    const-wide/16 v30, 0x0

    const-string v1, "application/ttml+xml"

    goto :goto_385

    :cond_3b9
    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzd:I

    const-string v2, "application/x-mp4-cea-608"

    goto :goto_386

    :goto_3bf
    new-instance v8, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzak;->zzY(J)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    move-object v5, v0

    move-object/from16 v18, v4

    move v4, v7

    move/from16 v43, v12

    move/from16 v45, v13

    move/from16 v21, v14

    move-object/from16 p5, v15

    move/from16 v2, v31

    move-object/from16 v42, v35

    const/4 v0, -0x1

    const/16 v23, 0xc

    const/16 v32, 0x0

    move-object v15, v3

    move-wide/from16 v35, v9

    goto :goto_427

    :cond_3f2
    :goto_3f2
    move/from16 v31, v6

    move-object/from16 v35, v8

    const/4 v6, 0x1

    move-object v1, v3

    const/16 v23, 0xc

    move-object v8, v3

    move v3, v12

    move-object/from16 v18, v4

    const/4 v5, 0x0

    move v4, v13

    move-object/from16 p5, v15

    const/16 v32, 0x0

    move-object v15, v5

    move v5, v7

    move/from16 v40, v31

    move-object/from16 v6, v18

    move/from16 v41, v7

    move/from16 v7, p6

    move-object v15, v8

    move-object/from16 v42, v35

    move-object/from16 v8, p4

    move-wide/from16 v35, v9

    const/4 v10, 0x3

    move-object v9, v0

    move v10, v14

    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzaia;->zzm(Lcom/google/android/gms/internal/ads/zzfj;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzahw;I)V

    move-object v5, v0

    move/from16 v43, v12

    move/from16 v45, v13

    move/from16 v21, v14

    move/from16 v2, v40

    move/from16 v4, v41

    const/4 v0, -0x1

    :goto_427
    const/4 v3, 0x3

    goto/16 :goto_8e7

    :cond_42a
    :goto_42a
    move-object/from16 v18, v4

    move/from16 v40, v6

    move/from16 v41, v7

    move-object/from16 v42, v8

    move-wide/from16 v35, v9

    move-object/from16 p5, v15

    const/16 v23, 0xc

    const/16 v32, 0x0

    move-object v15, v3

    add-int/lit8 v1, v12, 0x10

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/16 v1, 0x10

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v4

    const/16 v6, 0x32

    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v6

    if-ne v2, v5, :cond_486

    invoke-static {v15, v12, v13}, Lcom/google/android/gms/internal/ads/zzaia;->zzh(Lcom/google/android/gms/internal/ads/zzfj;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_47e

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v11, :cond_46a

    const/4 v7, 0x0

    goto :goto_474

    :cond_46a
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzad;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v7

    :goto_474
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahw;->zza:[Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaiq;

    aput-object v2, v8, v14

    move v2, v5

    goto :goto_482

    :cond_47e
    move-object v7, v11

    const v2, 0x656e6376

    :goto_482
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    goto :goto_487

    :cond_486
    move-object v7, v11

    :goto_487
    const v5, 0x6d317620

    if-ne v2, v5, :cond_494

    const-string v5, "video/mpeg"

    move-object/from16 v56, v5

    move v5, v2

    move-object/from16 v2, v56

    goto :goto_49e

    :cond_494
    const v5, 0x48323633

    if-ne v2, v5, :cond_49c

    const-string v2, "video/3gpp"

    goto :goto_49e

    :cond_49c
    move v5, v2

    const/4 v2, 0x0

    :goto_49e
    const/high16 v8, 0x3f800000    # 1.0f

    move v1, v6

    move-object/from16 v37, v7

    move/from16 v21, v14

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v14, -0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v27, 0x8

    const/16 v30, 0x8

    const/16 v31, -0x1

    const/16 v38, 0x0

    const/16 v39, -0x1

    :goto_4ba
    sub-int v8, v1, v12

    if-ge v8, v13, :cond_845

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v8

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v43

    if-nez v43, :cond_4e3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v43

    move-object/from16 v44, v10

    sub-int v10, v43, v12

    if-ne v10, v13, :cond_4e1

    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v48, v7

    move-object/from16 v55, v9

    goto/16 :goto_851

    :cond_4e1
    const/4 v10, 0x0

    goto :goto_4e7

    :cond_4e3
    move-object/from16 v44, v10

    move/from16 v10, v43

    :goto_4e7
    if-lez v10, :cond_4ef

    move/from16 v43, v12

    move/from16 v45, v13

    const/4 v12, 0x1

    goto :goto_4f4

    :cond_4ef
    move/from16 v43, v12

    move/from16 v45, v13

    const/4 v12, 0x0

    :goto_4f4
    const-string v13, "childAtomSize must be positive"

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v12

    const v13, 0x61766343

    if-ne v12, v13, :cond_54f

    add-int/lit8 v8, v8, 0x8

    if-nez v2, :cond_508

    const/4 v2, 0x1

    goto :goto_509

    :cond_508
    const/4 v2, 0x0

    :goto_509
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzabj;->zza(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzabj;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzabj;->zza:Ljava/util/List;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzb:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzc:I

    if-nez v22, :cond_521

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzj:F

    move v9, v7

    const/4 v7, 0x0

    goto :goto_523

    :cond_521
    move v9, v7

    const/4 v7, 0x1

    :goto_523
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzk:Ljava/lang/String;

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzg:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzh:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzi:I

    move/from16 v22, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzabj;->zze:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzabj;->zzf:I

    const-string v27, "video/avc"

    :goto_533
    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v46, v5

    move/from16 v30, v7

    move-object/from16 v38, v8

    move v7, v9

    move-object v9, v11

    move/from16 v31, v13

    move v11, v14

    const/4 v0, -0x1

    const/4 v3, 0x3

    move v14, v12

    move-object/from16 v56, v27

    move/from16 v27, v2

    move-object/from16 v2, v56

    goto/16 :goto_834

    :cond_54f
    const v13, 0x68766343

    if-ne v12, v13, :cond_586

    add-int/lit8 v8, v8, 0x8

    if-nez v2, :cond_55a

    const/4 v2, 0x1

    goto :goto_55b

    :cond_55a
    const/4 v2, 0x0

    :goto_55b
    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzacv;->zza(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzacv;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/gms/internal/ads/zzacv;->zza:Ljava/util/List;

    iget v9, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzb:I

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahw;->zzc:I

    if-nez v22, :cond_573

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzh:F

    move v9, v7

    const/4 v7, 0x0

    goto :goto_575

    :cond_573
    move v9, v7

    const/4 v7, 0x1

    :goto_575
    iget-object v11, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzi:Ljava/lang/String;

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzacv;->zze:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzf:I

    iget v14, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzg:I

    move/from16 v22, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzacv;->zzd:I

    const-string v27, "video/hevc"

    goto :goto_533

    :cond_586
    const v13, 0x64766343

    if-eq v12, v13, :cond_813

    const v13, 0x64767643

    if-ne v12, v13, :cond_592

    goto/16 :goto_813

    :cond_592
    const v13, 0x76706343

    if-ne v12, v13, :cond_5e5

    if-nez v2, :cond_59b

    const/4 v2, 0x1

    goto :goto_59c

    :cond_59b
    const/4 v2, 0x0

    :goto_59c
    const/4 v11, 0x0

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v8, v8, 0xc

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v13, 0x2

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    shr-int/lit8 v8, v2, 0x4

    const/4 v11, 0x1

    and-int/2addr v2, v11

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v12

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v14

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)I

    move-result v12

    if-eq v11, v2, :cond_5c1

    const/4 v2, 0x2

    goto :goto_5c2

    :cond_5c1
    const/4 v2, 0x1

    :goto_5c2
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)I

    move-result v14

    const v11, 0x76703038

    if-ne v5, v11, :cond_5ce

    const-string v11, "video/x-vnd.on2.vp8"

    goto :goto_5d0

    :cond_5ce
    const-string v11, "video/x-vnd.on2.vp9"

    :goto_5d0
    move-object/from16 v47, v0

    move/from16 v31, v2

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v46, v5

    move/from16 v27, v8

    move/from16 v30, v27

    move-object v2, v11

    move v11, v14

    const/4 v0, -0x1

    const/4 v3, 0x3

    move v14, v12

    goto/16 :goto_834

    :cond_5e5
    const v13, 0x61763143

    if-ne v12, v13, :cond_633

    add-int/lit8 v8, v8, 0x8

    if-nez v2, :cond_5f0

    const/4 v2, 0x1

    goto :goto_5f1

    :cond_5f0
    const/4 v2, 0x0

    :goto_5f1
    const/4 v12, 0x0

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v8

    shr-int/lit8 v8, v8, 0x5

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v12

    shr-int/lit8 v13, v12, 0x6

    and-int/2addr v13, v2

    const/16 v27, 0xa

    const/4 v2, 0x2

    if-ne v8, v2, :cond_61c

    if-eqz v13, :cond_61a

    shr-int/lit8 v8, v12, 0x5

    const/4 v12, 0x1

    and-int/2addr v8, v12

    if-eq v12, v8, :cond_617

    goto :goto_626

    :cond_617
    const/16 v27, 0xc

    goto :goto_626

    :cond_61a
    const/4 v12, 0x1

    goto :goto_61f

    :cond_61c
    const/4 v12, 0x1

    if-gt v8, v2, :cond_624

    :goto_61f
    if-eq v12, v13, :cond_626

    const/16 v27, 0x8

    goto :goto_626

    :cond_624
    move/from16 v27, v30

    :cond_626
    :goto_626
    const-string v2, "video/av01"

    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v46, v5

    move/from16 v30, v27

    goto :goto_659

    :cond_633
    const v13, 0x636c6c69

    if-ne v12, v13, :cond_65d

    if-nez v6, :cond_63e

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaia;->zzl()Ljava/nio/ByteBuffer;

    move-result-object v6

    :cond_63e
    const/16 v8, 0x15

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v8

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v46, v5

    :goto_659
    const/4 v0, -0x1

    const/4 v3, 0x3

    goto/16 :goto_834

    :cond_65d
    const v13, 0x6d646376

    if-ne v12, v13, :cond_6cf

    if-nez v6, :cond_668

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaia;->zzl()Ljava/nio/ByteBuffer;

    move-result-object v6

    :cond_668
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v8

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v12

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v13

    move/from16 v46, v5

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v5

    move-object/from16 v47, v0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v0

    move/from16 v48, v7

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v7

    move/from16 v49, v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v4

    move/from16 v50, v3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v3

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v51

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v53

    move-object/from16 v55, v9

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v12}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    div-long v3, v51, v3

    long-to-int v0, v3

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v3, 0x2710

    div-long v3, v53, v3

    long-to-int v0, v3

    int-to-short v0, v0

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_6ca
    move/from16 v7, v48

    move-object/from16 v9, v55

    goto :goto_659

    :cond_6cf
    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v46, v5

    move/from16 v48, v7

    move-object/from16 v55, v9

    const v0, 0x64323633

    if-ne v12, v0, :cond_6ed

    if-nez v2, :cond_6e4

    const/4 v0, 0x1

    goto :goto_6e5

    :cond_6e4
    const/4 v0, 0x0

    :goto_6e5
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    const-string v0, "video/3gpp"

    move-object v2, v0

    goto :goto_6ca

    :cond_6ed
    const/4 v3, 0x0

    const v0, 0x65736473

    if-ne v12, v0, :cond_715

    if-nez v2, :cond_6f7

    const/4 v0, 0x1

    goto :goto_6f8

    :cond_6f7
    const/4 v0, 0x0

    :goto_6f8
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzaia;->zzj(Lcom/google/android/gms/internal/ads/zzfj;I)Lcom/google/android/gms/internal/ads/zzahu;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzc(Lcom/google/android/gms/internal/ads/zzahu;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahu;->zzd(Lcom/google/android/gms/internal/ads/zzahu;)[B

    move-result-object v3

    if-eqz v3, :cond_712

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v3

    move-object/from16 v20, v0

    move-object/from16 v38, v3

    goto :goto_6ca

    :cond_712
    move-object/from16 v20, v0

    goto :goto_6ca

    :cond_715
    const v0, 0x70617370

    if-ne v12, v0, :cond_733

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v3

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    move v7, v0

    move-object/from16 v9, v55

    const/4 v0, -0x1

    const/4 v3, 0x3

    const/16 v22, 0x1

    goto/16 :goto_834

    :cond_733
    const v0, 0x73763364

    if-ne v12, v0, :cond_767

    add-int/lit8 v0, v8, 0x8

    :goto_73a
    sub-int v3, v0, v8

    if-ge v3, v10, :cond_75d

    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v4

    const v5, 0x70726f6a

    if-ne v4, v5, :cond_75b

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    invoke-static {v4, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v44, v0

    goto/16 :goto_6ca

    :cond_75b
    move v0, v3

    goto :goto_73a

    :cond_75d
    move/from16 v7, v48

    move-object/from16 v9, v55

    const/4 v0, -0x1

    const/4 v3, 0x3

    const/16 v44, 0x0

    goto/16 :goto_834

    :cond_767
    const v0, 0x73743364

    if-ne v12, v0, :cond_7aa

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    const/4 v3, 0x3

    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    if-nez v0, :cond_811

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    if-eqz v0, :cond_7a1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_798

    const/4 v4, 0x2

    if-eq v0, v4, :cond_78f

    if-eq v0, v3, :cond_786

    goto/16 :goto_811

    :cond_786
    move/from16 v7, v48

    move-object/from16 v9, v55

    const/4 v0, -0x1

    const/16 v39, 0x3

    goto/16 :goto_834

    :cond_78f
    move/from16 v7, v48

    move-object/from16 v9, v55

    const/4 v0, -0x1

    const/16 v39, 0x2

    goto/16 :goto_834

    :cond_798
    move/from16 v7, v48

    move-object/from16 v9, v55

    const/4 v0, -0x1

    const/16 v39, 0x1

    goto/16 :goto_834

    :cond_7a1
    move/from16 v7, v48

    move-object/from16 v9, v55

    const/4 v0, -0x1

    const/16 v39, 0x0

    goto/16 :goto_834

    :cond_7aa
    const/4 v3, 0x3

    const v0, 0x636f6c72

    if-ne v12, v0, :cond_811

    const/4 v0, -0x1

    if-ne v14, v0, :cond_830

    if-ne v11, v0, :cond_80b

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v4

    const v5, 0x6e636c78

    if-eq v4, v5, :cond_7d9

    const v5, 0x6e636c63

    if-ne v4, v5, :cond_7c4

    goto :goto_7d9

    :cond_7c4
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzahs;->zzf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unsupported color type: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AtomParsers"

    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v7, v48

    move-object/from16 v9, v55

    const/4 v11, -0x1

    goto :goto_80f

    :cond_7d9
    :goto_7d9
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v4

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v5

    const/4 v7, 0x2

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/16 v7, 0x13

    if-ne v10, v7, :cond_7f7

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v8

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_7f3

    const/4 v7, 0x1

    goto :goto_7f4

    :cond_7f3
    const/4 v7, 0x0

    :goto_7f4
    const/16 v10, 0x13

    goto :goto_7f8

    :cond_7f7
    const/4 v7, 0x0

    :goto_7f8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzs;->zza(I)I

    move-result v4

    const/4 v8, 0x1

    if-eq v8, v7, :cond_801

    const/4 v8, 0x2

    goto :goto_802

    :cond_801
    const/4 v8, 0x1

    :goto_802
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)I

    move-result v5

    move v14, v4

    move v11, v5

    move/from16 v31, v8

    goto :goto_830

    :cond_80b
    move/from16 v7, v48

    move-object/from16 v9, v55

    :goto_80f
    const/4 v14, -0x1

    goto :goto_834

    :cond_811
    :goto_811
    const/4 v0, -0x1

    goto :goto_830

    :cond_813
    :goto_813
    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v46, v5

    move/from16 v48, v7

    move-object/from16 v55, v9

    const/4 v0, -0x1

    const/4 v3, 0x3

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzaca;->zza(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object v4

    if-eqz v4, :cond_830

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzaca;->zza:Ljava/lang/String;

    const-string v4, "video/dolby-vision"

    move-object v9, v2

    move-object v2, v4

    move/from16 v7, v48

    goto :goto_834

    :cond_830
    :goto_830
    move/from16 v7, v48

    move-object/from16 v9, v55

    :goto_834
    add-int/2addr v1, v10

    move/from16 v12, v43

    move-object/from16 v10, v44

    move/from16 v13, v45

    move/from16 v5, v46

    move-object/from16 v0, v47

    move/from16 v4, v49

    move/from16 v3, v50

    goto/16 :goto_4ba

    :cond_845
    move-object/from16 v47, v0

    move/from16 v50, v3

    move/from16 v49, v4

    move/from16 v48, v7

    move-object/from16 v55, v9

    move-object/from16 v44, v10

    :goto_851
    move/from16 v43, v12

    move/from16 v45, v13

    const/4 v0, -0x1

    const/4 v3, 0x3

    if-nez v2, :cond_861

    move/from16 v2, v40

    move/from16 v4, v41

    move-object/from16 v5, v47

    goto/16 :goto_8e7

    :cond_861
    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    move/from16 v4, v41

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    move-object/from16 v9, v55

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    move/from16 v2, v50

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    move/from16 v2, v49

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    move/from16 v8, v48

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzak;->zzR(F)Lcom/google/android/gms/internal/ads/zzak;

    move/from16 v2, v40

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzT(I)Lcom/google/android/gms/internal/ads/zzak;

    move-object/from16 v5, v44

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzS([B)Lcom/google/android/gms/internal/ads/zzak;

    move/from16 v5, v39

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzX(I)Lcom/google/android/gms/internal/ads/zzak;

    move-object/from16 v5, v38

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    move-object/from16 v7, v37

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzD(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzak;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzr;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzr;-><init>()V

    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzr;->zzc(I)Lcom/google/android/gms/internal/ads/zzr;

    move/from16 v7, v31

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzr;->zzb(I)Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzr;->zzd(I)Lcom/google/android/gms/internal/ads/zzr;

    if-eqz v6, :cond_8b2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    goto :goto_8b3

    :cond_8b2
    const/4 v6, 0x0

    :goto_8b3
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzr;->zze([B)Lcom/google/android/gms/internal/ads/zzr;

    move/from16 v6, v30

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzr;->zzf(I)Lcom/google/android/gms/internal/ads/zzr;

    move/from16 v6, v27

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzr;->zza(I)Lcom/google/android/gms/internal/ads/zzr;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzr;->zzg()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzA(Lcom/google/android/gms/internal/ads/zzs;)Lcom/google/android/gms/internal/ads/zzak;

    if-eqz v20, :cond_8df

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzahu;->zza(Lcom/google/android/gms/internal/ads/zzahu;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfzi;->zzc(J)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-static/range {v20 .. v20}, Lcom/google/android/gms/internal/ads/zzahu;->zzb(Lcom/google/android/gms/internal/ads/zzahu;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfzi;->zzc(J)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzQ(I)Lcom/google/android/gms/internal/ads/zzak;

    :cond_8df
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    move-object/from16 v5, v47

    iput-object v1, v5, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    :goto_8e7
    add-int v12, v43, v45

    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    add-int/lit8 v14, v21, 0x1

    move-object/from16 v11, p4

    move v6, v2

    move v7, v4

    move-object v0, v5

    move-object v3, v15

    move-object/from16 v13, v17

    move-object/from16 v4, v18

    move/from16 v1, v24

    move/from16 v5, v25

    move-object/from16 v12, v34

    move-wide/from16 v9, v35

    move-object/from16 v8, v42

    const/16 v2, 0xc

    move-object/from16 v15, p5

    goto/16 :goto_210

    :cond_908
    move/from16 v25, v5

    move-object/from16 v42, v8

    move-wide/from16 v35, v9

    move-object/from16 v34, v12

    move-object/from16 v17, v13

    move-object/from16 p5, v15

    const/16 v32, 0x0

    move-object v5, v0

    const v0, 0x65647473

    move-object/from16 v1, p5

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v0

    if-eqz v0, :cond_98b

    const v2, 0x656c7374

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v0

    if-nez v0, :cond_92d

    const/4 v4, 0x0

    goto :goto_97c

    :cond_92d
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzahs;->zze(I)I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v3

    new-array v4, v3, [J

    new-array v6, v3, [J

    const/4 v7, 0x0

    :goto_945
    if-ge v7, v3, :cond_978

    const/4 v8, 0x1

    if-ne v2, v8, :cond_94f

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzu()J

    move-result-wide v9

    goto :goto_953

    :cond_94f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v9

    :goto_953
    aput-wide v9, v4, v7

    if-ne v2, v8, :cond_95c

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzs()J

    move-result-wide v9

    goto :goto_961

    :cond_95c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v9

    int-to-long v9, v9

    :goto_961
    aput-wide v9, v6, v7

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v9

    if-ne v9, v8, :cond_970

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_945

    :cond_970
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_978
    invoke-static {v4, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    :goto_97c
    if-eqz v4, :cond_98b

    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, [J

    iget-object v2, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [J

    move-object/from16 v30, v0

    move-object/from16 v31, v2

    goto :goto_98f

    :cond_98b
    const/16 v30, 0x0

    const/16 v31, 0x0

    :goto_98f
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    if-nez v0, :cond_997

    move-object/from16 v0, p7

    const/4 v4, 0x0

    goto :goto_9c4

    :cond_997
    new-instance v4, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzahz;->zza(Lcom/google/android/gms/internal/ads/zzahz;)I

    move-result v18

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    iget v2, v5, Lcom/google/android/gms/internal/ads/zzahw;->zzd:I

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzahw;->zza:[Lcom/google/android/gms/internal/ads/zzaiq;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzahw;->zzc:I

    move-object/from16 v17, v4

    move/from16 v19, v25

    move-wide/from16 v22, v35

    move-wide/from16 v24, v28

    move-object/from16 v26, v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v5

    invoke-direct/range {v17 .. v31}, Lcom/google/android/gms/internal/ads/zzaip;-><init>(IIJJJLcom/google/android/gms/internal/ads/zzam;I[Lcom/google/android/gms/internal/ads/zzaiq;I[J[J)V

    move-object/from16 v0, p7

    :goto_9c4
    invoke-interface {v0, v4}, Lcom/google/android/gms/internal/ads/zzftn;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzaip;

    if-eqz v2, :cond_9f6

    const v3, 0x6d646961

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x6d696e66

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7374626c

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zza(I)Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, p1

    invoke-static {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzaia;->zzk(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzacu;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v1

    move-object/from16 v2, v34

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9fa

    :cond_9f6
    move-object/from16 v3, p1

    move-object/from16 v2, v34

    :goto_9fa
    add-int/lit8 v14, v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-object v12, v2

    goto/16 :goto_a

    :cond_a03
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v0

    throw v0

    :cond_a0b
    move-object v2, v12

    return-object v2
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfj;)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_13

    add-int/lit8 v0, v0, 0x4

    :cond_13
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    return-void
.end method

.method private static zzf(Lcom/google/android/gms/internal/ads/zzfj;)I
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_6
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_6

    :cond_15
    return v1
.end method

.method private static zzg(Lcom/google/android/gms/internal/ads/zzfj;)I
    .registers 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result p0

    return p0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzfj;II)Landroid/util/Pair;
    .registers 20
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    :goto_6
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_19

    const/4 v7, 0x1

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    :goto_1a
    const-string v8, "childAtomSize must be positive"

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_118

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2f
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_65

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_63

    :cond_4d
    const v3, 0x7363686d

    if-ne v14, v3, :cond_5c

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_63

    :cond_5c
    const v3, 0x73636869

    if-ne v14, v3, :cond_63

    move v9, v7

    move v10, v12

    :cond_63
    :goto_63
    add-int/2addr v7, v12

    goto :goto_2f

    :cond_65
    const-string v3, "cenc"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "cbc1"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "cens"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "cbcs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    goto :goto_89

    :cond_86
    const/4 v3, 0x0

    goto/16 :goto_114

    :cond_89
    :goto_89
    if-eqz v15, :cond_8d

    const/4 v3, 0x1

    goto :goto_8e

    :cond_8d
    const/4 v3, 0x0

    :goto_8e
    const-string v7, "frma atom is mandatory"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_97

    const/4 v3, 0x1

    goto :goto_98

    :cond_97
    const/4 v3, 0x0

    :goto_98
    const-string v7, "schi atom is mandatory"

    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_9f
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_103

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_100

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzahs;->zze(I)I

    move-result v3

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    if-nez v3, :cond_c6

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_d0

    :cond_c6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    :goto_d0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v7

    if-ne v7, v5, :cond_d8

    const/4 v10, 0x1

    goto :goto_d9

    :cond_d8
    const/4 v10, 0x0

    :goto_d9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    if-eqz v10, :cond_f4

    if-nez v12, :cond_f4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v7

    new-array v8, v7, [B

    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    move-object/from16 v16, v8

    goto :goto_f6

    :cond_f4
    const/16 v16, 0x0

    :goto_f6
    new-instance v7, Lcom/google/android/gms/internal/ads/zzaiq;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_105

    :cond_100
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_9f

    :cond_103
    move-object v8, v15

    const/4 v3, 0x0

    :goto_105
    if-eqz v3, :cond_108

    goto :goto_109

    :cond_108
    const/4 v5, 0x0

    :goto_109
    const-string v6, "tenc atom is mandatory"

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    sget v5, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_114
    if-nez v3, :cond_117

    goto :goto_118

    :cond_117
    return-object v3

    :cond_118
    :goto_118
    add-int/2addr v1, v2

    goto/16 :goto_6

    :cond_11b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzcb;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzz()S

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzftl;->zzc:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzy(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    :try_start_1f
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcb;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzca;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfz;

    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/ads/zzfz;-><init>(FF)V

    aput-object v4, v3, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(J[Lcom/google/android/gms/internal/ads/zzca;)V
    :try_end_49
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1f .. :try_end_49} :catch_4a
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_49} :catch_4a

    return-object v0

    :catch_4a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzj(Lcom/google/android/gms/internal/ads/zzfj;I)Lcom/google/android/gms/internal/ads/zzahu;
    .registers 12

    add-int/lit8 p1, p1, 0xc

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaia;->zzf(Lcom/google/android/gms/internal/ads/zzfj;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_1b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :cond_1b
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_26

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :cond_26
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :cond_2d
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaia;->zzf(Lcom/google/android/gms/internal/ads/zzfj;)I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzce;->zzd(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "audio/vnd.dts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    const-string v0, "audio/vnd.dts.hd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_88

    :cond_54
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaia;->zzf(Lcom/google/android/gms/internal/ads/zzfj;)I

    move-result p1

    new-array v5, p1, [B

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    const-wide/16 p0, -0x1

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    if-gtz v8, :cond_77

    move-wide v8, p0

    goto :goto_78

    :cond_77
    move-wide v8, v3

    :goto_78
    cmp-long v3, v0, v6

    if-lez v3, :cond_7e

    move-wide v6, v0

    goto :goto_7f

    :cond_7e
    move-wide v6, p0

    :goto_7f
    new-instance p0, Lcom/google/android/gms/internal/ads/zzahu;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v8

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    :cond_88
    :goto_88
    new-instance p0, Lcom/google/android/gms/internal/ads/zzahu;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzaip;Lcom/google/android/gms/internal/ads/zzahq;Lcom/google/android/gms/internal/ads/zzacu;)Lcom/google/android/gms/internal/ads/zzais;
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_18

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzahx;

    invoke-direct {v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzahx;-><init>(Lcom/google/android/gms/internal/ads/zzahr;Lcom/google/android/gms/internal/ads/zzam;)V

    goto :goto_26

    :cond_18
    const v3, 0x73747a32

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v3

    if-eqz v3, :cond_5dd

    new-instance v6, Lcom/google/android/gms/internal/ads/zzahy;

    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzahy;-><init>(Lcom/google/android/gms/internal/ads/zzahr;)V

    :goto_26
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahv;->zzb()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_44

    new-instance v9, Lcom/google/android/gms/internal/ads/zzais;

    new-array v2, v5, [J

    new-array v3, v5, [I

    const/4 v4, 0x0

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v10, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Lcom/google/android/gms/internal/ads/zzaip;[J[II[J[IJ)V

    return-object v9

    :cond_44
    const v7, 0x7374636f

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v7

    if-nez v7, :cond_59

    const v7, 0x636f3634

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    goto :goto_5a

    :cond_59
    const/4 v9, 0x0

    :goto_5a
    const v10, 0x73747363

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v11, 0x73747473

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v12, 0x73747373

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v12

    if-eqz v12, :cond_7a

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    goto :goto_7b

    :cond_7a
    move-object v12, v4

    :goto_7b
    const v13, 0x63747473

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzahq;->zzb(I)Lcom/google/android/gms/internal/ads/zzahr;

    move-result-object v0

    if-eqz v0, :cond_87

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    goto :goto_88

    :cond_87
    move-object v0, v4

    :goto_88
    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzahr;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzaht;

    invoke-direct {v13, v10, v7, v9}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(Lcom/google/android/gms/internal/ads/zzfj;Lcom/google/android/gms/internal/ads/zzfj;Z)V

    const/16 v7, 0xc

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v9

    const/4 v10, -0x1

    add-int/2addr v9, v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v14

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v15

    if-eqz v0, :cond_b0

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v16

    goto :goto_b2

    :cond_b0
    const/16 v16, 0x0

    :goto_b2
    if-eqz v12, :cond_c6

    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v7

    if-lez v7, :cond_c3

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v4

    add-int/2addr v4, v10

    goto :goto_c8

    :cond_c3
    move-object v12, v4

    const/4 v4, -0x1

    goto :goto_c8

    :cond_c6
    const/4 v4, -0x1

    const/4 v7, 0x0

    :goto_c8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahv;->zza()I

    move-result v5

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzam;->zzm:Ljava/lang/String;

    if-eq v5, v10, :cond_176

    const-string v1, "audio/raw"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    const-string v1, "audio/g711-mlaw"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ea

    const-string v1, "audio/g711-alaw"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_176

    :cond_ea
    if-nez v9, :cond_176

    if-nez v16, :cond_175

    if-nez v7, :cond_175

    iget v0, v13, Lcom/google/android/gms/internal/ads/zzaht;->zza:I

    new-array v1, v0, [J

    new-array v2, v0, [I

    :goto_f6
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaht;->zza()Z

    move-result v4

    if-eqz v4, :cond_107

    iget v4, v13, Lcom/google/android/gms/internal/ads/zzaht;->zzb:I

    iget-wide v6, v13, Lcom/google/android/gms/internal/ads/zzaht;->zzd:J

    aput-wide v6, v1, v4

    iget v6, v13, Lcom/google/android/gms/internal/ads/zzaht;->zzc:I

    aput v6, v2, v4

    goto :goto_f6

    :cond_107
    int-to-long v6, v15

    const/16 v4, 0x2000

    div-int/2addr v4, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_10d
    if-ge v8, v0, :cond_11a

    aget v11, v2, v8

    sget v12, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    add-int/2addr v11, v4

    add-int/2addr v11, v10

    div-int/2addr v11, v4

    add-int/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_10d

    :cond_11a
    new-array v8, v9, [J

    new-array v10, v9, [I

    new-array v11, v9, [J

    new-array v9, v9, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_126
    if-ge v12, v0, :cond_167

    aget v16, v2, v12

    aget-wide v21, v1, v12

    move/from16 v39, v16

    move/from16 v16, v0

    move/from16 v0, v39

    :goto_132
    if-lez v0, :cond_15e

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v23

    aput-wide v21, v8, v15

    move-object/from16 p1, v1

    mul-int v1, v5, v23

    aput v1, v10, v15

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v24, v2

    int-to-long v1, v13

    mul-long v1, v1, v6

    aput-wide v1, v11, v15

    const/4 v1, 0x1

    aput v1, v9, v15

    aget v1, v10, v15

    int-to-long v1, v1

    add-long v21, v21, v1

    add-int v13, v13, v23

    sub-int v0, v0, v23

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    goto :goto_132

    :cond_15e
    move-object/from16 p1, v1

    move-object/from16 v24, v2

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, v16

    goto :goto_126

    :cond_167
    int-to-long v0, v13

    mul-long v6, v6, v0

    move v0, v3

    move-wide v15, v6

    move-object v2, v8

    move-object v6, v9

    move-object v3, v10

    move-object v5, v11

    move v4, v14

    move-object/from16 v7, p0

    goto/16 :goto_337

    :cond_175
    const/4 v9, 0x0

    :cond_176
    new-array v1, v3, [J

    new-array v2, v3, [I

    new-array v5, v3, [J

    new-array v8, v3, [I

    move/from16 v22, v9

    const/4 v9, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    :goto_18d
    const-string v10, "AtomParsers"

    if-ge v9, v3, :cond_262

    const/16 v24, 0x1

    :goto_193
    if-nez v21, :cond_1b8

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzaht;->zza()Z

    move-result v24

    if-eqz v24, :cond_1b0

    move/from16 v31, v14

    move/from16 v32, v15

    iget-wide v14, v13, Lcom/google/android/gms/internal/ads/zzaht;->zzd:J

    move/from16 v33, v3

    iget v3, v13, Lcom/google/android/gms/internal/ads/zzaht;->zzc:I

    move/from16 v21, v3

    move-wide/from16 v27, v14

    move/from16 v14, v31

    move/from16 v15, v32

    move/from16 v3, v33

    goto :goto_193

    :cond_1b0
    move/from16 v33, v3

    move/from16 v31, v14

    move/from16 v32, v15

    const/4 v3, 0x0

    goto :goto_1c0

    :cond_1b8
    move/from16 v33, v3

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v3, v21

    :goto_1c0
    if-nez v24, :cond_1de

    const-string v3, "Unexpected end of chunk data"

    invoke-static {v10, v3}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v5

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    move v3, v9

    move/from16 v4, v25

    move/from16 v15, v26

    goto/16 :goto_26f

    :cond_1de
    if-nez v0, :cond_1e3

    :goto_1e0
    move/from16 v10, v25

    goto :goto_1fa

    :cond_1e3
    :goto_1e3
    if-nez v23, :cond_1f6

    if-lez v16, :cond_1f2

    add-int/lit8 v16, v16, -0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v23

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v25

    goto :goto_1e3

    :cond_1f2
    const/4 v10, -0x1

    const/16 v23, 0x0

    goto :goto_1f7

    :cond_1f6
    const/4 v10, -0x1

    :goto_1f7
    add-int/lit8 v23, v23, -0x1

    goto :goto_1e0

    :goto_1fa
    aput-wide v27, v1, v9

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahv;->zzc()I

    move-result v14

    aput v14, v2, v9

    move/from16 v15, v26

    if-le v14, v15, :cond_209

    move/from16 v26, v14

    goto :goto_20b

    :cond_209
    move/from16 v26, v15

    :goto_20b
    int-to-long v14, v10

    add-long v14, v29, v14

    aput-wide v14, v5, v9

    if-nez v12, :cond_214

    const/4 v14, 0x1

    goto :goto_215

    :cond_214
    const/4 v14, 0x0

    :goto_215
    aput v14, v8, v9

    if-ne v9, v4, :cond_229

    const/4 v14, 0x1

    aput v14, v8, v9

    add-int/lit8 v7, v7, -0x1

    if-lez v7, :cond_229

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v4

    const/4 v14, -0x1

    add-int/2addr v4, v14

    :cond_229
    move/from16 v21, v4

    move-object v14, v5

    move/from16 v15, v32

    int-to-long v4, v15

    add-long v29, v29, v4

    add-int/lit8 v4, v31, -0x1

    if-nez v4, :cond_244

    if-lez v22, :cond_243

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v4

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v5

    add-int/lit8 v22, v22, -0x1

    move v15, v5

    goto :goto_244

    :cond_243
    const/4 v4, 0x0

    :cond_244
    :goto_244
    aget v5, v2, v9

    move-object/from16 v24, v1

    move-object/from16 v32, v2

    int-to-long v1, v5

    add-long v27, v27, v1

    const/4 v1, -0x1

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v25, v10

    move-object v5, v14

    move-object/from16 v1, v24

    move/from16 v3, v33

    move v14, v4

    move/from16 v4, v21

    move/from16 v21, v2

    move-object/from16 v2, v32

    goto/16 :goto_18d

    :cond_262
    move-object/from16 v24, v1

    move-object/from16 v32, v2

    move/from16 v33, v3

    move/from16 v31, v14

    move/from16 v15, v26

    move-object v14, v5

    move/from16 v4, v25

    :goto_26f
    int-to-long v11, v4

    add-long v11, v29, v11

    if-eqz v0, :cond_284

    :goto_274
    if-lez v16, :cond_284

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v4

    if-eqz v4, :cond_27e

    const/4 v0, 0x0

    goto :goto_285

    :cond_27e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    add-int/lit8 v16, v16, -0x1

    goto :goto_274

    :cond_284
    const/4 v0, 0x1

    :goto_285
    if-nez v7, :cond_2d3

    if-nez v31, :cond_2c4

    if-nez v21, :cond_2b7

    if-nez v22, :cond_2af

    if-nez v23, :cond_2a6

    if-nez v0, :cond_29c

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 p1, v1

    goto :goto_2e1

    :cond_29c
    move-object/from16 v7, p0

    move-object/from16 p1, v1

    move-object/from16 v16, v2

    move/from16 v21, v3

    goto/16 :goto_32e

    :cond_2a6
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v7, p0

    move v6, v0

    move-object/from16 p1, v1

    goto :goto_2c1

    :cond_2af
    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    move v6, v0

    move-object/from16 p1, v1

    goto :goto_2bf

    :cond_2b7
    const/4 v4, 0x0

    move-object/from16 v7, p0

    move v6, v0

    move-object/from16 p1, v1

    move/from16 v9, v21

    :goto_2bf
    move/from16 v13, v22

    :goto_2c1
    move/from16 v14, v23

    goto :goto_2d1

    :cond_2c4
    move-object/from16 v7, p0

    move v6, v0

    move-object/from16 p1, v1

    move/from16 v9, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v4, v31

    :goto_2d1
    const/4 v0, 0x0

    goto :goto_2e1

    :cond_2d3
    move v6, v0

    move-object/from16 p1, v1

    move v0, v7

    move/from16 v9, v21

    move/from16 v13, v22

    move/from16 v14, v23

    move/from16 v4, v31

    move-object/from16 v7, p0

    :goto_2e1
    iget v1, v7, Lcom/google/android/gms/internal/ads/zzaip;->zza:I

    move-object/from16 v16, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v3

    const-string v3, "Inconsistent stbl box for track "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": remainingSynchronizationSamples "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    if-eq v0, v6, :cond_322

    const-string v0, ", ctts invalid"

    goto :goto_324

    :cond_322
    const-string v0, ""

    :goto_324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32e
    move-object/from16 v2, p1

    move-object v6, v8

    move v4, v15

    move-object/from16 v3, v16

    move/from16 v0, v21

    move-wide v15, v11

    :goto_337
    const-wide/32 v10, 0xf4240

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    sget-object v14, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide v8, v15

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzh:[J

    if-nez v1, :cond_356

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    invoke-static {v5, v10, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzE([JJJ)V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzais;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Lcom/google/android/gms/internal/ads/zzaip;[J[II[J[IJ)V

    return-object v10

    :cond_356
    array-length v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_413

    iget v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    if-ne v8, v9, :cond_413

    array-length v8, v5

    const/4 v9, 0x2

    if-lt v8, v9, :cond_413

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzi:[J

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    aget-wide v13, v9, v12

    aget-wide v21, v1, v12

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    move v9, v0

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    sget-object v27, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v23, v10

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    add-long/2addr v0, v13

    add-int/lit8 v10, v8, -0x1

    const/4 v11, 0x4

    invoke-static {v11, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v8, v8, -0x4

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    aget-wide v21, v5, v12

    cmp-long v10, v21, v13

    if-gtz v10, :cond_411

    aget-wide v10, v5, v11

    cmp-long v12, v13, v10

    if-gez v12, :cond_411

    aget-wide v10, v5, v8

    cmp-long v8, v10, v0

    if-gez v8, :cond_411

    cmp-long v8, v0, v15

    if-gtz v8, :cond_411

    sub-long v30, v13, v21

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    int-to-long v10, v8

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    sget-object v36, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v32, v10

    move-wide/from16 v34, v12

    invoke-static/range {v30 .. v36}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzam;->zzA:I

    int-to-long v12, v8

    move v14, v9

    iget-wide v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    sub-long v21, v15, v0

    sget-object v27, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v23, v12

    move-wide/from16 v25, v8

    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    const-wide/16 v8, 0x0

    cmp-long v12, v10, v8

    if-nez v12, :cond_3db

    cmp-long v10, v0, v8

    if-eqz v10, :cond_414

    const-wide/16 v10, 0x0

    :cond_3db
    const-wide/32 v8, 0x7fffffff

    cmp-long v12, v10, v8

    if-gtz v12, :cond_414

    cmp-long v12, v0, v8

    if-lez v12, :cond_3e7

    goto :goto_414

    :cond_3e7
    long-to-int v8, v10

    move-object/from16 v9, p2

    iput v8, v9, Lcom/google/android/gms/internal/ads/zzacu;->zza:I

    long-to-int v1, v0

    iput v1, v9, Lcom/google/android/gms/internal/ads/zzacu;->zzb:I

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    const-wide/32 v8, 0xf4240

    invoke-static {v5, v8, v9, v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzE([JJJ)V

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzh:[J

    const/4 v1, 0x0

    aget-wide v8, v0, v1

    const-wide/32 v10, 0xf4240

    iget-wide v12, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    sget-object v14, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzais;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Lcom/google/android/gms/internal/ads/zzaip;[J[II[J[IJ)V

    return-object v10

    :cond_411
    move v14, v9

    goto :goto_414

    :cond_413
    move v14, v0

    :cond_414
    :goto_414
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzh:[J

    array-length v1, v0

    const/4 v8, 0x1

    if-ne v1, v8, :cond_45e

    const/4 v8, 0x0

    aget-wide v9, v0, v8

    const-wide/16 v0, 0x0

    cmp-long v11, v9, v0

    if-nez v11, :cond_45d

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzi:[J

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-wide v9, v0, v8

    const/4 v0, 0x0

    :goto_42b
    array-length v1, v5

    if-ge v0, v1, :cond_444

    aget-wide v11, v5, v0

    sub-long v17, v11, v9

    const-wide/32 v19, 0xf4240

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    sget-object v23, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v21, v11

    invoke-static/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    aput-wide v11, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_42b

    :cond_444
    sub-long v17, v15, v9

    const-wide/32 v19, 0xf4240

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    sget-object v23, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v21, v0

    invoke-static/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzais;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Lcom/google/android/gms/internal/ads/zzaip;[J[II[J[IJ)V

    return-object v10

    :cond_45d
    const/4 v1, 0x1

    :cond_45e
    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_465

    const/4 v0, 0x1

    goto :goto_466

    :cond_465
    const/4 v0, 0x0

    :goto_466
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzi:[J

    new-array v9, v1, [I

    new-array v1, v1, [I

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_473
    iget-object v15, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzh:[J

    move/from16 p1, v4

    array-length v4, v15

    if-ge v12, v4, :cond_4dd

    move-object/from16 v16, v3

    aget-wide v3, v8, v12

    const-wide/16 v21, -0x1

    cmp-long v23, v3, v21

    if-eqz v23, :cond_4c7

    aget-wide v24, v15, v12

    move/from16 v21, v14

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    move/from16 p2, v10

    move/from16 v22, v11

    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    sget-object v30, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v26, v14

    move-wide/from16 v28, v10

    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v10

    const/4 v14, 0x1

    invoke-static {v5, v3, v4, v14, v14}, Lcom/google/android/gms/internal/ads/zzfs;->zzc([JJZZ)I

    move-result v15

    aput v15, v9, v12

    add-long/2addr v3, v10

    const/4 v10, 0x0

    invoke-static {v5, v3, v4, v0, v10}, Lcom/google/android/gms/internal/ads/zzfs;->zza([JJZZ)I

    move-result v3

    aput v3, v1, v12

    :goto_4a9
    aget v3, v9, v12

    aget v4, v1, v12

    if-ge v3, v4, :cond_4ba

    aget v11, v6, v3

    and-int/2addr v11, v14

    if-nez v11, :cond_4ba

    add-int/lit8 v3, v3, 0x1

    aput v3, v9, v12

    const/4 v14, 0x1

    goto :goto_4a9

    :cond_4ba
    sub-int v11, v4, v3

    add-int v11, p2, v11

    if-eq v13, v3, :cond_4c2

    const/4 v3, 0x1

    goto :goto_4c3

    :cond_4c2
    const/4 v3, 0x0

    :goto_4c3
    or-int v3, v22, v3

    move v13, v4

    goto :goto_4d2

    :cond_4c7
    move/from16 p2, v10

    move/from16 v22, v11

    move/from16 v21, v14

    const/4 v10, 0x0

    move/from16 v11, p2

    move/from16 v3, v22

    :goto_4d2
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, p1

    move v10, v11

    move/from16 v14, v21

    move v11, v3

    move-object/from16 v3, v16

    goto :goto_473

    :cond_4dd
    move-object/from16 v16, v3

    move/from16 v22, v11

    move v3, v14

    move v11, v10

    const/4 v10, 0x0

    if-eq v11, v3, :cond_4e8

    const/4 v0, 0x1

    goto :goto_4e9

    :cond_4e8
    const/4 v0, 0x0

    :goto_4e9
    or-int v0, v22, v0

    if-eqz v0, :cond_4f0

    new-array v3, v11, [J

    goto :goto_4f1

    :cond_4f0
    move-object v3, v2

    :goto_4f1
    if-eqz v0, :cond_4f6

    new-array v4, v11, [I

    goto :goto_4f8

    :cond_4f6
    move-object/from16 v4, v16

    :goto_4f8
    const/4 v8, 0x1

    if-ne v8, v0, :cond_4fd

    const/4 v8, 0x0

    goto :goto_4ff

    :cond_4fd
    move/from16 v8, p1

    :goto_4ff
    if-eqz v0, :cond_504

    new-array v12, v11, [I

    goto :goto_505

    :cond_504
    move-object v12, v6

    :goto_505
    new-array v11, v11, [J

    move/from16 p1, v8

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    :goto_50c
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzh:[J

    array-length v8, v8

    if-ge v10, v8, :cond_5b7

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzi:[J

    aget-wide v28, v8, v10

    aget v8, v9, v10

    move-object/from16 v17, v9

    aget v9, v1, v10

    move-object/from16 v30, v1

    if-eqz v0, :cond_52f

    sub-int v1, v9, v8

    invoke-static {v2, v8, v3, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v31, v2

    move-object/from16 v2, v16

    invoke-static {v2, v8, v4, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v8, v12, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_533

    :cond_52f
    move-object/from16 v31, v2

    move-object/from16 v2, v16

    :goto_533
    move/from16 v1, p1

    :goto_535
    if-ge v8, v9, :cond_590

    const-wide/32 v23, 0xf4240

    move/from16 p2, v9

    move/from16 v16, v10

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    sget-object v27, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v21, v13

    move-wide/from16 v25, v9

    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    aget-wide v21, v5, v8

    sub-long v32, v21, v28

    const-wide/32 v34, 0xf4240

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    iget-wide v5, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzc:J

    sget-object v38, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v36, v5

    invoke-static/range {v32 .. v38}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    move-object/from16 v32, v12

    iget v12, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzb:I

    move-object/from16 v33, v3

    const/4 v3, 0x1

    if-eq v12, v3, :cond_570

    move-object v12, v4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    goto :goto_573

    :cond_570
    move-object v12, v4

    const-wide/16 v3, 0x0

    :goto_573
    add-long/2addr v9, v5

    aput-wide v9, v11, v15

    if-eqz v0, :cond_57e

    aget v5, v12, v15

    if-le v5, v1, :cond_57e

    aget v1, v2, v8

    :cond_57e
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v9, p2

    move-object v4, v12

    move/from16 v10, v16

    move-object/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v12, v32

    move-object/from16 v3, v33

    goto :goto_535

    :cond_590
    move-object/from16 v33, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v16, v10

    move-object/from16 v32, v12

    move-object v12, v4

    const-wide/16 v3, 0x0

    iget-object v5, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzh:[J

    aget-wide v8, v5, v16

    add-long/2addr v13, v8

    add-int/lit8 v10, v16, 0x1

    move/from16 p1, v1

    move-object/from16 v16, v2

    move-object v4, v12

    move-object/from16 v9, v17

    move-object/from16 v5, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    move-object/from16 v12, v32

    move-object/from16 v3, v33

    goto/16 :goto_50c

    :cond_5b7
    move-object/from16 v33, v3

    move-object/from16 v32, v12

    move-object v12, v4

    const-wide/32 v23, 0xf4240

    iget-wide v0, v7, Lcom/google/android/gms/internal/ads/zzaip;->zzd:J

    sget-object v27, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v21, v13

    move-wide/from16 v25, v0

    invoke-static/range {v21 .. v27}, Lcom/google/android/gms/internal/ads/zzfs;->zzs(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    new-instance v10, Lcom/google/android/gms/internal/ads/zzais;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    move-object v3, v12

    move/from16 v4, p1

    move-object v5, v11

    move-object/from16 v6, v32

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzais;-><init>(Lcom/google/android/gms/internal/ads/zzaip;[J[II[J[IJ)V

    return-object v10

    :cond_5dd
    const-string v0, "Track has no sample table size information"

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v0

    throw v0
.end method

.method private static zzl()Ljava/nio/ByteBuffer;
    .registers 2

    const/16 v0, 0x19

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static zzm(Lcom/google/android/gms/internal/ads/zzfj;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzahw;I)V
    .registers 36
    .param p7    # Lcom/google/android/gms/internal/ads/zzad;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzcf;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    add-int/lit8 v7, v1, 0x10

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v7, 0x6

    const/16 v8, 0x8

    if-eqz p6, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v10

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    goto :goto_24

    :cond_20
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/4 v10, 0x0

    :goto_24
    const/16 v13, 0x20

    const/4 v14, 0x4

    const/16 v15, 0x10

    const/4 v11, -0x1

    const/4 v12, 0x2

    const/4 v9, 0x1

    if-eqz v10, :cond_85

    if-ne v10, v9, :cond_31

    goto :goto_85

    :cond_31
    if-ne v10, v12, :cond_4bd

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzs()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v7, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v9

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v19

    and-int/lit8 v20, v19, 0x1

    and-int/lit8 v19, v19, 0x2

    if-nez v20, :cond_7b

    if-ne v10, v8, :cond_5c

    const/4 v10, 0x3

    goto :goto_80

    :cond_5c
    if-ne v10, v15, :cond_65

    if-eqz v19, :cond_63

    const/high16 v10, 0x10000000

    goto :goto_80

    :cond_63
    const/4 v10, 0x2

    goto :goto_80

    :cond_65
    const/16 v15, 0x18

    if-ne v10, v15, :cond_71

    if-eqz v19, :cond_6e

    const/high16 v10, 0x50000000

    goto :goto_80

    :cond_6e
    const/high16 v10, 0x20000000

    goto :goto_80

    :cond_71
    if-ne v10, v13, :cond_7f

    if-eqz v19, :cond_78

    const/high16 v10, 0x60000000

    goto :goto_80

    :cond_78
    const/high16 v10, 0x30000000

    goto :goto_80

    :cond_7b
    if-ne v10, v13, :cond_7f

    const/4 v10, 0x4

    goto :goto_80

    :cond_7f
    const/4 v10, -0x1

    :goto_80
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/4 v8, 0x0

    goto :goto_a4

    :cond_85
    :goto_85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v9

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzm()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v8

    const/4 v14, 0x1

    if-ne v10, v14, :cond_a3

    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    :cond_a3
    const/4 v10, -0x1

    :goto_a4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v14

    const v15, 0x656e6361

    move/from16 v13, p1

    if-ne v13, v15, :cond_db

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaia;->zzh(Lcom/google/android/gms/internal/ads/zzfj;II)Landroid/util/Pair;

    move-result-object v13

    if-eqz v13, :cond_d5

    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v5, :cond_c1

    const/4 v12, 0x0

    goto :goto_cc

    :cond_c1
    iget-object v12, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzaiq;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzad;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v5

    move-object v12, v5

    :goto_cc
    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzahw;->zza:[Lcom/google/android/gms/internal/ads/zzaiq;

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Lcom/google/android/gms/internal/ads/zzaiq;

    aput-object v13, v5, p9

    goto :goto_d6

    :cond_d5
    move-object v12, v5

    :goto_d6
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    move v13, v15

    goto :goto_dc

    :cond_db
    move-object v12, v5

    :goto_dc
    const v5, 0x61632d33

    const-string v15, "audio/ac4"

    const-string v22, "audio/raw"

    if-ne v13, v5, :cond_e9

    const-string v5, "audio/ac3"

    goto/16 :goto_1a5

    :cond_e9
    const v5, 0x65632d33

    if-ne v13, v5, :cond_f2

    const-string v5, "audio/eac3"

    goto/16 :goto_1a5

    :cond_f2
    const v5, 0x61632d34

    if-ne v13, v5, :cond_fa

    move-object v5, v15

    goto/16 :goto_1a5

    :cond_fa
    const v5, 0x64747363

    if-ne v13, v5, :cond_103

    const-string v5, "audio/vnd.dts"

    goto/16 :goto_1a5

    :cond_103
    const v5, 0x64747368

    if-eq v13, v5, :cond_1a3

    const v5, 0x6474736c

    if-ne v13, v5, :cond_10f

    goto/16 :goto_1a3

    :cond_10f
    const v5, 0x64747365

    if-ne v13, v5, :cond_118

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_1a5

    :cond_118
    const v5, 0x64747378

    if-ne v13, v5, :cond_121

    const-string v5, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_1a5

    :cond_121
    const v5, 0x73616d72

    if-ne v13, v5, :cond_12a

    const-string v5, "audio/3gpp"

    goto/16 :goto_1a5

    :cond_12a
    const v5, 0x73617762

    if-ne v13, v5, :cond_133

    const-string v5, "audio/amr-wb"

    goto/16 :goto_1a5

    :cond_133
    const v5, 0x736f7774

    if-ne v13, v5, :cond_13d

    :goto_138
    move-object/from16 v5, v22

    const/4 v10, 0x2

    goto/16 :goto_1a5

    :cond_13d
    const v5, 0x74776f73

    if-ne v13, v5, :cond_148

    move-object/from16 v5, v22

    const/high16 v10, 0x10000000

    goto/16 :goto_1a5

    :cond_148
    const v5, 0x6c70636d

    if-ne v13, v5, :cond_153

    if-ne v10, v11, :cond_150

    goto :goto_138

    :cond_150
    move-object/from16 v5, v22

    goto :goto_1a5

    :cond_153
    const v5, 0x2e6d7032

    if-eq v13, v5, :cond_1a0

    const v5, 0x2e6d7033

    if-ne v13, v5, :cond_15e

    goto :goto_1a0

    :cond_15e
    const v5, 0x6d686131

    if-ne v13, v5, :cond_166

    const-string v5, "audio/mha1"

    goto :goto_1a5

    :cond_166
    const v5, 0x6d686d31

    if-ne v13, v5, :cond_16e

    const-string v5, "audio/mhm1"

    goto :goto_1a5

    :cond_16e
    const v5, 0x616c6163

    if-ne v13, v5, :cond_176

    const-string v5, "audio/alac"

    goto :goto_1a5

    :cond_176
    const v5, 0x616c6177

    if-ne v13, v5, :cond_17e

    const-string v5, "audio/g711-alaw"

    goto :goto_1a5

    :cond_17e
    const v5, 0x756c6177

    if-ne v13, v5, :cond_186

    const-string v5, "audio/g711-mlaw"

    goto :goto_1a5

    :cond_186
    const v5, 0x4f707573

    if-ne v13, v5, :cond_18e

    const-string v5, "audio/opus"

    goto :goto_1a5

    :cond_18e
    const v5, 0x664c6143

    if-ne v13, v5, :cond_196

    const-string v5, "audio/flac"

    goto :goto_1a5

    :cond_196
    const v5, 0x6d6c7061

    if-ne v13, v5, :cond_19e

    const-string v5, "audio/true-hd"

    goto :goto_1a5

    :cond_19e
    const/4 v5, 0x0

    goto :goto_1a5

    :cond_1a0
    :goto_1a0
    const-string v5, "audio/mpeg"

    goto :goto_1a5

    :cond_1a3
    :goto_1a3
    const-string v5, "audio/vnd.dts.hd"

    :goto_1a5
    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    :goto_1aa
    sub-int v11, v14, v1

    if-ge v11, v2, :cond_46f

    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v11

    if-lez v11, :cond_1b9

    const/4 v1, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v1, 0x0

    :goto_1ba
    const-string v2, "childAtomSize must be positive"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v1

    move/from16 p7, v10

    const v10, 0x6d686143

    if-ne v1, v10, :cond_1e4

    add-int/lit8 v1, v11, -0xd

    add-int/lit8 v2, v14, 0xd

    new-array v10, v1, [B

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v23

    move/from16 v25, v8

    :goto_1dd
    const/4 v8, 0x0

    :goto_1de
    const/16 v17, 0x3

    const/16 v20, 0x2

    goto/16 :goto_462

    :cond_1e4
    const v10, 0x65736473

    if-eq v1, v10, :cond_3b9

    if-eqz p6, :cond_23a

    const v10, 0x77617665

    if-ne v1, v10, :cond_23a

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v1

    if-lt v1, v14, :cond_1fb

    move/from16 v24, v1

    const/4 v1, 0x0

    const/4 v10, 0x1

    goto :goto_1ff

    :cond_1fb
    move/from16 v24, v1

    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_1ff
    invoke-static {v10, v1}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    move/from16 v1, v24

    :goto_204
    sub-int v10, v1, v14

    if-ge v10, v11, :cond_22c

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v10

    if-lez v10, :cond_215

    move-object/from16 v24, v13

    const/4 v13, 0x1

    goto :goto_218

    :cond_215
    move-object/from16 v24, v13

    const/4 v13, 0x0

    :goto_218
    invoke-static {v13, v2}, Lcom/google/android/gms/internal/ads/zzaci;->zzb(ZLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzf()I

    move-result v13

    move-object/from16 v25, v2

    const v2, 0x65736473

    if-eq v13, v2, :cond_22f

    add-int/2addr v1, v10

    move-object/from16 v13, v24

    move-object/from16 v2, v25

    goto :goto_204

    :cond_22c
    move-object/from16 v24, v13

    const/4 v1, -0x1

    :cond_22f
    const v2, 0x616c6163

    const/4 v10, -0x1

    const/4 v13, 0x4

    const/16 v17, 0x3

    const/16 v20, 0x2

    goto/16 :goto_3c5

    :cond_23a
    move-object/from16 v24, v13

    const v2, 0x64616333

    if-ne v1, v2, :cond_259

    add-int/lit8 v1, v14, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v12}, Lcom/google/android/gms/internal/ads/zzabf;->zzc(Lcom/google/android/gms/internal/ads/zzfj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    :goto_250
    move/from16 v25, v8

    const/4 v8, 0x0

    const/16 v17, 0x3

    const/16 v20, 0x2

    goto/16 :goto_460

    :cond_259
    const v2, 0x64656333

    if-ne v1, v2, :cond_26e

    add-int/lit8 v1, v14, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4, v12}, Lcom/google/android/gms/internal/ads/zzabf;->zzd(Lcom/google/android/gms/internal/ads/zzfj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_250

    :cond_26e
    const v2, 0x64616334

    if-ne v1, v2, :cond_2b3

    add-int/lit8 v1, v14, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/google/android/gms/internal/ads/zzabi;->zza:I

    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    const/16 v13, 0x20

    and-int/2addr v2, v13

    new-instance v13, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const/4 v1, 0x2

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    shr-int/lit8 v1, v2, 0x5

    if-eq v10, v1, :cond_2a0

    const v1, 0xac44

    goto :goto_2a3

    :cond_2a0
    const v1, 0xbb80

    :goto_2a3
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzD(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_250

    :cond_2b3
    const v2, 0x646d6c70

    if-ne v1, v2, :cond_2da

    if-lez v8, :cond_2c3

    move v7, v8

    move/from16 v25, v7

    move-object/from16 v13, v24

    const/4 v8, 0x0

    const/4 v9, 0x2

    goto/16 :goto_1de

    :cond_2c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzcf;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v0

    throw v0

    :cond_2da
    const/4 v2, 0x0

    const v10, 0x64647473

    if-eq v1, v10, :cond_392

    const v10, 0x75647473

    if-ne v1, v10, :cond_2e7

    goto/16 :goto_392

    :cond_2e7
    const v10, 0x644f7073

    if-ne v1, v10, :cond_309

    add-int/lit8 v1, v14, 0x8

    add-int/lit8 v10, v11, -0x8

    sget-object v13, Lcom/google/android/gms/internal/ads/zzaia;->zza:[B

    array-length v2, v13

    add-int/2addr v2, v10

    invoke-static {v13, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    array-length v1, v13

    invoke-virtual {v0, v2, v1, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzada;->zze([B)Ljava/util/List;

    move-result-object v23

    move/from16 v25, v8

    move-object/from16 v13, v24

    goto/16 :goto_1dd

    :cond_309
    const v2, 0x64664c61

    if-ne v1, v2, :cond_340

    add-int/lit8 v1, v14, 0xc

    add-int/lit8 v2, v11, -0xc

    add-int/lit8 v10, v2, 0x4

    new-array v10, v10, [B

    const/16 v13, 0x66

    const/16 v18, 0x0

    aput-byte v13, v10, v18

    const/16 v13, 0x4c

    const/16 v21, 0x1

    aput-byte v13, v10, v21

    const/16 v13, 0x61

    const/16 v20, 0x2

    aput-byte v13, v10, v20

    const/16 v13, 0x43

    const/16 v17, 0x3

    aput-byte v13, v10, v17

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v13, 0x4

    invoke-virtual {v0, v10, v13, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v23

    :goto_339
    move/from16 v25, v8

    move-object/from16 v13, v24

    const/4 v8, 0x0

    goto/16 :goto_462

    :cond_340
    const v2, 0x616c6163

    const/4 v13, 0x4

    const/16 v17, 0x3

    const/16 v20, 0x2

    if-ne v1, v2, :cond_45d

    add-int/lit8 v1, v14, 0xc

    add-int/lit8 v7, v11, -0xc

    new-array v9, v7, [B

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    sget v1, Lcom/google/android/gms/internal/ads/zzeh;->zza:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzfj;-><init>([B)V

    const/16 v7, 0x9

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v7

    const/16 v10, 0x14

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v23

    move v9, v1

    goto :goto_339

    :cond_392
    :goto_392
    const v2, 0x616c6163

    const/4 v13, 0x4

    const/16 v17, 0x3

    const/16 v20, 0x2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzD(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v1

    iput-object v1, v6, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    goto/16 :goto_45d

    :cond_3b9
    move-object/from16 v24, v13

    const v2, 0x616c6163

    const/4 v13, 0x4

    const/16 v17, 0x3

    const/16 v20, 0x2

    move v1, v14

    const/4 v10, -0x1

    :goto_3c5
    if-eq v1, v10, :cond_45d

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaia;->zzj(Lcom/google/android/gms/internal/ads/zzfj;I)Lcom/google/android/gms/internal/ads/zzahu;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzahu;->zzc(Lcom/google/android/gms/internal/ads/zzahu;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzahu;->zzd(Lcom/google/android/gms/internal/ads/zzahu;)[B

    move-result-object v5

    if-eqz v5, :cond_458

    const-string v2, "audio/vorbis"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43a

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {v2, v5}, Lcom/google/android/gms/internal/ads/zzfj;-><init>([B)V

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    const/4 v13, 0x0

    :goto_3e7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v21

    const/16 v10, 0xff

    if-lez v21, :cond_3ff

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zze()I

    move-result v0

    if-ne v0, v10, :cond_3ff

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    add-int/lit16 v13, v13, 0xff

    move-object/from16 v0, p0

    const/4 v10, 0x1

    goto :goto_3e7

    :cond_3ff
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    add-int/2addr v13, v0

    const/4 v0, 0x0

    :goto_405
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v23

    move/from16 v25, v8

    if-lez v23, :cond_41c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zze()I

    move-result v8

    if-ne v8, v10, :cond_41c

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    add-int/lit16 v0, v0, 0xff

    move/from16 v8, v25

    goto :goto_405

    :cond_41c
    const/4 v8, 0x1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v10

    add-int/2addr v0, v10

    new-array v10, v13, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v5, v2, v10, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v13

    array-length v13, v5

    add-int/2addr v2, v0

    sub-int/2addr v13, v2

    new-array v0, v13, [B

    invoke-static {v5, v2, v0, v8, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v0}, Lcom/google/android/gms/internal/ads/zzfwu;->zzn(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v23

    goto :goto_45b

    :cond_43a
    move/from16 v25, v8

    const/4 v8, 0x0

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_450

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzabc;->zza([B)Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzabb;->zza:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzabb;->zzb:I

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzabb;->zzc:Ljava/lang/String;

    goto :goto_452

    :cond_450
    move-object/from16 v13, v24

    :goto_452
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v23

    move-object v5, v1

    goto :goto_462

    :cond_458
    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_45b
    move-object v5, v1

    goto :goto_460

    :cond_45d
    :goto_45d
    move/from16 v25, v8

    const/4 v8, 0x0

    :goto_460
    move-object/from16 v13, v24

    :goto_462
    add-int/2addr v14, v11

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v10, p7

    move/from16 v8, v25

    goto/16 :goto_1aa

    :cond_46f
    move/from16 p7, v10

    move-object/from16 v24, v13

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    if-nez v0, :cond_4bd

    if-eqz v5, :cond_4bd

    new-instance v0, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzI(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    move-object/from16 v13, v24

    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzak;->zzz(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    move/from16 v10, p7

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzak;->zzP(I)Lcom/google/android/gms/internal/ads/zzak;

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzD(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    if-eqz v16, :cond_4b7

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzahu;->zza(Lcom/google/android/gms/internal/ads/zzahu;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzi;->zzc(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzahu;->zzb(Lcom/google/android/gms/internal/ads/zzahu;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfzi;->zzc(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzQ(I)Lcom/google/android/gms/internal/ads/zzak;

    :cond_4b7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/gms/internal/ads/zzahw;->zzb:Lcom/google/android/gms/internal/ads/zzam;

    :cond_4bd
    return-void
.end method
