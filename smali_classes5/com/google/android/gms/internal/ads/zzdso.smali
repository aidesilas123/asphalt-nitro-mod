###### Class com.google.android.gms.internal.ads.zzdso (com.google.android.gms.internal.ads.zzdso)
.class public final Lcom/google/android/gms/internal/ads/zzdso;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdp;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzdso;
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdsn;->zza()Lcom/google/android/gms/internal/ads/zzdso;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdsv;

    const/16 v1, 0x3e9

    const/16 v2, 0x3ea

    const/16 v3, 0x3eb

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdsv;-><init>(III)V

    return-object v0
.end method
