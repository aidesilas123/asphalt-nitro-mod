###### Class com.google.android.gms.internal.ads.zzbad (com.google.android.gms.internal.ads.zzbad)
.class public final Lcom/google/android/gms/internal/ads/zzbad;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgwp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbab;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbad;->zza:Lcom/google/android/gms/internal/ads/zzgwp;

    return-void
.end method

.method public static zza(I)I
    .registers 2

    const/4 v0, 0x1

    if-eqz p0, :cond_10

    if-eq p0, v0, :cond_e

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_b

    const/4 p0, 0x0

    return p0

    :cond_b
    const/16 p0, 0x3e9

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    return v0
.end method
