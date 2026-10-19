###### Class com.google.android.gms.internal.ads.zzalc (com.google.android.gms.internal.ads.zzalc)
.class final Lcom/google/android/gms/internal/ads/zzalc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfq;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzc:Z

.field private zzd:Z

.field private zze:Z

.field private zzf:J

.field private zzg:J

.field private zzh:J


# direct methods
.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfq;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzfq;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zza:Lcom/google/android/gms/internal/ads/zzfq;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzh:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    return-void
.end method

.method private final zze(Lcom/google/android/gms/internal/ads/zzacf;)I
    .registers 5

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzf:[B

    array-length v1, v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfj;->zzE([BI)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzc:Z

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    return v2
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacf;Lcom/google/android/gms/internal/ads/zzadb;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p3, :cond_7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalc;->zze(Lcom/google/android/gms/internal/ads/zzacf;)I

    return v0

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zze:Z

    const/16 v2, 0x47

    const-wide/32 v3, 0x1b8a0

    const/4 v5, 0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v1, :cond_7e

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v8

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    int-to-long v3, v1

    sub-long/2addr v8, v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    cmp-long v10, v3, v8

    if-eqz v10, :cond_2e

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    :goto_2b
    const/4 v0, 0x1

    goto/16 :goto_db

    :cond_2e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p1, p2, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v1

    add-int/lit16 v3, v1, -0xbc

    :goto_4d
    if-lt v3, p2, :cond_79

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    const/4 v8, -0x4

    const/4 v9, 0x0

    :goto_55
    const/4 v10, 0x4

    if-gt v8, v10, :cond_76

    mul-int/lit16 v10, v8, 0xbc

    add-int/2addr v10, v3

    if-lt v10, p2, :cond_72

    if-ge v10, v1, :cond_72

    aget-byte v10, v4, v10

    if-eq v10, v2, :cond_64

    goto :goto_72

    :cond_64
    add-int/2addr v9, v5

    const/4 v10, 0x5

    if-ne v9, v10, :cond_73

    invoke-static {p1, v3, p3}, Lcom/google/android/gms/internal/ads/zzalm;->zzb(Lcom/google/android/gms/internal/ads/zzfj;II)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-eqz v4, :cond_76

    move-wide v6, v8

    goto :goto_79

    :cond_72
    :goto_72
    const/4 v9, 0x0

    :cond_73
    add-int/lit8 v8, v8, 0x1

    goto :goto_55

    :cond_76
    add-int/lit8 v3, v3, -0x1

    goto :goto_4d

    :cond_79
    :goto_79
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzg:J

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzalc;->zze:Z

    goto :goto_db

    :cond_7e
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzg:J

    cmp-long v1, v8, v6

    if-nez v1, :cond_88

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalc;->zze(Lcom/google/android/gms/internal/ads/zzacf;)I

    return v0

    :cond_88
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzd:Z

    const-wide/16 v8, 0x0

    if-nez v1, :cond_dc

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzf()J

    move-result-wide v3

    cmp-long v10, v3, v8

    if-eqz v10, :cond_a2

    iput-wide v8, p2, Lcom/google/android/gms/internal/ads/zzadb;->zza:J

    goto :goto_2b

    :cond_a2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzj()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object p2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {p1, p2, v0, v1, v0}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzb:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzc()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzd()I

    move-result v1

    :goto_bf
    if-ge p2, v1, :cond_d7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    aget-byte v3, v3, p2

    if-eq v3, v2, :cond_ca

    goto :goto_d4

    :cond_ca
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzalm;->zzb(Lcom/google/android/gms/internal/ads/zzfj;II)J

    move-result-wide v3

    cmp-long v8, v3, v6

    if-eqz v8, :cond_d4

    move-wide v6, v3

    goto :goto_d7

    :cond_d4
    :goto_d4
    add-int/lit8 p2, p2, 0x1

    goto :goto_bf

    :cond_d7
    :goto_d7
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzf:J

    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzd:Z

    :goto_db
    return v0

    :cond_dc
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzf:J

    cmp-long v1, p2, v6

    if-nez v1, :cond_e6

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalc;->zze(Lcom/google/android/gms/internal/ads/zzacf;)I

    return v0

    :cond_e6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zza:Lcom/google/android/gms/internal/ads/zzfq;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfq;->zzb(J)J

    move-result-wide p2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzg:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfq;->zzb(J)J

    move-result-wide v1

    sub-long/2addr v1, p2

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzh:J

    cmp-long p2, v1, v8

    if-gez p2, :cond_116

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid duration: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ". Using TIME_UNSET instead."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TsDurationReader"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/zzez;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzh:J

    :cond_116
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzalc;->zze(Lcom/google/android/gms/internal/ads/zzacf;)I

    return v0
.end method

.method public final zzb()J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzh:J

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzfq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zza:Lcom/google/android/gms/internal/ads/zzfq;

    return-object v0
.end method

.method public final zzd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzalc;->zzc:Z

    return v0
.end method
