###### Class com.google.android.gms.internal.ads.zzaky (com.google.android.gms.internal.ads.zzaky)
.class public final Lcom/google/android/gms/internal/ads/zzaky;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzall;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzakx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakx;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zza:Lcom/google/android/gms/internal/ads/zzakx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfj;I)V
    .registers 9

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, -0x1

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_10

    :cond_f
    const/4 v3, -0x1

    :goto_10
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzf:Z

    const/4 v4, 0x0

    if-nez v2, :cond_16

    goto :goto_1f

    :cond_16
    if-eqz p2, :cond_f7

    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzf:Z

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result p2

    if-lez p2, :cond_f7

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_a6

    if-nez p2, :cond_3c

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    const/16 v3, 0xff

    if-eq p2, v3, :cond_df

    :cond_3c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result p2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    invoke-virtual {p1, v3, v5, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    if-ne v3, v2, :cond_1f

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v3

    and-int/lit16 v5, v3, 0x80

    if-eqz v5, :cond_75

    const/4 v5, 0x1

    goto :goto_76

    :cond_75
    const/4 v5, 0x0

    :goto_76
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result p2

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzaky;->zze:Z

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzb()I

    move-result p2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    if-ge p2, v2, :cond_1f

    const/16 p2, 0x1002

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzb()I

    move-result v3

    add-int/2addr v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzA(I)V

    goto/16 :goto_1f

    :cond_a6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zza()I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    sub-int/2addr v3, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    add-int/2addr v2, p2

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    if-ne v2, p2, :cond_1f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zze:Z

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v2

    invoke-static {v2, v4, p2, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzd([BIII)I

    move-result p2

    if-nez p2, :cond_df

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzc:I

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    goto :goto_e7

    :cond_df
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzf:Z

    return-void

    :cond_e2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzF(I)V

    :goto_e7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zza:Lcom/google/android/gms/internal/ads/zzakx;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzakx;->zza(Lcom/google/android/gms/internal/ads/zzfj;)V

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzd:I

    goto/16 :goto_1f

    :cond_f7
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfq;Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zza:Lcom/google/android/gms/internal/ads/zzakx;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzakx;->zzb(Lcom/google/android/gms/internal/ads/zzfq;Lcom/google/android/gms/internal/ads/zzach;Lcom/google/android/gms/internal/ads/zzalk;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzf:Z

    return-void
.end method

.method public final zzc()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaky;->zzf:Z

    return-void
.end method
