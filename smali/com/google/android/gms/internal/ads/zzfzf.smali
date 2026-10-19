###### Class com.google.android.gms.internal.ads.zzfzf (com.google.android.gms.internal.ads.zzfzf)
.class public final Lcom/google/android/gms/internal/ads/zzfzf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# static fields
.field private static final zza:[[J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x7

    new-array v1, v0, [[J

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_40

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x3

    new-array v4, v3, [J

    fill-array-data v4, :array_4c

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_5c

    aput-object v5, v1, v2

    const/4 v2, 0x5

    new-array v5, v2, [J

    fill-array-data v5, :array_70

    aput-object v5, v1, v3

    const/4 v3, 0x6

    new-array v5, v3, [J

    fill-array-data v5, :array_88

    aput-object v5, v1, v4

    new-array v0, v0, [J

    fill-array-data v0, :array_a4

    aput-object v0, v1, v2

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_c4

    aput-object v0, v1, v3

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfzf;->zza:[[J

    return-void

    :array_40
    .array-data 8
        0x473f6
        0x1c1111acd0b9428L    # 3.1855675420061E-300
    .end array-data

    :array_4c
    .array-data 8
        0x34c91838
        0xa10ad7d5c6610c1L
        0x318a8c12ce9c70e7L    # 4.808051585655767E-70
    .end array-data

    :array_5c
    .array-data 8
        0x3fc6e038e0L
        0xf
        0x1b6ebec62L
        0x386c87553e12cL
    .end array-data

    :array_70
    .array-data 8
        0x2b5343fd6a30L
        0x2
        0x273abc
        0xca2b9d9
        0xdf8286ccL
    .end array-data

    :array_88
    .array-data 8
        0x1c6b470864f682L
        0x2
        0x3c1c7396f6dL
        0x2142e2e3f22de5cL
        0x297105b6b7b29ddL
        0x370eb221a5f176ddL    # 1.7205605495331308E-43
    .end array-data

    :array_a4
    .array-data 8
        0x81f23f390affe88L
        0x2
        0x70722e8f5cd0L
        0x20cd6bd5ace2d1L
        0x9bbc940c751630L
        0xa90404784bfcb4dL    # 8.45563543651314E-258
        0x1189b3f265c2b0c7L
    .end array-data

    :array_c4
    .array-data 8
        0x7fffffffffffffffL
        0x2
        0x145
        0x249f
        0x6e12
        0x6e0d7
        0x953d18
        0x6b0191fe
    .end array-data
.end method

.method public static zza(JJLjava/math/RoundingMode;)J
    .registers 13

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    div-long v0, p0, p2

    mul-long v2, p2, v0

    sub-long v2, p0, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_10

    goto :goto_59

    :cond_10
    xor-long/2addr p0, p2

    sget-object v6, Lcom/google/android/gms/internal/ads/zzfze;->zza:[I

    invoke-virtual {p4}, Ljava/math/RoundingMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/16 v7, 0x3f

    shr-long/2addr p0, v7

    long-to-int p1, p0

    const/4 p0, 0x1

    or-int/2addr p1, p0

    const/4 v7, 0x0

    packed-switch v6, :pswitch_data_5a

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_29
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide p2

    sub-long/2addr p2, v2

    sub-long/2addr v2, p2

    cmp-long p2, v2, v4

    if-nez p2, :cond_47

    sget-object p2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    if-eq p4, p2, :cond_51

    sget-object p2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    if-ne p4, p2, :cond_50

    const-wide/16 p2, 0x1

    and-long/2addr p2, v0

    cmp-long p4, p2, v4

    if-eqz p4, :cond_50

    goto :goto_51

    :cond_47
    if-lez p2, :cond_50

    goto :goto_51

    :pswitch_4a
    if-lez p1, :cond_50

    goto :goto_51

    :pswitch_4d
    if-gez p1, :cond_50

    goto :goto_51

    :cond_50
    const/4 p0, 0x0

    :cond_51
    :goto_51
    if-eqz p0, :cond_59

    :pswitch_53
    int-to-long p0, p1

    add-long/2addr v0, p0

    return-wide v0

    :pswitch_56
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzfzg;->zzb(Z)V

    :cond_59
    :goto_59
    :pswitch_59
    return-wide v0

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_56
        :pswitch_59
        :pswitch_4d
        :pswitch_53
        :pswitch_4a
        :pswitch_29
        :pswitch_29
        :pswitch_29
    .end packed-switch
.end method

.method public static zzb(JJ)J
    .registers 9

    const-string v0, "a"

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfzg;->zza(Ljava/lang/String;J)J

    const-string v0, "b"

    invoke-static {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzfzg;->zza(Ljava/lang/String;J)J

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_11

    return-wide p2

    :cond_11
    cmp-long v2, p2, v0

    if-nez v2, :cond_16

    return-wide p0

    :cond_16
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    shr-long/2addr p0, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    shr-long/2addr p2, v1

    :goto_20
    cmp-long v2, p0, p2

    if-eqz v2, :cond_33

    sub-long/2addr p0, p2

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    and-long/2addr v2, p0

    sub-long/2addr p0, v2

    sub-long/2addr p0, v2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v4

    shr-long/2addr p0, v4

    add-long/2addr p2, v2

    goto :goto_20

    :cond_33
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    shl-long/2addr p0, p2

    return-wide p0
.end method

.method public static zzc(JJ)J
    .registers 14

    not-long v0, p0

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v2, v0

    invoke-static {p2, p3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v2, v0

    not-long v0, p2

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    add-int/2addr v2, v0

    const/16 v0, 0x41

    if-le v2, v0, :cond_1c

    mul-long p0, p0, p2

    return-wide p0

    :cond_1c
    xor-long v0, p0, p2

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ge v2, v3, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    const-wide/16 v6, 0x0

    cmp-long v3, p0, v6

    if-gez v3, :cond_2f

    const/4 v6, 0x1

    goto :goto_30

    :cond_2f
    const/4 v6, 0x0

    :goto_30
    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, p2, v7

    if-nez v9, :cond_37

    goto :goto_38

    :cond_37
    const/4 v4, 0x0

    :goto_38
    const/16 v5, 0x3f

    ushr-long/2addr v0, v5

    and-int/2addr v4, v6

    or-int/2addr v2, v4

    const-wide v4, 0x7fffffffffffffffL

    add-long/2addr v0, v4

    if-eqz v2, :cond_46

    return-wide v0

    :cond_46
    mul-long v4, p0, p2

    if-eqz v3, :cond_52

    div-long p0, v4, p0

    cmp-long v2, p0, p2

    if-nez v2, :cond_51

    goto :goto_52

    :cond_51
    return-wide v0

    :cond_52
    :goto_52
    return-wide v4
.end method
