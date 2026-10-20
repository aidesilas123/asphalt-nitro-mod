###### Class com.mbridge.msdk.foundation.download.utils.UnzipUtility (com.mbridge.msdk.foundation.download.utils.UnzipUtility)
.class public Lcom/mbridge/msdk/foundation/download/utils/UnzipUtility;
.super Ljava/lang/Object;
.source "UnzipUtility.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "UnzipUtility"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractFile(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    :cond_16
    const/4 p2, 0x0

    :try_start_17
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_21} :catch_3d
    .catchall {:try_start_17 .. :try_end_21} :catchall_3b

    const/16 p2, 0x1000

    :try_start_23
    new-array p2, p2, [B

    :goto_25
    invoke-virtual {p1, p2}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_31

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2, v0}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_30} :catch_38
    .catchall {:try_start_23 .. :try_end_30} :catchall_35

    goto :goto_25

    :cond_31
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    return-void

    :catchall_35
    move-exception p1

    move-object p2, v1

    goto :goto_44

    :catch_38
    move-exception p1

    move-object p2, v1

    goto :goto_3e

    :catchall_3b
    move-exception p1

    goto :goto_44

    :catch_3d
    move-exception p1

    :goto_3e
    :try_start_3e
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_44
    .catchall {:try_start_3e .. :try_end_44} :catchall_3b

    :goto_44
    if-eqz p2, :cond_49

    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_49
    throw p1
.end method


# virtual methods
.method public unzip(Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "../"

    const-string v1, ".."

    const-string v2, "UnzipUtility"

    const/4 v3, -0x1

    if-eqz p1, :cond_199

    if-nez p2, :cond_d

    goto/16 :goto_199

    :cond_d
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_24
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_31

    const/4 p1, 0x1

    return p1

    :cond_31
    const/4 p1, 0x0

    :try_start_32
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3b} :catch_154
    .catchall {:try_start_32 .. :try_end_3b} :catchall_151

    move-object v6, p1

    :goto_3c
    :try_start_3c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_12f

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_49} :catch_14f
    .catchall {:try_start_3c .. :try_end_49} :catchall_17b

    const/4 v9, 0x2

    if-nez v7, :cond_69

    if-eqz p1, :cond_5a

    :try_start_4e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    goto :goto_5a

    :catch_52
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    if-eqz v6, :cond_68

    :try_start_5c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_68

    :catch_60
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_68
    :goto_68
    return v9

    :cond_69
    :try_start_69
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_112

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_112

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_81

    goto/16 :goto_112

    :cond_81
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_95} :catch_14f
    .catchall {:try_start_69 .. :try_end_95} :catchall_17b

    :try_start_95
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_99} :catch_9a
    .catchall {:try_start_95 .. :try_end_99} :catchall_17b

    goto :goto_9c

    :catch_9a
    :try_start_9a
    const-string v10, ""

    :goto_9c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f5

    invoke-virtual {v10, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f5

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_f5

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b5

    goto :goto_f5

    :cond_b5
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_c0

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_3c

    :cond_c0
    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_d1

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_d1
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_d6} :catch_14f
    .catchall {:try_start_9a .. :try_end_d6} :catchall_17b

    :try_start_d6
    invoke-virtual {v5, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    const/16 v6, 0x400

    new-array v7, v6, [B

    :goto_de
    invoke-virtual {p1, v7, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    if-eq v10, v3, :cond_eb

    invoke-virtual {v9, v7, v8, v10}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_ea} :catch_f2
    .catchall {:try_start_d6 .. :try_end_ea} :catchall_ee

    goto :goto_de

    :cond_eb
    move-object v6, v9

    goto/16 :goto_3c

    :catchall_ee
    move-exception p2

    move-object v6, v9

    goto/16 :goto_17c

    :catch_f2
    move-exception p2

    move-object v6, v9

    goto :goto_156

    :cond_f5
    :goto_f5
    if-eqz p1, :cond_103

    :try_start_f7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_fa} :catch_fb

    goto :goto_103

    :catch_fb
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_103
    :goto_103
    if-eqz v6, :cond_111

    :try_start_105
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_111

    :catch_109
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_111
    :goto_111
    return v9

    :cond_112
    :goto_112
    if-eqz p1, :cond_120

    :try_start_114
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_117
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_117} :catch_118

    goto :goto_120

    :catch_118
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_120
    :goto_120
    if-eqz v6, :cond_12e

    :try_start_122
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_125
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_125} :catch_126

    goto :goto_12e

    :catch_126
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12e
    :goto_12e
    return v9

    :cond_12f
    :try_start_12f
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_14f
    .catchall {:try_start_12f .. :try_end_132} :catchall_17b

    if-eqz p1, :cond_140

    :try_start_134
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_134 .. :try_end_137} :catch_138

    goto :goto_140

    :catch_138
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_140
    :goto_140
    if-eqz v6, :cond_14e

    :try_start_142
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_145
    .catch Ljava/io/IOException; {:try_start_142 .. :try_end_145} :catch_146

    goto :goto_14e

    :catch_146
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14e
    :goto_14e
    return v8

    :catch_14f
    move-exception p2

    goto :goto_156

    :catchall_151
    move-exception p2

    move-object v6, p1

    goto :goto_17c

    :catch_154
    move-exception p2

    move-object v6, p1

    :goto_156
    :try_start_156
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15d
    .catchall {:try_start_156 .. :try_end_15d} :catchall_17b

    const/4 p2, 0x3

    if-eqz p1, :cond_16c

    :try_start_160
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_163
    .catch Ljava/io/IOException; {:try_start_160 .. :try_end_163} :catch_164

    goto :goto_16c

    :catch_164
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16c
    :goto_16c
    if-eqz v6, :cond_17a

    :try_start_16e
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_171
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_171} :catch_172

    goto :goto_17a

    :catch_172
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17a
    :goto_17a
    return p2

    :catchall_17b
    move-exception p2

    :goto_17c
    if-eqz p1, :cond_18a

    :try_start_17e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_182

    goto :goto_18a

    :catch_182
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18a
    :goto_18a
    if-eqz v6, :cond_198

    :try_start_18c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_18f} :catch_190

    goto :goto_198

    :catch_190
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_198
    :goto_198
    throw p2

    :cond_199
    :goto_199
    return v3
.end method
