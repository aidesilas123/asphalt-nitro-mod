###### Class com.google.android.gms.internal.ads.zzbnq (com.google.android.gms.internal.ads.zzbnq)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzbnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzbog;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbof;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbog;Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzbof;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnq;->zza:Lcom/google/android/gms/internal/ads/zzbog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnq;->zzb:Lcom/google/android/gms/internal/ads/zzbof;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnq;->zza:Lcom/google/android/gms/internal/ads/zzbog;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnq;->zzb:Lcom/google/android/gms/internal/ads/zzbof;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbog;->zzj(Lcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzbof;)V

    return-void
.end method
