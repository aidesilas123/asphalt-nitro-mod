###### Class com.google.android.gms.internal.ads.zzdgx (com.google.android.gms.internal.ads.zzdgx)
.class public final Lcom/google/android/gms/internal/ads/zzdgx;
.super Lcom/google/android/gms/internal/ads/zzctr;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdfi;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdig;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcum;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfoe;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcyu;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcba;

.field private zzk:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzctq;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/internal/ads/zzdfi;Lcom/google/android/gms/internal/ads/zzdig;Lcom/google/android/gms/internal/ads/zzcum;Lcom/google/android/gms/internal/ads/zzfoe;Lcom/google/android/gms/internal/ads/zzcyu;Lcom/google/android/gms/internal/ads/zzcba;)V
    .registers 10

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzctr;-><init>(Lcom/google/android/gms/internal/ads/zzctq;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzk:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzc:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zze:Lcom/google/android/gms/internal/ads/zzdfi;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzf:Lcom/google/android/gms/internal/ads/zzdig;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzg:Lcom/google/android/gms/internal/ads/zzcum;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzh:Lcom/google/android/gms/internal/ads/zzfoe;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzi:Lcom/google/android/gms/internal/ads/zzcyu;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzj:Lcom/google/android/gms/internal/ads/zzcba;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgv;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbdc;->zzgK:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzk:Z

    if-nez v1, :cond_30

    if-eqz v0, :cond_30

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcca;->zze:Lcom/google/android/gms/internal/ads/zzgbl;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdgw;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdgw;-><init>(Lcom/google/android/gms/internal/ads/zzcgv;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_30

    :cond_2b
    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgv;->destroy()V
    :try_end_30
    .catchall {:try_start_0 .. :try_end_30} :catchall_34

    :cond_30
    :goto_30
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_34
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final zza()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzg:Lcom/google/android/gms/internal/ads/zzcum;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcum;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzc(ZLandroid/app/Activity;)Z
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zze:Lcom/google/android/gms/internal/ads/zzdfi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdfi;->zzb()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbdc;->zzaA:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzt;->zzF(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://googlemobileadssdk.page.link/admob-interstitial-policies"

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzi:Lcom/google/android/gms/internal/ads/zzcyu;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcyu;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zzaB:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzh:Lcom/google/android/gms/internal/ads/zzfoe;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzctr;->zza:Lcom/google/android/gms/internal/ads/zzfeh;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfeh;->zzb:Lcom/google/android/gms/internal/ads/zzfeg;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfeg;->zzb:Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfdy;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfoe;->zza(Ljava/lang/String;)V

    goto/16 :goto_c4

    :cond_4e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgv;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbdc;->zzkX:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_92

    if-eqz v0, :cond_92

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzD()Lcom/google/android/gms/internal/ads/zzfdu;

    move-result-object v0

    if-eqz v0, :cond_92

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzar:Z

    if-eqz v2, :cond_92

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfdu;->zzas:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzj:Lcom/google/android/gms/internal/ads/zzcba;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcba;->zzb()I

    move-result v2

    if-eq v0, v2, :cond_92

    const-string p1, "The interstitial consent form has been shown."

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzi:Lcom/google/android/gms/internal/ads/zzcyu;

    const/16 p2, 0xc

    const-string v0, "The consent form has already been shown."

    invoke-static {p2, v0, v3}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcyu;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    goto :goto_c4

    :cond_92
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzk:Z

    if-eqz v0, :cond_a6

    const-string v0, "The interstitial ad has been shown."

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzi:Lcom/google/android/gms/internal/ads/zzcyu;

    const/16 v2, 0xa

    invoke-static {v2, v3, v3}, Lcom/google/android/gms/internal/ads/zzffr;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzcyu;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_a6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzk:Z

    if-nez v0, :cond_c4

    if-nez p2, :cond_ae

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzc:Landroid/content/Context;

    :cond_ae
    :try_start_ae
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzf:Lcom/google/android/gms/internal/ads/zzdig;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzi:Lcom/google/android/gms/internal/ads/zzcyu;

    invoke-interface {v0, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdig;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcyu;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zze:Lcom/google/android/gms/internal/ads/zzdfi;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdfi;->zza()V
    :try_end_ba
    .catch Lcom/google/android/gms/internal/ads/zzdif; {:try_start_ae .. :try_end_ba} :catch_be

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzk:Z

    return p1

    :catch_be
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgx;->zzi:Lcom/google/android/gms/internal/ads/zzcyu;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcyu;->zzc(Lcom/google/android/gms/internal/ads/zzdif;)V

    :cond_c4
    :goto_c4
    return v1
.end method

###### Class com.google.android.gms.internal.ads.zzdgw (com.google.android.gms.internal.ads.zzdgw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdgw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgv;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgw;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgw;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgv;->destroy()V

    return-void
.end method
