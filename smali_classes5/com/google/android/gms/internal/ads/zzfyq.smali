###### Class com.google.android.gms.internal.ads.zzfyq (com.google.android.gms.internal.ads.zzfyq)
.class public final Lcom/google/android/gms/internal/ads/zzfyq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method static zza(Ljava/util/Set;)I
    .registers 4

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    add-int/2addr v1, v2

    goto :goto_6

    :cond_1a
    return v1
.end method

.method public static zzb(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzftz;)Ljava/util/Set;
    .registers 3

    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_25

    check-cast p0, Ljava/util/SortedSet;

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfyn;

    if-eqz v0, :cond_1c

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfyn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuc;->zza(Lcom/google/android/gms/internal/ads/zzftz;Lcom/google/android/gms/internal/ads/zzftz;)Lcom/google/android/gms/internal/ads/zzftz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyo;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    check-cast p0, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzftz;)V

    goto :goto_24

    :cond_1c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyo;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzftz;)V

    :goto_24
    return-object v0

    :cond_25
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzfyn;

    if-eqz v0, :cond_39

    check-cast p0, Lcom/google/android/gms/internal/ads/zzfyn;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzfuc;->zza(Lcom/google/android/gms/internal/ads/zzftz;Lcom/google/android/gms/internal/ads/zzftz;)Lcom/google/android/gms/internal/ads/zzftz;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyn;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-object v0

    :cond_39
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyn;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-object v0
.end method

.method static zzc(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    check-cast p1, Ljava/util/Set;

    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v1, v3, :cond_1c

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_19} :catch_1c
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_19} :catch_1c

    if-eqz p0, :cond_1c

    return v0

    :catch_1c
    :cond_1c
    return v2
.end method

.method static zzd(Ljava/util/Set;Ljava/util/Collection;)Z
    .registers 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfya;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfya;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfya;->zza()Ljava/util/Set;

    move-result-object p1

    :cond_d
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_36

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_36

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_20

    :cond_35
    return v0

    :cond_36
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfyq;->zze(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static zze(Ljava/util/Set;Ljava/util/Iterator;)Z
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_1

    :cond_11
    return v0
.end method
