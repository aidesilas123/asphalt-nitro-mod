###### Class com.google.android.gms.internal.ads.zzgmc (com.google.android.gms.internal.ads.zzgmc)
.class public final Lcom/google/android/gms/internal/ads/zzgmc;
.super Ljava/lang/RuntimeException;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzgmb;)Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgmb;->zza()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgmc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzgmc;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
