###### Class com.bykv.vk.openvk.preload.a.n (com.bykv.vk.openvk.preload.a.n)
.class public final Lcom/bykv/vk/openvk/preload/a/n;
.super Lcom/bykv/vk/openvk/preload/a/k;
.source "JsonObject.java"


# instance fields
.field public final a:Lcom/bykv/vk/openvk/preload/a/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bykv/vk/openvk/preload/a/b/h<",
            "Ljava/lang/String;",
            "Lcom/bykv/vk/openvk/preload/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/a/k;-><init>()V

    new-instance v0, Lcom/bykv/vk/openvk/preload/a/b/h;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Lcom/bykv/vk/openvk/preload/a/b/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/a/k;)V
    .registers 4

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Lcom/bykv/vk/openvk/preload/a/b/h;

    if-nez p2, :cond_6

    sget-object p2, Lcom/bykv/vk/openvk/preload/a/m;->a:Lcom/bykv/vk/openvk/preload/a/m;

    :cond_6
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/preload/a/b/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    if-eq p1, p0, :cond_15

    instance-of v0, p1, Lcom/bykv/vk/openvk/preload/a/n;

    if-eqz v0, :cond_13

    check-cast p1, Lcom/bykv/vk/openvk/preload/a/n;

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/a/n;->a:Lcom/bykv/vk/openvk/preload/a/b/h;

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Lcom/bykv/vk/openvk/preload/a/b/h;

    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x0

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/a/n;->a:Lcom/bykv/vk/openvk/preload/a/b/h;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->hashCode()I

    move-result v0

    return v0
.end method
