###### Class com.mbridge.msdk.foundation.tools.y (com.mbridge.msdk.foundation.tools.y)
.class public final Lcom/mbridge/msdk/foundation/tools/y;
.super Lcom/mbridge/msdk/foundation/tools/h;
.source "SameFileTool.java"


# direct methods
.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_e} :catch_3b
    .catchall {:try_start_4 .. :try_end_e} :catchall_39

    :try_start_e
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_36
    .catchall {:try_start_e .. :try_end_13} :catchall_4c

    :goto_13
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_2d} :catch_34
    .catchall {:try_start_13 .. :try_end_2d} :catchall_4c

    goto :goto_13

    :cond_2e
    :goto_2e
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_44

    :catch_32
    nop

    goto :goto_44

    :catch_34
    move-exception v2

    goto :goto_3e

    :catch_36
    move-exception v2

    move-object p0, v0

    goto :goto_3e

    :catchall_39
    move-exception p0

    goto :goto_4e

    :catch_3b
    move-exception v2

    move-object p0, v0

    move-object v1, p0

    :goto_3e
    :try_start_3e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4c

    if-eqz v1, :cond_44

    goto :goto_2e

    :cond_44
    :goto_44
    if-eqz p0, :cond_4b

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4b
    return-object v0

    :catchall_4c
    move-exception p0

    move-object v0, v1

    :goto_4e
    if-eqz v0, :cond_53

    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_53

    :catch_53
    :cond_53
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const-string v0, "../"

    const-string v1, ".."

    if-eqz p0, :cond_16e

    if-nez p1, :cond_a

    goto/16 :goto_16e

    :cond_a
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_21
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_2f

    const-string p0, "unzip file not exists"

    return-object p0

    :cond_2f
    const/4 p0, 0x0

    :try_start_30
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_136
    .catchall {:try_start_30 .. :try_end_39} :catchall_133

    move-object v4, p0

    :goto_3a
    :try_start_3a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_131
    .catchall {:try_start_3a .. :try_end_3e} :catchall_158

    const-string v6, ""

    if-eqz v5, :cond_119

    :try_start_42
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    if-nez v5, :cond_61

    const-string p1, "unzip zipEntry is null"
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_131
    .catchall {:try_start_42 .. :try_end_4c} :catchall_158

    if-eqz p0, :cond_56

    :try_start_4e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_56

    :catch_52
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_56
    :goto_56
    if-eqz v4, :cond_60

    :try_start_58
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    goto :goto_60

    :catch_5c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_60
    :goto_60
    return-object p1

    :cond_61
    :try_start_61
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_102

    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_102

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_79

    goto/16 :goto_102

    :cond_79
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_8d} :catch_131
    .catchall {:try_start_61 .. :try_end_8d} :catchall_158

    :try_start_8d
    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_91} :catch_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_158

    :catch_91
    :try_start_91
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_eb

    invoke-virtual {v6, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_eb

    invoke-virtual {v6, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_eb

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_aa

    goto :goto_eb

    :cond_aa
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto :goto_3a

    :cond_b4
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c5

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_c5
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_ca} :catch_131
    .catchall {:try_start_91 .. :try_end_ca} :catchall_158

    :try_start_ca
    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    const/16 v4, 0x400

    new-array v5, v4, [B

    :goto_d2
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_e1

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_e0} :catch_e8
    .catchall {:try_start_ca .. :try_end_e0} :catchall_e4

    goto :goto_d2

    :cond_e1
    move-object v4, v6

    goto/16 :goto_3a

    :catchall_e4
    move-exception p1

    move-object v4, v6

    goto/16 :goto_159

    :catch_e8
    move-exception p1

    move-object v4, v6

    goto :goto_138

    :cond_eb
    :goto_eb
    :try_start_eb
    const-string p1, "unzip zipEntry canonicalPath is not available"
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ed} :catch_131
    .catchall {:try_start_eb .. :try_end_ed} :catchall_158

    if-eqz p0, :cond_f7

    :try_start_ef
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_f7

    :catch_f3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_f7
    :goto_f7
    if-eqz v4, :cond_101

    :try_start_f9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd

    goto :goto_101

    :catch_fd
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_101
    :goto_101
    return-object p1

    :cond_102
    :goto_102
    :try_start_102
    const-string p1, "unzip zipEntry name is not available"
    :try_end_104
    .catch Ljava/io/IOException; {:try_start_102 .. :try_end_104} :catch_131
    .catchall {:try_start_102 .. :try_end_104} :catchall_158

    if-eqz p0, :cond_10e

    :try_start_106
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_106 .. :try_end_109} :catch_10a

    goto :goto_10e

    :catch_10a
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10e
    :goto_10e
    if-eqz v4, :cond_118

    :try_start_110
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_110 .. :try_end_113} :catch_114

    goto :goto_118

    :catch_114
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_118
    :goto_118
    return-object p1

    :cond_119
    :try_start_119
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_131
    .catchall {:try_start_119 .. :try_end_11c} :catchall_158

    if-eqz p0, :cond_126

    :try_start_11e
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_122

    goto :goto_126

    :catch_122
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_126
    :goto_126
    if-eqz v4, :cond_130

    :try_start_128
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12c

    goto :goto_130

    :catch_12c
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_130
    :goto_130
    return-object v6

    :catch_131
    move-exception p1

    goto :goto_138

    :catchall_133
    move-exception p1

    move-object v4, p0

    goto :goto_159

    :catch_136
    move-exception p1

    move-object v4, p0

    :goto_138
    :try_start_138
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_13f

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_13f
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_143
    .catchall {:try_start_138 .. :try_end_143} :catchall_158

    if-eqz p0, :cond_14d

    :try_start_145
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_148
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_148} :catch_149

    goto :goto_14d

    :catch_149
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_14d
    :goto_14d
    if-eqz v4, :cond_157

    :try_start_14f
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_152
    .catch Ljava/io/IOException; {:try_start_14f .. :try_end_152} :catch_153

    goto :goto_157

    :catch_153
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_157
    :goto_157
    return-object p1

    :catchall_158
    move-exception p1

    :goto_159
    if-eqz p0, :cond_163

    :try_start_15b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_163

    :catch_15f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_163
    :goto_163
    if-eqz v4, :cond_16d

    :try_start_165
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_168
    .catch Ljava/io/IOException; {:try_start_165 .. :try_end_168} :catch_169

    goto :goto_16d

    :catch_169
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_16d
    :goto_16d
    throw p1

    :cond_16e
    :goto_16e
    const-string p0, "unzip srcFile or destDir is null "

    return-object p0
