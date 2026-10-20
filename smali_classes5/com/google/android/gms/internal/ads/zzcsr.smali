###### Class com.google.android.gms.internal.ads.zzcsr (com.google.android.gms.internal.ads.zzcsr)
.class final Lcom/google/android/gms/internal/ads/zzcsr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzcss;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcss;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcss;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcsr;->zza:Lcom/google/android/gms/internal/ads/zzcss;

    return-void
.end method

.method static bridge synthetic zza()Lcom/google/android/gms/internal/ads/zzcss;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzcsr;->zza:Lcom/google/android/gms/internal/ads/zzcss;

    return-object v0
.end method
