###### Class com.google.android.gms.internal.ads.zzgsp (com.google.android.gms.internal.ads.zzgsp)
.class public final Lcom/google/android/gms/internal/ads/zzgsp;
.super Lcom/google/android/gms/internal/ads/zzgwi;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxx;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsq;->zzd()Lcom/google/android/gms/internal/ads/zzgsq;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgso;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgsq;->zzd()Lcom/google/android/gms/internal/ads/zzgsq;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgrr;)Lcom/google/android/gms/internal/ads/zzgsp;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgsq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsq;->zzi(Lcom/google/android/gms/internal/ads/zzgsq;Lcom/google/android/gms/internal/ads/zzgrr;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgsp;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgsq;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgsq;->zzh(Lcom/google/android/gms/internal/ads/zzgsq;Ljava/lang/String;)V

    return-object p0
.end method
