###### Class com.google.android.gms.internal.ads.zzesy (com.google.android.gms.internal.ads.zzesy)
.class public final Lcom/google/android/gms/internal/ads/zzesy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuy;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x34

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/h0;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzesz;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgbb;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    return-object v0
.end method
