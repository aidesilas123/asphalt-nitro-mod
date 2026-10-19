###### Class com.google.android.gms.internal.ads.zzfjv (com.google.android.gms.internal.ads.zzfjv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzfjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public static zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfjw;
    .registers 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfkk;->zza()Z

    move-result v0

    if-eqz v0, :cond_4f

    add-int/lit8 v0, p1, -0x2

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x15

    if-eq v0, v1, :cond_3b

    packed-switch v0, :pswitch_data_56

    goto :goto_4f

    :pswitch_14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeo;->zzb:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_47

    :pswitch_21
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeo;->zzd:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_47

    :pswitch_2e
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeo;->zzc:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_47

    :cond_3b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbeo;->zze:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbeh;->zze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_47
    if-eqz v0, :cond_4f

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfjy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfjy;-><init>(Landroid/content/Context;I)V

    return-object v0

    :cond_4f
    :goto_4f
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfkt;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfkt;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2e
        :pswitch_21
        :pswitch_14
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
        :pswitch_21
    .end packed-switch
.end method

.method public static zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzl;)Lcom/google/android/gms/internal/ads/zzfjw;
    .registers 4

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjv;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfjw;

    move-result-object p0

    instance-of p1, p0, Lcom/google/android/gms/internal/ads/zzfjy;

    if-nez p1, :cond_9

    goto :goto_1c

    :cond_9
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzfjw;->zzh()Lcom/google/android/gms/internal/ads/zzfjw;

    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzfjw;->zzm(I)Lcom/google/android/gms/internal/ads/zzfjw;

    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzl;->zzp:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfkg;->zze(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p3, Lcom/google/android/gms/ads/internal/client/zzl;->zzp:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzfjw;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfjw;

    :cond_1c
    :goto_1c
    return-object p0
.end method
