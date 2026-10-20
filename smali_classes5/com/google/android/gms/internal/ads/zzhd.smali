###### Class com.google.android.gms.internal.ads.zzhd (com.google.android.gms.internal.ads.zzhd)
.class public final Lcom/google/android/gms/internal/ads/zzhd;
.super Lcom/google/android/gms/internal/ads/zzgk;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhn;


# instance fields
.field private final zzb:Z

.field private final zzc:I

.field private final zzd:I

.field private final zze:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhm;

.field private zzh:Lcom/google/android/gms/internal/ads/zzgv;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Ljava/net/HttpURLConnection;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzj:Ljava/io/InputStream;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzk:Z

.field private zzl:I

.field private zzm:J

.field private zzn:J


# direct methods
.method public constructor <init>()V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/16 v3, 0x1f40

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhd;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhm;Lcom/google/android/gms/internal/ads/zzftz;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhm;Lcom/google/android/gms/internal/ads/zzftz;Z)V
    .registers 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/ads/zzhm;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/gms/internal/ads/zzftz;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 p6, 0x1

    invoke-direct {p0, p6}, Lcom/google/android/gms/internal/ads/zzgk;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zze:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzd:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzf:Lcom/google/android/gms/internal/ads/zzhm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhm;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzhm;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhm;Lcom/google/android/gms/internal/ads/zzftz;ZLcom/google/android/gms/internal/ads/zzhc;)V
    .registers 17

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhd;-><init>(Ljava/lang/String;IIZLcom/google/android/gms/internal/ads/zzhm;Lcom/google/android/gms/internal/ads/zzftz;Z)V

    return-void
.end method

