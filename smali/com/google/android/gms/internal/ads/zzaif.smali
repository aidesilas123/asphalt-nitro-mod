###### Class com.google.android.gms.internal.ads.zzaif (com.google.android.gms.internal.ads.zzaif)
.class final Lcom/google/android/gms/internal/ads/zzaif;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/ads/zzadk;

.field public final zzb:Lcom/google/android/gms/internal/ads/zzair;

.field public final zzc:Lcom/google/android/gms/internal/ads/zzfj;

.field public zzd:Lcom/google/android/gms/internal/ads/zzais;

.field public zze:Lcom/google/android/gms/internal/ads/zzaib;

.field public zzf:I

.field public zzg:I

.field public zzh:I

.field public zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfj;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfj;

.field private zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzadk;Lcom/google/android/gms/internal/ads/zzais;Lcom/google/android/gms/internal/ads/zzaib;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaif;->zze:Lcom/google/android/gms/internal/ads/zzaib;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzair;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzair;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzfj;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzfj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzk:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzaif;->zzh(Lcom/google/android/gms/internal/ads/zzais;Lcom/google/android/gms/internal/ads/zzaib;)V

    return-void
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzaif;Z)V
    .registers 2

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    return-void
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzaif;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    return p0
.end method


# virtual methods
.method public final zza()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzais;->zzg:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    aget v0, v0, v1

    goto :goto_1a

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzair;->zzj:[Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaif;->zzf()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v1

    if-eqz v1, :cond_23

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    :cond_23
    return v0
.end method

.method public final zzb()I
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzais;->zzd:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    aget v0, v0, v1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzair;->zzh:[I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    aget v0, v0, v1

    :goto_15
    return v0
.end method

.method public final zzc(II)I
    .registers 12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaif;->zzf()Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zzd:I

    if-eqz v2, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzair;->zzn:Lcom/google/android/gms/internal/ads/zzfj;

    goto :goto_1e

    :cond_11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zze:[B

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzk:Lcom/google/android/gms/internal/ads/zzfj;

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzE([BI)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzk:Lcom/google/android/gms/internal/ads/zzfj;

    move v2, v3

    :goto_1e
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzair;->zzb(I)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2e

    if-eqz p2, :cond_2c

    goto :goto_2e

    :cond_2c
    const/4 v5, 0x0

    goto :goto_2f

    :cond_2e
    :goto_2e
    const/4 v5, 0x1

    :goto_2f
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    if-eq v4, v5, :cond_35

    const/4 v7, 0x0

    goto :goto_37

    :cond_35
    const/16 v7, 0x80

    :goto_37
    or-int/2addr v7, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v8

    int-to-byte v7, v7

    aput-byte v7, v8, v1

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzj:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-interface {v6, v7, v4, v4}, Lcom/google/android/gms/internal/ads/zzadk;->zzs(Lcom/google/android/gms/internal/ads/zzfj;II)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {v6, v0, v2, v4}, Lcom/google/android/gms/internal/ads/zzadk;->zzs(Lcom/google/android/gms/internal/ads/zzfj;II)V

    if-nez v5, :cond_52

    add-int/2addr v2, v4

    return v2

    :cond_52
    const/4 v0, 0x6

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/16 v7, 0x8

    if-nez v3, :cond_92

    int-to-byte p2, p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v8

    aput-byte v1, v8, v1

    aput-byte v4, v8, v4

    aput-byte v1, v8, v6

    aput-byte p2, v8, v5

    const/4 p2, 0x4

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v8, p2

    const/4 p2, 0x5

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v8, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v8, v0

    const/4 p2, 0x7

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v8, p2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {p1, v3, v7, v4}, Lcom/google/android/gms/internal/ads/zzadk;->zzs(Lcom/google/android/gms/internal/ads/zzfj;II)V

    add-int/lit8 v2, v2, 0x9

    return v2

    :cond_92
    add-int/2addr v2, v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzair;->zzn:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfj;->zzp()I

    move-result v3

    const/4 v8, -0x2

    invoke-virtual {p1, v8}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    mul-int/lit8 v3, v3, 0x6

    add-int/2addr v3, v6

    if-eqz p2, :cond_cb

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzD(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzI()[B

    move-result-object v0

    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfj;->zzC([BII)V

    aget-byte p1, v0, v6

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v7

    aget-byte v1, v0, v5

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p1, v1

    add-int/2addr p1, p2

    shr-int/lit8 p2, p1, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    aput-byte p2, v0, v6

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzc:Lcom/google/android/gms/internal/ads/zzfj;

    :cond_cb
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {p2, p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzadk;->zzs(Lcom/google/android/gms/internal/ads/zzfj;II)V

    add-int/2addr v2, v3

    return v2
.end method

.method public final zzd()J
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzais;->zzc:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    aget-wide v1, v0, v1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzair;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzh:I

    aget-wide v1, v0, v1

    :goto_15
    return-wide v1
.end method

.method public final zze()J
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzais;->zzf:[J

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    aget-wide v1, v0, v1

    goto :goto_15

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzair;->zzi:[J

    aget-wide v1, v0, v1

    :goto_15
    return-wide v1
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzaiq;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzair;->zza:Lcom/google/android/gms/internal/ads/zzaib;

    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzaib;->zza:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzair;->zzm:Lcom/google/android/gms/internal/ads/zzaiq;

    if-eqz v0, :cond_13

    goto :goto_1b

    :cond_13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzais;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzaip;->zza(I)Lcom/google/android/gms/internal/ads/zzaiq;

    move-result-object v0

    :goto_1b
    if-eqz v0, :cond_22

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzaiq;->zza:Z

    if-eqz v2, :cond_22

    return-object v0

    :cond_22
    return-object v1
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzais;Lcom/google/android/gms/internal/ads/zzaib;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzd:Lcom/google/android/gms/internal/ads/zzais;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaif;->zze:Lcom/google/android/gms/internal/ads/zzaib;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzais;->zza:Lcom/google/android/gms/internal/ads/zzaip;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzaip;->zzf:Lcom/google/android/gms/internal/ads/zzam;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaif;->zza:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzadk;->zzl(Lcom/google/android/gms/internal/ads/zzam;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzaif;->zzi()V

    return-void
.end method

.method public final zzi()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzair;->zzd:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzair;->zzp:J

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzair;->zzq:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzair;->zzk:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzair;->zzo:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzair;->zzm:Lcom/google/android/gms/internal/ads/zzaiq;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzh:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzi:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    return-void
.end method

.method public final zzk()Z
    .registers 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzf:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzl:Z

    const/4 v2, 0x0

    if-nez v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzg:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzg:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzb:Lcom/google/android/gms/internal/ads/zzair;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzair;->zzg:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzh:I

    aget v3, v3, v4

    if-ne v0, v3, :cond_21

    add-int/2addr v4, v1

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzh:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzaif;->zzg:I

    return v2

    :cond_21
    return v1
.end method
