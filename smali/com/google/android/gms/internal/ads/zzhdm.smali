###### Class com.google.android.gms.internal.ads.zzhdm (com.google.android.gms.internal.ads.zzhdm)
.class public final Lcom/google/android/gms/internal/ads/zzhdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# direct methods
.method static zza(I)Ljava/util/HashSet;
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhdm;->zzd(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static zzb(I)Ljava/util/LinkedHashMap;
    .registers 2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhdm;->zzd(I)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0
.end method

.method public static zzc(I)Ljava/util/List;
    .registers 2

    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0
.end method

.method private static zzd(I)I
    .registers 2

    const/4 v0, 0x3

    if-ge p0, v0, :cond_6

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_6
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_13

    int-to-float p0, p0

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_13
    const p0, 0x7fffffff

    return p0
.end method
