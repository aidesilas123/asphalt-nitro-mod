###### Class com.google.android.gms.internal.ads.zzqb (com.google.android.gms.internal.ads.zzqb)
.class final Lcom/google/android/gms/internal/ads/zzqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation


# direct methods
.method public static zza(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/zzpa;
    .registers 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0, p1}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p0

    if-nez p0, :cond_9

    sget-object p0, Lcom/google/android/gms/internal/ads/zzpa;->zza:Lcom/google/android/gms/internal/ads/zzpa;

    return-object p0

    :cond_9
    new-instance p0, Lcom/google/android/gms/internal/ads/zzoy;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzoy;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzoy;->zza(Z)Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzoy;->zzc(Z)Lcom/google/android/gms/internal/ads/zzoy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzoy;->zzd()Lcom/google/android/gms/internal/ads/zzpa;

    move-result-object p0

    return-object p0
.end method
