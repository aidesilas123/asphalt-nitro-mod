###### Class com.google.android.gms.internal.ads.zzmg (com.google.android.gms.internal.ads.zzmg)
.class public final Lcom/google/android/gms/internal/ads/zzmg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzb:Z

.field private zzc:J

.field private zzd:J

.field private zze:Lcom/google/android/gms/internal/ads/zzcj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcj;->zza:Lcom/google/android/gms/internal/ads/zzcj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zze:Lcom/google/android/gms/internal/ads/zzcj;

    return-void
.end method


# virtual methods
.method public final zza()J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzc:J

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    if-eqz v2, :cond_21

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzd:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmg;->zze:Lcom/google/android/gms/internal/ads/zzcj;

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzcj;->zzc:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v2

    goto :goto_20

    :cond_1c
    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzcj;->zza(J)J

    move-result-wide v2

    :goto_20
    add-long/2addr v0, v2

    :cond_21
    return-wide v0
.end method

.method public final zzb(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzc:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    if-eqz p1, :cond_c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzd:J

    :cond_c
    return-void
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzcj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zze:Lcom/google/android/gms/internal/ads/zzcj;

    return-object v0
.end method

.method public final zzd()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    if-nez v0, :cond_d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzd:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    :cond_d
    return-void
.end method

.method public final zze()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmg;->zza()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzmg;->zzb(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    :cond_e
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzcj;)V
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzmg;->zzb:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzmg;->zza()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzmg;->zzb(J)V

    :cond_b
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmg;->zze:Lcom/google/android/gms/internal/ads/zzcj;

    return-void
.end method
