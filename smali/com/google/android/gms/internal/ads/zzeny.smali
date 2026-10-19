###### Class com.google.android.gms.internal.ads.zzeny (com.google.android.gms.internal.ads.zzeny)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzeny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcyk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzenm;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbmv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzenm;Lcom/google/android/gms/internal/ads/zzbmv;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeny;->zza:Lcom/google/android/gms/internal/ads/zzenm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzb:Lcom/google/android/gms/internal/ads/zzbmv;

    return-void
.end method


# virtual methods
.method public final zzbG(Lcom/google/android/gms/ads/internal/client/zze;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeny;->zza:Lcom/google/android/gms/internal/ads/zzenm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzenm;->zzbG(Lcom/google/android/gms/ads/internal/client/zze;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeny;->zzb:Lcom/google/android/gms/internal/ads/zzbmv;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_13

    :try_start_b
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmv;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_13
    :goto_13
    if-eqz v0, :cond_1f

    :try_start_15
    iget p1, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbmv;->zze(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method
