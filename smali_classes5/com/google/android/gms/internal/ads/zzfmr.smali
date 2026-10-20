###### Class com.google.android.gms.internal.ads.zzfmr (com.google.android.gms.internal.ads.zzfmr)
.class public final Lcom/google/android/gms/internal/ads/zzfmr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzflc;->zza:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v0, "OMIDLIB"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
