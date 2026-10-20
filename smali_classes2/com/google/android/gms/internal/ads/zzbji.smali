###### Class com.google.android.gms.internal.ads.zzbji (com.google.android.gms.internal.ads.zzbji)
.class final Lcom/google/android/gms/internal/ads/zzbji;
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
    .registers 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzK()Lcom/google/android/gms/internal/ads/zzbfv;

    move-result-object p2

    const-string v0, "nativeAdViewSignalsReady"

    if-eqz p2, :cond_14

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzbfv;->zza()Lorg/json/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_14

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbmx;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_14
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbmx;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
