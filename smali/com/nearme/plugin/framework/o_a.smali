###### Class com.nearme.plugin.framework.o_a (com.nearme.plugin.framework.o_a)
.class public final Lcom/nearme/plugin/framework/o_a;
.super Ljava/lang/Object;
.source "PluginLoader.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x1

.field public static c:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "nearme"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 6

    invoke-static {p0, p1, p3}, Lcom/nearme/plugin/framework/PathUtils;->getPluginUpdatePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_28

    :try_start_f
    invoke-static {p0, p1, p2}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0}, Lcom/nearme/plugin/framework/o_a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_22

    invoke-static {p0, p1, p3}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, v0, p1, p3}, Lcom/nearme/plugin/framework/o_a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_21} :catch_24

    return p0

    :cond_22
    const/4 p0, 0x1

    return p0

    :catch_24
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 10

    const-class v0, Lcom/nearme/plugin/framework/o_a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-static {p1}, Lcom/nearme/plugin/framework/o_a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {p0, p2, p4}, Lcom/nearme/plugin/framework/PathUtils;->getPluginTempPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/nearme/plugin/framework/FileUtil;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {p0, p2, p3}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x80000000

    if-eq v4, p3, :cond_2b

    invoke-static {p0, v3, p1}, Lcom/nearme/plugin/framework/o_a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_33

    :cond_2b
    invoke-static {p0, p2, p4}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p1, p2, p4}, Lcom/nearme/plugin/framework/o_a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v2
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_33} :catch_40
    .catchall {:try_start_4 .. :try_end_33} :catchall_3e

    :cond_33
    if-eqz v1, :cond_4d

    :try_start_35
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_5a

    goto :goto_4d

    :catch_39
    move-exception p0

    :goto_3a
    :try_start_3a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_5a

    goto :goto_4d

    :catchall_3e
    move-exception p0

    goto :goto_4f

    :catch_40
    move-exception p0

    :try_start_41
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_3e

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    :try_start_47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5a

    goto :goto_4d

    :catch_4b
    move-exception p0

    goto :goto_3a

    :cond_4d
    :goto_4d
    monitor-exit v0

    return v2

    :goto_4f
    if-eqz v1, :cond_59

    :try_start_51
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_5a

    goto :goto_59

    :catch_55
    move-exception p1

    :try_start_56
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_59
    :goto_59
    throw p0
    :try_end_5a
    .catchall {:try_start_56 .. :try_end_5a} :catchall_5a

    :catchall_5a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const-class v0, Lcom/nearme/plugin/framework/o_a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/io/File;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_28

    invoke-static {p2, p1}, Lcom/nearme/plugin/framework/FileUtil;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :cond_28
    :goto_28
    if-eqz v2, :cond_6b

    invoke-static {p3, p4}, Lcom/nearme/plugin/framework/PathUtils;->updateVersionCache(Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->c(Ljava/lang/String;I)Z

    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object p2

    invoke-virtual {p2, p3, p4}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->d(Ljava/lang/String;I)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_6f
    .catchall {:try_start_4 .. :try_end_3b} :catchall_6d

    :try_start_3b
    invoke-static {p0}, Lcom/nearme/plugin/framework/PathUtils;->getLibPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nearme/plugin/framework/o_a;->e(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0}, Lcom/nearme/plugin/framework/PathUtils;->getOptimizedDexPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6b

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    :goto_58
    if-ge p2, p1, :cond_6b

    aget-object p3, p0, p2

    invoke-static {p3}, Lcom/nearme/plugin/framework/FileUtil;->safelyDeleteFile(Ljava/io/File;)V
    :try_end_5f
    .catch Ljava/lang/NullPointerException; {:try_start_3b .. :try_end_5f} :catch_67
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_5f} :catch_62
    .catchall {:try_start_3b .. :try_end_5f} :catchall_6d

    add-int/lit8 p2, p2, 0x1

    goto :goto_58

    :catch_62
    move-exception p0

    :try_start_63
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6b

    :catch_67
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6b} :catch_6f
    .catchall {:try_start_63 .. :try_end_6b} :catchall_6d

    :cond_6b
    :goto_6b
    move v1, v2

    goto :goto_73

    :catchall_6d
    move-exception p0

    goto :goto_75

    :catch_6f
    move-exception p0

    :try_start_70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_6d

    :goto_73
    monitor-exit v0

    return v1

    :goto_75
    monitor-exit v0

    throw p0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1b
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_1e
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_b7
    .catchall {:try_start_1e .. :try_end_23} :catchall_b4

    :try_start_23
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_27} :catch_b1
    .catchall {:try_start_23 .. :try_end_27} :catchall_1eb

    move-object v7, v4

    :cond_28
    :goto_28
    :try_start_28
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_a5

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_28

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_54
    if-eqz v9, :cond_28

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_64

    move-object v7, v10

    goto :goto_28

    :cond_64
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v11, 0x7

    if-le v8, v11, :cond_79

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    if-nez v7, :cond_79

    move-object v7, v11

    goto :goto_54

    :cond_79
    const-string v8, "x86"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    if-nez v7, :cond_a0

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "armeabi"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9b

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "armeabi-v7a"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a0

    :cond_9b
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    goto :goto_54

    :cond_a0
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_a4} :catch_af
    .catchall {:try_start_28 .. :try_end_a4} :catchall_1eb

    goto :goto_54

    :cond_a5
    :try_start_a5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a9

    goto :goto_ad

    :catch_a9
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :goto_ad
    const/4 v5, 0x1

    goto :goto_c8

    :catch_af
    move-exception v6

    goto :goto_ba

    :catch_b1
    move-exception v6

    move-object v7, v4

    goto :goto_ba

    :catchall_b4
    move-exception p0

    goto/16 :goto_1ed

    :catch_b7
    move-exception v6

    move-object v5, v4

    move-object v7, v5

    :goto_ba
    :try_start_ba
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_1eb

    if-eqz v5, :cond_c7

    :try_start_bf
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_c7

    :catch_c3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_c7
    :goto_c7
    const/4 v5, 0x0

    :goto_c8
    if-eqz v5, :cond_1cc

    if-eqz v7, :cond_1cc

    :try_start_cc
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d1} :catch_1b2
    .catchall {:try_start_cc .. :try_end_d1} :catchall_1b0

    const/16 p0, 0x1000

    :try_start_d3
    new-array p0, p0, [B

    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v8

    :cond_d9
    :goto_d9
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_1a7

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d9

    new-instance v12, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_112

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    :cond_112
    new-instance v11, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_126
    if-eqz v12, :cond_139

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_134

    const/4 v10, 0x1

    goto :goto_13a

    :cond_134
    invoke-virtual {v12}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v12

    goto :goto_126

    :cond_139
    const/4 v10, 0x0

    :goto_13a
    if-eqz v10, :cond_d9

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_143} :catch_1ad
    .catchall {:try_start_d3 .. :try_end_143} :catchall_1aa

    :try_start_143
    invoke-virtual {v6, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9
    :try_end_147
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_147} :catch_171
    .catchall {:try_start_143 .. :try_end_147} :catchall_16e

    :try_start_147
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_14c
    .catch Ljava/io/IOException; {:try_start_147 .. :try_end_14c} :catch_16b
    .catchall {:try_start_147 .. :try_end_14c} :catchall_169

    :goto_14c
    :try_start_14c
    invoke-virtual {v9, p0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_156

    invoke-virtual {v10, p0, v3, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_155} :catch_167
    .catchall {:try_start_14c .. :try_end_155} :catchall_190

    goto :goto_14c

    :cond_156
    :try_start_156
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_159
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_159} :catch_15a
    .catchall {:try_start_156 .. :try_end_159} :catchall_1aa

    goto :goto_15e

    :catch_15a
    move-exception v10

    :try_start_15b
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_1ad
    .catchall {:try_start_15b .. :try_end_15e} :catchall_1aa

    :goto_15e
    :try_start_15e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_162
    .catchall {:try_start_15e .. :try_end_161} :catchall_1aa

    goto :goto_18c

    :catch_162
    move-exception v9

    :try_start_163
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_166} :catch_1ad
    .catchall {:try_start_163 .. :try_end_166} :catchall_1aa

    goto :goto_18c

    :catch_167
    move-exception v5

    goto :goto_174

    :catchall_169
    move-exception p0

    goto :goto_192

    :catch_16b
    move-exception v5

    move-object v10, v4

    goto :goto_174

    :catchall_16e
    move-exception p0

    move-object v9, v4

    goto :goto_192

    :catch_171
    move-exception v5

    move-object v9, v4

    move-object v10, v9

    :goto_174
    :try_start_174
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_177
    .catchall {:try_start_174 .. :try_end_177} :catchall_190

    if-eqz v10, :cond_181

    :try_start_179
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d
    .catchall {:try_start_179 .. :try_end_17c} :catchall_1aa

    goto :goto_181

    :catch_17d
    move-exception v5

    :try_start_17e
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_1ad
    .catchall {:try_start_17e .. :try_end_181} :catchall_1aa

    :cond_181
    :goto_181
    if-eqz v9, :cond_18b

    :try_start_183
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_187
    .catchall {:try_start_183 .. :try_end_186} :catchall_1aa

    goto :goto_18b

    :catch_187
    move-exception v5

    :try_start_188
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_1ad
    .catchall {:try_start_188 .. :try_end_18b} :catchall_1aa

    :cond_18b
    :goto_18b
    const/4 v5, 0x0

    :goto_18c
    if-eqz v5, :cond_1a7

    goto/16 :goto_d9

    :catchall_190
    move-exception p0

    move-object v4, v10

    :goto_192
    if-eqz v4, :cond_19c

    :try_start_194
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_197
    .catch Ljava/io/IOException; {:try_start_194 .. :try_end_197} :catch_198
    .catchall {:try_start_194 .. :try_end_197} :catchall_1aa

    goto :goto_19c

    :catch_198
    move-exception p1

    :try_start_199
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_1ad
    .catchall {:try_start_199 .. :try_end_19c} :catchall_1aa

    :cond_19c
    :goto_19c
    if-eqz v9, :cond_1a6

    :try_start_19e
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1a1
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a1} :catch_1a2
    .catchall {:try_start_19e .. :try_end_1a1} :catchall_1aa

    goto :goto_1a6

    :catch_1a2
    move-exception p1

    :try_start_1a3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a6
    :goto_1a6
    throw p0
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1a7} :catch_1ad
    .catchall {:try_start_1a3 .. :try_end_1a7} :catchall_1aa

    :cond_1a7
    move v3, v5

    move-object v4, v6

    goto :goto_1cd

    :catchall_1aa
    move-exception p0

    move-object v4, v6

    goto :goto_1c1

    :catch_1ad
    move-exception p0

    move-object v4, v6

    goto :goto_1b3

    :catchall_1b0
    move-exception p0

    goto :goto_1c1

    :catch_1b2
    move-exception p0

    :goto_1b3
    :try_start_1b3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b6
    .catchall {:try_start_1b3 .. :try_end_1b6} :catchall_1b0

    if-eqz v4, :cond_1d2

    :try_start_1b8
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1bb
    .catch Ljava/io/IOException; {:try_start_1b8 .. :try_end_1bb} :catch_1bc

    goto :goto_1d2

    :catch_1bc
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d2

    :goto_1c1
    if-eqz v4, :cond_1cb

    :try_start_1c3
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1c7

    goto :goto_1cb

    :catch_1c7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1cb
    :goto_1cb
    throw p0

    :cond_1cc
    move v3, v5

    :goto_1cd
    if-eqz v4, :cond_1d2

    :try_start_1cf
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1d2
    .catch Ljava/io/IOException; {:try_start_1cf .. :try_end_1d2} :catch_1bc

    :cond_1d2
    :goto_1d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "PluginLoader extractLibs time cost is : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLoader"

    invoke-static {p1, p0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :catchall_1eb
    move-exception p0

    move-object v4, v5

    :goto_1ed
    if-eqz v4, :cond_1f7

    :try_start_1ef
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1f2
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1f2} :catch_1f3

    goto :goto_1f7

    :catch_1f3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f7
    :goto_1f7
    throw p0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/nearme/plugin/framework/ApkFileParser;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p2}, Lcom/nearme/plugin/framework/ApkFileParser;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p2, -0x1

    if-eq p2, p1, :cond_11

    if-eq p2, p0, :cond_11

    if-gt p0, p1, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized o_a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 15

    const-class v0, Lcom/nearme/plugin/framework/o_a;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget v3, Lcom/nearme/plugin/framework/o_a;->a:I

    invoke-static {p1}, Lcom/nearme/plugin/framework/PathUtils;->createPluginPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_13b

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_28

    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {p2}, Lcom/nearme/plugin/framework/o_a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_23} :catch_28
    .catchall {:try_start_15 .. :try_end_23} :catchall_13b

    :try_start_23
    aput-object p2, v5, v6
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_25} :catch_26
    .catchall {:try_start_23 .. :try_end_25} :catchall_13b

    goto :goto_29

    :catch_26
    nop

    goto :goto_29

    :catch_28
    :cond_28
    move-object v5, v7

    :goto_29
    if-nez v5, :cond_3a

    :try_start_2b
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    const-string v8, "nearme"

    invoke-virtual {p2, v8}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_36
    .catchall {:try_start_2b .. :try_end_35} :catchall_13b

    goto :goto_3a

    :catch_36
    move-exception p2

    :try_start_37
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3a
    :goto_3a
    if-eqz v5, :cond_5c

    array-length p2, v5

    const/4 v8, 0x0

    :goto_3e
    if-ge v8, p2, :cond_5c

    aget-object v9, v5, v8

    invoke-virtual {v4, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_59

    invoke-virtual {v9, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const/4 p2, 0x2

    invoke-virtual {v9, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    move-object v11, v7

    move-object v7, p2

    move-object p2, v11

    goto :goto_5d

    :cond_59
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    :cond_5c
    move-object p2, v7

    :goto_5d
    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->a(Ljava/lang/String;)I

    move-result v4

    const/high16 v5, -0x80000000

    if-eqz v7, :cond_6e

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_72

    :cond_6e
    if-eq v5, v4, :cond_133

    const/high16 v6, -0x80000000

    :goto_72
    invoke-static {p0}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->getInstance(Landroid/content/Context;)Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/nearme/plugin/framework/PluginFrameworkVersionSpUtils;->b(Ljava/lang/String;)I

    move-result v7

    invoke-static {p0, p1, v7}, Lcom/nearme/plugin/framework/PathUtils;->getPluginUpdatePath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_91

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_91

    const/high16 v7, -0x80000000

    :cond_91
    if-gt v7, v4, :cond_ab

    if-gt v6, v4, :cond_ab

    const-string p0, "PluginLoader"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "installPlugin already installed curVersion = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/nearme/plugin/framework/o_a;->b:I

    goto :goto_109

    :cond_ab
    if-ge v6, v7, :cond_cd

    const-string p2, "PluginLoader"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "installPlugin from update curVersion = "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " updateVersion = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1, v4, v7}, Lcom/nearme/plugin/framework/o_a;->b(Landroid/content/Context;Ljava/lang/String;II)Z

    move-result p2

    goto :goto_f2

    :cond_cd
    const-string v7, "PluginLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "installPlugin from assert curVersion = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " assertVersion = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12b

    invoke-static {p0, p2, p1, v4, v6}, Lcom/nearme/plugin/framework/o_a;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p2

    :goto_f2
    if-eqz p2, :cond_109

    sget v3, Lcom/nearme/plugin/framework/o_a;->c:I
    :try_end_f6
    .catchall {:try_start_37 .. :try_end_f6} :catchall_13b

    if-eq v5, v4, :cond_109

    :try_start_f8
    new-instance p2, Ljava/io/File;

    invoke-static {p0, p1, v4}, Lcom/nearme/plugin/framework/PathUtils;->getPluginInstallPath(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_104} :catch_105
    .catchall {:try_start_f8 .. :try_end_104} :catchall_13b

    goto :goto_109

    :catch_105
    move-exception p0

    :try_start_106
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_109
    :goto_109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string p2, "PluginLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "installPlugin status = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " time cost is = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v1

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/nearme/plugin/framework/LogUtils;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_129
    .catchall {:try_start_106 .. :try_end_129} :catchall_13b

    monitor-exit v0

    return v3

    :cond_12b
    :try_start_12b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "\u8bf7\u68c0\u67e5 apk assets/nearme\u76ee\u5f55\u4e0b\u662f\u5426\u6b63\u786e\u653e\u7f6e\u4e86oppo_game_service_xxx.so\u5305\u3002"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_133
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "\u8bf7\u68c0\u67e5 apk assets/nearme\u76ee\u5f55\u4e0b\u662f\u5426\u6b63\u786e\u653e\u7f6e\u4e86oppo_game_service_xxx.so\u5305\u3002"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_13b
    .catchall {:try_start_12b .. :try_end_13b} :catchall_13b

    :catchall_13b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
