###### Class com.mbridge.msdk.foundation.tools.ad (com.mbridge.msdk.foundation.tools.ad)
.class public final Lcom/mbridge/msdk/foundation/tools/ad;
.super Ljava/lang/Object;
.source "SameSDCardTool.java"


# static fields
.field static a:Z = false

.field static b:Ljava/lang/String; = ""

.field public static c:[C = null

.field private static d:Z = false

.field private static e:I = -0x1

.field private static f:I = -0x1

.field private static g:I = -0x1

.field private static h:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xe

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/ad;->c:[C

    return-void

    :array_a
    .array-data 2
        0x50s
        0x61s
        0x63s
        0x6bs
        0x61s
        0x67s
        0x65s
        0x4ds
        0x61s
        0x6es
        0x61s
        0x67s
        0x65s
        0x72s
    .end array-data
.end method

.method public static a()I
    .registers 9

    const-string v0, "freeExternalSize"

    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->g()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v6, 0x1b7740

    cmp-long v8, v2, v6

    if-gtz v8, :cond_2c

    sget v2, Lcom/mbridge/msdk/foundation/tools/ad;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_50

    :cond_2c
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ad;->d()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    sput v2, Lcom/mbridge/msdk/foundation/tools/ad;->f:I

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/mbridge/msdk/foundation/tools/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_45
    .catchall {:try_start_2 .. :try_end_45} :catchall_46

    goto :goto_50

    :catchall_46
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameSDCardTool"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_50
    :goto_50
    sget v0, Lcom/mbridge/msdk/foundation/tools/ad;->f:I

    return v0
.end method

.method private static a(Ljava/io/File;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p0

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/mbridge/msdk/foundation/tools/ad;->d:Z

    if-nez v0, :cond_47

    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/ad;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mbridge/msdk/foundation/tools/ad;->a:Z

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/ad;->b(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    goto :goto_44

    :catch_26
    :try_start_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mbridge/msdk/foundation/tools/ad;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/ad;->b(Landroid/content/Context;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_44} :catch_44

    :catch_44
    :goto_44
    const/4 p0, 0x1

    sput-boolean p0, Lcom/mbridge/msdk/foundation/tools/ad;->d:Z

    :cond_47
    return-void
.end method

.method public static b()I
    .registers 5

    sget v0, Lcom/mbridge/msdk/foundation/tools/ad;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_23

    :try_start_5
    new-instance v0, Ljava/lang/Long;

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ad;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    div-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    sput v0, Lcom/mbridge/msdk/foundation/tools/ad;->e:I
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_19

    goto :goto_23

    :catchall_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SameSDCardTool"

    invoke-static {v2, v1, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    :goto_23
    sget v0, Lcom/mbridge/msdk/foundation/tools/ad;->e:I

    return v0
.end method

.method private static b(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/ad;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/mbridge/msdk/foundation/same/b/d;

    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/same/b/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/b/e;->a(Lcom/mbridge/msdk/foundation/same/b/b;)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/b/e;->a()Lcom/mbridge/msdk/foundation/same/b/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/b/e;->b()Z

    return-void
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_1a

    :try_start_7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/ad;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_12

    goto :goto_1b

    :catchall_12
    move-exception v0

    const-string v2, "common-exception"

    const-string v3, "hasSDCard is failed"

    invoke-static {v2, v3, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1a
    move-object v0, v1

    :goto_1b
    sget-boolean v2, Lcom/mbridge/msdk/foundation/tools/ad;->a:Z

    if-eqz v2, :cond_6b

    if-nez v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Android"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "data"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/ad;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    :cond_5a
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ad;->d()J

    move-result-wide v2

    const-wide/32 v4, 0x1e00000

    cmp-long v6, v2, v4

    if-lez v6, :cond_67

    const/4 v2, 0x1

    goto :goto_68

    :cond_67
    const/4 v2, 0x0

    :goto_68
    if-nez v2, :cond_6b

    goto :goto_6c

    :cond_6b
    move-object v1, v0

    :goto_6c
    if-eqz v1, :cond_74

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7c

    :cond_74
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    :cond_7c
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c()Z
    .registers 2

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_e

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    return v0

    :catch_e
    const-string v0, ""

    const-string v1, "hasSDCard is failed"

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private static d()J
    .registers 6

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ad;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_26

    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_22

    int-to-long v0, v0

    mul-long v0, v0, v4

    return-wide v0

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return-wide v1
.end method

.method private static e()J
    .registers 6

    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/ad;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_26

    :try_start_8
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_22

    int-to-long v0, v0

    mul-long v0, v0, v4

    return-wide v0

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_26
    return-wide v1
.end method
