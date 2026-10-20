###### Class com.google.android.gms.internal.ads.zzid (com.google.android.gms.internal.ads.zzid)
.class final Lcom/google/android/gms/internal/ads/zzid;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzif;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzie;

.field private final zzc:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzif;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzie;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zza:Lcom/google/android/gms/internal/ads/zzif;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzid;->zzc:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzid;->zzb:Lcom/google/android/gms/internal/ads/zzie;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzid;->zzc:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method public final run()V
    .registers 1

    return-void
.end method
