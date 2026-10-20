###### Class com.google.android.gms.internal.ads.zzgn (com.google.android.gms.internal.ads.zzgn)
.class public final Lcom/google/android/gms/internal/ads/zzgn;
.super Lcom/google/android/gms/internal/ads/zzgk;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Landroid/content/ContentResolver;

.field private zzb:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Ljava/io/FileInputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:J

.field private zzf:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zza:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgm;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzd:Ljava/io/FileInputStream;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_21} :catch_32

    if-ne p1, v4, :cond_24

    return v4

    :cond_24
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

    cmp-long v0, p2, v2

    if-eqz v0, :cond_2e

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

    :cond_2e
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzg(I)V

    return p1

    :catch_32
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzgm;

    const/16 p3, 0x7d0

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw p2

    :cond_3b
    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgv;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgm;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x1

    :try_start_5
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzgv;->zza:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzb:Landroid/net/Uri;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzi(Lcom/google/android/gms/internal/ads/zzgv;)V

    const-string v5, "content"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT"

    invoke-virtual {v5, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzgn;->zza:Landroid/content/ContentResolver;

    const-string v7, "*/*"

    invoke-virtual {v6, v4, v7, v5}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    goto :goto_37

    :cond_2f
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzgn;->zza:Landroid/content/ContentResolver;

    const-string v6, "r"

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    :goto_37
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzc:Landroid/content/res/AssetFileDescriptor;

    if-eqz v5, :cond_cd

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzd:Ljava/io/FileInputStream;

    const/16 v8, 0x7d8

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    cmp-long v12, v6, v10

    if-eqz v12, :cond_60

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v15, v13, v6

    if-gtz v15, :cond_5a

    goto :goto_60

    :cond_5a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_60
    :goto_60
    invoke-virtual {v5}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    add-long/2addr v2, v13

    invoke-virtual {v4, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v2, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v16, v2, v13

    if-nez v16, :cond_c7

    const-wide/16 v13, 0x0

    if-nez v12, :cond_98

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    cmp-long v6, v3, v13

    if-nez v6, :cond_86

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

    move-wide v3, v10

    goto :goto_a0

    :cond_86
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long/2addr v3, v6

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

    cmp-long v2, v3, v13

    if-ltz v2, :cond_92

    goto :goto_a0

    :cond_92
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_98
    sub-long v3, v6, v2

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzgn;->zze:J
    :try_end_9c
    .catch Lcom/google/android/gms/internal/ads/zzgm; {:try_start_5 .. :try_end_9c} :catch_102
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9c} :catch_f1

    cmp-long v2, v3, v13

    if-ltz v2, :cond_c1

    :goto_a0
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    cmp-long v2, v5, v10

    if-eqz v2, :cond_b1

    cmp-long v2, v3, v10

    if-nez v2, :cond_ab

    goto :goto_af

    :cond_ab
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_af
    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

    :cond_b1
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzj(Lcom/google/android/gms/internal/ads/zzgv;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_be

    return-wide v2

    :cond_be
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzgn;->zze:J

    return-wide v2

    :cond_c1
    :try_start_c1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_c7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v0, v9, v8}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v0

    :cond_cd
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgm;

    new-instance v2, Ljava/io/IOException;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open file descriptor for: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_e9
    .catch Lcom/google/android/gms/internal/ads/zzgm; {:try_start_c1 .. :try_end_e9} :catch_102
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_e9} :catch_f1

    const/16 v3, 0x7d0

    :try_start_eb
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v0
    :try_end_ef
    .catch Lcom/google/android/gms/internal/ads/zzgm; {:try_start_eb .. :try_end_ef} :catch_102
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ef} :catch_ef

    :catch_ef
    move-exception v0

    goto :goto_f4

    :catch_f1
    move-exception v0

    const/16 v3, 0x7d0

    :goto_f4
    new-instance v2, Lcom/google/android/gms/internal/ads/zzgm;

    instance-of v4, v0, Ljava/io/FileNotFoundException;

    const/4 v5, 0x1

    if-eq v5, v4, :cond_fc

    goto :goto_fe

    :cond_fc
    const/16 v3, 0x7d5

    :goto_fe
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v2

    :catch_102
    move-exception v0

    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzb:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzgm;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzb:Landroid/net/Uri;

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzd:Ljava/io/FileInputStream;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d
    .catchall {:try_start_6 .. :try_end_d} :catchall_2b

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzd:Ljava/io/FileInputStream;

    :try_start_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzc:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :cond_16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    if-eqz v0, :cond_21

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    goto :goto_50

    :catch_24
    move-exception v3

    :try_start_25
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :catchall_2b
    move-exception v3

    goto :goto_34

    :catch_2d
    move-exception v3

    :try_start_2e
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    :goto_34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzd:Ljava/io/FileInputStream;

    :try_start_36
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzc:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_49
    .catchall {:try_start_36 .. :try_end_3d} :catchall_22

    :cond_3d
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    if-eqz v0, :cond_48

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_48
    throw v3

    :catch_49
    move-exception v3

    :try_start_4a
    new-instance v4, Lcom/google/android/gms/internal/ads/zzgm;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzgm;-><init>(Ljava/io/IOException;I)V

    throw v4
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_22

    :goto_50
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzc:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    if-eqz v0, :cond_5b

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzgn;->zzf:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_5b
    throw v2
.end method
