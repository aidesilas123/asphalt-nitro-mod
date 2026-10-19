###### Class com.google.android.gms.internal.ads.zzcxv (com.google.android.gms.internal.ads.zzcxv)
.class public final Lcom/google/android/gms/internal/ads/zzcxv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcxr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcxr;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/internal/ads/zzcxr;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcxj;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/internal/ads/zzcxr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxr;->zzc()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcxv;->zza:Lcom/google/android/gms/internal/ads/zzcxr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxr;->zzc()Lcom/google/android/gms/internal/ads/zzcxj;

    move-result-object v0

    return-object v0
.end method
