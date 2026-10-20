###### Class com.google.android.gms.internal.ads.zzhq (com.google.android.gms.internal.ads.zzhq)
.class public final Lcom/google/android/gms/internal/ads/zzhq;
.super Lcom/google/android/gms/internal/ads/zzgk;
.source "com.google.android.gms:play-services-ads@@22.6.0"


# instance fields
.field private final zza:Landroid/content/res/Resources;

.field private final zzb:Ljava/lang/String;

.field private zzc:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:Landroid/content/res/AssetFileDescriptor;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:J

.field private zzg:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zza:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzb:Ljava/lang/String;

    return-void
.end method

.method public static buildRawResourceUri(I)Landroid/net/Uri;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rawresource:///"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhp;
        }
    .end annotation

    if-nez p3, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_4f

    const/16 v2, 0x7d0

    const-wide/16 v5, -0x1

    cmp-long v3, v0, v5

    if-eqz v3, :cond_1b

    int-to-long v7, p3

    :try_start_16
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_1b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zze:Ljava/io/InputStream;

    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_23} :catch_47

    if-ne p1, v4, :cond_39

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    cmp-long p3, p1, v5

    if-nez p3, :cond_2c

    return v4

    :cond_2c
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhp;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    const-string p3, "End of stream reached having not read sufficient data."

    invoke-direct {p1, p3, p2, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p1

    :cond_39
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    cmp-long v0, p2, v5

    if-eqz v0, :cond_43

    int-to-long v0, p1

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    :cond_43
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzg(I)V

    return p1

    :catch_47
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhp;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    :cond_4f
    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgv;)J
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhp;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgv;->zza:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzc:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawresource"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x7d5

    const/16 v5, 0x3ec

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v3, :cond_b5

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v8, "android.resource"

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_44

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "\\d+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    goto :goto_b5

    :cond_44
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_95

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_61
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6e

    const-string v5, ""

    goto :goto_78

    :cond_6e
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_78
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzhq;->zza:Landroid/content/res/Resources;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "raw"

    invoke-virtual {v8, v3, v5, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_8d

    goto :goto_c0

    :cond_8d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    const-string v2, "Resource not found."

    invoke-direct {v0, v2, v7, v4}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_95
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported URI scheme ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "). Only rawresource and android.resource are supported."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_b5
    :goto_b5
    :try_start_b5
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_b5 .. :try_end_b9} :catch_18b

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_bc
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_bc .. :try_end_c0} :catch_18b

    :goto_c0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzi(Lcom/google/android/gms/internal/ads/zzgv;)V

    :try_start_c3
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzhq;->zza:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_c9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c3 .. :try_end_c9} :catch_184

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_172

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v8

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzhq;->zze:Ljava/io/InputStream;

    const/16 v5, 0x7d8

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    if-eqz v12, :cond_f1

    :try_start_e4
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v15, v13, v8

    if-gtz v15, :cond_eb

    goto :goto_f1

    :cond_eb
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v0, v7, v7, v5}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_f1
    :goto_f1
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v13

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    add-long/2addr v4, v13

    invoke-virtual {v2, v4, v5}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v4

    sub-long/2addr v4, v13

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v16, v4, v13

    if-nez v16, :cond_15f

    const-wide/16 v13, 0x0

    if-nez v12, :cond_12f

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    cmp-long v8, v4, v13

    if-nez v8, :cond_117

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    move-wide v4, v10

    goto :goto_137

    :cond_117
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    cmp-long v2, v4, v13

    if-ltz v2, :cond_127

    goto :goto_137

    :cond_127
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    const/16 v2, 0x7d8

    invoke-direct {v0, v7, v7, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :cond_12f
    sub-long v4, v8, v4

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J
    :try_end_133
    .catch Lcom/google/android/gms/internal/ads/zzhp; {:try_start_e4 .. :try_end_133} :catch_170
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_133} :catch_167

    cmp-long v2, v4, v13

    if-ltz v2, :cond_157

    :goto_137
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    cmp-long v7, v2, v10

    if-eqz v7, :cond_148

    cmp-long v7, v4, v10

    if-nez v7, :cond_142

    goto :goto_146

    :cond_142
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :goto_146
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    :cond_148
    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzj(Lcom/google/android/gms/internal/ads/zzgv;)V

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_154

    return-wide v2

    :cond_154
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzhq;->zzf:J

    return-wide v2

    :cond_157
    :try_start_157
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgr;

    const/16 v2, 0x7d8

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(I)V

    throw v0

    :cond_15f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    const/16 v2, 0x7d8

    invoke-direct {v0, v7, v7, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
    :try_end_167
    .catch Lcom/google/android/gms/internal/ads/zzhp; {:try_start_157 .. :try_end_167} :catch_170
    .catch Ljava/io/IOException; {:try_start_157 .. :try_end_167} :catch_167

    :catch_167
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhp;

    const/16 v3, 0x7d0

    invoke-direct {v2, v7, v0, v3}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :catch_170
    move-exception v0

    throw v0

    :cond_172
    const/16 v3, 0x7d0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Resource is compressed: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0

    :catch_184
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v2, v7, v0, v4}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    :catch_18b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhp;

    const-string v2, "Resource identifier must be an integer."

    invoke-direct {v0, v2, v7, v5}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzc:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhp;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzc:Landroid/net/Uri;

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    :try_start_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhq;->zze:Ljava/io/InputStream;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_2d
    .catchall {:try_start_6 .. :try_end_d} :catchall_2b

    :cond_d
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zze:Ljava/io/InputStream;

    :try_start_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_24
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    :cond_16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    if-eqz v0, :cond_21

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_21
    return-void

    :catchall_22
    move-exception v2

    goto :goto_50

    :catch_24
    move-exception v3

    :try_start_25
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_22

    :catchall_2b
    move-exception v3

    goto :goto_34

    :catch_2d
    move-exception v3

    :try_start_2e
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    :goto_34
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zze:Ljava/io/InputStream;

    :try_start_36
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzd:Landroid/content/res/AssetFileDescriptor;

    if-eqz v4, :cond_3d

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_49
    .catchall {:try_start_36 .. :try_end_3d} :catchall_22

    :cond_3d
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    if-eqz v0, :cond_48

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_48
    throw v3

    :catch_49
    move-exception v3

    :try_start_4a
    new-instance v4, Lcom/google/android/gms/internal/ads/zzhp;

    invoke-direct {v4, v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzhp;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v4
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_22

    :goto_50
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzd:Landroid/content/res/AssetFileDescriptor;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    if-eqz v0, :cond_5b

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhq;->zzg:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_5b
    throw v2
.end method
