###### Class com.google.android.gms.internal.ads.zzaca (com.google.android.gms.internal.ads.zzaca)
.class public final Lcom/google/android/gms/internal/ads/zzaca;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zza:Ljava/lang/String;


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaca;->zza:Ljava/lang/String;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzfj;)Lcom/google/android/gms/internal/ads/zzaca;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfj;->zzH(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfj;->zzl()I

    move-result p0

    shr-int/lit8 p0, p0, 0x3

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2c

    if-eq v1, v2, :cond_2c

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1c

    goto :goto_2c

    :cond_1c
    const/16 v3, 0x8

    if-ne v1, v3, :cond_23

    const-string v3, "hev1"

    goto :goto_2e

    :cond_23
    const/16 v3, 0x9

    if-ne v1, v3, :cond_2a

    const-string v3, "avc3"

    goto :goto_2e

    :cond_2a
    const/4 p0, 0x0

    return-object p0

    :cond_2c
    :goto_2c
    const-string v3, "dvhe"

    :goto_2e
    shl-int/2addr v0, v2

    or-int/2addr p0, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    if-ge p0, v3, :cond_45

    goto :goto_47

    :cond_45
    const-string v2, "."

    :goto_47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaca;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzaca;-><init>(IILjava/lang/String;)V

    return-object v2
.end method
