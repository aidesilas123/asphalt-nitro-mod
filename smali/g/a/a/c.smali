###### Class g.a.a.c (g.a.a.c)
.class public Lg/a/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/io/PipedInputStream;

.field private final b:Ljava/io/PipedOutputStream;

.field private final c:Ljava/lang/Runnable;

.field private d:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lg/a/a/a;Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v0, p0, Lg/a/a/c;->a:Ljava/io/PipedInputStream;

    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    iput-object v1, p0, Lg/a/a/c;->b:Ljava/io/PipedOutputStream;

    new-instance v0, Lg/a/a/c$a;

    invoke-direct {v0, p0, p1, p2}, Lg/a/a/c$a;-><init>(Lg/a/a/c;Lg/a/a/a;Ljava/io/InputStream;)V

    iput-object v0, p0, Lg/a/a/c;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lg/a/a/c;)Ljava/io/PipedOutputStream;
    .registers 1

    iget-object p0, p0, Lg/a/a/c;->b:Ljava/io/PipedOutputStream;

    return-object p0
.end method

.method static synthetic b(Lg/a/a/c;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 2

    iput-object p1, p0, Lg/a/a/c;->d:Ljava/lang/Throwable;

    return-object p1
.end method


# virtual methods
.method public c()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lg/a/a/c;->d:Ljava/lang/Throwable;

    if-eqz v0, :cond_13

    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lg/a/a/c;->d:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_13
    return-void
.end method

.method protected d(Ljava/io/Closeable;)Z
    .registers 2

    if-eqz p1, :cond_7

    :try_start_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p1, 0x1

    return p1

    :catch_7
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method protected e(Ljava/io/Flushable;)Z
    .registers 2

    if-eqz p1, :cond_7

    :try_start_2
    invoke-interface {p1}, Ljava/io/Flushable;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_7

    const/4 p1, 0x1

    return p1

    :catch_7
    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/io/PipedInputStream;
    .registers 2

    iget-object v0, p0, Lg/a/a/c;->a:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public run()V
    .registers 2

    iget-object v0, p0, Lg/a/a/c;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

###### Class g.a.a.c.a (g.a.a.c$a)
.class Lg/a/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/a/a/c;-><init>(Lg/a/a/a;Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/a/a/a;

.field final synthetic b:Ljava/io/InputStream;

.field final synthetic c:Lg/a/a/c;


# direct methods
.method constructor <init>(Lg/a/a/c;Lg/a/a/a;Ljava/io/InputStream;)V
    .registers 4

    iput-object p1, p0, Lg/a/a/c$a;->c:Lg/a/a/c;

    iput-object p2, p0, Lg/a/a/c$a;->a:Lg/a/a/a;

    iput-object p3, p0, Lg/a/a/c$a;->b:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lg/a/a/c$a;->a:Lg/a/a/a;

    iget-object v1, p0, Lg/a/a/c$a;->b:Ljava/io/InputStream;

    iget-object v2, p0, Lg/a/a/c$a;->c:Lg/a/a/c;

    invoke-static {v2}, Lg/a/a/c;->a(Lg/a/a/c;)Ljava/io/PipedOutputStream;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lg/a/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    iget-object v0, p0, Lg/a/a/c$a;->c:Lg/a/a/c;

    invoke-static {v0}, Lg/a/a/c;->a(Lg/a/a/c;)Ljava/io/PipedOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/a/a/c;->e(Ljava/io/Flushable;)Z
    :try_end_16
    .catchall {:try_start_0 .. :try_end_16} :catchall_17

    goto :goto_1d

    :catchall_17
    move-exception v0

    :try_start_18
    iget-object v1, p0, Lg/a/a/c$a;->c:Lg/a/a/c;

    invoke-static {v1, v0}, Lg/a/a/c;->b(Lg/a/a/c;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_27

    :goto_1d
    iget-object v0, p0, Lg/a/a/c$a;->c:Lg/a/a/c;

    invoke-static {v0}, Lg/a/a/c;->a(Lg/a/a/c;)Ljava/io/PipedOutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/a/a/c;->d(Ljava/io/Closeable;)Z

    return-void

    :catchall_27
    move-exception v0

    iget-object v1, p0, Lg/a/a/c$a;->c:Lg/a/a/c;

    invoke-static {v1}, Lg/a/a/c;->a(Lg/a/a/c;)Ljava/io/PipedOutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/a/a/c;->d(Ljava/io/Closeable;)Z

    throw v0
.end method
