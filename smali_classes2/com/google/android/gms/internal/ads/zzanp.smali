###### Class com.google.android.gms.internal.ads.zzanp (com.google.android.gms.internal.ads.zzanp)
.class public Lcom/google/android/gms/internal/ads/zzanp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamt;


# instance fields
.field protected final zza:Lcom/google/android/gms/internal/ads/zzanr;

.field protected final zzb:Lcom/google/android/gms/internal/ads/zzano;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/ads/zzano;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzano;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanr;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzanr;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzc:Lcom/google/android/gms/internal/ads/zzano;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzb:Lcom/google/android/gms/internal/ads/zzano;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzanr;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzana;)Lcom/google/android/gms/internal/ads/zzamw;
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzanj;
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v2, "Error occurred when closing InputStream"

    const-string v3, "Content-Type"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzd()Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_3b

    :cond_1b
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzamj;->zzb:Ljava/lang/String;

    if-eqz v11, :cond_29

    const-string v12, "If-None-Match"

    invoke-interface {v10, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzamj;->zzd:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-lez v0, :cond_3a

    const-string v0, "If-Modified-Since"

    invoke-static {v11, v12}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(J)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    move-object v0, v10

    :goto_3b
    const-string v10, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzk()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzl()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/HttpURLConnection;

    invoke-static {}, Ljava/net/HttpURLConnection;->getFollowRedirects()Z

    move-result v13

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzb()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v11, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v11, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v11, v7}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v13, "https"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_7b} :catch_2bb

    :try_start_7b
    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :cond_99
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zza()I

    move-result v0

    if-eqz v0, :cond_ca

    const-string v0, "POST"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzx()[B

    move-result-object v0

    if-eqz v0, :cond_cf

    invoke-virtual {v11, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v12

    invoke-interface {v12, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_ba

    invoke-virtual {v11, v3, v10}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    new-instance v10, Ljava/io/DataOutputStream;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v10, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    goto :goto_cf

    :cond_ca
    const-string v0, "GET"

    invoke-virtual {v11, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_cf
    :goto_cf
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/4 v10, -0x1

    if-eq v0, v10, :cond_2a3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zza()I
    :try_end_d9
    .catchall {:try_start_7b .. :try_end_d9} :catchall_2af

    const/16 v12, 0x64

    const/16 v13, 0x130

    const/16 v14, 0xc8

    if-lt v0, v12, :cond_e3

    if-lt v0, v14, :cond_105

    :cond_e3
    const/16 v12, 0xcc

    if-eq v0, v12, :cond_105

    if-eq v0, v13, :cond_105

    :try_start_e9
    new-instance v12, Lcom/google/android/gms/internal/ads/zzany;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v15

    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzaoa;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v15

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v14

    new-instance v6, Lcom/google/android/gms/internal/ads/zzanz;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzanz;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-direct {v12, v0, v15, v14, v6}, Lcom/google/android/gms/internal/ads/zzany;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_ff
    .catchall {:try_start_e9 .. :try_end_ff} :catchall_100

    goto :goto_115

    :catchall_100
    move-exception v0

    move-object/from16 v14, p0

    goto/16 :goto_2b3

    :cond_105
    :try_start_105
    new-instance v12, Lcom/google/android/gms/internal/ads/zzany;

    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaoa;->zza(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v12, v0, v6, v10, v8}, Lcom/google/android/gms/internal/ads/zzany;-><init>(ILjava/util/List;ILjava/io/InputStream;)V
    :try_end_112
    .catchall {:try_start_105 .. :try_end_112} :catchall_2af

    :try_start_112
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_2bb

    :goto_115
    :try_start_115
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzany;->zzb()I

    move-result v0

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzany;->zzd()Ljava/util/List;

    move-result-object v6

    if-ne v0, v13, :cond_1e0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v20, v10, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzd()Lcom/google/android/gms/internal/ads/zzamj;

    move-result-object v0

    if-nez v0, :cond_13c

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamw;

    const/16 v17, 0x130

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v16, v0

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(I[BZJLjava/util/List;)V

    goto/16 :goto_1df

    :cond_13c
    new-instance v10, Ljava/util/TreeSet;

    sget-object v11, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_161

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_14d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_161

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzams;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzams;->zza()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14d

    :cond_161
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamj;->zzh:Ljava/util/List;

    if-eqz v6, :cond_190

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1cd

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamj;->zzh:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_176
    :goto_176
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzams;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzams;->zza()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_176

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_176

    :cond_190
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamj;->zzg:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1cd

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzamj;->zzg:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1a2
    :goto_1a2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1cd

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1a2

    new-instance v14, Lcom/google/android/gms/internal/ads/zzams;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v14, v15, v13}, Lcom/google/android/gms/internal/ads/zzams;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a2

    :cond_1cd
    new-instance v6, Lcom/google/android/gms/internal/ads/zzamw;

    const/16 v17, 0x130

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzamj;->zza:[B

    const/16 v19, 0x1

    move-object/from16 v16, v6

    move-object/from16 v18, v0

    move-object/from16 v22, v11

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(I[BZJLjava/util/List;)V

    move-object v0, v6

    :goto_1df
    return-object v0

    :cond_1e0
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzany;->zzc()Ljava/io/InputStream;

    move-result-object v11

    if-eqz v11, :cond_22b

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzany;->zza()I

    move-result v13
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_1ea} :catch_29f

    move-object/from16 v14, p0

    :try_start_1ec
    iget-object v15, v14, Lcom/google/android/gms/internal/ads/zzanp;->zza:Lcom/google/android/gms/internal/ads/zzanr;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaod;

    invoke-direct {v8, v15, v13}, Lcom/google/android/gms/internal/ads/zzaod;-><init>(Lcom/google/android/gms/internal/ads/zzanr;I)V
    :try_end_1f3
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1f3} :catch_29d

    const/16 v13, 0x400

    :try_start_1f5
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzanr;->zzb(I)[B

    move-result-object v13
    :try_end_1f9
    .catchall {:try_start_1f5 .. :try_end_1f9} :catchall_219

    :goto_1f9
    :try_start_1f9
    invoke-virtual {v11, v13}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-eq v7, v10, :cond_205

    invoke-virtual {v8, v13, v9, v7}, Lcom/google/android/gms/internal/ads/zzaod;->write([BII)V

    goto :goto_1f9

    :catchall_203
    move-exception v0

    goto :goto_21b

    :cond_205
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_209
    .catchall {:try_start_1f9 .. :try_end_209} :catchall_203

    :try_start_209
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_20c
    .catch Ljava/io/IOException; {:try_start_209 .. :try_end_20c} :catch_20d

    goto :goto_212

    :catch_20d
    :try_start_20d
    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/ads/zzanm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_212
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzanr;->zza([B)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaod;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_20d .. :try_end_218} :catch_29d

    goto :goto_22f

    :catchall_219
    move-exception v0

    const/4 v13, 0x0

    :goto_21b
    :try_start_21b
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_21e} :catch_21f

    goto :goto_224

    :catch_21f
    :try_start_21f
    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/ads/zzanm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_224
    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzanr;->zza([B)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzaod;->close()V

    throw v0

    :cond_22b
    move-object/from16 v14, p0

    new-array v7, v9, [B
    :try_end_22f
    .catch Ljava/io/IOException; {:try_start_21f .. :try_end_22f} :catch_29d

    :goto_22f
    :try_start_22f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sget-boolean v8, Lcom/google/android/gms/internal/ads/zzanm;->zzb:Z

    if-nez v8, :cond_242

    const-wide/16 v16, 0xbb8

    cmp-long v8, v10, v16

    if-lez v8, :cond_23f

    goto :goto_242

    :cond_23f
    :goto_23f
    const/16 v8, 0xc8

    goto :goto_277

    :cond_242
    :goto_242
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v1, v13, v9

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v13, v11

    if-eqz v7, :cond_258

    array-length v10, v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_25a

    :cond_258
    const-string v10, "null"

    :goto_25a
    const/4 v11, 0x2

    aput-object v10, v13, v11

    const/4 v10, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v10

    const/4 v10, 0x4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzy()Lcom/google/android/gms/internal/ads/zzamo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzamo;->zza()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v13, v10

    invoke-static {v8, v13}, Lcom/google/android/gms/internal/ads/zzanm;->zza(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23f

    :goto_277
    if-lt v0, v8, :cond_293

    const/16 v8, 0x12b

    if-gt v0, v8, :cond_293

    new-instance v8, Lcom/google/android/gms/internal/ads/zzamw;

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v20, v10, v4

    move-object/from16 v16, v8

    move/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v22, v6

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(I[BZJLjava/util/List;)V

    return-object v8

    :cond_293
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_299
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_299} :catch_299

    :catch_299
    move-exception v0

    move-object/from16 v18, v7

    goto :goto_2c1

    :catch_29d
    move-exception v0

    goto :goto_2bf

    :catch_29f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2bf

    :cond_2a3
    move-object/from16 v14, p0

    :try_start_2a5
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Could not retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2ad
    .catchall {:try_start_2a5 .. :try_end_2ad} :catchall_2ad

    :catchall_2ad
    move-exception v0

    goto :goto_2b2

    :catchall_2af
    move-exception v0

    move-object/from16 v14, p0

    :goto_2b2
    const/4 v7, 0x0

    :goto_2b3
    if-nez v7, :cond_2b8

    :try_start_2b5
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2b8
    throw v0
    :try_end_2b9
    .catch Ljava/io/IOException; {:try_start_2b5 .. :try_end_2b9} :catch_2b9

    :catch_2b9
    move-exception v0

    goto :goto_2be

    :catch_2bb
    move-exception v0

    move-object/from16 v14, p0

    :goto_2be
    const/4 v12, 0x0

    :goto_2bf
    const/16 v18, 0x0

    :goto_2c1
    instance-of v6, v0, Ljava/net/SocketTimeoutException;

    if-eqz v6, :cond_2d5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoc;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzani;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzani;-><init>()V

    const-string v7, "socket"

    const/4 v8, 0x0

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanj;Lcom/google/android/gms/internal/ads/zzaob;)V

    :goto_2d2
    move-object v6, v0

    goto/16 :goto_344

    :cond_2d5
    instance-of v6, v0, Ljava/net/MalformedURLException;

    if-nez v6, :cond_38f

    if-eqz v12, :cond_389

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzany;->zzb()I

    move-result v0

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v9

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzk()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v7, v8

    const-string v6, "Unexpected response code %d for %s"

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzanm;->zzb(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v18, :cond_336

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzany;->zzd()Ljava/util/List;

    move-result-object v22

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamw;

    const/16 v19, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v20, v7, v4

    move-object/from16 v16, v6

    move/from16 v17, v0

    invoke-direct/range {v16 .. v22}, Lcom/google/android/gms/internal/ads/zzamw;-><init>(I[BZJLjava/util/List;)V

    const/16 v7, 0x191

    if-eq v0, v7, :cond_328

    const/16 v7, 0x193

    if-ne v0, v7, :cond_314

    goto :goto_328

    :cond_314
    const/16 v1, 0x190

    if-lt v0, v1, :cond_322

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_322

    new-instance v0, Lcom/google/android/gms/internal/ads/zzamn;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzamn;-><init>(Lcom/google/android/gms/internal/ads/zzamw;)V

    throw v0

    :cond_322
    new-instance v0, Lcom/google/android/gms/internal/ads/zzanh;

    invoke-direct {v0, v6}, Lcom/google/android/gms/internal/ads/zzanh;-><init>(Lcom/google/android/gms/internal/ads/zzamw;)V

    throw v0

    :cond_328
    :goto_328
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzami;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzami;-><init>(Lcom/google/android/gms/internal/ads/zzamw;)V

    const-string v6, "auth"

    const/4 v8, 0x0

    invoke-direct {v0, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanj;Lcom/google/android/gms/internal/ads/zzaob;)V

    goto :goto_2d2

    :cond_336
    const/4 v8, 0x0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaoc;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzamv;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzamv;-><init>()V

    const-string v7, "network"

    invoke-direct {v0, v7, v6, v8}, Lcom/google/android/gms/internal/ads/zzaoc;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzanj;Lcom/google/android/gms/internal/ads/zzaob;)V

    goto :goto_2d2

    :goto_344
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzy()Lcom/google/android/gms/internal/ads/zzamo;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzb()I

    move-result v7

    :try_start_34c
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaoc;->zza(Lcom/google/android/gms/internal/ads/zzaoc;)Lcom/google/android/gms/internal/ads/zzanj;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzamo;->zzc(Lcom/google/android/gms/internal/ads/zzanj;)V
    :try_end_353
    .catch Lcom/google/android/gms/internal/ads/zzanj; {:try_start_34c .. :try_end_353} :catch_36e

    const/4 v8, 0x2

    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaoc;->zzb(Lcom/google/android/gms/internal/ads/zzaoc;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v0, v7

    const-string v6, "%s-retry [timeout=%s]"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    goto/16 :goto_a

    :catch_36e
    move-exception v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzaoc;->zzb(Lcom/google/android/gms/internal/ads/zzaoc;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzana;->zzm(Ljava/lang/String;)V

    throw v0

    :cond_389
    new-instance v1, Lcom/google/android/gms/internal/ads/zzamx;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzamx;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_38f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzana;->zzk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Bad URL "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
