###### Class com.google.android.gms.internal.ads.zzaxb (com.google.android.gms.internal.ads.zzaxb)
.class public final Lcom/google/android/gms/internal/ads/zzaxb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaxc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 8

    check-cast p1, Lcom/google/android/gms/internal/ads/zzawq;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzawq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzd()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzd()F

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_14

    :goto_12
    const/4 v2, -0x1

    goto :goto_6c

    :cond_14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzd()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzd()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_21

    goto :goto_6c

    :cond_21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    goto :goto_12

    :cond_2e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3b

    goto :goto_6c

    :cond_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zza()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzd()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzc()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zza()F

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzd()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzc()F

    move-result v4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzawq;->zzb()F

    move-result p2

    sub-float/2addr v4, p2

    mul-float v0, v0, v1

    mul-float p1, p1, v4

    cmpl-float p2, v0, p1

    if-lez p2, :cond_68

    goto :goto_12

    :cond_68
    cmpg-float p1, v0, p1

    if-gez p1, :cond_6d

    :goto_6c
    return v2

    :cond_6d
    const/4 p1, 0x0

    return p1
.end method
