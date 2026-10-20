###### Class com.google.android.gms.internal.ads.zzgj (com.google.android.gms.internal.ads.zzgj)
.class public final Lcom/google/android/gms/internal/ads/zzgj;
.super Lcom/google/android/gms/internal/ads/zzgk;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Landroid/content/res/AssetManager;

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:J

.field private zze:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zza:Landroid/content/res/AssetManager;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgi;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3b

    const-wide/16 v2, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_19

    int-to-long v5, p3

    :try_start_14
    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Ljava/io/InputStream;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_32

    if-ne p1, v4, :cond_24

    return v4

    :cond_24
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2e

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J

    :cond_2e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzg(I)V

    return p1

    :catch_32
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgi;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Ljava/lang/Throwable;I)V

    throw p2

    :cond_3b
    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgv;)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgi;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgv;->zza:Landroid/net/Uri;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzb:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzgi; {:try_start_1 .. :try_end_9} :catch_7c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_6c

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_c
    const-string v2, "/android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_27

    :cond_1b
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_27
    :goto_27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzi(Lcom/google/android/gms/internal/ads/zzgv;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zza:Landroid/content/res/AssetManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Ljava/io/InputStream;

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    invoke-virtual {v1, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v1

    iget-wide v3, p1, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_63

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_49

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J

    goto :goto_5b

    :cond_49
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-nez v7, :cond_5b

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J
    :try_end_5b
    .catch Lcom/google/android/gms/internal/ads/zzgi; {:try_start_c .. :try_end_5b} :catch_7c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_5b} :catch_6c

    :cond_5b
    :goto_5b
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zze:Z

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzj(Lcom/google/android/gms/internal/ads/zzgv;)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzd:J

    return-wide v0

    :cond_63
    :try_start_63
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgi;

    const/4 v1, 0x0

    const/16 v2, 0x7d8

    invoke-direct {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Ljava/lang/Throwable;I)V

    throw p1
    :try_end_6c
    .catch Lcom/google/android/gms/internal/ads/zzgi; {:try_start_63 .. :try_end_6c} :catch_7c
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_6c} :catch_6c

    :catch_6c
    move-exception p1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgi;

    instance-of v2, p1, Ljava/io/FileNotFoundException;

    if-eq v0, v2, :cond_76

    const/16 v0, 0x7d0

    goto :goto_78

    :cond_76
    const/16 v0, 0x7d5

    :goto_78
    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Ljava/lang/Throwable;I)V

    throw v1

    :catch_7c
    move-exception p1

    throw p1
.end method

.method public final zzc()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgi;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzb:Landroid/net/Uri;

    const/4 v1, 0x0

    :try_start_4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Ljava/io/InputStream;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_b} :catch_19
    .catchall {:try_start_4 .. :try_end_b} :catchall_17

    :cond_b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zze:Z

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zze:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_16
    return-void

    :catchall_17
    move-exception v2

    goto :goto_22

    :catch_19
    move-exception v2

    :try_start_1a
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgi;

    const/16 v4, 0x7d0

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Ljava/lang/Throwable;I)V

    throw v3
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_17

    :goto_22
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zzc:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgj;->zze:Z

    if-nez v0, :cond_29

    goto :goto_2e

    :cond_29
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgj;->zze:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :goto_2e
    throw v2
.end method
