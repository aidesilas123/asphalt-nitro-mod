###### Class com.google.android.gms.internal.ads.zzpx (com.google.android.gms.internal.ads.zzpx)
.class final Lcom/google/android/gms/internal/ads/zzpx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzpw;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:I

.field private zzc:J

.field private zzd:J

.field private zze:J

.field private zzf:J


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpw;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzpw;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return-void
.end method

.method private final zzh(I)V
    .registers 8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:I

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_1c

    const/4 v2, 0x1

    if-eq p1, v2, :cond_19

    const/4 v0, 0x2

    if-eq p1, v0, :cond_15

    const/4 v0, 0x3

    if-eq p1, v0, :cond_15

    const-wide/32 v0, 0x7a120

    :goto_12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzd:J

    return-void

    :cond_15
    const-wide/32 v0, 0x989680

    goto :goto_12

    :cond_19
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzd:J

    return-void

    :cond_1c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zze:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzf:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:J

    goto :goto_12
.end method


# virtual methods
.method public final zza()J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpw;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()J
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpw;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    :cond_9
    return-void
.end method

.method public final zzd()V
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return-void
.end method

.method public final zze()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return-void
.end method

.method public final zzf()Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg(J)Z
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zze:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzd:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gez v5, :cond_c

    return v4

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zze:J

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpw;->zzc()Z

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzb:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v1, :cond_49

    const/4 p1, 0x2

    if-eq v1, v3, :cond_32

    if-eq v1, p1, :cond_2a

    if-eq v1, v2, :cond_23

    move v4, v0

    goto :goto_6e

    :cond_23
    if-nez v0, :cond_26

    goto :goto_6e

    :cond_26
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return v3

    :cond_2a
    if-eqz v0, :cond_2e

    :goto_2c
    const/4 v4, 0x1

    goto :goto_6e

    :cond_2e
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return v4

    :cond_32
    if-eqz v0, :cond_45

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzpw;->zza()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzf:J

    cmp-long p2, v0, v4

    if-gtz p2, :cond_41

    goto :goto_2c

    :cond_41
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return v3

    :cond_45
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    goto :goto_6e

    :cond_49
    if-eqz v0, :cond_64

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpw;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_58

    goto :goto_6e

    :cond_58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zza:Lcom/google/android/gms/internal/ads/zzpw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpw;->zza()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzf:J

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return v3

    :cond_64
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzpx;->zzc:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x7a120

    cmp-long v3, p1, v0

    if-gtz v3, :cond_6f

    :goto_6e
    return v4

    :cond_6f
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzpx;->zzh(I)V

    return v4
.end method
