###### Class com.google.android.gms.internal.ads.zzfxa (com.google.android.gms.internal.ads.zzfxa)
.class public final Lcom/google/android/gms/internal/ads/zzfxa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Ljava/lang/Iterable;Lcom/google/android/gms/internal/ads/zzftz;)Z
    .registers 4

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_12

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_12

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfxa;->zzc(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftz;)Z

    move-result p0

    return p0

    :cond_12
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzftz;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_1a

    :cond_2f
    return v0
.end method

.method private static zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftz;II)V
    .registers 6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :cond_4
    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-le v0, p3, :cond_16

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzftz;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_16
    :goto_16
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_1e

    invoke-interface {p0, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_16

    :cond_1e
    return-void
.end method

.method private static zzc(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftz;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_27

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/google/android/gms/internal/ads/zzftz;->zza(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_24

    if-le v1, v2, :cond_22

    :try_start_16
    invoke-interface {p0, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16 .. :try_end_19} :catch_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_22

    :catch_1a
    invoke-static {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfxa;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftz;II)V

    return v4

    :catch_1e
    invoke-static {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzfxa;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzftz;II)V

    return v4

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_27
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p0, v2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    if-eq v1, v2, :cond_35

    return v4

    :cond_35
    return v0
.end method
