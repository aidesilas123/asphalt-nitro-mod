###### Class com.google.android.gms.internal.ads.zzahe (com.google.android.gms.internal.ads.zzahe)
.class final Lcom/google/android/gms/internal/ads/zzahe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzb:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfj;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzacf;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_4a

    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_1c
    add-int/lit8 v5, v4, 0x1

    and-int v6, v0, v3

    if-nez v6, :cond_26

    shr-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_1c

    :cond_26
    not-int v3, v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v3

    invoke-virtual {p1, v3, v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    :goto_31
    if-ge v1, v4, :cond_43

    shl-int/lit8 p1, v0, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_31

    :cond_43
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    int-to-long v0, v0

    return-wide v0

    :cond_4a
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacf;->zzd()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-eqz v6, :cond_12

    cmp-long v4, v0, v2

    if-lez v4, :cond_11

    goto :goto_12

    :cond_11
    move-wide v2, v0

    :cond_12
    :goto_12
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    move-object v5, p1

    check-cast v5, Lcom/google/android/gms/internal/ads/zzabu;

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v5, v4, v7, v8, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzt()J

    move-result-wide v9

    iput v8, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    :goto_28
    const-wide/32 v11, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v8, v9, v11

    if-eqz v8, :cond_57

    long-to-int v8, v2

    iget v11, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    add-int/2addr v11, v4

    iput v11, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    if-ne v11, v8, :cond_39

    return v7

    :cond_39
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v8

    invoke-virtual {v5, v8, v7, v4, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzm([BIIZ)Z

    const/16 v4, 0x8

    shl-long v8, v9, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzahe;->zza:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v4

    aget-byte v4, v4, v7

    and-int/lit16 v4, v4, 0xff

    const-wide/16 v10, -0x100

    and-long/2addr v8, v10

    int-to-long v10, v4

    or-long v9, v8, v10

    goto :goto_28

    :cond_57
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahe;->zzb(Lcom/google/android/gms/internal/ads/zzacf;)J

    move-result-wide v2

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    int-to-long v8, v8

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v12, v2, v10

    if-eqz v12, :cond_97

    add-long/2addr v8, v2

    if-nez v6, :cond_68

    goto :goto_6d

    :cond_68
    cmp-long v2, v8, v0

    if-ltz v2, :cond_6d

    goto :goto_97

    :cond_6d
    :goto_6d
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    int-to-long v0, v0

    cmp-long v2, v0, v8

    if-gez v2, :cond_94

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahe;->zzb(Lcom/google/android/gms/internal/ads/zzacf;)J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-nez v2, :cond_7d

    return v7

    :cond_7d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzahe;->zzb(Lcom/google/android/gms/internal/ads/zzacf;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v6, v0, v2

    if-ltz v6, :cond_93

    if-eqz v6, :cond_6d

    long-to-int v1, v0

    invoke-virtual {v5, v1, v7}, Lcom/google/android/gms/internal/ads/zzabu;->zzl(IZ)Z

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahe;->zzb:I

    goto :goto_6d

    :cond_93
    return v7

    :cond_94
    if-nez v2, :cond_97

    return v4

    :cond_97
    :goto_97
    return v7
.end method