.method private final zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .registers 13
    .param p3    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzc:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzd:I

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzf:Lcom/google/android/gms/internal/ads/zzhm;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhm;->zza()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzg:Lcom/google/android/gms/internal/ads/zzhm;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhm;->zza()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p10, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32

    :cond_4e
    const-wide/16 p2, 0x0

    const-wide/16 v0, -0x1

    cmp-long p10, p4, p2

    if-nez p10, :cond_5d

    cmp-long p4, p6, v0

    if-nez p4, :cond_5c

    const/4 p2, 0x0

    goto :goto_7c

    :cond_5c
    move-wide p4, p2

    :cond_5d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bytes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p3, p6, v0

    if-eqz p3, :cond_78

    add-long/2addr p4, p6

    add-long/2addr p4, v0

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_7c
    if-eqz p2, :cond_83

    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zze:Ljava/lang/String;

    if-eqz p2, :cond_8c

    const-string p3, "User-Agent"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8c
    const/4 p2, 0x1

    if-eq p2, p8, :cond_92

    const-string p2, "identity"

    goto :goto_94

    :cond_92
    const-string p2, "gzip"

    :goto_94
    const-string p3, "Accept-Encoding"

    invoke-virtual {p1, p3, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    sget p2, Lcom/google/android/gms/internal/ads/zzgv;->zzj:I

    const-string p2, "GET"

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    return-object p1
.end method

.method private final zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgv;)Ljava/net/URL;
    .registers 9
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_6e

    :try_start_5
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_a} :catch_67

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_2f

    :cond_1f
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhj;

    const-string v2, "Unsupported protocol redirect: "

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw p2

    :cond_2f
    :goto_2f
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Z

    if-nez v3, :cond_66

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_66

    :cond_3e
    new-instance v2, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed cross-protocol redirect ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v2

    :cond_66
    :goto_66
    return-object v2

    :catch_67
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-direct {p2, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw p2

    :cond_6e
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhj;

    const-string p2, "Null location redirect"

    invoke-direct {p1, p2, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw p1
.end method

.method private final zzm()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_13

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_10

    :catch_8
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzez;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Ljava/net/HttpURLConnection;

    :cond_13
    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p3, :cond_5

    const/4 v0, 0x0

    goto :goto_32

    :cond_5
    :try_start_5
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1d

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzn:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_17

    goto :goto_32

    :cond_17
    int-to-long v3, p3

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    :cond_1d
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    sget v2, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v0, :cond_28

    goto :goto_32

    :cond_28
    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzn:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzn:J

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzg(I)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_31} :catch_33

    move v0, p1

    :goto_32
    return v0

    :catch_33
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgv;

    sget p3, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 p3, 0x2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhj;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;I)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object p1

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgv;)J
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iput-object v13, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgv;

    const-wide/16 v14, 0x0

    iput-wide v14, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzn:J

    iput-wide v14, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzi(Lcom/google/android/gms/internal/ads/zzgv;)V

    const/4 v11, 0x1

    :try_start_10
    new-instance v2, Ljava/net/URL;

    iget-object v0, v13, Lcom/google/android/gms/internal/ads/zzgv;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-wide v9, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    iget-wide v7, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    invoke-virtual {v13, v11}, Lcom/google/android/gms/internal/ads/zzgv;->zza(I)Z

    move-result v0

    iget-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzb:Z

    const/4 v5, 0x0

    if-nez v1, :cond_3d

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x1

    iget-object v6, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzd:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object/from16 v18, v6

    move-wide v5, v9

    move v9, v0

    move/from16 v10, v16

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhd;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_87

    :cond_3d
    move-object v11, v2

    const/4 v5, 0x0

    :goto_3f
    add-int/lit8 v6, v5, 0x1

    const/16 v1, 0x14

    if-gt v5, v1, :cond_1dc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x0

    iget-object v5, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzd:Ljava/util/Map;

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v18, v5

    move/from16 v20, v6

    move-wide v5, v9

    move-wide/from16 v21, v7

    move-wide/from16 v23, v9

    move v9, v0

    move/from16 v10, v16

    move-object/from16 v25, v11

    move-object/from16 v11, v18

    invoke-direct/range {v1 .. v11}, Lcom/google/android/gms/internal/ads/zzhd;->zzk(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12c

    if-eq v2, v4, :cond_1c9

    const/16 v4, 0x12d

    if-eq v2, v4, :cond_1c9

    const/16 v4, 0x12e

    if-eq v2, v4, :cond_1c9

    const/16 v4, 0x12f

    if-eq v2, v4, :cond_1c9

    const/16 v4, 0x133

    if-eq v2, v4, :cond_1c9

    const/16 v4, 0x134

    if-ne v2, v4, :cond_86

    goto/16 :goto_1c9

    :cond_86
    move-object v0, v1

    :goto_87
    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzl:I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_93} :catch_201

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzl:I

    const/16 v4, 0x7d8

    const/16 v5, 0x1000

    const-string v6, "Content-Range"

    const/16 v7, 0xc8

    const-wide/16 v8, -0x1

    if-lt v1, v7, :cond_15e

    const/16 v10, 0x12b

    if-le v1, v10, :cond_a7

    goto/16 :goto_15e

    :cond_a7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzl:I

    if-ne v1, v7, :cond_b4

    iget-wide v10, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v1, v10, v14

    if-nez v1, :cond_b5

    :cond_b4
    move-wide v10, v14

    :cond_b5
    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gzip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e3

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    cmp-long v16, v2, v8

    if-eqz v16, :cond_cc

    iput-wide v2, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    goto :goto_e7

    :cond_cc
    const-string v2, "Content-Length"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzho;->zza(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v6, v2, v8

    if-eqz v6, :cond_e0

    sub-long v8, v2, v10

    :cond_e0
    iput-wide v8, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    goto :goto_e7

    :cond_e3
    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    iput-wide v2, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    :goto_e7
    const/16 v2, 0x7d0

    :try_start_e9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    if-eqz v1, :cond_fa

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_fa} :catch_153

    :cond_fa
    const/4 v1, 0x1

    iput-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Z

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzj(Lcom/google/android/gms/internal/ads/zzgv;)V

    cmp-long v0, v10, v14

    if-nez v0, :cond_105

    goto :goto_13f

    :cond_105
    :try_start_105
    new-array v0, v5, [B

    :goto_107
    cmp-long v3, v10, v14

    if-lez v3, :cond_13f

    const-wide/16 v5, 0x1000

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v3, v5

    iget-object v5, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    sget v6, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_134

    const/4 v5, -0x1

    if-eq v3, v5, :cond_12e

    int-to-long v8, v3

    sub-long/2addr v10, v8

    invoke-virtual {v12, v3}, Lcom/google/android/gms/internal/ads/zzgk;->zzg(I)V

    goto :goto_107

    :cond_12e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-direct {v0, v13, v4, v1}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v0

    :cond_134
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhj;

    new-instance v3, Ljava/io/InterruptedIOException;

    invoke-direct {v3}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-direct {v0, v3, v13, v2, v1}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v0
    :try_end_13f
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_13f} :catch_142

    :cond_13f
    :goto_13f
    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    return-wide v0

    :catch_142
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzm()V

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzhj;

    if-eqz v3, :cond_14d

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhj;

    throw v0

    :cond_14d
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-direct {v3, v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v3

    :catch_153
    move-exception v0

    const/4 v1, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzm()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzhj;

    invoke-direct {v3, v0, v13, v2, v1}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v3

    :cond_15e
    :goto_15e
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    iget v11, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzl:I

    const/16 v7, 0x1a0

    if-ne v11, v7, :cond_186

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzho;->zzb(Ljava/lang/String;)J

    move-result-wide v17

    move-object v6, v3

    iget-wide v2, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzf:J

    cmp-long v19, v2, v17

    if-nez v19, :cond_187

    iput-boolean v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Z

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzgk;->zzj(Lcom/google/android/gms/internal/ads/zzgv;)V

    iget-wide v0, v13, Lcom/google/android/gms/internal/ads/zzgv;->zzg:J

    cmp-long v2, v0, v8

    if-eqz v2, :cond_185

    return-wide v0

    :cond_185
    return-wide v14

    :cond_186
    move-object v6, v3

    :cond_187
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1a7

    :try_start_18d
    sget v1, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    new-array v1, v5, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_196
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_1a2

    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_196

    :cond_1a2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_1ac

    :cond_1a7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzf:[B
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1a9} :catch_1aa

    goto :goto_1ac

    :catch_1aa
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfs;->zzf:[B

    :goto_1ac
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzm()V

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzl:I

    if-ne v1, v7, :cond_1b9

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgr;

    invoke-direct {v1, v4}, Lcom/google/android/gms/internal/ads/zzgr;-><init>(I)V

    goto :goto_1ba

    :cond_1b9
    const/4 v1, 0x0

    :goto_1ba
    move-object v4, v1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzhl;

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhd;->zzl:I

    move-object v1, v8

    move-object v3, v6

    move-object v5, v10

    move-object/from16 v6, p1

    move-object v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzgv;[B)V

    throw v8

    :cond_1c9
    :goto_1c9
    const/4 v2, 0x1

    const/4 v8, 0x0

    :try_start_1cb
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v1, v25

    invoke-direct {v12, v1, v3, v13}, Lcom/google/android/gms/internal/ads/zzhd;->zzl(Ljava/net/URL;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgv;)Ljava/net/URL;

    move-result-object v11

    move/from16 v5, v20

    move-wide/from16 v7, v21

    move-wide/from16 v9, v23

    goto/16 :goto_3f

    :cond_1dc
    move/from16 v20, v6

    const/4 v2, 0x1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhj;

    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many redirects: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v20

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x7d1

    invoke-direct {v0, v1, v13, v3, v2}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v0
    :try_end_1ff
    .catch Ljava/io/IOException; {:try_start_1cb .. :try_end_1ff} :catch_1ff

    :catch_1ff
    move-exception v0

    goto :goto_203

    :catch_201
    move-exception v0

    const/4 v2, 0x1

    :goto_203
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzm()V

    invoke-static {v0, v13, v2}, Lcom/google/android/gms/internal/ads/zzhj;->zza(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;I)Lcom/google/android/gms/internal/ads/zzhj;

    move-result-object v0

    throw v0
.end method

.method public final zzc()Landroid/net/Uri;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    if-eqz v2, :cond_7b

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzm:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_10

    move-wide v3, v5

    goto :goto_13

    :cond_10
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzn:J

    sub-long/2addr v3, v7

    :goto_13
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Ljava/net/HttpURLConnection;

    if-eqz v7, :cond_69

    sget v8, Lcom/google/android/gms/internal/ads/zzfs;->zza:I
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_8a

    const/16 v9, 0x14

    if-le v8, v9, :cond_1e

    goto :goto_69

    :cond_1e
    :try_start_1e
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    cmp-long v8, v3, v5

    if-nez v8, :cond_2e

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_69

    goto :goto_35

    :cond_2e
    const-wide/16 v5, 0x800

    cmp-long v8, v3, v5

    if-gtz v8, :cond_35

    goto :goto_69

    :cond_35
    :goto_35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    :cond_4d
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_55} :catch_69
    .catchall {:try_start_1e .. :try_end_55} :catchall_8a

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_58
    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v7, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_69} :catch_69
    .catchall {:try_start_58 .. :try_end_69} :catchall_8a

    :catch_69
    :cond_69
    :goto_69
    :try_start_69
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d
    .catchall {:try_start_69 .. :try_end_6c} :catchall_8a

    goto :goto_7b

    :catch_6d
    move-exception v2

    :try_start_6e
    new-instance v3, Lcom/google/android/gms/internal/ads/zzhj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzh:Lcom/google/android/gms/internal/ads/zzgv;

    sget v5, Lcom/google/android/gms/internal/ads/zzfs;->zza:I

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzhj;-><init>(Ljava/io/IOException;Lcom/google/android/gms/internal/ads/zzgv;II)V

    throw v3
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_8a

    :cond_7b
    :goto_7b
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzm()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Z

    if-eqz v0, :cond_89

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_89
    return-void

    :catchall_8a
    move-exception v2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzj:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhd;->zzm()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Z

    if-eqz v0, :cond_99

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzk:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgk;->zzh()V

    :cond_99
    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhd;->zzi:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwx;->zzd()Lcom/google/android/gms/internal/ads/zzfwx;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
