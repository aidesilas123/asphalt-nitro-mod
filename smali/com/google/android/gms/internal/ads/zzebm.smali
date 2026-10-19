###### Class com.google.android.gms.internal.ads.zzebm (com.google.android.gms.internal.ads.zzebm)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzebm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic zza:Lcom/google/common/util/concurrent/h0;

.field public final synthetic zzb:Lcom/google/common/util/concurrent/h0;

.field public final synthetic zzc:Lcom/google/common/util/concurrent/h0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/h0;Lcom/google/common/util/concurrent/h0;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebm;->zza:Lcom/google/common/util/concurrent/h0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebm;->zzb:Lcom/google/common/util/concurrent/h0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebm;->zzc:Lcom/google/common/util/concurrent/h0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebm;->zza:Lcom/google/common/util/concurrent/h0;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzebv;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzecj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzebm;->zzb:Lcom/google/common/util/concurrent/h0;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzebm;->zzc:Lcom/google/common/util/concurrent/h0;

    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbwd;

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzebv;-><init>(Lcom/google/android/gms/internal/ads/zzecj;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbwd;)V

    return-object v1
.end method
