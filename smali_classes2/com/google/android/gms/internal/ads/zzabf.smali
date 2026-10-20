###### Class com.google.android.gms.internal.ads.zzabf (com.google.android.gms.internal.ads.zzabf)
.class public final Lcom/google/android/gms/internal/ads/zzabf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[I

.field private static final zzc:[I

.field private static final zzd:[I

.field private static final zze:[I

.field private static final zzf:[I

.field private static final zzg:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzb:[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_3e

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzc:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzd:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_52

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zze:[I

    const/16 v0, 0x13

    new-array v1, v0, [I

    fill-array-data v1, :array_66

    sput-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzf:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_90

    sput-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzg:[I

    return-void

    nop

    :array_32
    .array-data 4
        0x1
        0x2
        0x3
        0x6
    .end array-data

    :array_3e
    .array-data 4
        0xbb80
        0xac44
        0x7d00
    .end array-data

    :array_48
    .array-data 4
        0x5dc0
        0x5622
        0x3e80
    .end array-data

    :array_52
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_66
    .array-data 4
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x100
        0x140
        0x180
        0x1c0
        0x200
        0x240
        0x280
    .end array-data

    :array_90
    .array-data 4
        0x45
        0x57
        0x68
        0x79
        0x8b
        0xae
        0xd0
        0xf3
        0x116
        0x15c
        0x1a1
        0x1e7
        0x22d
        0x2b8
        0x343
        0x3cf
        0x45a
        0x4e5
        0x571
    .end array-data
.end method

.method public static zza(Ljava/nio/ByteBuffer;)I
    .registers 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    const/16 v2, 0xa

    if-le v0, v2, :cond_38

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xc0

    shr-int/lit8 v0, v0, 0x6

    if-ne v0, v1, :cond_23

    goto :goto_31

    :cond_23
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p0

    and-int/lit8 p0, p0, 0x30

    shr-int/lit8 v1, p0, 0x4

    :goto_31
    sget-object p0, Lcom/google/android/gms/internal/ads/zzabf;->zzb:[I

    aget p0, p0, v1

    mul-int/lit16 p0, p0, 0x100

    return p0

    :cond_38
    const/16 p0, 0x600

    return p0
.end method

.method public static zzb([B)I
    .registers 5

    array-length v0, p0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_6

    const/4 p0, -0x1

    return p0

    :cond_6
    const/4 v0, 0x5

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xf8

    const/4 v2, 0x3

    shr-int/2addr v0, v2

    const/16 v3, 0xa

    if-le v0, v3, :cond_21

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7

    aget-byte p0, p0, v2

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    add-int/2addr p0, p0

    return p0

    :cond_21
    const/4 v0, 0x4

    aget-byte p0, p0, v0

    and-int/lit16 v0, p0, 0xc0

    shr-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x3f

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzabf;->zzf(II)I

    move-result p0

    return p0
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzfj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzam;
    .registers 9
    .param p3    # Lcom/google/android/gms/internal/ads/zzad;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzh(Lcom/google/android/gms/internal/ads/zzfj;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabf;->zzc:[I

    aget v1, v2, v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzabf;->zze:[I

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    if-eqz v3, :cond_28

    add-int/lit8 v2, v2, 0x1

    :cond_28
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabf;->zzf:[I

    aget v3, v4, v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfi;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfi;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    const-string p1, "audio/ac3"

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzak;->zzD(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzx(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzQ(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzfj;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzam;
    .registers 11
    .param p3    # Lcom/google/android/gms/internal/ads/zzad;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzh(Lcom/google/android/gms/internal/ads/zzfj;)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabf;->zzc:[I

    aget v3, v4, v3

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzabf;->zze:[I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v6

    if-eqz v6, :cond_33

    add-int/lit8 v4, v4, 0x1

    :cond_33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v2

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    if-lez v2, :cond_4f

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v2

    if-eqz v2, :cond_4c

    add-int/lit8 v4, v4, 0x2

    :cond_4c
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_4f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfi;->zza()I

    move-result v2

    const/4 v6, 0x7

    if-le v2, v6, :cond_62

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v2

    if-eqz v2, :cond_62

    const-string v2, "audio/eac3-joc"

    goto :goto_64

    :cond_62
    const-string v2, "audio/eac3"

    :goto_64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfi;->zze()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfi;->zzb()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzG(I)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzak;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzak;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzak;->zzJ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzak;->zzU(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzak;->zzy(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzak;->zzV(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzak;->zzD(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzak;->zzM(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzak;->zzQ(I)Lcom/google/android/gms/internal/ads/zzak;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzak;->zzac()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object p0

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzfi;)Lcom/google/android/gms/internal/ads/zzabe;
    .registers 31

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzc()I

    move-result v1

    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzj(I)V

    const/16 v1, 0xa

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v6, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-le v3, v1, :cond_228

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    if-eqz v10, :cond_32

    if-eq v10, v8, :cond_30

    if-eq v10, v9, :cond_2e

    goto :goto_33

    :cond_2e
    const/4 v4, 0x2

    goto :goto_33

    :cond_30
    const/4 v4, 0x1

    goto :goto_33

    :cond_32
    const/4 v4, 0x0

    :goto_33
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v10

    add-int/2addr v10, v8

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v12

    if-ne v12, v7, :cond_4e

    sget-object v13, Lcom/google/android/gms/internal/ads/zzabf;->zzd:[I

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v14

    aget v13, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x6

    goto :goto_60

    :cond_4e
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v13

    sget-object v14, Lcom/google/android/gms/internal/ads/zzabf;->zzb:[I

    aget v14, v14, v13

    sget-object v15, Lcom/google/android/gms/internal/ads/zzabf;->zzc:[I

    aget v15, v15, v12

    move/from16 v29, v14

    move v14, v13

    move v13, v15

    move/from16 v15, v29

    :goto_60
    add-int/2addr v10, v10

    mul-int/lit8 v16, v15, 0x20

    mul-int v17, v10, v13

    div-int v17, v17, v16

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    sget-object v19, Lcom/google/android/gms/internal/ads/zzabf;->zze:[I

    aget v19, v19, v16

    add-int v19, v19, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v1

    if-eqz v1, :cond_81

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_81
    if-nez v16, :cond_93

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_8f
    const/4 v1, 0x0

    const/16 v16, 0x0

    goto :goto_95

    :cond_93
    move/from16 v1, v16

    :goto_95
    if-ne v4, v8, :cond_a2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v20

    if-eqz v20, :cond_a0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_a0
    const/4 v3, 0x1

    goto :goto_a3

    :cond_a2
    move v3, v4

    :goto_a3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v20

    const/4 v11, 0x4

    if-eqz v20, :cond_1be

    if-le v1, v9, :cond_af

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_af
    and-int/lit8 v20, v1, 0x1

    if-eqz v20, :cond_b8

    if-le v1, v9, :cond_b8

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_b8
    and-int/lit8 v20, v1, 0x4

    if-eqz v20, :cond_bf

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_bf
    if-eqz v18, :cond_ca

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_ca

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_ca
    if-nez v3, :cond_1be

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_d5
    if-nez v1, :cond_e0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v3

    if-eqz v3, :cond_e0

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_e0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v3

    if-eqz v3, :cond_e9

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_e9
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    if-ne v3, v8, :cond_f4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    goto/16 :goto_188

    :cond_f4
    if-ne v3, v9, :cond_fd

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    goto/16 :goto_188

    :cond_fd
    if-ne v3, v7, :cond_188

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_163

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_115

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_115
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_11e

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_11e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_127

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_127
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_130

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_130
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_139

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_139
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_142

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_142
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_14b

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_14b
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_163

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_15a

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_15a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_163

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_17f

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v18

    if-eqz v18, :cond_17f

    const/4 v8, 0x7

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v8

    if-eqz v8, :cond_17f

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_17f
    add-int/2addr v3, v9

    mul-int/lit8 v3, v3, 0x8

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zze()V

    :cond_188
    :goto_188
    if-ge v1, v9, :cond_1a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v3

    const/16 v8, 0xe

    if-eqz v3, :cond_195

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_195
    if-nez v16, :cond_1a0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v3

    if-eqz v3, :cond_1a0

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v3

    if-eqz v3, :cond_1bd

    if-nez v14, :cond_1ae

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/4 v3, 0x0

    const/4 v14, 0x0

    goto :goto_1be

    :cond_1ae
    const/4 v3, 0x0

    :goto_1af
    if-ge v3, v15, :cond_1bd

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v8

    if-eqz v8, :cond_1ba

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_1ba
    add-int/lit8 v3, v3, 0x1

    goto :goto_1af

    :cond_1bd
    const/4 v3, 0x0

    :cond_1be
    :goto_1be
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v8

    if-eqz v8, :cond_1eb

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    if-ne v1, v9, :cond_1cd

    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    const/4 v1, 0x2

    :cond_1cd
    if-lt v1, v6, :cond_1d2

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_1d2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v2

    if-eqz v2, :cond_1db

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_1db
    if-nez v1, :cond_1e6

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v1

    if-eqz v1, :cond_1e6

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_1e6
    if-ge v12, v7, :cond_1eb

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    :cond_1eb
    if-nez v3, :cond_1f2

    if-eq v14, v7, :cond_1f2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzk()V

    :cond_1f2
    if-ne v3, v9, :cond_1ff

    if-eq v14, v7, :cond_1fc

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v1

    if-eqz v1, :cond_1ff

    :cond_1fc
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_1ff
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v1

    if-eqz v1, :cond_215

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_215

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v0

    if-ne v0, v2, :cond_215

    const-string v0, "audio/eac3-joc"

    goto :goto_217

    :cond_215
    const-string v0, "audio/eac3"

    :goto_217
    mul-int/lit16 v15, v15, 0x100

    move-object/from16 v21, v0

    move/from16 v22, v4

    move/from16 v25, v10

    move/from16 v24, v13

    move/from16 v26, v15

    move/from16 v27, v17

    move/from16 v23, v19

    goto :goto_287

    :cond_228
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v1

    if-ne v1, v7, :cond_235

    const/4 v2, 0x0

    goto :goto_237

    :cond_235
    const-string v2, "audio/ac3"

    :goto_237
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    div-int/lit8 v6, v3, 0x2

    sget-object v8, Lcom/google/android/gms/internal/ads/zzabf;->zzf:[I

    aget v6, v8, v6

    mul-int/lit16 v6, v6, 0x3e8

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzabf;->zzf(II)I

    move-result v10

    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfi;->zzd(I)I

    move-result v3

    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_258

    const/4 v5, 0x1

    if-eq v3, v5, :cond_258

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_258
    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_25f

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_25f
    if-ne v3, v9, :cond_264

    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzfi;->zzl(I)V

    :cond_264
    if-ge v1, v7, :cond_26c

    sget-object v5, Lcom/google/android/gms/internal/ads/zzabf;->zzc:[I

    aget v1, v5, v1

    move v13, v1

    goto :goto_26d

    :cond_26c
    const/4 v13, -0x1

    :goto_26d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzfi;->zzn()Z

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zze:[I

    aget v1, v1, v3

    add-int v19, v1, v0

    const/16 v15, 0x600

    move-object/from16 v21, v2

    move/from16 v27, v6

    move/from16 v25, v10

    move/from16 v24, v13

    move/from16 v23, v19

    const/16 v22, -0x1

    const/16 v26, 0x600

    :goto_287
    new-instance v0, Lcom/google/android/gms/internal/ads/zzabe;

    const/16 v28, 0x0

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v28}, Lcom/google/android/gms/internal/ads/zzabe;-><init>(Ljava/lang/String;IIIIIILcom/google/android/gms/internal/ads/zzabd;)V

    return-object v0
.end method

.method private static zzf(II)I
    .registers 4

    if-ltz p0, :cond_2e

    const/4 v0, 0x3

    if-ge p0, v0, :cond_2e

    if-ltz p1, :cond_2e

    shr-int/lit8 v0, p1, 0x1

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    goto :goto_2e

    :cond_e
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzc:[I

    aget p0, v1, p0

    const v1, 0xac44

    if-ne p0, v1, :cond_20

    sget-object p0, Lcom/google/android/gms/internal/ads/zzabf;->zzg:[I

    aget p0, p0, v0

    and-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    add-int/2addr p0, p0

    return p0

    :cond_20
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzf:[I

    aget p1, p1, v0

    const/16 v0, 0x7d00

    if-ne p0, v0, :cond_2b

    mul-int/lit8 p1, p1, 0x6

    return p1

    :cond_2b
    mul-int/lit8 p1, p1, 0x4

    return p1

    :cond_2e
    :goto_2e
    const/4 p0, -0x1

    return p0
.end method