.end method

.method public static a()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/y$1;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/tools/y$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(J)V
    .registers 7

    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/foundation/same/b/c;->j:Lcom/mbridge/msdk/foundation/same/b/c;

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/same/b/e;->b(Lcom/mbridge/msdk/foundation/same/b/c;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/y;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-gez v4, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_36
    .catchall {:try_start_0 .. :try_end_36} :catchall_37

    goto :goto_13

    :catchall_37
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SameFileTool"

    invoke-static {v0, p1, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_41
    return-void
.end method

.method static synthetic a(Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y;->d(Ljava/io/File;)J

    move-result-wide v0

    const/high16 v2, 0x100000

    mul-int p1, p1, v2

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_22

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/y;->e(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_1e
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    goto :goto_22

    :catchall_16
    const-string p0, "SameFileTool"

    const-string p1, "clean memory failed"

    invoke-static {p0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22

    :catch_1e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/same/c/f;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method public static a([BLjava/io/File;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_14
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_2e
    .catchall {:try_start_1 .. :try_end_19} :catchall_2c

    :try_start_19
    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_29
    .catchall {:try_start_19 .. :try_end_1c} :catchall_26

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_24
    const/4 p0, 0x1

    return p0

    :catchall_26
    move-exception p0

    move-object v0, v1

    goto :goto_3e

    :catch_29
    move-exception p0

    move-object v0, v1

    goto :goto_2f

    :catchall_2c
    move-exception p0

    goto :goto_3e

    :catch_2e
    move-exception p0

    :goto_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_2c

    const/4 p0, 0x0

    if-eqz v0, :cond_3d

    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3d
    :goto_3d
    return p0

    :goto_3e
    if-eqz v0, :cond_48

    :try_start_40
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_48
    :goto_48
    throw p0
.end method

.method public static b(Ljava/io/File;)Ljava/lang/String;
    .registers 6

    const-string v0, ""

    :try_start_2
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object v0

    :cond_c
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2c

    array-length v2, v1

    if-nez v2, :cond_1c

    goto :goto_2c

    :cond_1c
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/mbridge/msdk/foundation/tools/y;->b(Ljava/io/File;)Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_28
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_35

    :cond_2c
    :goto_2c
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_30

    return-object v0

    :catch_30
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_35
    :goto_35
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SameFileTool"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto/16 :goto_a7

    :cond_15
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "template_config.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_a4

    :cond_3d
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/y;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_45} :catch_a8

    if-eqz v3, :cond_48

    return-object v1

    :cond_48
    :try_start_48
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4e
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_b0

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_5b

    goto :goto_98

    :cond_5b
    const-string v5, "xml_type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "name"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "ext_template"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    const-string v5, "folder_dir"

    invoke-virtual {v4, v5, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_98
    .catch Lorg/json/JSONException; {:try_start_48 .. :try_end_98} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_98} :catch_a8

    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :catch_9b
    move-exception p0

    :try_start_9c
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_a4
    :goto_a4
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_9c .. :try_end_a7} :catch_a8

    :cond_a7
    :goto_a7
    return-object v1

    :catch_a8
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b0
    return-object v1
.end method

.method public static b()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/foundation/tools/y$2;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/tools/y$2;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->a()Lcom/mbridge/msdk/foundation/controller/c;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/f/b;->a()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)[Ljava/io/File;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_11

    move-object v0, p0

    :catch_11
    :cond_11
    return-object v0
.end method

.method private static c(Ljava/io/File;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_32
    .catchall {:try_start_3 .. :try_end_e} :catchall_30

    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result p0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_18
    .catchall {:try_start_e .. :try_end_12} :catchall_15

    int-to-long v0, p0

    move-object v2, v3

    goto :goto_25

    :catchall_15
    move-exception p0

    move-object v2, v3

    goto :goto_3c

    :catch_18
    move-exception p0

    move-object v2, v3

    goto :goto_33

    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    const-string p0, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    const-string v3, "\u6587\u4ef6\u4e0d\u5b58\u5728!"

    invoke-static {p0, v3}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_32
    .catchall {:try_start_1b .. :try_end_25} :catchall_30

    :goto_25
    if-eqz v2, :cond_3b

    :try_start_27
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_3b

    :catch_2b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b

    :catchall_30
    move-exception p0

    goto :goto_3c

    :catch_32
    move-exception p0

    :goto_33
    :try_start_33
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    if-eqz v2, :cond_3b

    :try_start_38
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_2b

    :cond_3b
    :goto_3b
    return-wide v0

    :goto_3c
    if-eqz v2, :cond_46

    :try_start_3e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    :goto_46
    throw p0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 12

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/b;->d()Lcom/mbridge/msdk/foundation/controller/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/controller/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/c/f;->b(Ljava/lang/String;)Lcom/mbridge/msdk/c/e;

    move-result-object v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/mbridge/msdk/c/f;->a()Lcom/mbridge/msdk/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mbridge/msdk/c/f;->b()Lcom/mbridge/msdk/c/e;

    move-result-object v0

    :cond_21
    invoke-virtual {v0}, Lcom/mbridge/msdk/c/e;->R()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sub-long/2addr v1, v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_82

    array-length v5, v0

    const/4 v6, 0x0

    :goto_4a
    if-ge v6, v5, :cond_82

    aget-object v7, v0, v6

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    add-long/2addr v8, v1

    cmp-long v10, v8, v3

    if-gez v10, :cond_7f

    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/y;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_82

    :try_start_5a
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".zip"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-static {v7}, Lcom/mbridge/msdk/foundation/tools/y;->b(Ljava/io/File;)Ljava/lang/String;
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_7f} :catch_7f

    :catch_7f
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_4a

    :catch_82
    :cond_82
    return-void
.end method

.method private static d(Ljava/io/File;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_25

    const/4 v2, 0x0

    :goto_9
    array-length v3, p0

    if-ge v2, v3, :cond_25

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1b

    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/y;->d(Ljava/io/File;)J

    move-result-wide v3

    goto :goto_21

    :cond_1b
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/y;->c(Ljava/io/File;)J

    move-result-wide v3

    :goto_21
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_25
    return-wide v0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/al;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_15

    :cond_13
    const-string p0, ""

    :goto_15
    return-object p0
.end method

.method private static e(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/mbridge/msdk/foundation/tools/y$3;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/tools/y$3;-><init>()V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_28

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_1e
    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/y;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_28
    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mbridge/msdk/foundation/tools/y;->e(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object p0

    new-instance v0, Lcom/mbridge/msdk/foundation/tools/y$4;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/tools/y$4;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_3b

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_34

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :catch_34
    const-string p0, "SameFileTool"

    const-string v0, "del memory failed"

    invoke-static {p0, v0}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method
