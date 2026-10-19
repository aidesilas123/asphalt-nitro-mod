###### Class com.google.android.gms.internal.ads.zzsb (com.google.android.gms.internal.ads.zzsb)
.class final Lcom/google/android/gms/internal/ads/zzsb;
.super Landroid/os/Handler;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzsd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzsd;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsb;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsb;->zza:Lcom/google/android/gms/internal/ads/zzsd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzsd;->zza(Lcom/google/android/gms/internal/ads/zzsd;Landroid/os/Message;)V

    return-void
.end method
