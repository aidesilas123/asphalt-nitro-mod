###### Class com.google.android.gms.ads.nonagon.signalgeneration.zzf (com.google.android.gms.ads.nonagon.signalgeneration.zzf)
.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "unspecified"

    return-object p0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_8c

    goto :goto_6c

    :pswitch_11
    const-string v0, "requester_type_8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 v0, 0x8

    goto :goto_6d

    :pswitch_1c
    const-string v0, "requester_type_7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x7

    goto :goto_6d

    :pswitch_26
    const-string v0, "requester_type_6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x6

    goto :goto_6d

    :pswitch_30
    const-string v0, "requester_type_5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x5

    goto :goto_6d

    :pswitch_3a
    const-string v0, "requester_type_4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x4

    goto :goto_6d

    :pswitch_44
    const-string v0, "requester_type_3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x3

    goto :goto_6d

    :pswitch_4e
    const-string v0, "requester_type_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x2

    goto :goto_6d

    :pswitch_58
    const-string v0, "requester_type_1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x1

    goto :goto_6d

    :pswitch_62
    const-string v0, "requester_type_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v0, 0x0

    goto :goto_6d

    :cond_6c
    :goto_6c
    const/4 v0, -0x1

    :goto_6d
    packed-switch v0, :pswitch_data_a2

    return-object p0

    :pswitch_71
    const-string p0, "8"

    return-object p0

    :pswitch_74
    const-string p0, "7"

    return-object p0

    :pswitch_77
    const-string p0, "6"

    return-object p0

    :pswitch_7a
    const-string p0, "5"

    return-object p0

    :pswitch_7d
    const-string p0, "4"

    return-object p0

    :pswitch_80
    const-string p0, "3"

    return-object p0

    :pswitch_83
    const-string p0, "2"

    return-object p0

    :pswitch_86
    const-string p0, "1"

    return-object p0

    :pswitch_89
    const-string p0, "0"

    return-object p0

    :pswitch_data_8c
    .packed-switch 0x67ecf68e
        :pswitch_62
        :pswitch_58
        :pswitch_4e
        :pswitch_44
        :pswitch_3a
        :pswitch_30
        :pswitch_26
        :pswitch_1c
        :pswitch_11
    .end packed-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
    .end packed-switch
.end method

.method public static zzb(Lcom/google/android/gms/ads/internal/client/zzl;)Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_e

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzc:Landroid/os/Bundle;

    if-nez p0, :cond_7

    goto :goto_e

    :cond_7
    const-string v0, "query_info_type"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_e
    const-string p0, "unspecified"

    return-object p0
.end method

.method public static varargs zzc(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtk;Ljava/lang/String;[Landroid/util/Pair;)V
    .registers 6
    .param p1    # Lcom/google/android/gms/internal/ads/zzdtk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzgZ:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcca;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    new-instance v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zze;-><init>(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtk;Ljava/lang/String;[Landroid/util/Pair;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static varargs zzd(Lcom/google/android/gms/internal/ads/zzdtu;Lcom/google/android/gms/internal/ads/zzdtk;Ljava/lang/String;[Landroid/util/Pair;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/internal/ads/zzdtk;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdtx;->zzc()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdtk;->zza()Ljava/util/Map;

    move-result-object p1

    :goto_b
    const-string v0, "action"

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzf(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    array-length p2, p3

    const/4 v0, 0x0

    :goto_12
    if-ge v0, p2, :cond_24

    aget-object v1, p3, v0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzf;->zzf(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_24
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdtx;->zzf(Ljava/util/Map;)V

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfeq;)I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfeq;->zzq:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x2

    return p0

    :cond_6
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfeq;->zzd:Lcom/google/android/gms/ads/internal/client/zzl;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-nez v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzx:Ljava/lang/String;

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/client/zzl;->zzx:Ljava/lang/String;

    if-nez p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x5

    return p0

    :cond_1c
    :goto_1c
    if-eqz v0, :cond_20

    const/4 p0, 0x3

    return p0

    :cond_20
    const/4 p0, 0x4

    return p0
.end method

.method private static zzf(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    :cond_d
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_10
    return-void
.end method
