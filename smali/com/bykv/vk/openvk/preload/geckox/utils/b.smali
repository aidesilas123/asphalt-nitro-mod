###### Class com.bykv.vk.openvk.preload.geckox.utils.b (com.bykv.vk.openvk.preload.geckox.utils.b)
.class public final Lcom/bykv/vk/openvk/preload/geckox/utils/b;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# direct methods
.method public static a(Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/utils/d;->a()Z

    move-result v0

    const-string v1, "throwIfDebug:"

    const-string v2, "gecko-debug-tag"

    if-nez v0, :cond_e

    invoke-static {v2, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_e
    invoke-static {v2, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
