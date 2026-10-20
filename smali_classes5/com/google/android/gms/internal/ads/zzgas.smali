###### Class com.google.android.gms.internal.ads.zzgas (com.google.android.gms.internal.ads.zzgas)
.class public Lcom/google/android/gms/internal/ads/zzgas;
.super Lcom/google/android/gms/internal/ads/zzgbc;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgbc;-><init>()V

    return-void
.end method

.method public static zzu(Lcom/google/common/util/concurrent/h0;)Lcom/google/android/gms/internal/ads/zzgas;
    .registers 2

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzgas;

    if-eqz v0, :cond_7

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgas;

    goto :goto_d

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgat;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgat;-><init>(Lcom/google/common/util/concurrent/h0;)V

    move-object p0, v0

    :goto_d
    return-object p0
.end method
