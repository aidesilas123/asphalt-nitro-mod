###### Class com.google.android.gms.internal.ads.zzfru (com.google.android.gms.internal.ads.zzfru)
.class public final Lcom/google/android/gms/internal/ads/zzfru;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfrt;
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfrv;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfsb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object p0, v2

    :cond_b
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfsb;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfrv;-><init>(Lcom/google/android/gms/internal/ads/zzfsb;)V

    return-object v0
.end method
