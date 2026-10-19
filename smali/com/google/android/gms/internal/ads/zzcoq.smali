###### Class com.google.android.gms.internal.ads.zzcoq (com.google.android.gms.internal.ads.zzcoq)
.class public final Lcom/google/android/gms/internal/ads/zzcoq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcog;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdwn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwn;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zza:Lcom/google/android/gms/internal/ads/zzdwn;

    return-void
.end method


# virtual methods
.method public final zza(Lorg/json/JSONObject;)V
    .registers 4

    if-eqz p1, :cond_1a

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zziZ:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoq;->zza:Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdwn;->zzm(Lorg/json/JSONObject;)V

    :cond_1a
    :goto_1a
    return-void
.end method
