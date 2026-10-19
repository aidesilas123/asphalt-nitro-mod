###### Class com.google.android.gms.internal.ads.zzhg (com.google.android.gms.internal.ads.zzhg)
.class public final Lcom/google/android/gms/internal/ads/zzhg;
.super Lcom/google/android/gms/internal/ads/zzgk;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private zza:Ljava/io/RandomAccessFile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:J

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhf;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzc:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_e

    const/4 p1, -0x1

    return p1

    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Ljava/io/RandomAccessFile;

    sget v3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    int-to-long v3, p3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1c} :catch_28

    if-lez p1, :cond_27

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzc:J

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzc:J

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzg(I)V

    :cond_27
    return p1

    :catch_28
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhf;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Throwable;I)V

    throw p2
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgv;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhf;
        }
    .end annotation

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgv;->zza:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzb:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzi(Lcom/google/android/gms/internal/ads/zzgv;)V

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    const/16 v3, 0x7d6

    :try_start_c
    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_12} :catch_60
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_12} :catch_59
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_12} :catch_52

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_15
    const-string v6, "r"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1a} :catch_60
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_1a} :catch_59
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_1a} :catch_52

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Ljava/io/RandomAccessFile;

    :try_start_1c
    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-wide v5, p1, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    sub-long/2addr v3, v5

    :cond_32
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzc:J
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_34} :catch_4b

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_42

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzd:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzj(Lcom/google/android/gms/internal/ads/zzgv;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzc:J

    return-wide v0

    :cond_42
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhf;

    const/16 v0, 0x7d8

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :catch_4b
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_52
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_59
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :catch_60
    move-exception p1

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_90

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v2, 0x15

    const/16 v4, 0x7d5

    if-lt v1, v2, :cond_8a

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhe;->zza(Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_8c

    :cond_8a
    const/16 v3, 0x7d5

    :goto_8c
    invoke-direct {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Throwable;I)V

    throw v0

    :cond_90
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhf;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing \'?\' or \'#\'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-direct {v2, v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2
.end method

.method public final zzc()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhf;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzb:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_19
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    :cond_b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzd:Z

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    goto :goto_22

    :catch_19
    move-exception v2

    :try_start_1a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhf;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    :goto_22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zza:Ljava/io/RandomAccessFile;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzd:Z

    if-nez v0, :cond_29

    goto :goto_2e

    :cond_29
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhg;->zzd:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :goto_2e
    throw v2
.end method
