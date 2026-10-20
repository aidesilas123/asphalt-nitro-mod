###### Class com.google.android.gms.internal.ads.zzgvi (com.google.android.gms.internal.ads.zzgvi)
.class final Lcom/google/android/gms/internal/ads/zzgvi;
.super Lcom/google/android/gms/internal/ads/zzgvm;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zze:Ljava/lang/Iterable;

.field private final zzf:Ljava/util/Iterator;

.field private zzg:Ljava/nio/ByteBuffer;

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:I

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:J


# direct methods
.method synthetic constructor <init>(Ljava/lang/Iterable;IZLcom/google/android/gms/internal/ads/zzgvh;)V
    .registers 5

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzgvm;-><init>(Lcom/google/android/gms/internal/ads/zzgvl;)V

    const p3, 0x7fffffff

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzj:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zze:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzf:Ljava/util/Iterator;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    if-nez p2, :cond_25

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgww;->zze:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzg:Ljava/nio/ByteBuffer;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    return-void

    :cond_25
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzN()V

    return-void
.end method

.method private final zzJ()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method private final zzK()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgwy;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzN()V

    return-void

    :cond_c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0
.end method

.method private final zzL([BII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzJ()I

    move-result p2

    if-gt p3, p2, :cond_33

    move p2, p3

    :goto_7
    if-lez p2, :cond_35

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzK()V

    :cond_17
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-int v3, p3, p2

    int-to-long v8, v0

    int-to-long v4, v3

    move-object v3, p1

    move-wide v6, v8

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zzo(J[BJJ)V

    sub-int/2addr p2, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    goto :goto_7

    :cond_33
    if-gtz p3, :cond_36

    :cond_35
    return-void

    :cond_36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1
.end method

.method private final zzM()V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzi:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzj:I

    if-le v0, v1, :cond_13

    sub-int v1, v0, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzi:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    return-void

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzi:I

    return-void
.end method

.method private final zzN()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzf:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzg:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    sub-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzg:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzg:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgzq;->zze(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    return-void
.end method


# virtual methods
.method public final zzA(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzj:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzM()V

    return-void
.end method

.method public final zzB(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_36

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    int-to-long v3, v0

    sub-long/2addr v3, v1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    add-long/2addr v3, v0

    int-to-long v0, p1

    cmp-long v2, v0, v3

    if-gtz v2, :cond_36

    :goto_13
    if-lez p1, :cond_35

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_23

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzK()V

    :cond_23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p1, v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    goto :goto_13

    :cond_35
    return-void

    :cond_36
    if-gez p1, :cond_3d

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzf()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :cond_3d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1
.end method

.method public final zzC()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzh:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public final zzD()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzr()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public final zzE(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    if-eq v0, v2, :cond_39

    const/4 v3, 0x2

    if-eq v0, v3, :cond_31

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1e

    if-eq v0, v3, :cond_1d

    const/4 p1, 0x5

    if-ne v0, p1, :cond_18

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzgvi;->zzB(I)V

    return v2

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zza()Lcom/google/android/gms/internal/ads/zzgwx;

    move-result-object p1

    throw p1

    :cond_1d
    return v1

    :cond_1e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzm()I

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzE(I)Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_2a
    ushr-int/2addr p1, v4

    shl-int/2addr p1, v4

    or-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvi;->zzz(I)V

    return v2

    :cond_31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvi;->zzB(I)V

    return v2

    :cond_39
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgvi;->zzB(I)V

    return v2

    :cond_3f
    :goto_3f
    const/16 p1, 0xa

    if-ge v1, p1, :cond_4d

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result p1

    if-ltz p1, :cond_4a

    return v2

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f

    :cond_4d
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zze()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1
.end method

.method public final zza()B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzK()V

    :cond_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v0

    return v0
.end method

.method public final zzb()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzq()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzi()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final zzd()I
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzl:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final zze(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgwy;
        }
    .end annotation

    if-ltz p1, :cond_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzd()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzj:I

    if-gt p1, v0, :cond_11

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzj:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzM()V

    return v0

    :cond_11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :cond_16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzf()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1
.end method

.method public final zzf()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzi()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzi()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v0, v2

    const-wide/16 v4, 0x4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_39

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const-wide/16 v4, 0x2

    add-long/2addr v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    const-wide/16 v5, 0x3

    add-long/2addr v2, v5

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v4

    or-int/2addr v0, v2

    return v0

    :cond_39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v1

    or-int/2addr v0, v2

    or-int/2addr v0, v3

    return v0
.end method

.method public final zzj()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_8c

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v0

    if-ltz v0, :cond_1a

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    return v0

    :cond_1a
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_8c

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_33

    xor-int/lit8 v0, v0, -0x80

    goto :goto_89

    :cond_33
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_42

    xor-int/lit16 v0, v0, 0x3f80

    :cond_40
    move-wide v6, v4

    goto :goto_89

    :cond_42
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_52

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_89

    :cond_52
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_40

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    if-gez v1, :cond_89

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    if-gez v1, :cond_40

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    if-gez v1, :cond_89

    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    if-gez v1, :cond_40

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    if-ltz v1, :cond_8c

    :cond_89
    :goto_89
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    return v0

    :cond_8c
    :goto_8c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzs()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public final zzk()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzi()I

    move-result v0

    return v0
.end method

.method public final zzl()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgvm;->zzF(I)I

    move-result v0

    return v0
.end method

.method public final zzm()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzC()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzk:I

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzk:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_15

    return v0

    :cond_15
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzc()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0
.end method

.method public final zzn()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    return v0
.end method

.method public final zzo()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzp()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzq()J
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v1, v3

    const/16 v9, 0x18

    const/16 v10, 0x10

    const/16 v11, 0x8

    const-wide/16 v12, 0x8

    const-wide/16 v14, 0xff

    cmp-long v16, v1, v12

    if-ltz v16, :cond_81

    add-long/2addr v12, v3

    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v14

    const-wide/16 v12, 0x1

    add-long/2addr v12, v3

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v12

    int-to-long v12, v12

    and-long/2addr v12, v14

    shl-long v11, v12, v11

    const-wide/16 v16, 0x2

    add-long v16, v3, v16

    invoke-static/range {v16 .. v17}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v13

    int-to-long v5, v13

    and-long/2addr v5, v14

    shl-long/2addr v5, v10

    const-wide/16 v18, 0x3

    add-long v18, v3, v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v10

    int-to-long v7, v10

    and-long/2addr v7, v14

    shl-long/2addr v7, v9

    const-wide/16 v9, 0x4

    add-long/2addr v9, v3

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v14

    const/16 v18, 0x20

    shl-long v9, v9, v18

    const-wide/16 v18, 0x5

    add-long v18, v3, v18

    invoke-static/range {v18 .. v19}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v13

    move-wide/from16 v18, v9

    int-to-long v9, v13

    and-long/2addr v9, v14

    const/16 v13, 0x28

    shl-long/2addr v9, v13

    const-wide/16 v20, 0x6

    add-long v20, v3, v20

    invoke-static/range {v20 .. v21}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v13

    move-wide/from16 v20, v9

    int-to-long v9, v13

    and-long/2addr v9, v14

    const/16 v13, 0x30

    shl-long/2addr v9, v13

    const-wide/16 v22, 0x7

    add-long v3, v3, v22

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v14

    const/16 v13, 0x38

    shl-long/2addr v3, v13

    or-long/2addr v1, v11

    or-long/2addr v1, v5

    or-long/2addr v1, v7

    or-long v1, v1, v18

    or-long v1, v1, v20

    or-long/2addr v1, v9

    or-long/2addr v1, v3

    return-wide v1

    :cond_81
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v3

    int-to-long v3, v3

    and-long/2addr v3, v14

    shl-long/2addr v3, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v5

    int-to-long v5, v5

    and-long/2addr v5, v14

    shl-long/2addr v5, v10

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v7

    int-to-long v7, v7

    and-long/2addr v7, v14

    shl-long/2addr v7, v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v14

    const/16 v11, 0x20

    shl-long/2addr v9, v11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v11

    int-to-long v11, v11

    and-long/2addr v11, v14

    const/16 v13, 0x28

    shl-long/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v13

    move-wide/from16 v18, v11

    int-to-long v11, v13

    and-long/2addr v11, v14

    const/16 v13, 0x30

    shl-long/2addr v11, v13

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v13

    move-wide/from16 v20, v11

    int-to-long v11, v13

    and-long/2addr v11, v14

    const/16 v13, 0x38

    shl-long/2addr v11, v13

    or-long/2addr v1, v3

    or-long/2addr v1, v5

    or-long/2addr v1, v7

    or-long/2addr v1, v9

    or-long v1, v1, v18

    or-long v1, v1, v20

    or-long/2addr v1, v11

    return-wide v1
.end method

.method public final zzr()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    cmp-long v4, v2, v0

    if-nez v4, :cond_a

    goto/16 :goto_d2

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v0

    if-ltz v0, :cond_1b

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    int-to-long v0, v0

    return-wide v0

    :cond_1b
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xa

    cmp-long v1, v6, v8

    if-ltz v1, :cond_d2

    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_36

    xor-int/lit8 v0, v0, -0x80

    :goto_33
    int-to-long v0, v0

    goto/16 :goto_cf

    :cond_36
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_47

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_44
    :goto_44
    move-wide v6, v4

    goto/16 :goto_cf

    :cond_47
    add-long v6, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_57

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_33

    :cond_57
    add-long v4, v6, v2

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v1

    int-to-long v6, v1

    int-to-long v0, v0

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_6e

    const-wide/32 v2, 0xfe03f80

    :goto_6c
    xor-long/2addr v0, v2

    goto :goto_44

    :cond_6e
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_85

    const-wide v2, -0x7f01fc080L

    :goto_82
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_cf

    :cond_85
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_9a

    const-wide v2, 0x3f80fe03f80L

    goto :goto_6c

    :cond_9a
    add-long v8, v4, v2

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_af

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_82

    :cond_af
    add-long v4, v8, v2

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_44

    add-long/2addr v2, v4

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgzq;->zza(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_d2

    move-wide v6, v2

    :goto_cf
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    return-wide v0

    :cond_d2
    :goto_d2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method final zzs()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v0, v3, :cond_18

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zza()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v1, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v1

    :cond_15
    add-int/lit8 v0, v0, 0x7

    goto :goto_3

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zze()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0
.end method

.method public final zzt()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzq()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzu()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzgvm;->zzG(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzw()Lcom/google/android/gms/internal/ads/zzgve;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    if-lez v0, :cond_25

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v5, v10, v1

    if-lez v5, :cond_11

    goto :goto_25

    :cond_11
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgzq;->zzo(J[BJJ)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v1, v10

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgva;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzgva;-><init>([B)V

    return-object v1

    :cond_25
    :goto_25
    if-lez v0, :cond_3a

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzJ()I

    move-result v1

    if-le v0, v1, :cond_2e

    goto :goto_3a

    :cond_2e
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzL([BII)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgva;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgva;-><init>([B)V

    return-object v0

    :cond_3a
    :goto_3a
    if-nez v0, :cond_3f

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgve;->zzb:Lcom/google/android/gms/internal/ads/zzgve;

    return-object v0

    :cond_3f
    if-gez v0, :cond_46

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzf()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0

    :cond_46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0
.end method

.method public final zzx()Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    if-lez v0, :cond_27

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v1, v3

    int-to-long v10, v0

    cmp-long v5, v10, v1

    if-lez v5, :cond_11

    goto :goto_27

    :cond_11
    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    move-object v5, v0

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgzq;->zzo(J[BJJ)V

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgww;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    return-object v1

    :cond_27
    :goto_27
    if-lez v0, :cond_3e

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzJ()I

    move-result v1

    if-le v0, v1, :cond_30

    goto :goto_3e

    :cond_30
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzL([BII)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgww;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_3e
    :goto_3e
    if-nez v0, :cond_43

    const-string v0, ""

    return-object v0

    :cond_43
    if-gez v0, :cond_4a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzf()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0

    :cond_4a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0
.end method

.method public final zzy()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzj()I

    move-result v0

    if-lez v0, :cond_21

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzo:J

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    sub-long/2addr v1, v3

    int-to-long v5, v0

    cmp-long v7, v5, v1

    if-lez v7, :cond_11

    goto :goto_21

    :cond_11
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzn:J

    sub-long/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzg:Ljava/nio/ByteBuffer;

    long-to-int v2, v3

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzg(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzm:J

    return-object v0

    :cond_21
    :goto_21
    if-ltz v0, :cond_35

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzJ()I

    move-result v1

    if-le v0, v1, :cond_2a

    goto :goto_35

    :cond_2a
    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgvi;->zzL([BII)V

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgzv;->zzh([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    :goto_35
    if-nez v0, :cond_3a

    const-string v0, ""

    return-object v0

    :cond_3a
    if-gtz v0, :cond_41

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzf()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0

    :cond_41
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzj()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object v0

    throw v0
.end method

.method public final zzz(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgwy;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgvi;->zzk:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzb()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1
.end method
