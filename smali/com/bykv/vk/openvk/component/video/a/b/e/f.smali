###### Class com.bykv.vk.openvk.component.video.a.b.e.f (com.bykv.vk.openvk.component.video.a.b.e.f)
.class public Lcom/bykv/vk/openvk/component/video/a/b/e/f;
.super Lcom/bykv/vk/openvk/component/video/a/b/e/a;
.source "VolleyResponseWrapper.java"


# instance fields
.field private c:Lcom/bytedance/sdk/component/b/a/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/b/a/o;Lcom/bykv/vk/openvk/component/video/a/b/e/e;)V
    .registers 8

    invoke-direct {p0}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->a:Ljava/util/List;

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/o;->g()Lcom/bytedance/sdk/component/b/a/f;

    move-result-object p1

    if-eqz p1, :cond_30

    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/b/a/f;->a()I

    move-result v1

    if-ge v0, v1, :cond_30

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->a:Ljava/util/List;

    new-instance v2, Lcom/bykv/vk/openvk/component/video/a/b/i$b;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/f;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/b/a/f;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bykv/vk/openvk/component/video/a/b/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_30
    iput-object p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->b:Lcom/bykv/vk/openvk/component/video/a/b/e/e;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/i$b;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->a(Ljava/lang/String;)Lcom/bykv/vk/openvk/component/video/a/b/i$b;

    move-result-object p1

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/a/b/i$b;->b:Ljava/lang/String;

    return-object p1

    :cond_d
    return-object p2
.end method

.method public b()Z
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/component/video/a/b/i$b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/io/InputStream;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->f()Lcom/bytedance/sdk/component/b/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/p;->c()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->h()Lcom/bytedance/sdk/component/b/a/l;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->h()Lcom/bytedance/sdk/component/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/l;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_15
    const-string v0, "http/1.1"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/e/f;->c:Lcom/bytedance/sdk/component/b/a/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/b/a/o;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/a/b/e/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
