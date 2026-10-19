###### Class com.google.android.gms.internal.ads.zzgpo (com.google.android.gms.internal.ads.zzgpo)
.class public final Lcom/google/android/gms/internal/ads/zzgpo;
.super Lcom/google/android/gms/internal/ads/zzgwi;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgxx;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpp;->zzd()Lcom/google/android/gms/internal/ads/zzgpp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgpn;)V
    .registers 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpp;->zzd()Lcom/google/android/gms/internal/ads/zzgpp;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgwi;-><init>(Lcom/google/android/gms/internal/ads/zzgwm;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzgpo;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgpp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpp;->zzk(Lcom/google/android/gms/internal/ads/zzgpp;Lcom/google/android/gms/internal/ads/zzgve;)V

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgpv;)Lcom/google/android/gms/internal/ads/zzgpo;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgpp;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgpp;->zzj(Lcom/google/android/gms/internal/ads/zzgpp;Lcom/google/android/gms/internal/ads/zzgpv;)V

    return-object p0
.end method

.method public final zzc(I)Lcom/google/android/gms/internal/ads/zzgpo;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgwi;->zzap()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgwi;->zza:Lcom/google/android/gms/internal/ads/zzgwm;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgpp;->zzi(Lcom/google/android/gms/internal/ads/zzgpp;I)V

    return-object p0
.end method
