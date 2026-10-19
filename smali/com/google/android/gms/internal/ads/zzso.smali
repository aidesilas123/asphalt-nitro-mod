###### Class com.google.android.gms.internal.ads.zzso (com.google.android.gms.internal.ads.zzso)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static synthetic zza(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 p1, 0x0

    const/4 v0, 0x1

    const-string v1, "audio/opus"

    if-eq p0, v1, :cond_10

    if-eqz p0, :cond_11

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x1

    :cond_11
    return p1
.end method
