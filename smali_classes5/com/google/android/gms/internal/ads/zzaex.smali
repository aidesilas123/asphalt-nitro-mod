###### Class com.google.android.gms.internal.ads.zzaex (com.google.android.gms.internal.ads.zzaex)
.class final Lcom/google/android/gms/internal/ads/zzaex;
.super Lcom/google/android/gms/internal/ads/zzacs;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacf;J)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzacs;-><init>(Lcom/google/android/gms/internal/ads/zzacf;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzd(Z)V

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzaex;->zza:J

    return-void
.end method


# virtual methods
.method public final zzd()J
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaex;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zze()J
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzacs;->zze()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaex;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final zzf()J
    .registers 5

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaex;->zza:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
