###### Class com.google.android.gms.internal.ads.zzaiw (com.google.android.gms.internal.ads.zzaiw)
.class final Lcom/google/android/gms/internal/ads/zzaiw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzajc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzacr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzacq;

.field private zzc:J

.field private zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacr;Lcom/google/android/gms/internal/ads/zzacq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zza:Lcom/google/android/gms/internal/ads/zzacr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzb:Lcom/google/android/gms/internal/ads/zzacq;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzd:J

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzc:J

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzacf;)J
    .registers 8

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzd:J

    const-wide/16 v2, -0x1

    const-wide/16 v4, 0x0

    cmp-long p1, v0, v4

    if-ltz p1, :cond_11

    const-wide/16 v4, 0x2

    add-long/2addr v0, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzd:J

    neg-long v0, v0

    return-wide v0

    :cond_11
    return-wide v2
.end method

.method public final zze()Lcom/google/android/gms/internal/ads/zzade;
    .registers 6

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzc:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzf(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzacp;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzc:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zza:Lcom/google/android/gms/internal/ads/zzacr;

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzacp;-><init>(Lcom/google/android/gms/internal/ads/zzacr;J)V

    return-object v0
.end method

.method public final zzg(J)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzb:Lcom/google/android/gms/internal/ads/zzacq;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzacq;->zza:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzc([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaiw;->zzd:J

    return-void
.end method
