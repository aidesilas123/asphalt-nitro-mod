###### Class com.google.android.gms.internal.ads.zzchb (com.google.android.gms.internal.ads.zzchb)
.class final Lcom/google/android/gms/internal/ads/zzchb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgv;

.field private final zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/ads/internal/overlay/zzo;)V
    .registers 3
    .param p2    # Lcom/google/android/gms/ads/internal/overlay/zzo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    return-void
.end method


# virtual methods
.method public final zzbM()V
    .registers 1

    return-void
.end method

.method public final zzbp()V
    .registers 1

    return-void
.end method

.method public final zzbv()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzbv()V

    :cond_7
    return-void
.end method

.method public final zzbw()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzbw()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzX()V

    return-void
.end method

.method public final zzby()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzby()V

    :cond_7
    return-void
.end method

.method public final zzbz(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchb;->zzb:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_7

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zzbz(I)V

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchb;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzV()V

    return-void
.end method
