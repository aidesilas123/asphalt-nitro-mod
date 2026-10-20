###### Class com.google.android.gms.ads.internal.util.zzcl (com.google.android.gms.ads.internal.util.zzcl)
.class final Lcom/google/android/gms/ads/internal/util/zzcl;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzcm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzcm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzcl;->zza:Lcom/google/android/gms/ads/internal/util/zzcm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzcl;->zza:Lcom/google/android/gms/ads/internal/util/zzcm;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzcm;->zza(Lcom/google/android/gms/ads/internal/util/zzcm;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
