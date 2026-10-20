###### Class com.google.android.gms.internal.ads.zzfwy (com.google.android.gms.internal.ads.zzfwy)
.class public final Lcom/google/android/gms/internal/ads/zzfwy;
.super Lcom/google/android/gms/internal/ads/zzfwn;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field zzd:[Ljava/lang/Object;

.field private zze:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwn;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;-><init>(I)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfwz;->zzh(I)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwy;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;
    .registers 7

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_38

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwz;->zzh(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    array-length v1, v1

    if-gt v0, v1, :cond_38

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwm;->zza(I)I

    move-result v2

    :goto_1a
    add-int/lit8 v3, v1, -0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    and-int/2addr v2, v3

    aget-object v3, v4, v2

    if-nez v3, :cond_2e

    aput-object p1, v4, v2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zze:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zze:I

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwn;

    goto :goto_37

    :cond_2e
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_37
    :goto_37
    return-object p0

    :cond_38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwn;

    return-object p0
.end method

.method public final zzg(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwy;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    if-eqz v0, :cond_19

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwy;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwy;

    goto :goto_b

    :cond_19
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwo;

    :cond_1c
    return-object p0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfwz;
    .registers 10

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    if-eqz v0, :cond_56

    const/4 v1, 0x1

    if-eq v0, v1, :cond_48

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    if-eqz v2, :cond_34

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfwz;->zzh(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_34

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    array-length v3, v2

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzfwz;->zzq(II)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    :cond_23
    move-object v4, v2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyk;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zze:I

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    array-length v2, v6

    add-int/lit8 v7, v2, -0x1

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfyk;-><init>([Ljava/lang/Object;I[Ljava/lang/Object;II)V

    goto :goto_42

    :cond_34
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzfwz;->zzk(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    :goto_42
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzc:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfwy;->zzd:[Ljava/lang/Object;

    return-object v0

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyr;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzfyr;-><init>(Ljava/lang/Object;)V

    return-object v1

    :cond_56
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfyk;->zza:Lcom/google/android/gms/internal/ads/zzfyk;

    return-object v0
.end method
