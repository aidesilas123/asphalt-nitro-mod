###### Class com.google.android.gms.internal.ads.zzbju (com.google.android.gms.internal.ads.zzbju)
.class final Lcom/google/android/gms/internal/ads/zzbju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkd;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .registers 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzJ()Lcom/google/android/gms/internal/ads/zzaxd;

    move-result-object p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzJ()Lcom/google/android/gms/internal/ads/zzaxd;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzaxd;->zza()V

    :cond_f
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzL()Lcom/google/android/gms/ads/internal/overlay/zzl;

    move-result-object p2

    if-eqz p2, :cond_19

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzb()V

    return-void

    :cond_19
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzM()Lcom/google/android/gms/ads/internal/overlay/zzl;

    move-result-object p1

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzb()V

    return-void

    :cond_23
    const-string p1, "A GMSG tried to close something that wasn\'t an overlay."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    return-void
.end method
