###### Class com.google.android.gms.internal.ads.zzftu (com.google.android.gms.internal.ads.zzftu)
.class public abstract Lcom/google/android/gms/internal/ads/zzftu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzftu;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lcom/google/android/gms/internal/ads/zzftd;

    return-object v0
.end method

.method public static zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzftu;
    .registers 2

    if-nez p0, :cond_5

    sget-object p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lcom/google/android/gms/internal/ads/zzftd;

    goto :goto_b

    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfud;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfud;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_b
    return-object p0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/ads/zzftn;)Lcom/google/android/gms/internal/ads/zzftu;
.end method

.method public abstract zzb(Ljava/lang/Object;)Ljava/lang/Object;
.end method
