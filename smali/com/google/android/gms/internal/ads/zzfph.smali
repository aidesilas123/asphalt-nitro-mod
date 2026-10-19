###### Class com.google.android.gms.internal.ads.zzfph (com.google.android.gms.internal.ads.zzfph)
.class public final Lcom/google/android/gms/internal/ads/zzfph;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzavf;

.field private final zzb:Ljava/io/File;

.field private final zzc:Ljava/io/File;

.field private final zzd:Ljava/io/File;

.field private zze:[B


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzavf;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .param p1    # Lcom/google/android/gms/internal/ads/zzavf;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfph;->zza:Lcom/google/android/gms/internal/ads/zzavf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfph;->zzb:Ljava/io/File;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfph;->zzc:Ljava/io/File;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfph;->zzd:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzavf;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zza:Lcom/google/android/gms/internal/ads/zzavf;

    return-object v0
.end method

.method public final zzb()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zzc:Ljava/io/File;

    return-object v0
.end method

.method public final zzc()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zzb:Ljava/io/File;

    return-object v0
.end method

.method public final zzd(J)Z
    .registers 7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfph;->zza:Lcom/google/android/gms/internal/ads/zzavf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzavf;->zzc()J

    move-result-wide p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xe10

    cmp-long v2, p1, v0

    if-gez v2, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public final zze()[B
    .registers 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zze:[B

    const/4 v1, 0x0

    if-nez v0, :cond_55

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zzd:Ljava/io/File;

    :try_start_7
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_4e
    .catchall {:try_start_7 .. :try_end_c} :catchall_49

    :try_start_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v3, 0x100

    :goto_13
    new-array v4, v3, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_17
    if-ge v6, v3, :cond_25

    sub-int v7, v3, v6

    invoke-virtual {v2, v4, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_23

    goto :goto_25

    :cond_23
    add-int/2addr v6, v7

    goto :goto_17

    :cond_25
    :goto_25
    if-nez v6, :cond_29

    move-object v4, v1

    goto :goto_2d

    :cond_29
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgve;->zzv([BII)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v4

    :goto_2d
    if-nez v4, :cond_3b

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgve;->zzu(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgve;->zzA()[B

    move-result-object v0
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_37} :catch_4f
    .catchall {:try_start_c .. :try_end_37} :catchall_46

    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_53

    :cond_3b
    :try_start_3b
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/2addr v3, v3

    const/16 v4, 0x2000

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_45} :catch_4f
    .catchall {:try_start_3b .. :try_end_45} :catchall_46

    goto :goto_13

    :catchall_46
    move-exception v0

    move-object v1, v2

    goto :goto_4a

    :catchall_49
    move-exception v0

    :goto_4a
    invoke-static {v1}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catch_4e
    move-object v2, v1

    :catch_4f
    invoke-static {v2}, Lcom/google/android/gms/common/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_53
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zze:[B

    :cond_55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfph;->zze:[B

    if-nez v0, :cond_5a

    return-object v1

    :cond_5a
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
