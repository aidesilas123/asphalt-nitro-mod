###### Class com.google.android.gms.internal.ads.zzakg (com.google.android.gms.internal.ads.zzakg)
.class final Lcom/google/android/gms/internal/ads/zzakg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzadk;

.field private final zzb:Landroid/util/SparseArray;

.field private final zzc:Landroid/util/SparseArray;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgh;

.field private final zze:[B

.field private zzf:I

.field private zzg:J

.field private zzh:J

.field private final zzi:Lcom/google/android/gms/internal/ads/zzakf;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzakf;

.field private zzk:Z

.field private zzl:J

.field private zzm:J

.field private zzn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadk;ZZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzb:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzc:Landroid/util/SparseArray;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakf;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Lcom/google/android/gms/internal/ads/zzake;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzi:Lcom/google/android/gms/internal/ads/zzakf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzakf;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzakf;-><init>(Lcom/google/android/gms/internal/ads/zzake;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzj:Lcom/google/android/gms/internal/ads/zzakf;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zze:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgh;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/google/android/gms/internal/ads/zzgh;-><init>([BII)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzd:Lcom/google/android/gms/internal/ads/zzgh;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzk:Z

    return-void
.end method

.method private final zzg(I)V
    .registers 10

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzm:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-nez v0, :cond_c

    return-void

    :cond_c
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzn:Z

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzg:J

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzl:J

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    long-to-int v4, v4

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzadk;->zzt(JIIILcom/google/android/gms/internal/ads/zzadj;)V

    return-void
.end method


# virtual methods
.method public final zza(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzg:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzakg;->zzg(I)V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzk:Z

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzge;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzc:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzge;->zza:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzgf;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzb:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzgf;->zzd:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public final zzd()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzk:Z

    return-void
.end method

.method public final zze(JIJ)V
    .registers 6

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzf:I

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzg:J

    return-void
.end method

.method public final zzf(JIZZ)Z
    .registers 11

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzf:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_9

    goto :goto_23

    :cond_9
    if-eqz p4, :cond_17

    iget-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzk:Z

    if-eqz p4, :cond_17

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzg:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzakg;->zzg(I)V

    :cond_17
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzg:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzl:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzh:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzm:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzn:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzk:Z

    :goto_23
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzn:Z

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzf:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_2e

    if-eqz p5, :cond_2f

    if-ne p2, v2, :cond_2f

    :cond_2e
    const/4 v1, 0x1

    :cond_2f
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzakg;->zzn:Z

    return p1
.end method
