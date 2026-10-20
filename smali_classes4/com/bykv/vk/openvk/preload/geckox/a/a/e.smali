###### Class com.bykv.vk.openvk.preload.geckox.a.a.e (com.bykv.vk.openvk.preload.geckox.a.a.e)
.class final Lcom/bykv/vk/openvk/preload/geckox/a/a/e;
.super Lcom/bykv/vk/openvk/preload/geckox/a/a/b;
.source "FIFOCachePolicy.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_86

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->e:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_26

    goto :goto_4a

    :cond_26
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_34

    array-length v2, v1

    if-lez v2, :cond_34

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_39

    :cond_34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_39
    if-eqz v1, :cond_4b

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4b

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/utils/c$1;

    invoke-direct {v2}, Lcom/bykv/vk/openvk/preload/geckox/utils/c$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_4b

    :cond_4a
    :goto_4a
    const/4 v1, 0x0

    :cond_4b
    :goto_4b
    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->d:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    iget v3, v3, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->a:I

    if-le v2, v3, :cond_6

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->d:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    iget v4, v4, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->a:I

    sub-int/2addr v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_69
    :goto_69
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bykv/vk/openvk/preload/geckox/a/c;->b(Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->d:Lcom/bykv/vk/openvk/preload/geckox/a/a/a;

    iget-object v3, v3, Lcom/bykv/vk/openvk/preload/geckox/a/a/a;->c:Lcom/bykv/vk/openvk/preload/geckox/a/a/c;

    if-eqz v3, :cond_69

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    goto :goto_69

    :cond_86
    return-void
.end method

.method public final a(Lcom/bykv/vk/openvk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/geckox/a/a/a;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/bykv/vk/openvk/preload/geckox/a/a/b;->a(Lcom/bykv/vk/openvk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V

    return-void
.end method
