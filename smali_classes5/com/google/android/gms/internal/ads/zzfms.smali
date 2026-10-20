###### Class com.google.android.gms.internal.ads.zzfms (com.google.android.gms.internal.ads.zzfms)
.class final Lcom/google/android/gms/internal/ads/zzfms;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.action.HDMI_AUDIO_PLUG"

    if-ne p1, v0, :cond_1c

    const/4 p1, -0x1

    const-string v0, "android.media.extra.AUDIO_PLUG_STATE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_16

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfmt;->zzc(I)V

    return-void

    :cond_16
    if-ne p1, p2, :cond_1c

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfmt;->zzc(I)V

    :cond_1c
    return-void
.end method
