###### Class com.apm.insight.l.w (com.apm.insight.l.w)
.class public Lcom/apm/insight/l/w;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)J
    .registers 6

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_14

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v0

    return-wide v0

    :cond_14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_21

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3

    :catchall_21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 4

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "inner_free"

    invoke-static {}, Lcom/apm/insight/l/w;->b()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "inner_total"

    invoke-static {}, Lcom/apm/insight/l/w;->c()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sdcard_free"

    invoke-static {}, Lcom/apm/insight/l/w;->f()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "sdcard_total"

    invoke-static {}, Lcom/apm/insight/l/w;->g()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "inner_free_real"

    invoke-static {}, Lcom/apm/insight/l/w;->d()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "inner_total_real"

    invoke-static {}, Lcom/apm/insight/l/w;->e()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_3b

    :catchall_3b
    return-object p0
.end method

.method public static a()Z
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static b()J
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/w;->b(Ljava/io/File;)J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-wide v0

    :catchall_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static b(Ljava/io/File;)J
    .registers 6

    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p0, v1, :cond_14

    invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBytes()J

    move-result-wide v0

    return-wide v0

    :cond_14
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p0
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_21

    int-to-long v3, p0

    mul-long v3, v3, v1

    return-wide v3

    :catchall_21
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static c()J
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/w;->a(Ljava/io/File;)J

    move-result-wide v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return-wide v0

    :catchall_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static d()J
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/apm/insight/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/w;->b(Ljava/io/File;)J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-wide v0

    :catchall_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static e()J
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/apm/insight/i;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/apm/insight/l/w;->a(Ljava/io/File;)J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-wide v0

    :catchall_d
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static f()J
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/apm/insight/l/w;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static g()J
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/apm/insight/l/w;->a()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-wide v0

    :catchall_f
    :cond_f
    const-wide/16 v0, 0x0

    return-wide v0
.end method
