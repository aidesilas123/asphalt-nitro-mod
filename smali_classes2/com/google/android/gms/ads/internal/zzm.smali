###### Class com.google.android.gms.ads.internal.zzm (com.google.android.gms.ads.internal.zzm)
.class final Lcom/google/android/gms/ads/internal/zzm;
.super Landroid/webkit/WebViewClient;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/ads/internal/zzs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzs;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 5

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    const-string p3, "#007 Could not call remote method."

    if-eqz p2, :cond_1c

    :try_start_a
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_31

    :try_start_24
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->zze(I)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_2c} :catch_2d

    return-void

    :catch_2d
    move-exception p1

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 8

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    return v0

    :cond_e
    const-string p1, "gmsg://noAdLoaded"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "#007 Could not call remote method."

    const/4 v3, 0x1

    if-eqz p1, :cond_4d

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    const/4 v4, 0x3

    if-eqz p2, :cond_33

    :try_start_23
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-static {v4, v1, v1}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_33
    :goto_33
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_47

    :try_start_3b
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/google/android/gms/ads/internal/client/zzbh;->zze(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_42} :catch_43

    goto :goto_47

    :catch_43
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzs;->zzV(I)V

    return v3

    :cond_4d
    const-string p1, "gmsg://scriptLoadFailed"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_6d

    :try_start_5d
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-static {v3, v1, v1}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzf(Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p2

    if-eqz p2, :cond_81

    :try_start_75
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/ads/internal/client/zzbh;->zze(I)V
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_75 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/internal/zzs;->zzV(I)V

    return v3

    :cond_87
    const-string p1, "gmsg://adResized"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_af

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    if-eqz v0, :cond_a3

    :try_start_97
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzi()V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9e} :catch_9f

    goto :goto_a3

    :catch_9f
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a3
    :goto_a3
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->zzb(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/zzs;->zzV(I)V

    return v3

    :cond_af
    const-string p1, "gmsg://"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    return v3

    :cond_b8
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object v0

    if-eqz v0, :cond_d5

    :try_start_c0
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/zzs;->zzh(Lcom/google/android/gms/ads/internal/zzs;)Lcom/google/android/gms/ads/internal/client/zzbh;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/client/zzbh;->zzh()V
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception p1

    invoke-static {v2, p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzl(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/zzs;->zzo(Lcom/google/android/gms/ads/internal/zzs;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/ads/internal/zzm;->zza:Lcom/google/android/gms/ads/internal/zzs;

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/zzs;->zzw(Lcom/google/android/gms/ads/internal/zzs;Ljava/lang/String;)V

    return v3
.end method
