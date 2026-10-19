###### Class com.google.android.gms.internal.ads.zzdei (com.google.android.gms.internal.ads.zzdei)
.class public final Lcom/google/android/gms/internal/ads/zzdei;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzddy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzddy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdei;->zza:Lcom/google/android/gms/internal/ads/zzddy;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdei;->zza:Lcom/google/android/gms/internal/ads/zzddy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddy;->zzh()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
