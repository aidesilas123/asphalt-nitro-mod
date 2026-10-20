###### Class com.bykv.vk.openvk.preload.geckox.i.a (com.bykv.vk.openvk.preload.geckox.i.a)
.class public final Lcom/bykv/vk/openvk/preload/geckox/i/a;
.super Ljava/lang/Object;
.source "GeckoPipeline.java"


# direct methods
.method public static a(Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .registers 2

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/i/a$7;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/geckox/i/a$7;-><init>(Lcom/bykv/vk/openvk/preload/geckox/b;)V

    return-object v0
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/geckox/e/a;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .registers 2

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/i/a$3;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/preload/geckox/i/a$3;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;)V

    return-object v0
.end method

.method public static a(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .registers 3

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/i/a$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/i/a$4;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    return-object v0
.end method

.method public static b(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)Lcom/bykv/vk/openvk/preload/b/b/a;
    .registers 3

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/i/a$5;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/i/a$5;-><init>(Lcom/bykv/vk/openvk/preload/geckox/e/a;Lcom/bykv/vk/openvk/preload/geckox/b;)V

    return-object v0
.end method
