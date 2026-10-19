###### Class com.google.android.gms.internal.ads.zzdkt (com.google.android.gms.internal.ads.zzdkt)
.class public final Lcom/google/android/gms/internal/ads/zzdkt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field zza:Lcom/google/android/gms/internal/ads/zzbhj;

.field zzb:Lcom/google/android/gms/internal/ads/zzbhg;

.field zzc:Lcom/google/android/gms/internal/ads/zzbhw;

.field zzd:Lcom/google/android/gms/internal/ads/zzbht;

.field zze:Lcom/google/android/gms/internal/ads/zzbmv;

.field final zzf:Landroidx/collection/SimpleArrayMap;

.field final zzg:Landroidx/collection/SimpleArrayMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzf:Landroidx/collection/SimpleArrayMap;

    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzg:Landroidx/collection/SimpleArrayMap;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbhg;)Lcom/google/android/gms/internal/ads/zzdkt;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzb:Lcom/google/android/gms/internal/ads/zzbhg;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzbhj;)Lcom/google/android/gms/internal/ads/zzdkt;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zza:Lcom/google/android/gms/internal/ads/zzbhj;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbhp;Lcom/google/android/gms/internal/ads/zzbhm;)Lcom/google/android/gms/internal/ads/zzdkt;
    .registers 5
    .param p3    # Lcom/google/android/gms/internal/ads/zzbhm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzf:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzg:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {p2, p1, p3}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object p0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbmv;)Lcom/google/android/gms/internal/ads/zzdkt;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zze:Lcom/google/android/gms/internal/ads/zzbmv;

    return-object p0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzbht;)Lcom/google/android/gms/internal/ads/zzdkt;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzd:Lcom/google/android/gms/internal/ads/zzbht;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzbhw;)Lcom/google/android/gms/internal/ads/zzdkt;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkt;->zzc:Lcom/google/android/gms/internal/ads/zzbhw;

    return-object p0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzdkv;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzdkv;-><init>(Lcom/google/android/gms/internal/ads/zzdkt;Lcom/google/android/gms/internal/ads/zzdku;)V

    return-object v0
.end method
