###### Class com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils (com.bykv.vk.openvk.preload.geckox.utils.CloseableUtils)
.class public Lcom/bykv/vk/openvk/preload/geckox/utils/CloseableUtils;
.super Ljava/lang/Object;
.source "CloseableUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/database/Cursor;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception p0

    const-string v0, "gecko-debug-tag"

    const-string v1, "close:"

    invoke-static {v0, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static close(Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception p0

    const-string v0, "gecko-debug-tag"

    const-string v1, "close:"

    invoke-static {v0, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static close(Ljava/io/Closeable;)Z
    .registers 3

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    return v0

    :catch_8
    move-exception p0

    const-string v0, "gecko-debug-tag"

    const-string v1, "close:"

    invoke-static {v0, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
