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
