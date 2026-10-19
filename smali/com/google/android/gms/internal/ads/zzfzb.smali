###### Class com.google.android.gms.internal.ads.zzfzb (com.google.android.gms.internal.ads.zzfzb)
.class final Lcom/google/android/gms/internal/ads/zzfzb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method static zza(D)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result p0

    const/16 p1, 0x3ff

    if-gt p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
