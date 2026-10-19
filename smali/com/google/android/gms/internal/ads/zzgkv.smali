###### Class com.google.android.gms.internal.ads.zzgkv (com.google.android.gms.internal.ads.zzgkv)
.class final Lcom/google/android/gms/internal/ads/zzgkv;
.super Lcom/google/android/gms/internal/ads/zzgky;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgkw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzguk;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkw;)V
    .registers 4

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgkv;->zza:Lcom/google/android/gms/internal/ads/zzgkw;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgky;-><init>(Lcom/google/android/gms/internal/ads/zzguk;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgkx;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzglt;)Lcom/google/android/gms/internal/ads/zzgdd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgkv;->zza:Lcom/google/android/gms/internal/ads/zzgkw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgkw;->zza(Lcom/google/android/gms/internal/ads/zzglt;)Lcom/google/android/gms/internal/ads/zzgdd;

    move-result-object p1

    return-object p1
.end method
