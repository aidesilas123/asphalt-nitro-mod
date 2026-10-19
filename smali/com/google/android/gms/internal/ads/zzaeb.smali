###### Class com.google.android.gms.internal.ads.zzaeb (com.google.android.gms.internal.ads.zzaeb)
.class final Lcom/google/android/gms/internal/ads/zzaeb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzadt;


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzfwu;

.field private final zzb:I


# direct methods
.method private constructor <init>(ILcom/google/android/gms/internal/ads/zzfwu;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    return-void
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzaeb;
    .registers 18

    move-object/from16 v0, p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfwr;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfwr;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v2

    const/4 v3, -0x2

    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_18a

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    const v5, 0x5453494c

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v4, v5, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v4

    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzaeb;->zzc(ILcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzaeb;

    move-result-object v9

    goto/16 :goto_146

    :cond_36
    sparse-switch v4, :sswitch_data_196

    goto/16 :goto_146

    :sswitch_3b
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaed;->zzb(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzaed;

    move-result-object v9

    goto/16 :goto_146

    :sswitch_41
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadz;->zzb(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzadz;

    move-result-object v9

    goto/16 :goto_146

    :sswitch_47
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzady;->zzb(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzady;

    move-result-object v9

    goto/16 :goto_146

    :sswitch_4d
    const-string v4, "StreamFormatChunk"

    if-ne v3, v7, :cond_a8

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v11

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v5

    sparse-switch v5, :sswitch_data_1a8

    move-object v12, v9

    goto :goto_77

    :sswitch_69
    const-string v12, "video/mjpeg"

    goto :goto_77

    :sswitch_6c
    const-string v12, "video/mp43"

    goto :goto_77

    :sswitch_6f
    const-string v12, "video/mp42"

    goto :goto_77

    :sswitch_72
    const-string v12, "video/avc"

    goto :goto_77

    :sswitch_75
    const-string v12, "video/mp4v-es"

    :goto_77
    if-nez v12, :cond_8f

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring track with unsupported compression "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_146

    :cond_8f
    new-instance v4, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzak;->zzab(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/ads/zzak;->zzH(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v4, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Lcom/google/android/gms/internal/ads/zzam;)V

    goto/16 :goto_146

    :cond_a8
    if-ne v3, v8, :cond_139

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzj()I

    move-result v5

    const-string v10, "audio/mp4a-latm"

    const-string v11, "audio/raw"

    if-eq v5, v8, :cond_d1

    const/16 v12, 0x55

    if-eq v5, v12, :cond_ce

    const/16 v12, 0xff

    if-eq v5, v12, :cond_cc

    const/16 v12, 0x2000

    if-eq v5, v12, :cond_c9

    const/16 v12, 0x2001

    if-eq v5, v12, :cond_c6

    move-object v12, v9

    goto :goto_d2

    :cond_c6
    const-string v12, "audio/vnd.dts"

    goto :goto_d2

    :cond_c9
    const-string v12, "audio/ac3"

    goto :goto_d2

    :cond_cc
    move-object v12, v10

    goto :goto_d2

    :cond_ce
    const-string v12, "audio/mpeg"

    goto :goto_d2

    :cond_d1
    move-object v12, v11

    :goto_d2
    if-nez v12, :cond_e9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring track with unsupported format tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_146

    :cond_e9
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzj()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzh()I

    move-result v5

    const/4 v9, 0x6

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzfs;->zzk(I)I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzj()I

    move-result v13

    new-array v14, v13, [B

    const/4 v15, 0x0

    invoke-virtual {v0, v14, v15, v13}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    new-instance v15, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {v15, v12}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_120

    if-eqz v9, :cond_120

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/ads/zzak;->zzP(I)Lcom/google/android/gms/internal/ads/zzak;

    :cond_120
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12f

    if-lez v13, :cond_12f

    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzfwu;->zzm(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v4

    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzK(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzak;

    :cond_12f
    new-instance v9, Lcom/google/android/gms/internal/ads/zzaec;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v4

    invoke-direct {v9, v4}, Lcom/google/android/gms/internal/ads/zzaec;-><init>(Lcom/google/android/gms/internal/ads/zzam;)V

    goto :goto_146

    :cond_139
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzB(I)Ljava/lang/String;

    move-result-object v5

    const-string v10, "Ignoring strf box for unsupported track type: "

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_146
    if-eqz v9, :cond_182

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzadt;->zza()I

    move-result v4

    const v5, 0x68727473

    if-ne v4, v5, :cond_17f

    move-object v3, v9

    check-cast v3, Lcom/google/android/gms/internal/ads/zzadz;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzadz;->zza:I

    const v4, 0x73646976

    if-eq v3, v4, :cond_17e

    const v4, 0x73647561

    if-eq v3, v4, :cond_17c

    const v4, 0x73747874

    if-eq v3, v4, :cond_17a

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Found unsupported streamType fourCC: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AviStreamHeaderChunk"

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_17f

    :cond_17a
    const/4 v3, 0x3

    goto :goto_17f

    :cond_17c
    const/4 v3, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v3, 0x2

    :cond_17f
    :goto_17f
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzfwr;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;

    :cond_182
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    goto/16 :goto_c

    :cond_18a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaeb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzi()Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v1

    move/from16 v2, p0

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzaeb;-><init>(ILcom/google/android/gms/internal/ads/zzfwu;)V

    return-object v0

    :sswitch_data_196
    .sparse-switch
        0x66727473 -> :sswitch_4d
        0x68697661 -> :sswitch_47
        0x68727473 -> :sswitch_41
        0x6e727473 -> :sswitch_3b
    .end sparse-switch

    :sswitch_data_1a8
    .sparse-switch
        0x30355844 -> :sswitch_75
        0x31435641 -> :sswitch_72
        0x31637661 -> :sswitch_72
        0x3234504d -> :sswitch_6f
        0x3334504d -> :sswitch_6c
        0x34363248 -> :sswitch_72
        0x34504d46 -> :sswitch_75
        0x44495633 -> :sswitch_75
        0x44495658 -> :sswitch_75
        0x47504a4d -> :sswitch_69
        0x58564944 -> :sswitch_75
        0x64697678 -> :sswitch_75
        0x67706a6d -> :sswitch_69
        0x78766964 -> :sswitch_75
    .end sparse-switch
.end method


# virtual methods
.method public final zza()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zzb:I

    return v0
.end method

.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzadt;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaeb;->zza:Lcom/google/android/gms/internal/ads/zzfwu;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_7
    if-ge v2, v1, :cond_18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzadt;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    if-ne v4, p1, :cond_7

    return-object v3

    :cond_18
    const/4 p1, 0x0

    return-object p1
.end method
