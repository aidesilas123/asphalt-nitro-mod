###### Class com.bytedance.sdk.openadsdk.utils.x (com.bytedance.sdk.openadsdk.utils.x)
.class public Lcom/bytedance/sdk/openadsdk/utils/x;
.super Ljava/lang/Object;
.source "TTCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->b()V

    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/utils/x;
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/x;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/x;-><init>()V

    return-object v0
.end method

.method private a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 21

    move-object/from16 v1, p0

    const-string v0, ", "

    const-string v2, "0"

    const-string v3, "TTCrashHandler"

    const/4 v4, 0x0

    :try_start_9
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->b()V

    :cond_14
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    return-void

    :cond_1d
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Ljava/lang/String;

    const-string v7, "tt_crash_count.properties"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_105

    const-string v7, "tt_crash_info"

    const-string v8, "crash_last_time"

    const-string v9, "crash_count"

    const/4 v10, 0x1

    if-eqz v6, :cond_d2

    :try_start_33
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_d2

    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_49
    .catchall {:try_start_33 .. :try_end_49} :catchall_105

    :try_start_49
    invoke-virtual {v6, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v6, v9, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v8, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    sub-long/2addr v15, v13

    const-wide/32 v13, 0x493e0

    const/4 v2, 0x0

    cmp-long v17, v15, v13

    if-gez v17, :cond_74

    add-int/2addr v12, v10

    const/4 v13, 0x0

    goto :goto_76

    :cond_74
    const/4 v12, 0x1

    const/4 v13, 0x1

    :goto_76
    const/4 v14, 0x3

    if-lt v12, v14, :cond_7a

    goto :goto_7b

    :cond_7a
    const/4 v10, 0x0

    :goto_7b
    if-eqz v10, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, v12

    :goto_7f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "=="

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_49 .. :try_end_9f} :catchall_ce

    if-eqz v10, :cond_a7

    :try_start_a1
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_a5

    goto :goto_c4

    :catchall_a5
    nop

    goto :goto_c4

    :cond_a7
    :try_start_a7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz v13, :cond_bb

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v8, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_bb
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c0
    .catchall {:try_start_a7 .. :try_end_c0} :catchall_ce

    :try_start_c0
    invoke-virtual {v6, v2, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_cc

    move-object v4, v2

    :goto_c4
    if-eqz v10, :cond_c9

    :try_start_c6
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/utils/x;->c()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_ce

    :cond_c9
    move-object v2, v4

    move-object v4, v11

    goto :goto_f6

    :catchall_cc
    move-exception v0

    goto :goto_d0

    :catchall_ce
    move-exception v0

    move-object v2, v4

    :goto_d0
    move-object v4, v11

    goto :goto_107

    :cond_d2
    :try_start_d2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ee
    .catchall {:try_start_d2 .. :try_end_ee} :catchall_105

    :try_start_ee
    invoke-virtual {v0, v2, v7}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "==first"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/l;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f6
    .catchall {:try_start_ee .. :try_end_f6} :catchall_103

    :goto_f6
    if-eqz v4, :cond_fd

    :try_start_f8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_fc

    goto :goto_fd

    :catchall_fc
    nop

    :cond_fd
    :goto_fd
    if-eqz v2, :cond_116

    :goto_ff
    :try_start_ff
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_102
    .catchall {:try_start_ff .. :try_end_102} :catchall_116

    goto :goto_116

    :catchall_103
    move-exception v0

    goto :goto_107

    :catchall_105
    move-exception v0

    move-object v2, v4

    :goto_107
    :try_start_107
    const-string v5, "crash count error"

    invoke-static {v3, v5, v0}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_10c
    .catchall {:try_start_107 .. :try_end_10c} :catchall_117

    if-eqz v4, :cond_113

    :try_start_10e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_111
    .catchall {:try_start_10e .. :try_end_111} :catchall_112

    goto :goto_113

    :catchall_112
    nop

    :cond_113
    :goto_113
    if-eqz v2, :cond_116

    goto :goto_ff

    :catchall_116
    :cond_116
    :goto_116
    return-void

    :catchall_117
    move-exception v0

    if-eqz v4, :cond_11f

    :try_start_11a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_11e

    goto :goto_11f

    :catchall_11e
    nop

    :cond_11f
    :goto_11f
    if-eqz v2, :cond_124

    :try_start_121
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_124
    .catchall {:try_start_121 .. :try_end_124} :catchall_124

    :catchall_124
    :cond_124
    throw v0
.end method

.method private b()V
    .registers 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "TTCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/x;->b:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1b

    :catchall_1b
    return-void
.end method

.method private c()V
    .registers 8

    const-string v0, "a"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_5
    const-string v4, "com.bytedance.sdk.openadsdk.TTC2Proxy"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Lcom/bytedance/sdk/component/utils/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_1e

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1e

    :catchall_1e
    :cond_1e
    :try_start_1e
    const-string v4, "com.bytedance.sdk.openadsdk.TTC3Proxy"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v2

    invoke-static {v4, v0, v5}, Lcom/bytedance/sdk/component/utils/w;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_37

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_37

    :catchall_37
    :cond_37
    :try_start_37
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/o;->aj()Lcom/bytedance/sdk/openadsdk/core/settings/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/e;->a()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3e

    :catchall_3e
    :try_start_3e
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/a/b/a;->b()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_41

    :catchall_41
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const-class v2, Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_23

    goto :goto_24

    :catchall_23
    :cond_23
    const/4 v1, 0x0

    :goto_24
    if-eqz v1, :cond_29

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/x;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_29
    invoke-static {v0}, Lcom/bytedance/sdk/component/g/f;->a(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/x;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_35

    if-eq v0, p0, :cond_35

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_35
    return-void
.end method
