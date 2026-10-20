###### Class com.google.android.gms.internal.drive.zzer (com.google.android.gms.internal.drive.zzer)
.class public abstract Lcom/google/android/gms/internal/drive/zzer;
.super Lcom/google/android/gms/internal/drive/zzb;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzeq;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_100

    :pswitch_3
    const/4 p1, 0x0

    return p1

    :pswitch_5
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfz;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfz;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfz;)V

    goto/16 :goto_fa

    :pswitch_12
    sget-object p1, Lcom/google/android/gms/internal/drive/zzgt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzgt;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzgt;)V

    goto/16 :goto_fa

    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/drive/zzem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzem;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzem;)V

    goto/16 :goto_fa

    :pswitch_2c
    sget-object p1, Lcom/google/android/gms/internal/drive/zzez;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzez;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzez;)V

    goto/16 :goto_fa

    :pswitch_39
    sget-object p1, Lcom/google/android/gms/drive/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/drive/zza;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/drive/zza;)V

    goto/16 :goto_fa

    :pswitch_46
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfl;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfl;)V

    goto/16 :goto_fa

    :pswitch_53
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zzb(Z)V

    goto/16 :goto_fa

    :pswitch_5c
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfd;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfd;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfd;)V

    goto/16 :goto_fa

    :pswitch_69
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfu;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfu;)V

    goto/16 :goto_fa

    :pswitch_76
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfx;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfx;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfx;)V

    goto/16 :goto_fa

    :pswitch_83
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfr;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzim;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/drive/zzil;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfr;Lcom/google/android/gms/internal/drive/zzil;)V

    goto :goto_fa

    :pswitch_97
    sget-object p1, Lcom/google/android/gms/internal/drive/zzgb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzgb;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzgb;)V

    goto :goto_fa

    :pswitch_a3
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfp;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfp;)V

    goto :goto_fa

    :pswitch_af
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzeq;->onSuccess()V

    goto :goto_fa

    :pswitch_b3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_fa

    :pswitch_bf
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfb;)V

    goto :goto_fa

    :pswitch_cb
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfs;)V

    goto :goto_fa

    :pswitch_d7
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfh;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfh;)V

    goto :goto_fa

    :pswitch_e3
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfn;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzfn;)V

    goto :goto_fa

    :pswitch_ef
    sget-object p1, Lcom/google/android/gms/internal/drive/zzff;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/drive/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/drive/zzff;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/drive/zzeq;->zza(Lcom/google/android/gms/internal/drive/zzff;)V

    :goto_fa
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_ef
        :pswitch_e3
        :pswitch_d7
        :pswitch_cb
        :pswitch_bf
        :pswitch_b3
        :pswitch_af
        :pswitch_a3
        :pswitch_97
        :pswitch_3
        :pswitch_83
        :pswitch_76
        :pswitch_69
        :pswitch_5c
        :pswitch_53
        :pswitch_46
        :pswitch_39
        :pswitch_2c
        :pswitch_3
        :pswitch_1f
        :pswitch_12
        :pswitch_5
    .end packed-switch
.end method
