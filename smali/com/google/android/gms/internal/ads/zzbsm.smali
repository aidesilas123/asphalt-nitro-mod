###### Class com.google.android.gms.internal.ads.zzbsm (com.google.android.gms.internal.ads.zzbsm)
.class public final Lcom/google/android/gms/internal/ads/zzbsm;
.super Lcom/google/android/gms/internal/ads/zzbss;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field static final zza:Ljava/util/Set;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzc:Z

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private final zzj:Ljava/lang/Object;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzcgv;

.field private final zzl:Landroid/app/Activity;

.field private zzm:Lcom/google/android/gms/internal/ads/zzcik;

.field private zzn:Landroid/widget/ImageView;

.field private zzo:Landroid/widget/LinearLayout;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzbst;

.field private zzq:Landroid/widget/PopupWindow;

.field private zzr:Landroid/widget/RelativeLayout;

.field private zzs:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const-string v0, "top-left"

    const-string v1, "top-right"

    const-string v2, "top-center"

    const-string v3, "center"

    const-string v4, "bottom-left"

    const-string v5, "bottom-right"

    const-string v6, "bottom-center"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbsm;->zza:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/internal/ads/zzbst;)V
    .registers 5

    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbss;-><init>(Lcom/google/android/gms/internal/ads/zzcgv;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzb:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzc:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzj:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzi()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzp:Lcom/google/android/gms/internal/ads/zzbst;

    return-void
.end method


# virtual methods
.method public final zza(Z)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzn:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzm:Lcom/google/android/gms/internal/ads/zzcik;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzcgv;->zzag(Lcom/google/android/gms/internal/ads/zzcik;)V

    :cond_2c
    if-eqz p1, :cond_3a

    const-string p1, "default"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbss;->zzk(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzp:Lcom/google/android/gms/internal/ads/zzbst;

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbst;->zzb()V

    :cond_3a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzo:Landroid/widget/LinearLayout;

    :cond_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw p1
.end method

.method public final zzb(Ljava/util/Map;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    if-nez v3, :cond_12

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_12
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzO()Lcom/google/android/gms/internal/ads/zzcik;

    move-result-object v3

    if-nez v3, :cond_21

    const-string v0, "Webview is not yet available, size is not set."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_21
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzO()Lcom/google/android/gms/internal/ads/zzcik;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcik;->zzi()Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_34
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzaA()Z

    move-result v3

    if-eqz v3, :cond_43

    const-string v0, "Cannot resize an expanded banner."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_43
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_62

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzN(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    :cond_62
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_81

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzN(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    :cond_81
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzN(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    :cond_a0
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_bf

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzN(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    :cond_bf
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_db

    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzc:Z

    :cond_db
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_eb

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzb:Ljava/lang/String;

    :cond_eb
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    if-ltz v0, :cond_476

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    if-ltz v0, :cond_476

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_46f

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_103

    goto/16 :goto_46f

    :cond_103
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzU(Landroid/app/Activity;)[I

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzQ(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v6, v3, v5

    const/4 v7, 0x1

    aget v3, v3, v7

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v13, 0x2

    const/16 v14, 0x32

    if-lt v8, v14, :cond_256

    if-le v8, v6, :cond_129

    goto/16 :goto_256

    :cond_129
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    if-lt v15, v14, :cond_250

    if-le v15, v3, :cond_131

    goto/16 :goto_250

    :cond_131
    if-ne v15, v3, :cond_13c

    if-ne v8, v6, :cond_13c

    const-string v3, "Cannot resize to a full-screen ad."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    goto/16 :goto_25b

    :cond_13c
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzc:Z

    if-eqz v3, :cond_20f

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_146
    .catchall {:try_start_7 .. :try_end_146} :catchall_47d

    sparse-switch v16, :sswitch_data_480

    goto :goto_186

    :sswitch_14a
    const-string v12, "top-center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    const/4 v3, 0x1

    goto :goto_187

    :sswitch_154
    const-string v12, "bottom-center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    const/4 v3, 0x4

    goto :goto_187

    :sswitch_15e
    const-string v12, "bottom-right"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    const/4 v3, 0x5

    goto :goto_187

    :sswitch_168
    const-string v12, "bottom-left"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    const/4 v3, 0x3

    goto :goto_187

    :sswitch_172
    const-string v12, "top-left"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    const/4 v3, 0x0

    goto :goto_187

    :sswitch_17c
    const-string v12, "center"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_186

    const/4 v3, 0x2

    goto :goto_187

    :cond_186
    :goto_186
    const/4 v3, -0x1

    :goto_187
    if-eqz v3, :cond_1e6

    if-eq v3, v7, :cond_1d8

    if-eq v3, v13, :cond_1c4

    if-eq v3, v11, :cond_1b7

    if-eq v3, v10, :cond_1a9

    if-eq v3, v9, :cond_19e

    :try_start_193
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    goto :goto_1e3

    :cond_19e
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    goto :goto_1b4

    :cond_1a9
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    shr-int/2addr v8, v7

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    :goto_1b4
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    goto :goto_1bf

    :cond_1b7
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    goto :goto_1b4

    :goto_1bf
    add-int/2addr v8, v12

    add-int/2addr v8, v15

    add-int/lit8 v8, v8, -0x32

    goto :goto_1ef

    :cond_1c4
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    shr-int/2addr v8, v7

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    add-int/2addr v8, v12

    shr-int/lit8 v12, v15, 0x1

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, -0x19

    goto :goto_1ef

    :cond_1d8
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    shr-int/2addr v8, v7

    add-int/2addr v3, v12

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    :goto_1e3
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    goto :goto_1ee

    :cond_1e6
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    goto :goto_1e3

    :goto_1ee
    add-int/2addr v8, v12

    :goto_1ef
    if-ltz v3, :cond_25b

    add-int/2addr v3, v14

    if-gt v3, v6, :cond_25b

    aget v3, v4, v5

    if-lt v8, v3, :cond_25b

    add-int/2addr v8, v14

    aget v3, v4, v7

    if-le v8, v3, :cond_1fe

    goto :goto_25b

    :cond_1fe
    new-array v15, v13, [I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    add-int/2addr v3, v4

    aput v3, v15, v5

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    add-int/2addr v3, v4

    aput v3, v15, v7

    goto :goto_25c

    :cond_20f
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzt;->zzU(Landroid/app/Activity;)[I

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzQ(Landroid/app/Activity;)[I

    move-result-object v4

    aget v3, v3, v5

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzg:I

    add-int/2addr v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzh:I

    add-int/2addr v8, v12

    if-gez v6, :cond_231

    const/4 v6, 0x0

    goto :goto_239

    :cond_231
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    add-int v15, v6, v12

    if-le v15, v3, :cond_239

    sub-int v6, v3, v12

    :cond_239
    :goto_239
    aget v3, v4, v5

    if-ge v8, v3, :cond_23f

    move v8, v3

    goto :goto_249

    :cond_23f
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    add-int v12, v8, v3

    aget v4, v4, v7

    if-le v12, v4, :cond_249

    sub-int v8, v4, v3

    :cond_249
    :goto_249
    new-array v15, v13, [I

    aput v6, v15, v5

    aput v8, v15, v7

    goto :goto_25c

    :cond_250
    :goto_250
    const-string v3, "Height is too small or too large."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    goto :goto_25b

    :cond_256
    :goto_256
    const-string v3, "Width is too small or too large."

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzcbn;->zzj(Ljava/lang/String;)V

    :cond_25b
    :goto_25b
    const/4 v15, 0x0

    :goto_25c
    if-nez v15, :cond_265

    const-string v0, "Resize location out of screen or close button is not visible."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_265
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzcbg;->zzx(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/ads/zzcbg;->zzx(Landroid/content/Context;I)I

    move-result v4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_468

    instance-of v8, v6, Landroid/view/ViewGroup;

    if-eqz v8, :cond_468

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v8, Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    if-nez v8, :cond_2cf

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v8, v6

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v6, Landroid/widget/ImageView;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-direct {v6, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzn:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzcgv;->zzO()Lcom/google/android/gms/internal/ads/zzcik;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzm:Lcom/google/android/gms/internal/ads/zzcik;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzn:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2d2

    :cond_2cf
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    :goto_2d2
    new-instance v6, Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v8, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    new-instance v8, Landroid/widget/PopupWindow;

    invoke-direct {v8, v6, v3, v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    invoke-virtual {v8, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzc:Z

    xor-int/2addr v8, v7

    invoke-virtual {v6, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v8, Landroid/view/View;

    const/4 v12, -0x1

    invoke-virtual {v6, v8, v12, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzo:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v8, v14}, Lcom/google/android/gms/internal/ads/zzcbg;->zzx(Landroid/content/Context;I)I

    move-result v8

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/ads/zzcbg;->zzx(Landroid/content/Context;I)I

    move-result v12

    invoke-direct {v6, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzb:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_334
    .catchall {:try_start_193 .. :try_end_334} :catchall_47d

    sparse-switch v12, :sswitch_data_49a

    goto :goto_374

    :sswitch_338
    const-string v12, "top-center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_374

    const/4 v12, 0x1

    goto :goto_375

    :sswitch_342
    const-string v12, "bottom-center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_374

    const/4 v12, 0x4

    goto :goto_375

    :sswitch_34c
    const-string v12, "bottom-right"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_374

    const/4 v12, 0x5

    goto :goto_375

    :sswitch_356
    const-string v12, "bottom-left"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_374

    const/4 v12, 0x3

    goto :goto_375

    :sswitch_360
    const-string v12, "top-left"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_374

    const/4 v12, 0x0

    goto :goto_375

    :sswitch_36a
    const-string v12, "center"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_374

    const/4 v12, 0x2

    goto :goto_375

    :cond_374
    :goto_374
    const/4 v12, -0x1

    :goto_375
    const/16 v8, 0x9

    const/16 v14, 0xa

    if-eqz v12, :cond_3b4

    const/16 v5, 0xe

    if-eq v12, v7, :cond_3ad

    if-eq v12, v13, :cond_3a7

    const/16 v13, 0xc

    if-eq v12, v11, :cond_3a0

    if-eq v12, v10, :cond_399

    const/16 v5, 0xb

    if-eq v12, v9, :cond_392

    :try_start_38b
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ba

    :cond_392
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ba

    :cond_399
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ba

    :cond_3a0
    invoke-virtual {v6, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ba

    :cond_3a7
    const/16 v5, 0xd

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ba

    :cond_3ad
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_3ba

    :cond_3b4
    invoke-virtual {v6, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_3ba
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzo:Landroid/widget/LinearLayout;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzbsl;-><init>(Lcom/google/android/gms/internal/ads/zzbsm;)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzo:Landroid/widget/LinearLayout;

    const-string v8, "Close button"

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzo:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3d2
    .catchall {:try_start_38b .. :try_end_3d2} :catchall_47d

    :try_start_3d2
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    const/4 v8, 0x0

    aget v9, v15, v8

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzcbg;->zzx(Landroid/content/Context;I)I

    move-result v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzay;->zzb()Lcom/google/android/gms/internal/ads/zzcbg;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    aget v9, v15, v7

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzcbg;->zzx(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v6, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3f3
    .catch Ljava/lang/RuntimeException; {:try_start_3d2 .. :try_end_3f3} :catch_42b
    .catchall {:try_start_3d2 .. :try_end_3f3} :catchall_47d

    :try_start_3f3
    aget v0, v15, v9

    aget v5, v15, v7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzp:Lcom/google/android/gms/internal/ads/zzbst;

    if-eqz v6, :cond_402

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    invoke-interface {v6, v0, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzbst;->zza(IIII)V

    :cond_402
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzcik;->zzb(II)Lcom/google/android/gms/internal/ads/zzcik;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzag(Lcom/google/android/gms/internal/ads/zzcik;)V

    const/4 v0, 0x0

    aget v3, v15, v0

    aget v0, v15, v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzp()Lcom/google/android/gms/ads/internal/util/zzt;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzl:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzt;->zzQ(Landroid/app/Activity;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v0, v4

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzi:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzf:I

    invoke-virtual {v1, v3, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbss;->zzj(IIII)V

    const-string v0, "resized"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzk(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catch_42b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show popup window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzr:Landroid/widget/RelativeLayout;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    if-eqz v0, :cond_466

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzs:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzk:Lcom/google/android/gms/internal/ads/zzcgv;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsm;->zzm:Lcom/google/android/gms/internal/ads/zzcik;

    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzag(Lcom/google/android/gms/internal/ads/zzcik;)V

    :cond_466
    monitor-exit v2

    return-void

    :cond_468
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_46f
    :goto_46f
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :cond_476
    const-string v0, "Invalid width and height options. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbss;->zzg(Ljava/lang/String;)V

    monitor-exit v2

    return-void

    :catchall_47d
    move-exception v0

    monitor-exit v2
    :try_end_47f
    .catchall {:try_start_3f3 .. :try_end_47f} :catchall_47d

    throw v0

    :sswitch_data_480
    .sparse-switch
        -0x514d33ab -> :sswitch_17c
        -0x3c587281 -> :sswitch_172
        -0x27103597 -> :sswitch_168
        0x455fe3fa -> :sswitch_15e
        0x4ccee637 -> :sswitch_154
        0x68a23bcd -> :sswitch_14a
    .end sparse-switch

    :sswitch_data_49a
    .sparse-switch
        -0x514d33ab -> :sswitch_36a
        -0x3c587281 -> :sswitch_360
        -0x27103597 -> :sswitch_356
        0x455fe3fa -> :sswitch_34c
        0x4ccee637 -> :sswitch_342
        0x68a23bcd -> :sswitch_338
    .end sparse-switch
.end method

.method public final zzc(IIZ)V
    .registers 4

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzj:Ljava/lang/Object;

    monitor-enter p3

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    monitor-exit p3

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public final zzd(II)V
    .registers 3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzd:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zze:I

    return-void
.end method

.method public final zze()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsm;->zzq:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method
