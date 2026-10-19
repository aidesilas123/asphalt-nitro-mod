###### Class com.google.android.gms.internal.ads.zzffr (com.google.android.gms.internal.ads.zzffr)
.class public final Lcom/google/android/gms/internal/ads/zzffr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;
    .registers 8

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzefz;

    if-eqz v0, :cond_13

    check-cast p0, Lcom/google/android/gms/internal/ads/zzefz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxn;->zza()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefz;->zzb()Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzffr;->zzc(ILcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    return-object p0

    :cond_13
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzdxn;

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    check-cast p0, Lcom/google/android/gms/internal/ads/zzdxn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdxn;->zza()I

    move-result p0

    invoke-static {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    goto :goto_38

    :cond_29
    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdxn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdxn;->zza()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    :goto_38
    return-object p0

    :cond_39
    instance-of v0, p0, Lcom/google/android/gms/ads/internal/util/zzba;

    if-eqz v0, :cond_56

    check-cast p0, Lcom/google/android/gms/ads/internal/util/zzba;

    new-instance v6, Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/util/zzba;->zza()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfun;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v3, "com.google.android.gms.ads"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    return-object v6

    :cond_56
    const/4 p0, 0x1

    invoke-static {p0, v1, v1}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzega;)Lcom/google/android/gms/ads/internal/client/zze;
    .registers 4
    .param p1    # Lcom/google/android/gms/internal/ads/zzega;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzffr;->zza(Ljava/lang/Throwable;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    iget v0, p0, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    if-nez v0, :cond_1c

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zze;->zzc:Ljava/lang/String;

    const-string v1, "com.google.android.gms.ads"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zze;->zzd:Lcom/google/android/gms/ads/internal/client/zze;

    :cond_1c
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzega;->zzb()Lcom/google/android/gms/internal/ads/zzcya;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zze;->zze:Landroid/os/IBinder;

    :cond_24
    return-object p0
.end method

.method public static zzc(ILcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1d

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbdc;->zzie:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gtz p0, :cond_1c

    const/16 p0, 0x8

    goto :goto_1d

    :cond_1c
    return-object p1

    :cond_1d
    :goto_1d
    invoke-static {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p0

    return-object p0

    :cond_22
    throw v0
.end method

.method public static zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;
    .registers 12
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/ads/internal/client/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    add-int/lit8 v0, p0, -0x1

    const-string v1, "No fill."

    const/4 v2, 0x0

    if-nez p1, :cond_54

    if-eqz p0, :cond_53

    packed-switch v0, :pswitch_data_e0

    :pswitch_c
    const-string p1, "Internal error."

    goto :goto_54

    :pswitch_f
    const-string p1, "Ad inspector cannot be opened because it is already open."

    goto :goto_54

    :pswitch_12
    const-string p1, "Ad inspector cannot be opened because the device is not in test mode. See https://developers.google.com/admob/android/test-ads#enable_test_devices for more information."

    goto :goto_54

    :pswitch_15
    const-string p1, "Ad inspector failed to load."

    goto :goto_54

    :pswitch_18
    const-string p1, "Ad inspector had an internal error."

    goto :goto_54

    :pswitch_1b
    const-string p1, "Invalid ad string."

    goto :goto_54

    :pswitch_1e
    const-string p1, "Mismatch request IDs."

    goto :goto_54

    :pswitch_21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zzih:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gtz p1, :cond_4e

    const-string p1, "The mediation adapter did not return an ad."

    goto :goto_54

    :pswitch_36
    const-string p1, "The ad can not be shown when app is not in foreground."

    goto :goto_54

    :pswitch_39
    const-string p1, "The ad has already been shown."

    goto :goto_54

    :pswitch_3c
    const-string p1, "The ad is not ready."

    goto :goto_54

    :pswitch_3f
    const-string p1, "A mediation adapter failed to show the ad."

    goto :goto_54

    :pswitch_42
    const-string p1, "Invalid request: Invalid ad size."

    goto :goto_54

    :pswitch_45
    const-string p1, "Invalid request: Invalid ad unit ID."

    goto :goto_54

    :pswitch_48
    const-string p1, "Network error."

    goto :goto_54

    :pswitch_4b
    const-string p1, "App ID missing."

    goto :goto_54

    :cond_4e
    :pswitch_4e
    move-object v5, v1

    goto :goto_55

    :pswitch_50
    const-string p1, "Invalid request."

    goto :goto_54

    :cond_53
    throw v2

    :cond_54
    :goto_54
    move-object v5, p1

    :goto_55
    new-instance p1, Lcom/google/android/gms/ads/internal/client/zze;

    if-eqz p0, :cond_df

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_108

    new-instance p1, Ljava/lang/AssertionError;

    packed-switch p0, :pswitch_data_132

    const-string p0, "AD_INSPECTOR_ALREADY_OPEN"

    goto/16 :goto_d5

    :pswitch_69
    const/16 p0, 0xb

    const/16 v4, 0xb

    goto :goto_97

    :pswitch_6e
    const/16 p0, 0xa

    const/16 v4, 0xa

    goto :goto_97

    :pswitch_73
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbdc;->zzih:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gtz p0, :cond_97

    const/16 p0, 0x9

    const/16 v4, 0x9

    goto :goto_97

    :pswitch_8a
    const/4 p0, 0x4

    const/4 v4, 0x4

    goto :goto_97

    :pswitch_8d
    const/4 v4, 0x2

    goto :goto_97

    :pswitch_8f
    const/16 p0, 0x8

    const/16 v4, 0x8

    goto :goto_97

    :pswitch_94
    const/4 v4, 0x1

    goto :goto_97

    :pswitch_96
    const/4 v4, 0x0

    :cond_97
    :goto_97
    :pswitch_97
    const/4 v8, 0x0

    const-string v6, "com.google.android.gms.ads"

    move-object v3, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/internal/client/zze;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;Landroid/os/IBinder;)V

    return-object p1

    :pswitch_a0
    const-string p0, "AD_INSPECTOR_NOT_IN_TEST_MODE"

    goto :goto_d5

    :pswitch_a3
    const-string p0, "AD_INSPECTOR_FAILED_TO_LOAD"

    goto :goto_d5

    :pswitch_a6
    const-string p0, "AD_INSPECTOR_INTERNAL_ERROR"

    goto :goto_d5

    :pswitch_a9
    const-string p0, "INVALID_AD_STRING"

    goto :goto_d5

    :pswitch_ac
    const-string p0, "REQUEST_ID_MISMATCH"

    goto :goto_d5

    :pswitch_af
    const-string p0, "MEDIATION_NO_FILL"

    goto :goto_d5

    :pswitch_b2
    const-string p0, "INTERNAL_SHOW_ERROR"

    goto :goto_d5

    :pswitch_b5
    const-string p0, "APP_NOT_FOREGROUND"

    goto :goto_d5

    :pswitch_b8
    const-string p0, "AD_REUSED"

    goto :goto_d5

    :pswitch_bb
    const-string p0, "NOT_READY"

    goto :goto_d5

    :pswitch_be
    const-string p0, "MEDIATION_SHOW_ERROR"

    goto :goto_d5

    :pswitch_c1
    const-string p0, "INVALID_AD_SIZE"

    goto :goto_d5

    :pswitch_c4
    const-string p0, "INVALID_AD_UNIT_ID"

    goto :goto_d5

    :pswitch_c7
    const-string p0, "NETWORK_ERROR"

    goto :goto_d5

    :pswitch_ca
    const-string p0, "APP_ID_MISSING"

    goto :goto_d5

    :pswitch_cd
    const-string p0, "NO_FILL"

    goto :goto_d5

    :pswitch_d0
    const-string p0, "INVALID_REQUEST"

    goto :goto_d5

    :pswitch_d3
    const-string p0, "INTERNAL_ERROR"

    :goto_d5
    const-string p2, "Unknown SdkError: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_df
    throw v2

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_50
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_c
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_96
        :pswitch_94
        :pswitch_97
        :pswitch_8f
        :pswitch_8d
        :pswitch_94
        :pswitch_94
        :pswitch_8a
        :pswitch_8d
        :pswitch_94
        :pswitch_97
        :pswitch_96
        :pswitch_73
        :pswitch_6e
        :pswitch_69
        :pswitch_96
        :pswitch_94
        :pswitch_8d
        :pswitch_97
    .end packed-switch

    :pswitch_data_132
    .packed-switch 0x1
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
        :pswitch_a6
        :pswitch_a3
        :pswitch_a0
    .end packed-switch
.end method
