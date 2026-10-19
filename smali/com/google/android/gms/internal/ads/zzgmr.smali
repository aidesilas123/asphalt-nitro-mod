###### Class com.google.android.gms.internal.ads.zzgmr (com.google.android.gms.internal.ads.zzgmr)
.class public final Lcom/google/android/gms/internal/ads/zzgmr;
.super Lcom/google/android/gms/internal/ads/zzgnt;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:I

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgmp;


# direct methods
.method synthetic constructor <init>(IILcom/google/android/gms/internal/ads/zzgmp;Lcom/google/android/gms/internal/ads/zzgmq;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgnt;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zza:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgmr;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmr;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzgmr;->zza:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zza:I

    if-ne v0, v2, :cond_20

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgmr;->zzd()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgmr;->zzd()I

    move-result v2

    if-ne v0, v2, :cond_20

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    if-ne p1, v0, :cond_20

    const/4 p1, 0x1

    return p1

    :cond_20
    return v1
.end method

.method public final hashCode()I
    .registers 4

    const-class v0, Lcom/google/android/gms/internal/ads/zzgmr;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zza:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AES-CMAC Parameters (variant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzb:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte tags, and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zza:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-byte key)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmp;->zzd:Lcom/google/android/gms/internal/ads/zzgmp;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzb:I

    return v0
.end method

.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zza:I

    return v0
.end method

.method public final zzd()I
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmp;->zzd:Lcom/google/android/gms/internal/ads/zzgmp;

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzb:I

    return v0

    :cond_9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmp;->zza:Lcom/google/android/gms/internal/ads/zzgmp;

    if-ne v0, v1, :cond_e

    goto :goto_17

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmp;->zzb:Lcom/google/android/gms/internal/ads/zzgmp;

    if-ne v0, v1, :cond_13

    goto :goto_17

    :cond_13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgmp;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    if-ne v0, v1, :cond_1c

    :goto_17
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzb:I

    add-int/lit8 v0, v0, 0x5

    return v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown variant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzgmp;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgmr;->zzc:Lcom/google/android/gms/internal/ads/zzgmp;

    return-object v0
.end method
