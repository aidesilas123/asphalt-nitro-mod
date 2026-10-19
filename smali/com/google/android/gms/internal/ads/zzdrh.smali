###### Class com.google.android.gms.internal.ads.zzdrh (com.google.android.gms.internal.ads.zzdrh)
.class public final Lcom/google/android/gms/internal/ads/zzdrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Ljava/util/Map;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrh;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrh;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdrg;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzb(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzdrg;
    .registers 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v0

    if-eqz v0, :cond_4

    return-object v0

    :cond_17
    const/4 p1, 0x0

    return-object p1
.end method

.method public final zzc(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzdrh;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdrg;->zzb:Lcom/google/android/gms/internal/ads/zzbsd;

    if-nez p1, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_10
    const-string p1, ""

    return-object p1
.end method

.method final declared-synchronized zzd(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzffm;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrh;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrg;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_44

    const/4 v1, 0x0

    if-nez p2, :cond_12

    :catch_10
    move-object v2, v1

    goto :goto_16

    :cond_12
    :try_start_12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->zze()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object v2
    :try_end_16
    .catch Lcom/google/android/gms/internal/ads/zzfev; {:try_start_12 .. :try_end_16} :catch_10
    .catchall {:try_start_12 .. :try_end_16} :catchall_44

    :goto_16
    if-nez p2, :cond_19

    goto :goto_1d

    :cond_19
    :try_start_19
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->zzf()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object v1
    :try_end_1d
    .catch Lcom/google/android/gms/internal/ads/zzfev; {:try_start_19 .. :try_end_1d} :catch_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_44

    :catch_1d
    :goto_1d
    :try_start_1d
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbdc;->zzjg:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_44

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_33

    :goto_31
    const/4 v4, 0x1

    goto :goto_3a

    :cond_33
    if-nez p2, :cond_36

    goto :goto_3a

    :cond_36
    :try_start_36
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzffm;->zzC()Z
    :try_end_39
    .catch Lcom/google/android/gms/internal/ads/zzfev; {:try_start_36 .. :try_end_39} :catch_3a
    .catchall {:try_start_36 .. :try_end_39} :catchall_44

    goto :goto_31

    :catch_3a
    :goto_3a
    :try_start_3a
    invoke-direct {v0, p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbsd;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrh;->zza:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_44

    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zze(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbrp;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdrh;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_22

    if-eqz v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    :try_start_b
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbrp;->zzf()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbrp;->zzg()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object p2
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_20

    :try_start_13
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdrg;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, p2, v2}, Lcom/google/android/gms/internal/ads/zzdrg;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbsd;Z)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdrh;->zza:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_22

    monitor-exit p0

    return-void

    :catchall_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method
