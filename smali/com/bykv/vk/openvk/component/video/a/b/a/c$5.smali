###### Class com.bykv.vk.openvk.component.video.a.b.a.c.AnonymousClass5 (com.bykv.vk.openvk.component.video.a.b.a.c$5)
.class Lcom/bykv/vk/openvk/component/video/a/b/a/c$5;
.super Lcom/bytedance/sdk/component/g/h;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/a/b/a/c;->b(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashSet;

.field final synthetic b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;


# direct methods
.method constructor <init>(Lcom/bykv/vk/openvk/component/video/a/b/a/c;Ljava/lang/String;ILjava/util/HashSet;)V
    .registers 5

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/a/c$5;->b:Lcom/bykv/vk/openvk/component/video/a/b/a/c;

    iput-object p4, p0, Lcom/bykv/vk/openvk/component/video/a/b/a/c$5;->a:Ljava/util/HashSet;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/g/h;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/a/c$5;->a:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    :try_start_12
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    nop

    goto :goto_6

    :cond_18
    return-void
.end method
