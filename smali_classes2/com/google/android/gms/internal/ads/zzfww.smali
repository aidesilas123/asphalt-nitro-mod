###### Class com.google.android.gms.internal.ads.zzfww (com.google.android.gms.internal.ads.zzfww)
.class public final Lcom/google/android/gms/internal/ads/zzfww;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field zza:[Ljava/lang/Object;

.field zzb:I

.field zzc:Lcom/google/android/gms/internal/ads/zzfwv;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfww;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/2addr p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:I

    return-void
.end method

.method private final zzd(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:[Ljava/lang/Object;

    array-length v1, v0

    add-int/2addr p1, p1

    if-le p1, v1, :cond_10

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzfwo;->zze(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:[Ljava/lang/Object;

    :cond_10
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzd(I)V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzfvr;->zzb(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:I

    add-int v2, v1, v1

    aput-object p1, v0, v2

    add-int/lit8 v2, v2, 0x1

    aput-object p2, v0, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:I

    return-object p0
.end method

.method public final zzb(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfww;
    .registers 4

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zzd(I)V

    :cond_e
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzfww;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfww;

    goto :goto_12

    :cond_2a
    return-object p0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfwx;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzc:Lcom/google/android/gms/internal/ads/zzfwv;

    if-nez v0, :cond_16

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zza:[Ljava/lang/Object;

    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzfyj;->zzj(I[Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfww;)Lcom/google/android/gms/internal/ads/zzfyj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfww;->zzc:Lcom/google/android/gms/internal/ads/zzfwv;

    if-nez v1, :cond_11

    return-object v0

    :cond_11
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfwv;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwv;->zza()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method
