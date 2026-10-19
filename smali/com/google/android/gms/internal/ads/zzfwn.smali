###### Class com.google.android.gms.internal.ads.zzfwn (com.google.android.gms.internal.ads.zzfwn)
.class Lcom/google/android/gms/internal/ads/zzfwn;
.super Lcom/google/android/gms/internal/ads/zzfwo;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Z


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfwo;-><init>()V

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    return-void
.end method

.method private final zzf(I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    if-ge v1, p1, :cond_13

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzfwo;->zze(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzc:Z

    return-void

    :cond_13
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzc:Z

    if-eqz p1, :cond_21

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzc:Z

    :cond_21
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwn;
    .registers 5

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwn;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public bridge synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwo;
    .registers 2

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwo;
    .registers 5

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_23

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzfwn;->zzf(I)V

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzfwp;

    if-nez v1, :cond_16

    goto :goto_23

    :cond_16
    check-cast v0, Lcom/google/android/gms/internal/ads/zzfwp;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfwp;->zza([Ljava/lang/Object;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    return-object p0

    :cond_23
    :goto_23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwo;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwo;

    goto :goto_27

    :cond_35
    return-object p0
.end method

.method final zzd([Ljava/lang/Object;I)V
    .registers 6

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfyc;->zzb([Ljava/lang/Object;I)[Ljava/lang/Object;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwn;->zzf(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    return-void
.end method
