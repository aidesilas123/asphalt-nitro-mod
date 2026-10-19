###### Class com.google.android.gms.games.internal.zzv (com.google.android.gms.games.internal.zzv)
.class public abstract Lcom/google/android/gms/games/internal/zzv;
.super Lcom/google/android/gms/internal/games/zzb;

# interfaces
.implements Lcom/google/android/gms/games/internal/zzu;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/games/zzb;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 p4, 0x1771

    if-eq p1, p4, :cond_512

    const/16 p4, 0x1772

    if-eq p1, p4, :cond_50a

    const/16 p4, 0x32c9

    if-eq p1, p4, :cond_4fe

    const/16 p4, 0x32ca

    if-eq p1, p4, :cond_4f6

    const/16 p4, 0x4a39

    if-eq p1, p4, :cond_4e6

    const/16 p4, 0x4a3a

    if-eq p1, p4, :cond_4da

    packed-switch p1, :pswitch_data_51e

    sparse-switch p1, :sswitch_data_538

    packed-switch p1, :pswitch_data_5e6

    packed-switch p1, :pswitch_data_5fe

    packed-switch p1, :pswitch_data_60e

    packed-switch p1, :pswitch_data_61e

    packed-switch p1, :pswitch_data_630

    const/4 p1, 0x0

    return p1

    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzi(I)V

    goto/16 :goto_519

    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzh(I)V

    goto/16 :goto_519

    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzg(I)V

    goto/16 :goto_519

    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzf(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :pswitch_5b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzaq(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_68
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object p1, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/google/android/gms/drive/Contents;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/drive/Contents;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/drive/Contents;

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzu;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_519

    :pswitch_92
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzal(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zze(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :pswitch_b0
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzak(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_bd
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzan(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzd(ILjava/lang/String;)V

    goto/16 :goto_519

    :pswitch_d7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzb(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_e4
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzam(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_f1
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzaj(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_fe
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzai(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_10b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzah(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_118
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    sget-object p4, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/drive/Contents;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    goto/16 :goto_519

    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzd(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :pswitch_13e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzaf(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzb(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :pswitch_15c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzae(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_169
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzad(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onRequestRemoved(Ljava/lang/String;)V

    goto/16 :goto_519

    :pswitch_17f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzm(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_18c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onInvitationRemoved(Ljava/lang/String;)V

    goto/16 :goto_519

    :pswitch_195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onTurnBasedMatchRemoved(Ljava/lang/String;)V

    goto/16 :goto_519

    :pswitch_19e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzr(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_1ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzc(ILjava/lang/String;)V

    goto/16 :goto_519

    :pswitch_1b8
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzq(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_1c5
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzp(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_1d2
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzo(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_1df
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzn(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_1ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :pswitch_1fd
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzac(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_20a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzg(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :sswitch_21b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onCaptureOverlayStateChanged(I)V

    goto/16 :goto_519

    :sswitch_224
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzb(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_519

    :sswitch_231
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzaz(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_23e
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzay(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_24b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzax(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_258
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzaw(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_265
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzav(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_272
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzau(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_27f
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzat(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_28c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzas(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_299
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzar(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_2a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzf(I)V

    goto/16 :goto_519

    :sswitch_2af
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzap(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_2bc
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zza([Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_2c9
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzag(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_2d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzc(ILandroid/os/Bundle;)V

    goto/16 :goto_519

    :sswitch_2e7
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzj(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_2f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzd(I)V

    goto/16 :goto_519

    :sswitch_2fd
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzab(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_30a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzz(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_317
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzl(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzc(I)V

    goto/16 :goto_519

    :sswitch_32d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzaa(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_33a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(ILjava/lang/String;Z)V

    goto/16 :goto_519

    :sswitch_34b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p4, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(IILjava/lang/String;)V

    goto/16 :goto_519

    :sswitch_35c
    sget-object p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V

    goto/16 :goto_519

    :sswitch_369
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzf(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_519

    :sswitch_37a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zze(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_519

    :sswitch_38b
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzd(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_519

    :sswitch_39c
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzc(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_519

    :sswitch_3ad
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzb(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_519

    :sswitch_3be
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V

    goto/16 :goto_519

    :sswitch_3cf
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzy(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_3dc
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzx(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_3e9
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzw(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_3f6
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzv(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_403
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzu(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->onLeftRoom(ILjava/lang/String;)V

    goto/16 :goto_519

    :sswitch_41d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzt(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_42a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzs(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_437
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzk(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :sswitch_444
    invoke-interface {p0}, Lcom/google/android/gms/games/internal/zzu;->onSignOutComplete()V

    goto/16 :goto_519

    :pswitch_449
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzi(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_456
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzh(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_463
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzg(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_470
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzf(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_47d
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zze(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_48a
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzd(Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_497
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p4, p1}, Lcom/google/android/gms/games/internal/zzu;->zza(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    goto/16 :goto_519

    :pswitch_4aa
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzc(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_519

    :pswitch_4b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zzb(ILjava/lang/String;)V

    goto :goto_519

    :pswitch_4c2
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zza(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_519

    :pswitch_4ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(ILjava/lang/String;)V

    goto :goto_519

    :cond_4da
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;)Z

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(IZ)V

    goto :goto_519

    :cond_4e6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    sget-object p4, Lcom/google/android/gms/games/video/VideoCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p4}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/games/video/VideoCapabilities;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/games/internal/zzu;->zza(ILcom/google/android/gms/games/video/VideoCapabilities;)V

    goto :goto_519

    :cond_4f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zze(I)V

    goto :goto_519

    :cond_4fe
    sget-object p1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzc;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/data/DataHolder;

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->zzao(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_519

    :cond_50a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onP2PDisconnected(Ljava/lang/String;)V

    goto :goto_519

    :cond_512
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/gms/games/internal/zzu;->onP2PConnected(Ljava/lang/String;)V

    :goto_519
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 p1, 0x1

    return p1

    :pswitch_data_51e
    .packed-switch 0x1389
        :pswitch_4ce
        :pswitch_4c2
        :pswitch_4b6
        :pswitch_4aa
        :pswitch_497
        :pswitch_48a
        :pswitch_47d
        :pswitch_470
        :pswitch_463
        :pswitch_456
        :pswitch_449
    .end packed-switch

    :sswitch_data_538
    .sparse-switch
        0x1398 -> :sswitch_444
        0x1399 -> :sswitch_437
        0x139a -> :sswitch_42a
        0x139b -> :sswitch_41d
        0x139c -> :sswitch_410
        0x139d -> :sswitch_403
        0x139e -> :sswitch_3f6
        0x139f -> :sswitch_3e9
        0x13a0 -> :sswitch_3dc
        0x13a1 -> :sswitch_3cf
        0x13a2 -> :sswitch_3be
        0x13a3 -> :sswitch_3ad
        0x13a4 -> :sswitch_39c
        0x13a5 -> :sswitch_38b
        0x13a6 -> :sswitch_37a
        0x13a7 -> :sswitch_369
        0x13a8 -> :sswitch_35c
        0x13a9 -> :sswitch_34b
        0x13aa -> :sswitch_33a
        0x13ab -> :sswitch_32d
        0x13ac -> :sswitch_324
        0x13ad -> :sswitch_317
        0x13ae -> :sswitch_30a
        0x13af -> :sswitch_2fd
        0x13b0 -> :sswitch_2f4
        0x2329 -> :sswitch_2e7
        0x2af9 -> :sswitch_2d6
        0x2ee1 -> :sswitch_2c9
        0x36b1 -> :sswitch_2bc
        0x3a99 -> :sswitch_2af
        0x426a -> :sswitch_2a6
        0x4e21 -> :sswitch_299
        0x4e22 -> :sswitch_28c
        0x4e23 -> :sswitch_27f
        0x4e24 -> :sswitch_272
        0x4e25 -> :sswitch_265
        0x4e26 -> :sswitch_258
        0x4e27 -> :sswitch_24b
        0x4e28 -> :sswitch_23e
        0x4e29 -> :sswitch_231
        0x4e2c -> :sswitch_224
        0x4e33 -> :sswitch_21b
        0x4e34 -> :sswitch_20a
    .end sparse-switch

    :pswitch_data_5e6
    .packed-switch 0x1f41
        :pswitch_1fd
        :pswitch_1ec
        :pswitch_1df
        :pswitch_1d2
        :pswitch_1c5
        :pswitch_1b8
        :pswitch_1ab
        :pswitch_19e
        :pswitch_195
        :pswitch_18c
    .end packed-switch

    :pswitch_data_5fe
    .packed-switch 0x2711
        :pswitch_17f
        :pswitch_176
        :pswitch_169
        :pswitch_15c
        :pswitch_14b
        :pswitch_13e
    .end packed-switch

    :pswitch_data_60e
    .packed-switch 0x2ee3
        :pswitch_12d
        :pswitch_118
        :pswitch_10b
        :pswitch_fe
        :pswitch_f1
        :pswitch_e4
    .end packed-switch

    :pswitch_data_61e
    .packed-switch 0x2eeb
        :pswitch_d7
        :pswitch_ca
        :pswitch_bd
        :pswitch_b0
        :pswitch_9f
        :pswitch_92
        :pswitch_68
    .end packed-switch

    :pswitch_data_630
    .packed-switch 0x4a3e
        :pswitch_5b
        :pswitch_4a
        :pswitch_41
        :pswitch_38
        :pswitch_2f
    .end packed-switch
.end method
