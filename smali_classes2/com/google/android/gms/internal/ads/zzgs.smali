###### Class com.google.android.gms.internal.ads.zzgs (com.google.android.gms.internal.ads.zzgs)
.class public final Lcom/google/android/gms/internal/ads/zzgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzgq;)V
    .registers 1
    .param p0    # Lcom/google/android/gms/internal/ads/zzgq;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzd()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
