###### Class com.google.android.gms.internal.ads.zzbda (com.google.android.gms.internal.ads.zzbda)
.class public final Lcom/google/android/gms/internal/ads/zzbda;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field volatile zza:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Landroid/os/ConditionVariable;

.field private volatile zzd:Z

.field private zze:Landroid/content/SharedPreferences;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:Landroid/os/Bundle;

.field private zzg:Landroid/content/Context;

.field private zzh:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzb:Ljava/lang/Object;

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzc:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzd:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzf:Landroid/os/Bundle;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzh:Lorg/json/JSONObject;

    return-void
.end method

.method private final zzd(Landroid/content/SharedPreferences;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcx;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbcx;-><init>(Landroid/content/SharedPreferences;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdh;->zza(Lcom/google/android/gms/internal/ads/zzfuo;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzh:Lorg/json/JSONObject;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_15} :catch_15

    :catch_15
    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4

    const-string v0, "flag_configuration"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbda;->zzd(Landroid/content/SharedPreferences;)V

    :cond_b
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzc:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_d
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    if-eqz v1, :cond_13

    monitor-exit v0

    goto :goto_1e

    :cond_13
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Flags.initialize() was not called!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw p1

    :cond_1e
    :goto_1e
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzd:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    if-nez v0, :cond_33

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_29
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzd:Z

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    if-nez v1, :cond_32

    goto :goto_6c

    :cond_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_29 .. :try_end_33} :catchall_72

    :cond_33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzf:Landroid/os/Bundle;

    if-nez v0, :cond_43

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzm()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_43
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzb(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_48
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zze()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzh:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzh:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_62
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbcy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbcy;-><init>(Lcom/google/android/gms/internal/ads/zzbda;Lcom/google/android/gms/internal/ads/zzbcu;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdh;->zza(Lcom/google/android/gms/internal/ads/zzfuo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_6c
    :goto_6c
    :try_start_6c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbcu;->zzm()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_72
    move-exception p1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_6c .. :try_end_74} :catchall_72

    throw p1
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbcu;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zzc(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Landroid/content/Context;)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzd:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzd:Z

    if-eqz v1, :cond_e

    monitor-exit v0

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    const/4 v2, 0x1

    if-nez v1, :cond_15

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    :cond_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_1f
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzg:Landroid/content/Context;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_83

    :try_start_21
    invoke-static {p1}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzg:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-virtual {p1, v1, v3}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzf:Landroid/os/Bundle;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_35} :catch_35
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_35} :catch_35
    .catchall {:try_start_21 .. :try_end_35} :catchall_83

    :catch_35
    const/4 p1, 0x0

    :try_start_36
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzg:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_46

    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3
    :try_end_44
    .catchall {:try_start_36 .. :try_end_44} :catchall_7a

    if-eqz v3, :cond_47

    :cond_46
    move-object v1, v3

    :cond_47
    if-nez v1, :cond_52

    :try_start_49
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzc:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_83

    return-void

    :cond_52
    :try_start_52
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->zzb()Lcom/google/android/gms/internal/ads/zzbcw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbcw;->zza(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_60

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/zzbcz;-><init>(Lcom/google/android/gms/internal/ads/zzbda;Landroid/content/SharedPreferences;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzbfn;->zzc(Lcom/google/android/gms/internal/ads/zzbfl;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zze:Landroid/content/SharedPreferences;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzbda;->zzd(Landroid/content/SharedPreferences;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzd:Z
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_7a

    :try_start_71
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzc:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_7a
    move-exception v1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zza:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbda;->zzc:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    throw v1

    :catchall_83
    move-exception p1

    monitor-exit v0
    :try_end_85
    .catchall {:try_start_71 .. :try_end_85} :catchall_83

    throw p1
.end method
