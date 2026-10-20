###### Class com.google.android.gms.internal.ads.zzzz (com.google.android.gms.internal.ads.zzzz)
.class public final Lcom/google/android/gms/internal/ads/zzzz;
.super Landroid/view/Surface;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x11
.end annotation


# static fields
.field private static zzb:I

.field private static zzc:Z


# instance fields
.field public final zza:Z

.field private final zzd:Lcom/google/android/gms/internal/ads/zzzx;

.field private zze:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzzx;Landroid/graphics/SurfaceTexture;ZLcom/google/android/gms/internal/ads/zzzy;)V
    .registers 5

    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzd:Lcom/google/android/gms/internal/ads/zzzx;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzzz;->zza:Z

    return-void
.end method

.method public static zza(Landroid/content/Context;Z)Lcom/google/android/gms/internal/ads/zzzz;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzzz;->zzb(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :cond_c
    :goto_c
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzzx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzzx;-><init>()V

    if-eqz p1, :cond_18

    sget v0, Lcom/google/android/gms/internal/ads/zzzz;->zzb:I

    :cond_18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzzx;->zza(I)Lcom/google/android/gms/internal/ads/zzzz;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized zzb(Landroid/content/Context;)Z
    .registers 5

    const-class v0, Lcom/google/android/gms/internal/ads/zzzz;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzzz;->zzc:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1e

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeo;->zzc(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_19

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeo;->zzd()Z

    move-result p0

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_1a

    :cond_17
    const/4 p0, 0x2

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    sput p0, Lcom/google/android/gms/internal/ads/zzzz;->zzb:I

    sput-boolean v3, Lcom/google/android/gms/internal/ads/zzzz;->zzc:Z

    :cond_1e
    sget p0, Lcom/google/android/gms/internal/ads/zzzz;->zzb:I
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_25

    monitor-exit v0

    if-eqz p0, :cond_24

    return v3

    :cond_24
    return v2

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final release()V
    .registers 3

    invoke-super {p0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzd:Lcom/google/android/gms/internal/ads/zzzx;

    monitor-enter v0

    :try_start_6
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zze:Z

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zzd:Lcom/google/android/gms/internal/ads/zzzx;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzzx;->zzb()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzzz;->zze:Z

    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
