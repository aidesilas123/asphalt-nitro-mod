###### Class com.google.android.gms.internal.ads.zzfvl (com.google.android.gms.internal.ads.zzfvl)
.class final Lcom/google/android/gms/internal/ads/zzfvl;
.super Lcom/google/android/gms/internal/ads/zzfvj;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfvm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zzd:Lcom/google/android/gms/internal/ads/zzfvm;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>(Lcom/google/android/gms/internal/ads/zzfvk;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfvm;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zzd:Lcom/google/android/gms/internal/ads/zzfvm;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfvk;->zzb:Ljava/util/Collection;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfvj;-><init>(Lcom/google/android/gms/internal/ads/zzfvk;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zzd:Lcom/google/android/gms/internal/ads/zzfvm;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Ljava/util/Iterator;

    check-cast v1, Ljava/util/ListIterator;

    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zzd:Lcom/google/android/gms/internal/ads/zzfvm;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfvm;->zzf:Lcom/google/android/gms/internal/ads/zzfvn;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzd(Lcom/google/android/gms/internal/ads/zzfvn;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzfvn;->zzn(Lcom/google/android/gms/internal/ads/zzfvn;I)V

    if-eqz v0, :cond_24

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfvl;->zzd:Lcom/google/android/gms/internal/ads/zzfvm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfvk;->zza()V

    :cond_24
    return-void
.end method

.method public final hasPrevious()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfvj;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfvj;->zza:Ljava/util/Iterator;

    check-cast v0, Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
