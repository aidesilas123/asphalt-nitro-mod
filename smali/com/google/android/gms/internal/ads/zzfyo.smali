###### Class com.google.android.gms.internal.ads.zzfyo (com.google.android.gms.internal.ads.zzfyo)
.class final Lcom/google/android/gms/internal/ads/zzfyo;
.super Lcom/google/android/gms/internal/ads/zzfyn;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/SortedSet;


# direct methods
.method constructor <init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzftz;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>(Ljava/util/Set;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzftz;->zza(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    return-object v2

    :cond_1f
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyo;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    check-cast v0, Ljava/util/SortedSet;

    :goto_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzftz;->zza(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return-object v2

    :cond_11
    invoke-interface {v0, v2}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    goto :goto_4
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyo;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-object v1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zza:Ljava/util/Collection;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyo;

    check-cast v0, Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvs;->zzb:Lcom/google/android/gms/internal/ads/zzftz;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfyo;-><init>(Ljava/util/SortedSet;Lcom/google/android/gms/internal/ads/zzftz;)V

    return-object v1
.end method
