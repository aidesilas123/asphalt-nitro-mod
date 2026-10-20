###### Class com.google.android.gms.internal.ads.zzqz (com.google.android.gms.internal.ads.zzqz)
.class final Lcom/google/android/gms/internal/ads/zzqz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/ads/zzpv;Ljava/lang/Object;)V
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    check-cast p1, Landroid/media/AudioDeviceInfo;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzpv;->zzt(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
