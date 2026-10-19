###### Class com.google.android.gms.internal.ads.zzdkp (com.google.android.gms.internal.ads.zzdkp)
.class public Lcom/google/android/gms/internal/ads/zzdkp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzfdu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfdu;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkp;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    return-void
.end method


# virtual methods
.method public zza()Lcom/google/android/gms/internal/ads/zzfet;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkp;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzW:Lcom/google/android/gms/internal/ads/zzfet;

    return-object v0
.end method

.method public zzb()Ljava/lang/String;
    .registers 2

    const-string v0, ""

    return-object v0
.end method

.method public zzc()Lorg/json/JSONObject;
    .registers 2

    const/4 v0, 0x0

    throw v0
.end method

.method public zzd()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkp;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzU:Z

    return v0
.end method

.method public zze()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkp;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzL:Z

    return v0
.end method

.method public zzf()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkp;->zza:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzK:Z

    return v0
.end method

.method public zzg()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
