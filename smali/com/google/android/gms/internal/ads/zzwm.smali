###### Class com.google.android.gms.internal.ads.zzwm (com.google.android.gms.internal.ads.zzwm)
.class public final Lcom/google/android/gms/internal/ads/zzwm;
.super Lcom/google/android/gms/internal/ads/zzcf;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zzc:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZI)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwm;->zzc:Landroid/net/Uri;

    return-void
.end method
