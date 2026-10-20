###### Class com.google.android.gms.internal.ads.zzhj (com.google.android.gms.internal.ads.zzhj)
.class public Lcom/google/android/gms/internal/ads/zzhj;
.super Lcom/google/android/gms/internal/ads/zzgr;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzgv;

.field public final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgv;II)V
    .registers 4

    const/16 p2, 0x7d8

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzhj;->zzb(II)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Lcom/google/android/gms/internal/ads/zzgv;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V
    .registers 5

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzhj;->zzb(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(Ljava/lang/Throwable;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Lcom/google/android/gms/internal/ads/zzgv;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgv;II)V
    .registers 5

    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzhj;->zzb(II)I

    move-result p3

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Lcom/google/android/gms/internal/ads/zzgv;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V
    .registers 6
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p4, p5}, Lcom/google/android/gms/internal/ads/zzhj;->zzb(II)I

    move-result p4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzb:Lcom/google/android/gms/internal/ads/zzgv;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzhj;->zzc:I

    return-void
.end method

.method public static zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;I)Lcom/google/android/gms/internal/ads/zzhj;
    .registers 7

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, Ljava/net/SocketTimeoutException;

    const/16 v2, 0x7d1

    const/16 v3, 0x7d7

    if-eqz v1, :cond_f

    const/16 v2, 0x7d2

    goto :goto_26

    :cond_f
    instance-of v1, p0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_16

    const/16 v2, 0x3ec

    goto :goto_26

    :cond_16
    if-eqz v0, :cond_26

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzftf;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cleartext.*not permitted.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 v2, 0x7d7

    :cond_26
    :goto_26
    if-ne v2, v3, :cond_2e

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;)V

    goto :goto_34

    :cond_2e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-direct {v0, p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    move-object p2, v0

    :goto_34
    return-object p2
.end method

.method private static zzb(II)I
    .registers 3

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    if-eq p1, p0, :cond_a

    const/16 p0, 0x7d0

    goto :goto_c

    :cond_a
    const/16 p0, 0x7d1

    :cond_c
    :goto_c
    return p0
.end method
