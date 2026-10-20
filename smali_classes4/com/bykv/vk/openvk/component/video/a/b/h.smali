###### Class com.bykv.vk.openvk.component.video.a.b.h (com.bykv.vk.openvk.component.video.a.b.h)
.class Lcom/bykv/vk/openvk/component/video/a/b/h;
.super Ljava/lang/Object;
.source "RandomAccessFileWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/component/video/a/b/h$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/h$a;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/h;->a:Ljava/io/RandomAccessFile;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/component/video/a/b/h$a;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/h$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method a([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/h$a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    :catch_7
    move-exception p1

    new-instance v0, Lcom/bykv/vk/openvk/component/video/a/b/h$a;

    invoke-direct {v0, p1}, Lcom/bykv/vk/openvk/component/video/a/b/h$a;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method a()V
    .registers 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/h;->a:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/a/c/a;->a(Ljava/io/RandomAccessFile;)V

    return-void
.end method

.method a(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/h$a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/component/video/a/b/h$a;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/h$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method a([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bykv/vk/openvk/component/video/a/b/h$a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/a/b/h;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    new-instance p2, Lcom/bykv/vk/openvk/component/video/a/b/h$a;

    invoke-direct {p2, p1}, Lcom/bykv/vk/openvk/component/video/a/b/h$a;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
