###### Class com.google.android.gms.internal.ads.zzfxo (com.google.android.gms.internal.ads.zzfxo)
.class abstract Lcom/google/android/gms/internal/ads/zzfxo;
.super Ljava/util/AbstractMap;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private transient zza:Ljava/util/Set;

.field private transient zzb:Ljava/util/Set;

.field private transient zzc:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zza:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxo;->zzb()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zza:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzb:Ljava/util/Set;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfxo;->zze()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzb:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzc:Ljava/util/Collection;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfxn;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfxo;->zzc:Ljava/util/Collection;

    :cond_b
    return-object v0
.end method

.method abstract zzb()Ljava/util/Set;
.end method

.method zze()Ljava/util/Set;
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfxm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfxm;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
