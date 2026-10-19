###### Class com.google.android.gms.internal.ads.zzfvk (com.google.android.gms.internal.ads.zzfvk)
.class Lcom/google/android/gms/internal/ads/zzfvk;
.super Ljava/util/AbstractCollection;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final zza:Ljava/lang/Object;

.field zzb:Ljava/util/Collection;

.field final zzc:Lcom/google/android/gms/internal/ads/zzfvk;

.field final zzd:Ljava/util/Collection;

.field final synthetic zze:Lcom/google/android/gms/internal/ads/zzfvn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvn;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzfvk;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzfvk;

    if-nez p4, :cond_f

    const/4 p1, 0x0

    goto :goto_11

    :cond_f
    iget-object p1, p4, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    :goto_11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzd:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zza()V

    return v3

    :cond_22
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 6

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    sub-int/2addr v1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zza()V

    const/4 p1, 0x1

    :cond_2b
    return p1
.end method

.method public final clear()V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfvj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>(Lcom/google/android/gms/internal/ads/zzfvk;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc()V

    :cond_19
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    sub-int/2addr v1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc()V

    :cond_28
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    sub-int/2addr v1, v0

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc()V

    :cond_23
    return p1
.end method

.method public final size()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zza()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzfvk;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvk;->zza()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvn;->zzi(Lcom/google/android/gms/internal/ads/zzfvn;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method final zzb()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzfvk;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzfvk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzd:Ljava/util/Collection;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    if-ne v0, v1, :cond_10

    goto :goto_30

    :cond_10
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvn;->zzi(Lcom/google/android/gms/internal/ads/zzfvn;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_30

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    :cond_30
    :goto_30
    return-void
.end method

.method final zzc()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzc:Lcom/google/android/gms/internal/ads/zzfvk;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvk;->zzc()V

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zze:Lcom/google/android/gms/internal/ads/zzfvn;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvk;->zza:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfvn;->zzi(Lcom/google/android/gms/internal/ads/zzfvn;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method
