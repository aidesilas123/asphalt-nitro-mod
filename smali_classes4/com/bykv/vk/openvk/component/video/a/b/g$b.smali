###### Class com.bykv.vk.openvk.component.video.a.b.g.b (com.bykv.vk.openvk.component.video.a.b.g$b)
.class Lcom/bykv/vk/openvk/component/video/a/b/g$b;
.super Ljava/lang/Object;
.source "ProxyTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private b:I

.field private c:Z


# direct methods
.method constructor <init>(Ljava/io/OutputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->a:Ljava/io/OutputStream;

    iput p2, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->b:I

    return-void
.end method


# virtual methods
.method a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/c/d;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->c:Z

    if-nez v0, :cond_14

    :try_start_4
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->c:Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_d

    goto :goto_14

    :catch_d
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/component/video/a/b/c/d;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/c/d;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_14
    :goto_14
    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->c:Z

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->b:I

    return v0
.end method

.method b([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/c/d;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->b:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/a/b/g$b;->b:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/component/video/a/b/c/d;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/c/d;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
