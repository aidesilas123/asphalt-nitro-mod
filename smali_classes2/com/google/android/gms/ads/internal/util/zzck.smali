###### Class com.google.android.gms.ads.internal.util.zzck (com.google.android.gms.ads.internal.util.zzck)
.class public final Lcom/google/android/gms/ads/internal/util/zzck;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static zzb:Lcom/google/android/gms/ads/internal/util/zzck;


# instance fields
.field zza:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/ads/internal/util/zzck;
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzck;->zzb:Lcom/google/android/gms/ads/internal/util/zzck;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzck;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzck;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzck;->zzb:Lcom/google/android/gms/ads/internal/util/zzck;

    :cond_b
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzck;->zzb:Lcom/google/android/gms/ads/internal/util/zzck;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .registers 8

    const-string v0, "Updating user agent."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzck;->zza:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtilLight;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/common/util/ClientLibraryUtils;->isPackageSide()Z

    move-result v2

    if-nez v2, :cond_1e

    if-nez v1, :cond_3c

    const/4 v1, 0x0

    :cond_1e
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "admob_user_agent"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "user_agent"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    if-nez v1, :cond_39

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3c

    :cond_39
    invoke-static {p1, v2, v4}, Lcom/google/android/gms/common/util/SharedPreferencesUtils;->publishWorldReadableSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    iput-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzck;->zza:Ljava/lang/String;

    :cond_3e
    const-string p1, "User agent is updated."

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void
.end method
