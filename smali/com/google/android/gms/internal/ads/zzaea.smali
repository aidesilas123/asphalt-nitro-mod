###### Class com.google.android.gms.internal.ads.zzaea (com.google.android.gms.internal.ads.zzaea)
.class final Lcom/google/android/gms/internal/ads/zzaea;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzadk;

.field private final zzb:I

.field private final zzc:I

.field private final zzd:J

.field private final zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:I

.field private zzk:[J

.field private zzl:[I


# direct methods
.method public constructor <init>(IIJILcom/google/android/gms/internal/ads/zzadk;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_8

    const/4 p2, 0x2

    :cond_8
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:J

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzaea;->zze:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    if-ne p2, v0, :cond_13

    const/high16 p3, 0x63640000

    goto :goto_15

    :cond_13
    const/high16 p3, 0x62770000

    :goto_15
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzaea;->zzi(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:I

    if-ne p2, v0, :cond_24

    const/high16 p2, 0x62640000

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzaea;->zzi(II)I

    move-result p1

    goto :goto_25

    :cond_24
    const/4 p1, -0x1

    :goto_25
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:I

    const/16 p1, 0x200

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    return-void
.end method

.method private static zzi(II)I
    .registers 3

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 p0, p0, 0xa

    add-int/lit8 p0, p0, 0x30

    shl-int/lit8 p0, p0, 0x8

    add-int/lit8 v0, v0, 0x30

    or-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method private final zzj(I)J
    .registers 7

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zze:I

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzd:J

    int-to-long v3, p1

    mul-long v1, v1, v3

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1
.end method

.method private final zzk(I)Lcom/google/android/gms/internal/ads/zzadf;
    .registers 8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    aget v1, v1, p1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzaea;->zzj(I)J

    move-result-wide v3

    mul-long v1, v1, v3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    aget-wide v4, v3, p1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzadf;-><init>(JJ)V

    return-object v0
.end method


# virtual methods
.method public final zza(J)Lcom/google/android/gms/internal/ads/zzadc;
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzaea;->zzj(I)J

    move-result-wide v1

    div-long/2addr p1, v1

    long-to-int p2, p1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    invoke-static {p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfs;->zzb([IIZZ)I

    move-result p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    aget v1, v1, p1

    if-ne v1, p2, :cond_1d

    new-instance p2, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(I)Lcom/google/android/gms/internal/ads/zzadf;

    move-result-object p1

    invoke-direct {p2, p1, p1}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    return-object p2

    :cond_1d
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(I)Lcom/google/android/gms/internal/ads/zzadf;

    move-result-object p2

    add-int/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    array-length v0, v0

    if-ge p1, v0, :cond_31

    new-instance v0, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaea;->zzk(I)Lcom/google/android/gms/internal/ads/zzadf;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    return-object v0

    :cond_31
    new-instance p1, Lcom/google/android/gms/internal/ads/zzadc;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzadc;-><init>(Lcom/google/android/gms/internal/ads/zzadf;Lcom/google/android/gms/internal/ads/zzadf;)V

    return-object p1
.end method

.method public final zzb(J)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    array-length v1, v1

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    :cond_21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:I

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:I

    return-void
.end method

.method public final zzc()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    return-void
.end method

.method public final zzd()V
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzi:I

    return-void
.end method

.method public final zze(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    return-void
.end method

.method public final zzf(J)V
    .registers 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzj:I

    if-nez v0, :cond_8

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:I

    return-void

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzk:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/zzfs;->zzc([JJZZ)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    aget p1, p2, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:I

    return-void
.end method

.method public final zzg(I)Z
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzb:I

    if-eq v0, p1, :cond_b

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzc:I

    if-ne v0, p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    return p1

    :cond_b
    :goto_b
    const/4 p1, 0x1

    return p1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzacf;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzadk;->zzf(Lcom/google/android/gms/internal/ads/zzt;IZ)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzg:I

    const/4 p1, 0x1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_39

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:I

    if-lez v1, :cond_34

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaea;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzaea;->zzj(I)J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzl:[I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:I

    invoke-static {v1, v6}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_2c

    const/4 v6, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v6, 0x0

    :goto_2d
    iget v7, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzf:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    :cond_34
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaea;->zzh:I

    :cond_39
    return v0
.end method
