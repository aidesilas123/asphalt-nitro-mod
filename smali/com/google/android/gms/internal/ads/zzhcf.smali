###### Class com.google.android.gms.internal.ads.zzhcf (com.google.android.gms.internal.ads.zzhcf)
.class public final Lcom/google/android/gms/internal/ads/zzhcf;
.super Lcom/google/android/gms/internal/ads/zzgwi;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxx;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcg;->zzc()Lcom/google/android/gms/internal/ads/zzhcg;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzhag;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcg;->zzc()Lcom/google/android/gms/internal/ads/zzhcg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhcf;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhcg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhcg;->zzd(Lcom/google/android/gms/internal/ads/zzhcg;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(J)Lcom/google/android/gms/internal/ads/zzhcf;
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhcg;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhcg;->zze(Lcom/google/android/gms/internal/ads/zzhcg;J)V

    return-object p0
.end method

.method public final zzc(Z)Lcom/google/android/gms/internal/ads/zzhcf;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhcg;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhcg;->zzf(Lcom/google/android/gms/internal/ads/zzhcg;Z)V

    return-object p0
.end method
