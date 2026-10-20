###### Class com.google.android.gms.internal.ads.zzfwr (com.google.android.gms.internal.ads.zzfwr)
.class public final Lcom/google/android/gms/internal/ads/zzfwr;
.super Lcom/google/android/gms/internal/ads/zzfwn;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfwn;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwo;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwn;

    return-object p0
.end method

.method public final zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwn;

    return-object p0
.end method

.method public final varargs zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfwr;
    .registers 3

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzfwn;->zzd([Ljava/lang/Object;I)V

    return-object p0
.end method

.method public final zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwr;
    .registers 2

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zzc(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwo;

    return-object p0
.end method

.method public final zzi()Lcom/google/android/gms/internal/ads/zzfwu;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzc:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zza:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzfwn;->zzb:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwu;->zzi([Ljava/lang/Object;I)Lcom/google/android/gms/internal/ads/zzfwu;

    move-result-object v0

    return-object v0
.end method
