###### Class com.google.android.gms.internal.ads.zzanx (com.google.android.gms.internal.ads.zzanx)
.class public final Lcom/google/android/gms/internal/ads/zzanx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Ljava/lang/String;)J
    .registers 6

    :try_start_0
    const-string v0, "EEE, dd MMM yyyy HH:mm:ss zzz"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_e
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_e} :catch_f

    return-wide v0

    :catch_f
    move-exception v0

    const-string v1, "0"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Unable to parse dateStr: %s, falling back to 0"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_2d

    const-string v1, "-1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2d

    :cond_25
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzanm;->zzc(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_34

    :cond_2d
    :goto_2d
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p0, v0, v3

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzanm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_34
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzamw;)Lcom/google/android/gms/internal/ads/zzamj;
    .registers 21
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzc:Ljava/util/Map;

    if-nez v3, :cond_c

    goto/16 :goto_86

    :cond_c
    const-string v4, "Date"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1b

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1d

    :cond_1b
    const-wide/16 v7, 0x0

    :goto_1d
    const-string v4, "Cache-Control"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v4, :cond_8b

    const-string v11, ","

    invoke-virtual {v4, v11, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_33
    array-length v9, v4

    if-ge v10, v9, :cond_88

    aget-object v9, v4, v10

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v5, "no-cache"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string v5, "no-store"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_86

    const-string v5, "max-age="

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    const/16 v5, 0x8

    :try_start_56
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5e} :catch_83

    goto :goto_83

    :cond_5f
    const-string v5, "stale-while-revalidate="

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    const/16 v5, 0x17

    :try_start_69
    invoke-virtual {v9, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_71} :catch_83

    goto :goto_83

    :cond_72
    const-string v5, "must-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_82

    const-string v5, "proxy-revalidate"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    :cond_82
    const/4 v11, 0x1

    :catch_83
    :cond_83
    :goto_83
    add-int/lit8 v10, v10, 0x1

    goto :goto_33

    :cond_86
    :goto_86
    const/4 v0, 0x0

    return-object v0

    :cond_88
    move v10, v11

    const/4 v9, 0x1

    goto :goto_90

    :cond_8b
    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    :goto_90
    const-string v4, "Expires"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_9f

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_a1

    :cond_9f
    const-wide/16 v4, 0x0

    :goto_a1
    const-string v6, "Last-Modified"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_b2

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzanx;->zza(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v18, v16

    goto :goto_b4

    :cond_b2
    const-wide/16 v18, 0x0

    :goto_b4
    const-string v6, "ETag"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v9, :cond_cf

    const-wide/16 v4, 0x3e8

    mul-long v14, v14, v4

    add-long/2addr v1, v14

    if-eqz v10, :cond_c7

    move-wide v12, v1

    goto :goto_cd

    :cond_c7
    invoke-static {v12, v13}, Ljava/lang/Long;->signum(J)I

    mul-long v12, v12, v4

    add-long/2addr v12, v1

    :goto_cd
    move-wide v9, v12

    goto :goto_de

    :cond_cf
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_dd

    cmp-long v11, v4, v7

    if-ltz v11, :cond_dd

    sub-long/2addr v4, v7

    add-long/2addr v1, v4

    move-wide v9, v1

    goto :goto_de

    :cond_dd
    move-wide v1, v9

    :goto_de
    new-instance v4, Lcom/google/android/gms/internal/ads/zzamj;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzamj;-><init>()V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzb:[B

    iput-object v5, v4, Lcom/google/android/gms/internal/ads/zzamj;->zza:[B

    iput-object v6, v4, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Ljava/lang/String;

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzamj;->zzf:J

    iput-wide v9, v4, Lcom/google/android/gms/internal/ads/zzamj;->zze:J

    iput-wide v7, v4, Lcom/google/android/gms/internal/ads/zzamj;->zzc:J

    move-wide/from16 v1, v18

    iput-wide v1, v4, Lcom/google/android/gms/internal/ads/zzamj;->zzd:J

    iput-object v3, v4, Lcom/google/android/gms/internal/ads/zzamj;->zzg:Ljava/util/Map;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzamw;->zzd:Ljava/util/List;

    iput-object v0, v4, Lcom/google/android/gms/internal/ads/zzamj;->zzh:Ljava/util/List;

    return-object v4
.end method

.method static zzc(J)Ljava/lang/String;
    .registers 4

    const-string v0, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzd(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string p0, "GMT"

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method
