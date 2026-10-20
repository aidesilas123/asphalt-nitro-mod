###### Class com.google.android.gms.internal.ads.zzesv (com.google.android.gms.internal.ads.zzesv)
.class public final Lcom/google/android/gms/internal/ads/zzesv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeuy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgbl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfeq;

.field private final zzc:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgbl;Lcom/google/android/gms/internal/ads/zzfeq;Landroid/content/pm/PackageInfo;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .registers 5
    .param p3    # Landroid/content/pm/PackageInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzc:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzesv;)Lcom/google/android/gms/internal/ads/zzesw;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeq;->zzg:Ljava/util/ArrayList;

    if-nez v0, :cond_9

    sget-object p0, Lcom/google/android/gms/internal/ads/zzess;->zza:Lcom/google/android/gms/internal/ads/zzess;

    goto :goto_18

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p0, Lcom/google/android/gms/internal/ads/zzest;->zza:Lcom/google/android/gms/internal/ads/zzest;

    goto :goto_18

    :cond_12
    new-instance v1, Lcom/google/android/gms/internal/ads/zzesu;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzesu;-><init>(Lcom/google/android/gms/internal/ads/zzesv;Ljava/util/ArrayList;)V

    move-object p0, v1

    :goto_18
    return-object p0
.end method


# virtual methods
.method public final zza()I
    .registers 2

    const/16 v0, 0x1a

    return v0
.end method

.method public final zzb()Lcom/google/common/util/concurrent/h0;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzesr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzesr;-><init>(Lcom/google/android/gms/internal/ads/zzesv;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzgbl;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/h0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzd(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "native_version"

    const/4 v1, 0x3

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "native_templates"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzh:Ljava/util/ArrayList;

    const-string v0, "native_custom_templates"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zza:I

    const-string v0, "landscape"

    const-string v2, "portrait"

    const-string v3, "any"

    const-string v4, "unknown"

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le p1, v1, :cond_4f

    const-string p1, "enable_native_media_orientation"

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzh:I

    if-eq p1, v6, :cond_43

    if-eq p1, v5, :cond_41

    if-eq p1, v1, :cond_3f

    const/4 v7, 0x4

    if-eq p1, v7, :cond_3c

    move-object p1, v4

    goto :goto_44

    :cond_3c
    const-string p1, "square"

    goto :goto_44

    :cond_3f
    move-object p1, v2

    goto :goto_44

    :cond_41
    move-object p1, v0

    goto :goto_44

    :cond_43
    move-object p1, v3

    :goto_44
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4f

    const-string v7, "native_media_orientation"

    invoke-virtual {p2, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzc:I

    if-eqz p1, :cond_5f

    if-eq p1, v6, :cond_5d

    if-eq p1, v5, :cond_60

    move-object v0, v4

    goto :goto_60

    :cond_5d
    move-object v0, v2

    goto :goto_60

    :cond_5f
    move-object v0, v3

    :cond_60
    :goto_60
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    const-string p1, "native_image_orientation"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzd:Z

    const-string v0, "native_multiple_images"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzg:Z

    const-string v0, "use_custom_mute"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzi:I

    if-eqz v0, :cond_9b

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzj:Z

    const-string v0, "sccg_tap"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzi:I

    const-string v0, "sccg_dir"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzc:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_a1

    const/4 p1, 0x0

    goto :goto_a3

    :cond_a1
    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_a3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zza()I

    move-result v0

    if-le p1, v0, :cond_b5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/util/zzg;->zzs()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzv(I)V

    :cond_b5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzd:Lcom/google/android/gms/ads/internal/util/zzg;

    invoke-interface {p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzp()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_cc

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfeq;->zzf:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_cc

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_cc
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_d7

    const-string p1, "native_advanced_settings"

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzk:I

    if-le p1, v6, :cond_e2

    const-string v0, "max_num_ads"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_e2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzb:Lcom/google/android/gms/internal/ads/zzbmm;

    if-eqz p1, :cond_131

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbmm;->zzc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_125

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzbmm;->zza:I

    const-string v2, "p"

    const-string v3, "l"

    if-lt v0, v5, :cond_ff

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbmm;->zzd:I

    if-eq p1, v5, :cond_11e

    if-eq p1, v1, :cond_11f

    goto :goto_11e

    :cond_ff
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbmm;->zzb:I

    if-eq p1, v6, :cond_11e

    if-eq p1, v5, :cond_11f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Instream ad video aspect ratio "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is wrong."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzcbn;->zzg(Ljava/lang/String;)V

    :cond_11e
    :goto_11e
    move-object v2, v3

    :cond_11f
    const-string p1, "ia_var"

    invoke-virtual {p2, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12c

    :cond_125
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbmm;->zzc:Ljava/lang/String;

    const-string v0, "ad_tag"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12c
    const-string p1, "instr"

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_131
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfeq;->zza()Lcom/google/android/gms/internal/ads/zzbhz;

    move-result-object p1

    if-eqz p1, :cond_13e

    const-string p1, "has_delayed_banner_listener"

    invoke-virtual {p2, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_13e
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbdc;->zzkV:Lcom/google/android/gms/internal/ads/zzbcu;

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzc()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbda;->zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_19f

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzf:Lcom/google/android/gms/ads/internal/client/zzfl;

    if-eqz p1, :cond_189

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfw;->zzf:Lcom/google/android/gms/ads/internal/client/zzfl;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzfl;->zza:Z

    const-string v1, "startMuted"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfw;->zzf:Lcom/google/android/gms/ads/internal/client/zzfl;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzfl;->zzc:Z

    const-string v1, "clickToExpandRequested"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfw;->zzf:Lcom/google/android/gms/ads/internal/client/zzfl;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/zzfl;->zzb:Z

    const-string v1, "customControlsRequested"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "video"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_189
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zzb:Z

    const-string v0, "disable_image_loading"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzesv;->zzb:Lcom/google/android/gms/internal/ads/zzfeq;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfeq;->zzi:Lcom/google/android/gms/internal/ads/zzbfw;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbfw;->zze:I

    const-string v0, "preferred_ad_choices_position"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_19f
    return-void
.end method
