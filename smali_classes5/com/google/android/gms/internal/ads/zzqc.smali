###### Class com.google.android.gms.internal.ads.zzqc (com.google.android.gms.internal.ads.zzqc)
.class final Lcom/google/android/gms/internal/ads/zzqc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# direct methods
.method public static zza(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/zzpa;
    .registers 7
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpa;

    return-object p0

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzoy;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v1, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1a

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1a

    const/4 v3, 0x1

    :cond_1a
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzoy;->zza(Z)Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzoy;->zzb(Z)Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Z)Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzoy;->zzd()Lcom/google/android/gms/internal/ads/zzpa;

    move-result-object p0

    return-object p0
.end method
