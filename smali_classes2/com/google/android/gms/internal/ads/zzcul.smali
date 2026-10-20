###### Class com.google.android.gms.internal.ads.zzcul (com.google.android.gms.internal.ads.zzcul)
.class public final Lcom/google/android/gms/internal/ads/zzcul;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdp;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcuh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcuh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcul;->zza:Lcom/google/android/gms/internal/ads/zzcuh;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfeh;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zza:Lcom/google/android/gms/internal/ads/zzcuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuh;->zzc()Lcom/google/android/gms/internal/ads/zzfeh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhdx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcul;->zza:Lcom/google/android/gms/internal/ads/zzcuh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcuh;->zzc()Lcom/google/android/gms/internal/ads/zzfeh;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhdx;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
