###### Class com.google.android.gms.internal.ads.zzkr (com.google.android.gms.internal.ads.zzkr)
.class public final Lcom/google/android/gms/internal/ads/zzkr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public zza:Lcom/google/android/gms/internal/ads/zzls;

.field public zzb:I

.field public zzc:Z

.field public zzd:I

.field public zze:Z

.field public zzf:I

.field private zzg:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzkr;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    return p0
.end method


# virtual methods
.method public final zza(I)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    or-int/2addr v0, p1

    const/4 v1, 0x1

    if-eq v1, v0, :cond_7

    const/4 v1, 0x0

    :cond_7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzb:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzb:I

    return-void
.end method

.method public final zzb(I)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zze:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzf:I

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzls;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    if-eq v1, p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zza:Lcom/google/android/gms/internal/ads/zzls;

    return-void
.end method

.method public final zzd(I)V
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzd:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_12

    if-ne p1, v2, :cond_d

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    return-void

    :cond_12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzg:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzc:Z

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzkr;->zzd:I

    return-void
.end method
