###### Class com.google.android.gms.internal.ads.zzfdq (com.google.android.gms.internal.ads.zzfdq)
.class final Lcom/google/android/gms/internal/ads/zzfdq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/rewarded/OnAdMetadataChangedListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/client/zzby;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfdr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfdr;Lcom/google/android/gms/ads/internal/client/zzby;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfdq;->zzb:Lcom/google/android/gms/internal/ads/zzfdr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfdq;->zza:Lcom/google/android/gms/ads/internal/client/zzby;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdMetadataChanged()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdq;->zzb:Lcom/google/android/gms/internal/ads/zzfdr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfdr;->zzv(Lcom/google/android/gms/internal/ads/zzfdr;)Lcom/google/android/gms/internal/ads/zzdpy;

    move-result-object v0

    if-eqz v0, :cond_14

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfdq;->zza:Lcom/google/android/gms/ads/internal/client/zzby;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzby;->zze()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_14
    return-void
.end method
