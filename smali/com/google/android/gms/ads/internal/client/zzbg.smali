###### Class com.google.android.gms.ads.internal.client.zzbg (com.google.android.gms.ads.internal.client.zzbg)
.class public abstract Lcom/google/android/gms/ads/internal/client/zzbg;
.super Lcom/google/android/gms/internal/ads/zzavh;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/client/zzbh;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"

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

    packed-switch p1, :pswitch_data_3c

    const/4 p1, 0x0

    return p1

    :pswitch_5
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzk()V

    goto :goto_36

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/ads/internal/client/zze;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzavi;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zze;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzavi;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_36

    :pswitch_18
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzg()V

    goto :goto_36

    :pswitch_1c
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzc()V

    goto :goto_36

    :pswitch_20
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzj()V

    goto :goto_36

    :pswitch_24
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzi()V

    goto :goto_36

    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzavi;->zzc(Landroid/os/Parcel;)V

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->zze(I)V

    goto :goto_36

    :pswitch_33
    invoke-interface {p0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzd()V

    :goto_36
    :pswitch_36
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_33
        :pswitch_28
        :pswitch_36
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method
