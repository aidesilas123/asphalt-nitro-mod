###### Class com.google.android.gms.internal.ads.zztu (com.google.android.gms.internal.ads.zztu)
.class public final Lcom/google/android/gms/internal/ads/zztu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzwc;


# instance fields
.field protected final zza:[Lcom/google/android/gms/internal/ads/zzwc;


# direct methods
.method public constructor <init>([Lcom/google/android/gms/internal/ads/zzwc;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:[Lcom/google/android/gms/internal/ads/zzwc;

    return-void
.end method


# virtual methods
.method public final zzb()J
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:[Lcom/google/android/gms/internal/ads/zzwc;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzwc;->zzb()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method

.method public final zzc()J
    .registers 13

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:[Lcom/google/android/gms/internal/ads/zzwc;

    array-length v1, v0

    const-wide v2, 0x7fffffffffffffffL

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_a
    const-wide/high16 v7, -0x8000000000000000L

    if-ge v4, v1, :cond_1f

    aget-object v9, v0, v4

    invoke-interface {v9}, Lcom/google/android/gms/internal/ads/zzwc;->zzc()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-eqz v11, :cond_1c

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_1f
    cmp-long v0, v5, v2

    if-nez v0, :cond_24

    return-wide v7

    :cond_24
    return-wide v5
.end method

.method public final zzm(J)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:[Lcom/google/android/gms/internal/ads/zzwc;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    invoke-interface {v3, p1, p2}, Lcom/google/android/gms/internal/ads/zzwc;->zzm(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzla;)Z
    .registers 19

    move-object/from16 v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zztu;->zzc()J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3e

    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zztu;->zza:[Lcom/google/android/gms/internal/ads/zzwc;

    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_15
    if-ge v10, v9, :cond_3a

    aget-object v12, v8, v10

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzwc;->zzc()J

    move-result-wide v13

    cmp-long v15, v13, v5

    if-eqz v15, :cond_29

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzla;->zza:J

    cmp-long v16, v13, v5

    if-gtz v16, :cond_29

    const/4 v5, 0x1

    goto :goto_2a

    :cond_29
    const/4 v5, 0x0

    :goto_2a
    cmp-long v6, v13, v3

    if-eqz v6, :cond_30

    if-eqz v5, :cond_35

    :cond_30
    invoke-interface {v12, v0}, Lcom/google/android/gms/internal/ads/zzwc;->zzo(Lcom/google/android/gms/internal/ads/zzla;)Z

    move-result v5

    or-int/2addr v11, v5

    :cond_35
    add-int/lit8 v10, v10, 0x1

    const-wide/high16 v5, -0x8000000000000000L

    goto :goto_15

    :cond_3a
    or-int/2addr v2, v11

    if-nez v11, :cond_4

    goto :goto_40

    :cond_3e
    move-object/from16 v7, p0

    :goto_40
    return v2
.end method

.method public final zzp()Z
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zztu;->zza:[Lcom/google/android/gms/internal/ads/zzwc;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_14

    aget-object v4, v0, v3

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzwc;->zzp()Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_14
    return v2
.end method
