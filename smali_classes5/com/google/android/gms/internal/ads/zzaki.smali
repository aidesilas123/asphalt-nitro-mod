###### Class com.google.android.gms.internal.ads.zzaki (com.google.android.gms.internal.ads.zzaki)
.class final Lcom/google/android/gms/internal/ads/zzaki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadk;

.field private zzb:J

.field private zzc:Z

.field private zzd:I

.field private zze:J

.field private zzf:Z

.field private zzg:Z

.field private zzh:Z

.field private zzi:Z

.field private zzj:Z

.field private zzk:J

.field private zzl:J

.field private zzm:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadk;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    return-void
.end method

.method private final zzf(I)V
    .registers 10

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzl:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzm:Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzk:J

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    long-to-int v4, v4

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaki;->zzf(I)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:Z

    return-void
.end method

.method public final zzb(JIZ)V
    .registers 7

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzj:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:Z

    if-nez v0, :cond_9

    goto :goto_11

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzm:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzj:Z

    return-void

    :cond_11
    :goto_11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:Z

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    :cond_1b
    :goto_1b
    if-eqz p4, :cond_29

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:Z

    if-eqz p4, :cond_29

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzaki;->zzf(I)V

    :cond_29
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzk:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzl:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzm:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:Z

    return-void
.end method

.method public final zzc([BII)V
    .registers 6

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:Z

    if-eqz v0, :cond_1e

    add-int/lit8 v0, p2, 0x2

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1a

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0x80

    const/4 p2, 0x0

    if-eqz p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:Z

    return-void

    :cond_1a
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    :cond_1e
    return-void
.end method

.method public final zzd()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzj:Z

    return-void
.end method

.method public final zze(JIIJZ)V
    .registers 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:Z

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:J

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:J

    const/4 p1, 0x1

    const/16 p2, 0x20

    if-lt p4, p2, :cond_33

    const/16 p2, 0x28

    if-ne p4, p2, :cond_15

    goto :goto_33

    :cond_15
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:Z

    if-eqz p2, :cond_24

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzj:Z

    if-nez p2, :cond_24

    if-eqz p7, :cond_22

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzaki;->zzf(I)V

    :cond_22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:Z

    :cond_24
    const/16 p2, 0x23

    if-le p4, p2, :cond_2c

    const/16 p2, 0x27

    if-ne p4, p2, :cond_33

    :cond_2c
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzj:Z

    xor-int/2addr p2, p1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzj:Z

    :cond_33
    :goto_33
    const/16 p2, 0x10

    if-lt p4, p2, :cond_3d

    const/16 p2, 0x15

    if-gt p4, p2, :cond_3d

    const/4 p2, 0x1

    goto :goto_3e

    :cond_3d
    const/4 p2, 0x0

    :goto_3e
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzc:Z

    if-nez p2, :cond_46

    const/16 p2, 0x9

    if-gt p4, p2, :cond_47

    :cond_46
    const/4 v0, 0x1

    :cond_47
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:Z

    return-void
.end method
