###### Class com.google.android.gms.internal.ads.zzacz (com.google.android.gms.internal.ads.zzacz)
.class public final Lcom/google/android/gms/internal/ads/zzacz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:[Ljava/lang/String;

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I

.field private static final zze:[I

.field private static final zzf:[I

.field private static final zzg:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "audio/mpeg-L1"

    const-string v1, "audio/mpeg-L2"

    const-string v2, "audio/mpeg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zza:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:[I

    const/16 v0, 0xe

    new-array v1, v0, [I

    fill-array-data v1, :array_44

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacz;->zzc:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_64

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacz;->zzd:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_84

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacz;->zze:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_a4

    sput-object v1, Lcom/google/android/gms/internal/ads/zzacz;->zzf:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:[I

    return-void

    :array_3a
    .array-data 4
        0xac44
        0xbb80
        0x7d00
    .end array-data

    :array_44
    .array-data 4
        0x7d00
        0xfa00
        0x17700
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x46500
        0x4e200
        0x55f00
        0x5dc00
        0x65900
        0x6d600
    .end array-data

    :array_64
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
        0x2af80
        0x2ee00
        0x36b00
        0x3e800
    .end array-data

    :array_84
    .array-data 4
        0x7d00
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
        0x5dc00
    .end array-data

    :array_a4
    .array-data 4
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x27100
        0x2ee00
        0x36b00
        0x3e800
        0x4e200
    .end array-data

    :array_c4
    .array-data 4
        0x1f40
        0x3e80
        0x5dc0
        0x7d00
        0x9c40
        0xbb80
        0xdac0
        0xfa00
        0x13880
        0x17700
        0x1b580
        0x1f400
        0x23280
        0x27100
    .end array-data
.end method

.method static bridge synthetic zza(II)I
    .registers 2

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(II)I

    move-result p0

    return p0
.end method

.method public static zzb(I)I
    .registers 8

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzm(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    goto :goto_6c

    :cond_8
    ushr-int/lit8 v0, p0, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6c

    ushr-int/lit8 v4, p0, 0x11

    and-int/2addr v4, v2

    if-eqz v4, :cond_6c

    ushr-int/lit8 v5, p0, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_6c

    if-eq v5, v6, :cond_6c

    ushr-int/lit8 v6, p0, 0xa

    and-int/2addr v6, v2

    if-eq v6, v2, :cond_6c

    add-int/2addr v5, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzacz;->zzb:[I

    aget v1, v1, v6

    const/4 v6, 0x2

    if-ne v0, v6, :cond_2d

    div-int/lit8 v1, v1, 0x2

    goto :goto_31

    :cond_2d
    if-nez v0, :cond_31

    div-int/lit8 v1, v1, 0x4

    :cond_31
    :goto_31
    ushr-int/lit8 p0, p0, 0x9

    and-int/2addr p0, v3

    if-ne v4, v2, :cond_48

    if-ne v0, v2, :cond_3d

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzc:[I

    aget v0, v0, v5

    goto :goto_41

    :cond_3d
    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzd:[I

    aget v0, v0, v5

    :goto_41
    mul-int/lit8 v0, v0, 0xc

    div-int/2addr v0, v1

    add-int/2addr v0, p0

    mul-int/lit8 v0, v0, 0x4

    return v0

    :cond_48
    if-ne v0, v2, :cond_56

    if-ne v4, v6, :cond_51

    sget-object v6, Lcom/google/android/gms/internal/ads/zzacz;->zze:[I

    aget v5, v6, v5

    goto :goto_5a

    :cond_51
    sget-object v6, Lcom/google/android/gms/internal/ads/zzacz;->zzf:[I

    aget v5, v6, v5

    goto :goto_5a

    :cond_56
    sget-object v6, Lcom/google/android/gms/internal/ads/zzacz;->zzg:[I

    aget v5, v6, v5

    :goto_5a
    const/16 v6, 0x90

    if-ne v0, v2, :cond_63

    mul-int/lit16 v5, v5, 0x90

    div-int/2addr v5, v1

    add-int/2addr v5, p0

    return v5

    :cond_63
    if-ne v4, v3, :cond_67

    const/16 v6, 0x48

    :cond_67
    mul-int v6, v6, v5

    div-int/2addr v6, v1

    add-int/2addr v6, p0

    return v6

    :cond_6c
    :goto_6c
    return v1
.end method

.method public static zzc(I)I
    .registers 6

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzm(I)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_26

    :cond_7
    ushr-int/lit8 v0, p0, 0x13

    const/4 v1, 0x3

    and-int/2addr v0, v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_26

    ushr-int/lit8 v2, p0, 0x11

    and-int/2addr v2, v1

    if-eqz v2, :cond_26

    ushr-int/lit8 v3, p0, 0xc

    ushr-int/lit8 p0, p0, 0xa

    and-int/2addr p0, v1

    const/16 v4, 0xf

    and-int/2addr v3, v4

    if-eqz v3, :cond_26

    if-eq v3, v4, :cond_26

    if-eq p0, v1, :cond_26

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzacz;->zzl(II)I

    move-result p0

    return p0

    :cond_26
    :goto_26
    const/4 p0, -0x1

    return p0
.end method

.method static bridge synthetic zzd(I)Z
    .registers 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacz;->zzm(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic zze()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzc:[I

    return-object v0
.end method

.method static bridge synthetic zzf()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zze:[I

    return-object v0
.end method

.method static bridge synthetic zzg()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzf:[I

    return-object v0
.end method

.method static bridge synthetic zzh()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzg:[I

    return-object v0
.end method

.method static bridge synthetic zzi()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzd:[I

    return-object v0
.end method

.method static bridge synthetic zzj()[I
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zzb:[I

    return-object v0
.end method

.method static bridge synthetic zzk()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzacz;->zza:[Ljava/lang/String;

    return-object v0
.end method

.method private static zzl(II)I
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x480

    if-eq p1, v0, :cond_c

    const/4 p0, 0x2

    if-eq p1, p0, :cond_b

    const/16 p0, 0x180

    return p0

    :cond_b
    return v1

    :cond_c
    const/4 p1, 0x3

    if-ne p0, p1, :cond_10

    return v1

    :cond_10
    const/16 p0, 0x240

    return p0
.end method

.method private static zzm(I)Z
    .registers 2

    const/high16 v0, -0x200000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
