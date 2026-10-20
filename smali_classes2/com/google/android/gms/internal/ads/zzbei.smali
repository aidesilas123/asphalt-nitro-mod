###### Class com.google.android.gms.internal.ads.zzbei (com.google.android.gms.internal.ads.zzbei)
.class public final Lcom/google/android/gms/internal/ads/zzbei;
.super Lcom/google/android/gms/internal/ads/zzbeh;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbeh;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public static zzf(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzbeh;
    .registers 4

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbei;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzbei;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object p1
.end method
