###### Class com.google.android.gms.ads.internal.client.zzch (com.google.android.gms.ads.internal.client.zzch)
.class public abstract Lcom/google/android/gms/ads/internal/client/zzch;
.super Lcom/google/android/gms/internal/ads/zzavh;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzci;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzavh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final zzbK(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x1

    if-eq p1, p4, :cond_21

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1d

    const/4 p2, 0x3

    if-eq p1, p2, :cond_19

    const/4 p2, 0x4

    if-eq p1, p2, :cond_15

    const/4 p2, 0x5

    if-eq p1, p2, :cond_11

    const/4 p1, 0x0

    return p1

    :cond_11
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzci;->zzb()V

    goto :goto_2f

    :cond_15
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzci;->zze()V

    goto :goto_2f

    :cond_19
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzci;->zzc()V

    goto :goto_2f

    :cond_1d
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzci;->zzf()V

    goto :goto_2f

    :cond_21
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzavi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzavi;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzci;->zzd(Lcom/google/android/gms/ads/internal/client/zze;)V

    :goto_2f
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return p4
.end method
