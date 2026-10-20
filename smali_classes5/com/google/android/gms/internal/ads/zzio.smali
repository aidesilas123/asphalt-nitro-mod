###### Class com.google.android.gms.internal.ads.zzio (com.google.android.gms.internal.ads.zzio)
.class public final Lcom/google/android/gms/internal/ads/zzio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:J

.field private final zzb:J

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:F

.field private zzj:F

.field private zzk:F

.field private zzl:J

.field private zzm:J

.field private zzn:J


# direct methods
.method synthetic constructor <init>(FFJFJJFLcom/google/android/gms/internal/ads/zzin;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p6, p0, Lcom/google/android/gms/internal/ads/zzio;->zza:J

    iput-wide p8, p0, Lcom/google/android/gms/internal/ads/zzio;->zzb:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzd:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzf:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzg:J

    const p3, 0x3f7851ec    # 0.97f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzj:F

    const p3, 0x3f83d70a    # 1.03f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzi:F

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzio;->zzk:F

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzl:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzn:J

    return-void
.end method

.method private static zzf(JJF)J
    .registers 5

    long-to-float p0, p0

    long-to-float p1, p2

    const p2, 0x3f7fbe77    # 0.999f

    mul-float p0, p0, p2

    const p2, 0x3a831200    # 9.999871E-4f

    mul-float p1, p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method

.method private final zzg()V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzc:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_29

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzd:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_12

    move-wide v0, v4

    :cond_12
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzf:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-gez v6, :cond_1d

    move-wide v0, v4

    :cond_1d
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2a

    cmp-long v6, v0, v4

    if-lez v6, :cond_2a

    move-wide v0, v4

    goto :goto_2a

    :cond_29
    move-wide v0, v2

    :cond_2a
    :goto_2a
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    cmp-long v6, v4, v0

    if-nez v6, :cond_31

    return-void

    :cond_31
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzm:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzn:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzl:J

    return-void
.end method


# virtual methods
.method public final zza(JJ)F
    .registers 20

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzc:J

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v1, v4

    if-eqz v6, :cond_e3

    sub-long v1, p1, p3

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzm:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_1d

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzm:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzn:J

    goto :goto_37

    :cond_1d
    const v8, 0x3f7fbe77    # 0.999f

    invoke-static {v6, v7, v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzio;->zzf(JJF)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzm:J

    sub-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzn:J

    invoke-static {v6, v7, v1, v2, v8}, Lcom/google/android/gms/internal/ads/zzio;->zzf(JJF)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzn:J

    :goto_37
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzl:J

    const-wide/16 v6, 0x3e8

    cmp-long v8, v1, v4

    if-eqz v8, :cond_4e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzio;->zzl:J

    sub-long/2addr v1, v8

    cmp-long v8, v1, v6

    if-ltz v8, :cond_4b

    goto :goto_4e

    :cond_4b
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzk:F

    return v1

    :cond_4e
    :goto_4e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzl:J

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzm:J

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzio;->zzn:J

    const-wide/16 v10, 0x3

    mul-long v8, v8, v10

    add-long/2addr v1, v8

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    const v10, 0x33d6bf95    # 1.0E-7f

    const/high16 v11, -0x40800000    # -1.0f

    cmp-long v12, v8, v1

    if-lez v12, :cond_9d

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzk:F

    add-float/2addr v6, v11

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzio;->zzi:F

    add-float/2addr v7, v11

    const/4 v8, 0x3

    new-array v9, v8, [J

    const/4 v11, 0x0

    aput-wide v1, v9, v11

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zze:J

    const/4 v12, 0x1

    aput-wide v1, v9, v12

    const/4 v1, 0x2

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    long-to-float v2, v4

    mul-float v7, v7, v2

    mul-float v6, v6, v2

    float-to-long v4, v6

    float-to-long v6, v7

    add-long/2addr v4, v6

    sub-long/2addr v13, v4

    aput-wide v13, v9, v1

    aget-wide v1, v9, v11

    :goto_8d
    if-ge v12, v8, :cond_9a

    aget-wide v4, v9, v12

    cmp-long v6, v4, v1

    if-gtz v6, :cond_96

    goto :goto_97

    :cond_96
    move-wide v1, v4

    :goto_97
    add-int/lit8 v12, v12, 0x1

    goto :goto_8d

    :cond_9a
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    goto :goto_c2

    :cond_9d
    const/4 v6, 0x0

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzio;->zzk:F

    add-float/2addr v7, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float/2addr v6, v10

    float-to-long v6, v6

    sub-long v6, p1, v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzg:J

    cmp-long v8, v6, v4

    if-eqz v8, :cond_c2

    cmp-long v4, v1, v6

    if-lez v4, :cond_c2

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    move-wide v1, v6

    :cond_c2
    :goto_c2
    sub-long v1, p1, v1

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzio;->zza:J

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_d1

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzk:F

    goto :goto_e3

    :cond_d1
    long-to-float v1, v1

    mul-float v1, v1, v10

    add-float/2addr v1, v3

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzio;->zzj:F

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzi:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzio;->zzk:F

    :cond_e3
    :goto_e3
    return v3
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    return-wide v0
.end method

.method public final zzc()V
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_c

    return-void

    :cond_c
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzb:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzg:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1d

    cmp-long v6, v0, v4

    if-lez v6, :cond_1d

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzio;->zzh:J

    :cond_1d
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzl:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbi;)V
    .registers 6

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbi;->zzc:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzc:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzio;->zzf:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzio;->zzg:J

    const p1, 0x3f7851ec    # 0.97f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzj:F

    const p1, 0x3f83d70a    # 1.03f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzi:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzg()V

    return-void
.end method

.method public final zze(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzio;->zzd:J

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzio;->zzg()V

    return-void
.end method
