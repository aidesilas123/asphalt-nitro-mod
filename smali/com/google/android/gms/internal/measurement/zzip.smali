###### Class com.google.android.gms.internal.measurement.zzip (com.google.android.gms.internal.measurement.zzip)
.class final Lcom/google/android/gms/internal/measurement/zzip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@20.1.2"


# direct methods
.method static zza([BILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-ltz v0, :cond_20

    array-length v1, p0

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_1b

    if-nez v0, :cond_13

    sget-object p0, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    return p1

    :cond_13
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl([BII)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1b
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzf()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0

    :cond_20
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0
.end method

.method static zzb([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static zzc(Lcom/google/android/gms/internal/measurement/zzlu;[BIIILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzlm;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzlm;->zze()Ljava/lang/Object;

    move-result-object v7

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/measurement/zzlm;->zzc(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/measurement/zzlm;->zzf(Ljava/lang/Object;)V

    iput-object v7, p5, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    return p1
.end method

.method static zzd(Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_c

    invoke-static {p2, p1, v0, p4}, Lcom/google/android/gms/internal/measurement/zzip;->zzk(I[BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result v0

    iget p2, p4, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    :cond_c
    move v3, v0

    if-ltz p2, :cond_25

    sub-int/2addr p3, v3

    if-gt p2, p3, :cond_25

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzlu;->zze()Ljava/lang/Object;

    move-result-object p3

    add-int/2addr p2, v3

    move-object v0, p0

    move-object v1, p3

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzlu;->zzh(Ljava/lang/Object;[BIILcom/google/android/gms/internal/measurement/zzio;)V

    invoke-interface {p0, p3}, Lcom/google/android/gms/internal/measurement/zzlu;->zzf(Ljava/lang/Object;)V

    iput-object p3, p4, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    return p2

    :cond_25
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzf()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0
.end method

.method static zze(Lcom/google/android/gms/internal/measurement/zzlu;I[BIILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzio;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p2, p3, p4, p6}, Lcom/google/android/gms/internal/measurement/zzip;->zzd(Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ge p3, p4, :cond_1e

    invoke-static {p2, p3, p6}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result v0

    iget v1, p6, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-eq p1, v1, :cond_14

    goto :goto_1e

    :cond_14
    invoke-static {p0, p2, v0, p4, p6}, Lcom/google/android/gms/internal/measurement/zzip;->zzd(Lcom/google/android/gms/internal/measurement/zzlu;[BIILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p3

    iget-object v0, p6, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    invoke-interface {p5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1e
    :goto_1e
    return p3
.end method

.method static zzf([BILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzio;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    iget v0, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    add-int/2addr v0, p1

    :goto_9
    if-ge p1, v0, :cond_15

    invoke-static {p0, p1, p3}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    iget v1, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(I)V

    goto :goto_9

    :cond_15
    if-ne p1, v0, :cond_18

    return p1

    :cond_18
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzf()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0
.end method

.method static zzg([BILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-ltz v0, :cond_1a

    if-nez v0, :cond_f

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    return p1

    :cond_f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzkk;->zzb:Ljava/nio/charset/Charset;

    invoke-direct {v1, p0, p1, v0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v1, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_1a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0
.end method

.method static zzh([BILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    iget v0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-ltz v0, :cond_17

    if-nez v0, :cond_f

    const-string p0, ""

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    return p1

    :cond_f
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzna;->zzd([BII)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzc:Ljava/lang/Object;

    add-int/2addr p1, v0

    return p1

    :cond_17
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0
.end method

.method static zzi(I[BIILcom/google/android/gms/internal/measurement/zzmm;Lcom/google/android/gms/internal/measurement/zzio;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/measurement/zzkm;
        }
    .end annotation

    ushr-int/lit8 v0, p0, 0x3

    if-eqz v0, :cond_9a

    and-int/lit8 v0, p0, 0x7

    if-eqz v0, :cond_8c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_57

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 p3, 0x5

    if-ne v0, p3, :cond_22

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzip;->zzb([BI)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;->zzh(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_22
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzb()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0

    :cond_27
    and-int/lit8 v0, p0, -0x8

    or-int/lit8 v0, v0, 0x4

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzmm;->zze()Lcom/google/android/gms/internal/measurement/zzmm;

    move-result-object v7

    const/4 v1, 0x0

    :goto_30
    if-ge p2, p3, :cond_4a

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result v3

    iget p2, p5, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-ne p2, v0, :cond_3d

    move v1, p2

    move p2, v3

    goto :goto_4a

    :cond_3d
    move v1, p2

    move-object v2, p1

    move v4, p3

    move-object v5, v7

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzip;->zzi(I[BIILcom/google/android/gms/internal/measurement/zzmm;Lcom/google/android/gms/internal/measurement/zzio;)I

    move-result v1

    move v8, v1

    move v1, p2

    move p2, v8

    goto :goto_30

    :cond_4a
    :goto_4a
    if-gt p2, p3, :cond_52

    if-ne v1, v0, :cond_52

    invoke-virtual {p4, p0, v7}, Lcom/google/android/gms/internal/measurement/zzmm;->zzh(ILjava/lang/Object;)V

    return p2

    :cond_52
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zze()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0

    :cond_57
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p2

    iget p3, p5, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-ltz p3, :cond_79

    array-length p5, p1

    sub-int/2addr p5, p2

    if-gt p3, p5, :cond_74

    if-nez p3, :cond_6b

    sget-object p1, Lcom/google/android/gms/internal/measurement/zzjb;->zzb:Lcom/google/android/gms/internal/measurement/zzjb;

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;->zzh(ILjava/lang/Object;)V

    goto :goto_72

    :cond_6b
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/measurement/zzjb;->zzl([BII)Lcom/google/android/gms/internal/measurement/zzjb;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;->zzh(ILjava/lang/Object;)V

    :goto_72
    add-int/2addr p2, p3

    return p2

    :cond_74
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzf()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0

    :cond_79
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzd()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0

    :cond_7e
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zzip;->zzn([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/google/android/gms/internal/measurement/zzmm;->zzh(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x8

    return p2

    :cond_8c
    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzip;->zzm([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p1

    iget-wide p2, p5, Lcom/google/android/gms/internal/measurement/zzio;->zzb:J

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p4, p0, p2}, Lcom/google/android/gms/internal/measurement/zzmm;->zzh(ILjava/lang/Object;)V

    return p1

    :cond_9a
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzkm;->zzb()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p0

    throw p0
.end method

.method static zzj([BILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 4

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    if-ltz p1, :cond_9

    iput p1, p2, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    return v0

    :cond_9
    invoke-static {p1, p0, v0, p2}, Lcom/google/android/gms/internal/measurement/zzip;->zzk(I[BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p0

    return p0
.end method

.method static zzk(I[BILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 5

    and-int/lit8 p0, p0, 0x7f

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_e

    shl-int/lit8 p1, p2, 0x7

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    return v0

    :cond_e
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x7

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_1f

    shl-int/lit8 p1, v0, 0xe

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    return p2

    :cond_1f
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0xe

    or-int/2addr p0, v0

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-ltz p2, :cond_30

    shl-int/lit8 p1, p2, 0x15

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    return v0

    :cond_30
    and-int/lit8 p2, p2, 0x7f

    shl-int/lit8 p2, p2, 0x15

    or-int/2addr p0, p2

    add-int/lit8 p2, v0, 0x1

    aget-byte v0, p1, v0

    if-ltz v0, :cond_41

    shl-int/lit8 p1, v0, 0x1c

    or-int/2addr p0, p1

    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    return p2

    :cond_41
    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x1c

    or-int/2addr p0, v0

    :goto_46
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    if-gez p2, :cond_4e

    move p2, v0

    goto :goto_46

    :cond_4e
    iput p0, p3, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    return v0
.end method

.method static zzl(I[BIILcom/google/android/gms/internal/measurement/zzkj;Lcom/google/android/gms/internal/measurement/zzio;)I
    .registers 8

    check-cast p4, Lcom/google/android/gms/internal/measurement/zzkd;

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(I)V

    :goto_b
    if-ge p2, p3, :cond_20

    invoke-static {p1, p2, p5}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result v0

    iget v1, p5, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    if-eq p0, v1, :cond_16

    goto :goto_20

    :cond_16
    invoke-static {p1, v0, p5}, Lcom/google/android/gms/internal/measurement/zzip;->zzj([BILcom/google/android/gms/internal/measurement/zzio;)I

    move-result p2

    iget v0, p5, Lcom/google/android/gms/internal/measurement/zzio;->zza:I

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/measurement/zzkd;->zzh(I)V

    goto :goto_b

    :cond_20
    :goto_20
    return p2
.end method

.method static zzm([BILcom/google/android/gms/internal/measurement/zzio;)I
    .registers 12

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    int-to-long v1, p1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-ltz p1, :cond_e

    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzb:J

    return v0

    :cond_e
    add-int/lit8 p1, v0, 0x1

    aget-byte v0, p0, v0

    const-wide/16 v3, 0x7f

    and-long/2addr v1, v3

    and-int/lit8 v3, v0, 0x7f

    int-to-long v3, v3

    const/4 v5, 0x7

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    const/4 v3, 0x7

    :goto_1c
    if-gez v0, :cond_2c

    add-int/lit8 v0, p1, 0x1

    aget-byte p1, p0, p1

    add-int/2addr v3, v5

    and-int/lit8 v4, p1, 0x7f

    int-to-long v6, v4

    shl-long/2addr v6, v3

    or-long/2addr v1, v6

    move v8, v0

    move v0, p1

    move p1, v8

    goto :goto_1c

    :cond_2c
    iput-wide v1, p2, Lcom/google/android/gms/internal/measurement/zzio;->zzb:J

    return p1
.end method

.method static zzn([BI)J
    .registers 9

    aget-byte v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x6

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    const/16 v2, 0x38

    shl-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method
