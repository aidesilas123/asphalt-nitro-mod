###### Class com.google.android.gms.internal.ads.zzbox (com.google.android.gms.internal.ads.zzbox)
.class final Lcom/google/android/gms/internal/ads/zzbox;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbkr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzboy;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzboa;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzccf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzboy;Lcom/google/android/gms/internal/ads/zzboa;Lcom/google/android/gms/internal/ads/zzccf;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzccf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)V
    .registers 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_d

    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzccf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzboj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzboj;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_1f

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzccf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzccf;->zzd(Ljava/lang/Throwable;)Z
    :try_end_17
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_17} :catch_1f
    .catchall {:try_start_2 .. :try_end_17} :catchall_18

    goto :goto_1f

    :catchall_18
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboa;->zzb()V

    throw p1

    :catch_1f
    :goto_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboa;->zzb()V

    return-void
.end method

.method public final zzb(Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzccf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zza:Lcom/google/android/gms/internal/ads/zzboy;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzboy;->zzc(Lcom/google/android/gms/internal/ads/zzboy;)Lcom/google/android/gms/internal/ads/zzbom;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzbom;->zza(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccf;->zzc(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_f} :catch_1f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_12
    .catchall {:try_start_0 .. :try_end_f} :catchall_10

    goto :goto_1f

    :catchall_10
    move-exception p1

    goto :goto_19

    :catch_12
    move-exception p1

    :try_start_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzc:Lcom/google/android/gms/internal/ads/zzccf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzccf;->zzd(Ljava/lang/Throwable;)Z
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    goto :goto_1f

    :goto_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzboa;->zzb()V

    throw p1

    :catch_1f
    :goto_1f
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbox;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboa;->zzb()V

    return-void
.end method
