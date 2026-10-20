###### Class com.google.android.gms.internal.ads.zzg (com.google.android.gms.internal.ads.zzg)
.class final Lcom/google/android/gms/internal/ads/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x20
.end annotation


# direct methods
.method public static zza(Landroid/media/AudioAttributes$Builder;I)V
    .registers 2
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setSpatializationBehavior(I)Landroid/media/AudioAttributes$Builder;

    return-void
.end method
