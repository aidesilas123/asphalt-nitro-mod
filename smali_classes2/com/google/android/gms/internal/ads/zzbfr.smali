###### Class com.google.android.gms.internal.ads.zzbfr (com.google.android.gms.internal.ads.zzbfr)
.class public final Lcom/google/android/gms/internal/ads/zzbfr;
.super Lcom/google/android/gms/internal/ads/zzbfz;
.source "com.google.android.gms:play-services-ads-lite@@22.6.0"


# static fields
.field static final zza:I

.field static final zzb:I

.field private static final zzc:I


# instance fields
.field private final zzd:Ljava/lang/String;

.field private final zze:Ljava/util/List;

.field private final zzf:Ljava/util/List;

.field private final zzg:I

.field private final zzh:I

.field private final zzi:I

.field private final zzj:I

.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xc

    const/16 v1, 0xae

    const/16 v2, 0xce

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/ads/zzbfr;->zzc:I

    const/16 v1, 0xcc

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/google/android/gms/internal/ads/zzbfr;->zza:I

    sput v0, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IIZ)V
    .registers 10

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbfz;-><init>()V

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zze:Ljava/util/List;

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzf:Ljava/util/List;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzd:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_14
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p8

    if-ge p1, p8, :cond_2d

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/google/android/gms/internal/ads/zzbfu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zze:Ljava/util/List;

    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzf:Ljava/util/List;

    invoke-interface {v0, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    :cond_2d
    if-eqz p3, :cond_34

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_36

    :cond_34
    sget p1, Lcom/google/android/gms/internal/ads/zzbfr;->zza:I

    :goto_36
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzg:I

    if-eqz p4, :cond_3f

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_41

    :cond_3f
    sget p1, Lcom/google/android/gms/internal/ads/zzbfr;->zzb:I

    :goto_41
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzh:I

    if-eqz p5, :cond_4a

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_4c

    :cond_4a
    const/16 p1, 0xc

    :goto_4c
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzi:I

    iput p6, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzj:I

    iput p7, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzk:I

    return-void
.end method


# virtual methods
.method public final zzb()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzj:I

    return v0
.end method

.method public final zzc()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzk:I

    return v0
.end method

.method public final zzd()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzg:I

    return v0
.end method

.method public final zze()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzh:I

    return v0
.end method

.method public final zzf()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzi:I

    return v0
.end method

.method public final zzg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzf:Ljava/util/List;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zze:Ljava/util/List;

    return-object v0
.end method
