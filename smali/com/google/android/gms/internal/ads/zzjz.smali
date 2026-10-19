###### Class com.google.android.gms.internal.ads.zzjz (com.google.android.gms.internal.ads.zzjz)
.class final Lcom/google/android/gms/internal/ads/zzjz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1f
.end annotation


# direct methods
.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzki;Z)Lcom/google/android/gms/internal/ads/zzov;
    .registers 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzor;->zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzor;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "ExoPlayerImpl"

    const-string p1, "MediaMetricsService unavailable."

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzov;

    sget-object p1, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p0

    :cond_15
    if-eqz p2, :cond_1a

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzki;->zzz(Lcom/google/android/gms/internal/ads/zzmm;)V

    :cond_1a
    new-instance p1, Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzor;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Landroid/media/metrics/LogSessionId;)V

    return-object p1
.end method
