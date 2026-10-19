###### Class com.google.android.gms.internal.ads.zzgzt (com.google.android.gms.internal.ads.zzgzt)
.class final Lcom/google/android/gms/internal/ads/zzgzt;
.super Lcom/google/android/gms/internal/ads/zzgzs;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgzs;-><init>()V

    return-void
.end method


# virtual methods
.method final zza(I[BII)I
    .registers 16

    const/16 v0, -0x13

    const/16 v1, -0x3e

    const/16 v2, -0x10

    const/4 v3, 0x0

    const/16 v4, -0x60

    const/16 v5, -0x20

    const/16 v6, -0x41

    const/4 v7, -0x1

    if-eqz p1, :cond_84

    if-lt p3, p4, :cond_13

    return p1

    :cond_13
    int-to-byte v8, p1

    if-ge v8, v5, :cond_22

    if-lt v8, v1, :cond_21

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-gt p3, v6, :cond_21

    :goto_1e
    move p3, p1

    goto/16 :goto_84

    :cond_21
    return v7

    :cond_22
    shr-int/lit8 v9, p1, 0x8

    not-int v9, v9

    if-ge v8, v2, :cond_4b

    int-to-byte p1, v9

    if-nez p1, :cond_39

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-ge p1, p4, :cond_34

    move v10, p3

    move p3, p1

    move p1, v10

    goto :goto_39

    :cond_34
    invoke-static {v8, p3}, Lcom/google/android/gms/internal/ads/zzgzv;->zza(II)I

    move-result p1

    return p1

    :cond_39
    :goto_39
    if-gt p1, v6, :cond_4a

    if-ne v8, v5, :cond_3f

    if-lt p1, v4, :cond_4a

    :cond_3f
    if-ne v8, v0, :cond_43

    if-ge p1, v4, :cond_4a

    :cond_43
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-gt p3, v6, :cond_4a

    goto :goto_1e

    :cond_4a
    return v7

    :cond_4b
    int-to-byte v9, v9

    if-nez v9, :cond_5c

    add-int/lit8 p1, p3, 0x1

    aget-byte v9, p2, p3

    if-ge p1, p4, :cond_57

    move p3, p1

    const/4 p1, 0x0

    goto :goto_5e

    :cond_57
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzgzv;->zza(II)I

    move-result p1

    return p1

    :cond_5c
    shr-int/lit8 p1, p1, 0x10

    :goto_5e
    if-nez p1, :cond_6f

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-ge p1, p4, :cond_6a

    move v10, p3

    move p3, p1

    move p1, v10

    goto :goto_6f

    :cond_6a
    invoke-static {v8, v9, p3}, Lcom/google/android/gms/internal/ads/zzgzv;->zzb(III)I

    move-result p1

    return p1

    :cond_6f
    :goto_6f
    if-gt v9, v6, :cond_83

    shl-int/lit8 v8, v8, 0x1c

    add-int/lit8 v9, v9, 0x70

    add-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x1e

    if-nez v8, :cond_83

    if-gt p1, v6, :cond_83

    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-gt p3, v6, :cond_83

    goto :goto_1e

    :cond_83
    return v7

    :cond_84
    :goto_84
    if-ge p3, p4, :cond_8d

    aget-byte p1, p2, p3

    if-ltz p1, :cond_8d

    add-int/lit8 p3, p3, 0x1

    goto :goto_84

    :cond_8d
    if-lt p3, p4, :cond_91

    goto/16 :goto_ef

    :cond_91
    :goto_91
    if-lt p3, p4, :cond_94

    goto :goto_ef

    :cond_94
    add-int/lit8 p1, p3, 0x1

    aget-byte p3, p2, p3

    if-gez p3, :cond_f0

    if-ge p3, v5, :cond_aa

    if-lt p1, p4, :cond_a0

    move v3, p3

    goto :goto_ef

    :cond_a0
    if-lt p3, v1, :cond_a8

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v6, :cond_91

    :cond_a8
    :goto_a8
    const/4 v3, -0x1

    goto :goto_ef

    :cond_aa
    if-ge p3, v2, :cond_ca

    add-int/lit8 v8, p4, -0x1

    if-lt p1, v8, :cond_b5

    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzgzv;->zzc([BII)I

    move-result v3

    goto :goto_ef

    :cond_b5
    add-int/lit8 v8, p1, 0x1

    aget-byte p1, p2, p1

    if-gt p1, v6, :cond_a8

    if-ne p3, v5, :cond_bf

    if-lt p1, v4, :cond_a8

    :cond_bf
    if-ne p3, v0, :cond_c3

    if-ge p1, v4, :cond_a8

    :cond_c3
    add-int/lit8 p3, v8, 0x1

    aget-byte p1, p2, v8

    if-le p1, v6, :cond_91

    goto :goto_a8

    :cond_ca
    add-int/lit8 v8, p4, -0x2

    if-lt p1, v8, :cond_d3

    invoke-static {p2, p1, p4}, Lcom/google/android/gms/internal/ads/zzgzv;->zzc([BII)I

    move-result v3

    goto :goto_ef

    :cond_d3
    add-int/lit8 v8, p1, 0x1

    aget-byte p1, p2, p1

    if-gt p1, v6, :cond_a8

    shl-int/lit8 p3, p3, 0x1c

    add-int/lit8 p1, p1, 0x70

    add-int/2addr p3, p1

    shr-int/lit8 p1, p3, 0x1e

    if-nez p1, :cond_a8

    add-int/lit8 p1, v8, 0x1

    aget-byte p3, p2, v8

    if-gt p3, v6, :cond_a8

    add-int/lit8 p3, p1, 0x1

    aget-byte p1, p2, p1

    if-le p1, v6, :cond_91

    goto :goto_a8

    :goto_ef
    return v3

    :cond_f0
    move p3, p1

    goto :goto_91
.end method

.method final zzb([BII)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgwy;
        }
    .end annotation

    array-length v0, p1

    sub-int v1, v0, p2

    or-int v2, p2, p3

    sub-int/2addr v1, p3

    or-int/2addr v1, v2

    const/4 v2, 0x0

    if-ltz v1, :cond_a7

    add-int v0, p2, p3

    new-array p3, p3, [C

    const/4 v1, 0x0

    :goto_f
    if-ge p2, v0, :cond_22

    aget-byte v3, p1, p2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgzr;->zzd(B)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    int-to-char v3, v3

    aput-char v3, p3, v1

    move v1, v4

    goto :goto_f

    :cond_22
    :goto_22
    if-ge p2, v0, :cond_a1

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzr;->zzd(B)Z

    move-result v4

    if-eqz v4, :cond_47

    add-int/lit8 v4, v1, 0x1

    int-to-char p2, p2

    aput-char p2, p3, v1

    move p2, v3

    :goto_34
    move v1, v4

    if-ge p2, v0, :cond_22

    aget-byte v3, p1, p2

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgzr;->zzd(B)Z

    move-result v4

    if-eqz v4, :cond_22

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v4, v1, 0x1

    int-to-char v3, v3

    aput-char v3, p3, v1

    goto :goto_34

    :cond_47
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzr;->zzf(B)Z

    move-result v4

    if-eqz v4, :cond_60

    if-ge v3, v0, :cond_5b

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    invoke-static {p2, v3, p3, v1}, Lcom/google/android/gms/internal/ads/zzgzr;->zzc(BB[CI)V

    move v1, v4

    move p2, v5

    goto :goto_22

    :cond_5b
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzd()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :cond_60
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgzr;->zze(B)Z

    move-result v4

    if-eqz v4, :cond_7f

    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_7a

    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p1, v5

    invoke-static {p2, v3, v5, p3, v1}, Lcom/google/android/gms/internal/ads/zzgzr;->zzb(BBB[CI)V

    move v1, v4

    move p2, v6

    goto :goto_22

    :cond_7a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzd()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :cond_7f
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_9c

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, p1, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    add-int/lit8 v9, v3, 0x1

    aget-byte v7, p1, v3

    move v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, p3

    move v8, v1

    invoke-static/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzgzr;->zza(BBBB[CI)V

    add-int/lit8 v1, v1, 0x2

    move p2, v9

    goto :goto_22

    :cond_9c
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgwy;->zzd()Lcom/google/android/gms/internal/ads/zzgwy;

    move-result-object p1

    throw p1

    :cond_a1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    :cond_a7
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, v1, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
