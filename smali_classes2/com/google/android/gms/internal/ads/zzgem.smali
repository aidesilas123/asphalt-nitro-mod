###### Class com.google.android.gms.internal.ads.zzgem (com.google.android.gms.internal.ads.zzgem)
.class public final Lcom/google/android/gms/internal/ads/zzgem;
.super Lcom/google/android/gms/internal/ads/zzgdv;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:I

.field private final zzd:I

.field private final zze:Lcom/google/android/gms/internal/ads/zzgek;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzgej;


# direct methods
.method synthetic constructor <init>(IIIILcom/google/android/gms/internal/ads/zzgek;Lcom/google/android/gms/internal/ads/zzgej;Lcom/google/android/gms/internal/ads/zzgel;)V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgdv;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzc:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzf:Lcom/google/android/gms/internal/ads/zzgej;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgem;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgem;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgem;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:I

    if-ne v0, v2, :cond_2e

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgem;->zzb:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:I

    if-ne v0, v2, :cond_2e

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgem;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzc:I

    if-ne v0, v2, :cond_2e

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgem;->zzd:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzd:I

    if-ne v0, v2, :cond_2e

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    if-ne v0, v2, :cond_2e

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgem;->zzf:Lcom/google/android/gms/internal/ads/zzgej;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzf:Lcom/google/android/gms/internal/ads/zzgej;

    if-ne p1, v0, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzgem;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzc:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzd:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzf:Lcom/google/android/gms/internal/ads/zzgej;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzf:Lcom/google/android/gms/internal/ads/zzgej;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AesCtrHmacAead Parameters (variant: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hashType: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzc:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte IV, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzd:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte AES key, and "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte HMAC key)"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgek;->zzc:Lcom/google/android/gms/internal/ads/zzgek;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zza:I

    return v0
.end method

.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzb:I

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzc:I

    return v0
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzd:I

    return v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzgej;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zzf:Lcom/google/android/gms/internal/ads/zzgej;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzgek;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgem;->zze:Lcom/google/android/gms/internal/ads/zzgek;

    return-object v0
.end method
