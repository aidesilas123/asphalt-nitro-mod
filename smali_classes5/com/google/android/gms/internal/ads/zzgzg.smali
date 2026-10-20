###### Class com.google.android.gms.internal.ads.zzgzg (com.google.android.gms.internal.ads.zzgzg)
.class abstract Lcom/google/android/gms/internal/ads/zzgzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;)I
.end method

.method abstract zzb(Ljava/lang/Object;)I
.end method

.method abstract zzc(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract zzd(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract zze(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract zzf()Ljava/lang/Object;
.end method

.method abstract zzg(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method abstract zzh(Ljava/lang/Object;II)V
.end method

.method abstract zzi(Ljava/lang/Object;IJ)V
.end method

.method abstract zzj(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method abstract zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgve;)V
.end method

.method abstract zzl(Ljava/lang/Object;IJ)V
.end method

.method abstract zzm(Ljava/lang/Object;)V
.end method

.method abstract zzn(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method abstract zzo(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method final zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgyh;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    if-eq v0, v2, :cond_58

    const/4 v3, 0x2

    if-eq v0, v3, :cond_50

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_28

    if-eq v0, v3, :cond_26

    const/4 v3, 0x5

    if-ne v0, v3, :cond_21

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzf()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzh(Ljava/lang/Object;II)V

    return v2

    :cond_21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zza()Lcom/google/android/gms/internal/ads/zzgwx;

    move-result-object p1

    throw p1

    :cond_26
    const/4 p1, 0x0

    return p1

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzf()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    :cond_2e
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzc()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_3d

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgyh;)Z

    move-result v5

    if-nez v5, :cond_2e

    :cond_3d
    or-int/2addr v3, v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzd()I

    move-result p2

    if-ne v3, p2, :cond_4b

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzg(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzgzg;->zzj(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_4b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzb()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :cond_50
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzp()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzgzg;->zzk(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzgve;)V

    return v2

    :cond_58
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzk()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgzg;->zzi(Ljava/lang/Object;IJ)V

    return v2

    :cond_60
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzgyh;->zzl()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzgzg;->zzl(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract zzq(Lcom/google/android/gms/internal/ads/zzgyh;)Z
.end method

.method abstract zzr(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgvu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
