###### Class com.bykv.vk.openvk.preload.b.c (com.bykv.vk.openvk.preload.b.c)
.class public final Lcom/bykv/vk/openvk/preload/b/c;
.super Ljava/lang/Object;
.source "Factory.java"


# direct methods
.method public static a(Ljava/util/List;Lcom/bykv/vk/openvk/preload/b/e;Lcom/bykv/vk/openvk/preload/b/d;)Lcom/bykv/vk/openvk/preload/b/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/b/h;",
            ">;",
            "Lcom/bykv/vk/openvk/preload/b/e;",
            "Lcom/bykv/vk/openvk/preload/b/d;",
            ")",
            "Lcom/bykv/vk/openvk/preload/b/b<",
            "TIN;>;"
        }
    .end annotation

    if-eqz p0, :cond_19

    if-nez p1, :cond_9

    new-instance p1, Lcom/bykv/vk/openvk/preload/b/e$a;

    invoke-direct {p1}, Lcom/bykv/vk/openvk/preload/b/e$a;-><init>()V

    :cond_9
    new-instance v0, Lcom/bykv/vk/openvk/preload/b/i;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bykv/vk/openvk/preload/b/i;-><init>(Ljava/util/List;ILcom/bykv/vk/openvk/preload/b/e;Lcom/bykv/vk/openvk/preload/b/d;)V

    return-object v0

    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "interceptors == null !"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
