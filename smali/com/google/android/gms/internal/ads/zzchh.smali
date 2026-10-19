###### Class com.google.android.gms.internal.ads.zzchh (com.google.android.gms.internal.ads.zzchh)
.class public final Lcom/google/android/gms/internal/ads/zzchh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcik;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzcbt;Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzfdu;Lcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/internal/ads/zzefa;)Lcom/google/android/gms/internal/ads/zzcgv;
    .registers 32
    .param p5    # Lcom/google/android/gms/internal/ads/zzasi;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzbee;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/android/gms/internal/ads/zzbdu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/android/gms/ads/internal/zzl;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/ads/internal/zza;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/google/android/gms/internal/ads/zzfdu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/google/android/gms/internal/ads/zzfdy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p14    # Lcom/google/android/gms/internal/ads/zzefa;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzchg;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdc;->zza(Landroid/content/Context;)V

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzche;

    const/4 v10, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/internal/ads/zzche;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcik;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzcbt;Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzfdu;Lcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/internal/ads/zzefa;)V

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_4b

    :try_start_2a
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2, v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitDiskWrites()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfuo;->zza()Ljava/lang/Object;

    move-result-object v0
    :try_end_42
    .catchall {:try_start_2a .. :try_end_42} :catchall_46

    :try_start_42
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object v0

    :catchall_46
    move-exception v0

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzchg;

    const-string v2, "Webview initialization failed."

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzchg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.android.gms.internal.ads.zzche (com.google.android.gms.internal.ads.zzche)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzche;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfuo;


# instance fields
.field public final synthetic zza:Landroid/content/Context;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcik;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Z

.field public final synthetic zze:Z

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzasi;

.field public final synthetic zzg:Lcom/google/android/gms/internal/ads/zzbee;

.field public final synthetic zzh:Lcom/google/android/gms/internal/ads/zzcbt;

.field public final synthetic zzi:Lcom/google/android/gms/ads/internal/zzl;

.field public final synthetic zzj:Lcom/google/android/gms/ads/internal/zza;

.field public final synthetic zzk:Lcom/google/android/gms/internal/ads/zzayp;

.field public final synthetic zzl:Lcom/google/android/gms/internal/ads/zzfdu;

.field public final synthetic zzm:Lcom/google/android/gms/internal/ads/zzfdy;

.field public final synthetic zzn:Lcom/google/android/gms/internal/ads/zzefa;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcik;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzcbt;Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzfdu;Lcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/internal/ads/zzefa;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzche;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzche;->zzb:Lcom/google/android/gms/internal/ads/zzcik;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzche;->zzc:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzche;->zzd:Z

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzche;->zze:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzche;->zzf:Lcom/google/android/gms/internal/ads/zzasi;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzche;->zzg:Lcom/google/android/gms/internal/ads/zzbee;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzche;->zzh:Lcom/google/android/gms/internal/ads/zzcbt;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzche;->zzi:Lcom/google/android/gms/ads/internal/zzl;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzche;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzche;->zzk:Lcom/google/android/gms/internal/ads/zzayp;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzche;->zzl:Lcom/google/android/gms/internal/ads/zzfdu;

    iput-object p14, p0, Lcom/google/android/gms/internal/ads/zzche;->zzm:Lcom/google/android/gms/internal/ads/zzfdy;

    iput-object p15, p0, Lcom/google/android/gms/internal/ads/zzche;->zzn:Lcom/google/android/gms/internal/ads/zzefa;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 22

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzche;->zzb:Lcom/google/android/gms/internal/ads/zzcik;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzche;->zzc:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzche;->zzd:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzche;->zzk:Lcom/google/android/gms/internal/ads/zzayp;

    iget-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzche;->zze:Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzche;->zzf:Lcom/google/android/gms/internal/ads/zzasi;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzche;->zzg:Lcom/google/android/gms/internal/ads/zzbee;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzche;->zzi:Lcom/google/android/gms/ads/internal/zzl;

    iget-object v14, v1, Lcom/google/android/gms/internal/ads/zzche;->zzl:Lcom/google/android/gms/internal/ads/zzfdu;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzche;->zza:Landroid/content/Context;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzche;->zzh:Lcom/google/android/gms/internal/ads/zzcbt;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzche;->zzj:Lcom/google/android/gms/ads/internal/zza;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzche;->zzm:Lcom/google/android/gms/internal/ads/zzfdy;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzche;->zzn:Lcom/google/android/gms/internal/ads/zzefa;

    const/16 v3, 0x108

    :try_start_20
    invoke-static {v3}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzchk;

    sget v16, Lcom/google/android/gms/internal/ads/zzcho;->zza:I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcij;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzcij;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcho;

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v3, v1

    move-object v1, v7

    move v7, v15

    move-object/from16 v19, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v14

    move-object v14, v0

    move/from16 v20, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    invoke-direct/range {v2 .. v16}, Lcom/google/android/gms/internal/ads/zzcho;-><init>(Lcom/google/android/gms/internal/ads/zzcij;Lcom/google/android/gms/internal/ads/zzcik;Ljava/lang/String;ZZLcom/google/android/gms/internal/ads/zzasi;Lcom/google/android/gms/internal/ads/zzbee;Lcom/google/android/gms/internal/ads/zzcbt;Lcom/google/android/gms/internal/ads/zzbdu;Lcom/google/android/gms/ads/internal/zzl;Lcom/google/android/gms/ads/internal/zza;Lcom/google/android/gms/internal/ads/zzayp;Lcom/google/android/gms/internal/ads/zzfdu;Lcom/google/android/gms/internal/ads/zzfdy;)V

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzchk;-><init>(Lcom/google/android/gms/internal/ads/zzcgv;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzq()Lcom/google/android/gms/ads/internal/util/zzab;

    move-result-object v3

    move/from16 v4, v20

    invoke-virtual {v3, v2, v0, v4, v1}, Lcom/google/android/gms/ads/internal/util/zzab;->zzd(Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/internal/ads/zzayp;ZLcom/google/android/gms/internal/ads/zzefa;)Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgv;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzcgu;-><init>(Lcom/google/android/gms/internal/ads/zzcgv;)V

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcgv;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    :try_end_63
    .catchall {:try_start_20 .. :try_end_63} :catchall_67

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    return-object v2

    :catchall_67
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    throw v0
.end method
